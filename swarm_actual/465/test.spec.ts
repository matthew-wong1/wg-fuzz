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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device40.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    device50.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.destroy();
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    device70.destroy();
    
    
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device100.destroy();
    
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    
    
    device90.destroy();
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    
    
    
    
    
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    device80.destroy();
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device110.destroy();
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device120.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    
    device130.destroy();
    device140.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    
    
    
    
    
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    
    
    
    device150.destroy();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    
    
    
    
    
    
    
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/shader_module1601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    device160.destroy();
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/shader_module1700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    
    
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device170.destroy();
    
    
    
    
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    
    
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    
    
    
    
    
    
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const sampler1801 = device180.createSampler( { label: "sampler1801" } );
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    device180.destroy();
    
    
    
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile(__dirname + '/shader_module1900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    
    
    
    
    
    
    
    
    
    
    
    
    var shader_module1901_code = "";
    try {
        shader_module1901_code = await fs.readFile(__dirname + '/shader_module1901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1901 = await device190.createShaderModule({ label: "shader_module1901", code: shader_module1901_code })
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    
    
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device200.destroy();
    
    
    
    
    
    device190.destroy();
    
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    
    
    
    
    
    
    
    
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    
    
    
    
    
    
    device210.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler2200 = device220.createSampler( { label: "sampler2200" } );
    
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    
    var shader_module2200_code = "";
    try {
        shader_module2200_code = await fs.readFile(__dirname + '/shader_module2200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2200 = await device220.createShaderModule({ label: "shader_module2200", code: shader_module2200_code })
    const sampler2300 = device230.createSampler( { label: "sampler2300" } );
    device230.destroy();
    
    
    
    
    
    
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device220.destroy();
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    
    
    
    
    
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    
    
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
}