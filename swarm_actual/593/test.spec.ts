export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter25 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter28 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter29 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter30 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter31 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter32 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter33 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter34 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter35 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter36 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter37 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter38 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter39 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter40 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter41 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter42 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter43 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter44 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter45 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter46 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter47 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter48 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter49 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter50 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter51 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter52 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter53 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter54 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter55 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter56 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter57 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter58 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter59 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter60 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter61 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter62 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter63 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter64 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter65 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter66 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter67 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter68 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter69 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter70 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter71 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter72 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter73 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter74 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter75 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter76 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter77 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter78 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter79 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter80 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter81 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter82 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter83 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter84 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter85 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter86 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter87 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter88 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter89 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter90 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter91 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter92 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter93 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter94 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter95 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter96 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter97 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter98 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter99 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter100 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter101 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter102 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter103 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter104 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter105 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter106 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter107 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter108 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const adapter109 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter110 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter111 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter112 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter113 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter114 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter115 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter116 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter117 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter118 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter119 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter120 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter121 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter122 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter123 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter124 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter125 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter126 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter127 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter128 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter129 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter130 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter131 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter132 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter133 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter134 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter135 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter136 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter137 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter138 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter139 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter140 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter141 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter142 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter143 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter144 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter145 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter146 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter147 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter148 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter149 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter150 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter151 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter152 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter153 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter154 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter155 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter156 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const adapter157 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter158 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter159 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter160 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter161 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter162 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter163 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter164 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter165 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter166 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter167 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter168 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter169 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter170 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter171 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter172 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter173 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter174 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter175 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter176 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter177 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter178 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter179 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter180 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter181 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter182 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter183 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter184 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter185 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter186 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter187 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter188 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter189 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter190 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter191 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter192 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter193 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter194 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter195 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter196 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter197 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter198 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter199 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter200 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter201 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter202 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter203 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter204 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter205 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter206 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter207 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter208 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter209 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter210 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter211 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter212 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter213 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter214 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter215 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter216 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter217 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter218 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter219 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter220 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter221 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter222 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter223 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter224 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter225 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter226 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter227 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter228 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter229 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter230 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter231 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter232 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter233 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter234 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter235 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter236 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter237 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter238 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter239 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter240 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter241 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter242 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter243 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter244 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter245 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter246 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const adapter247 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter248 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter249 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter250 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter251 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter252 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter253 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter254 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter255 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter256 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter257 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter258 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter259 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter260 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter261 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter262 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter263 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter264 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const adapter265 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter266 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter267 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
}