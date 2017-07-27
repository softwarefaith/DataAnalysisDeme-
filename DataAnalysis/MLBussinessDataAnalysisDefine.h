//
//  MLBussinessDataAnalysisDefine.h
//  DataAnalysisDemo
//
//  Created by 蔡杰 on 2017/7/26.
//  Copyright © 2017年 蔡杰. All rights reserved.
//

#ifndef MLBussinessDataAnalysisDefine_h
#define MLBussinessDataAnalysisDefine_h


 /*1:帮助中心相关2:运营位相关3:借款试算器相关4:身份认证5:银行卡认证6: 个人信息7: 手机认证8: 芝麻信用9: 网银认证10: 公积金认证11: 社保认证*/

#define kPage_HelpCenter  1
#define kPage_Operate     2
#define kPage_Loan       3
#define kPage_ID         4
#define kPage_BankCard   5
#define kPage_PensonalInfo    6
#define kPage_MobileVerification_6 7
#define kPage_SesameCredit 8
#define kPage_OnlineBanking 9
#define kPage_FundCertif 10
#define kPage_SocialCertif 11

#define kDelimiter   @"+"

#define kAnalysisPage(page) [NSString stringWithFormat:@"%zd",page]
#define kAnalysisSubPage(page,subPage) [NSString stringWithFormat:@"%zd%@%zd",page,kDelimiter,subPage]


#endif /* MLBussinessDataAnalysisDefine_h */
