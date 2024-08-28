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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device10.destroy();
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    command_encoder002.insertDebugMarker("mymarker");
    
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    
    command_encoder004.insertDebugMarker("mymarker");
    const array0 = new Float32Array([0.75, 0.5, 1.0, 0.5, -0.75, 0.0, -0.25, 0.25, -1.0, 0.0, -0.25, -0.25, -0.75, -0.5, 1.0, 0.5, -0.25, -1.0, -1.0, -0.5, -0.5, -0.5, 0.25, 1.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.0, 1.0, 1.0, -0.5, -1.0, -1.0, 0.5, -0.5, 0.5, 0.25, 0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 1.0, -0.75, -0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.25, 0.75, 0.5, 1.0, 0.0, 1.0, 0.0, 0.0, -0.5, -0.25, 1.0, -0.25, -0.75, -0.75, -0.25, 0.25, -0.75, -0.5, 0.5, 0.75, 0.75, 0.0, -0.5, 1.0, 0.5, -1.0, -0.5, 1.0, 0.25, -0.25, 0.25, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 0.5, 0.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.75, 0.75, 0.5, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder004.insertDebugMarker("mymarker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder003.insertDebugMarker("mymarker");
    
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    command_encoder004.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder200.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder005.insertDebugMarker("mymarker");
    
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device40.destroy();
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder005.insertDebugMarker("mymarker");
    
    
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder002.insertDebugMarker("mymarker");
    
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder000.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder006.insertDebugMarker("mymarker");
    
    command_encoder003.insertDebugMarker("mymarker");
    
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    
    
    
    
    
    
    
    command_encoder007.insertDebugMarker("mymarker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const array1 = new Float32Array([-1.0, -0.5, 0.5, -0.75, 0.75, 0.75, -0.75, 0.75, -0.5, 0.75, 1.0, -0.5, -0.75, -0.25, 0.25, 0.0, -0.25, -0.25, 0.0, 0.25, 0.0, -1.0, -0.25, 0.75, 0.5, -0.5, 0.0, -1.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.0, -0.25, 0.0, -0.5, -0.25, -1.0, 0.25, -1.0, -0.5, 0.0, -0.25, 1.0, -0.75, 0.0, -0.25, 0.5, 0.25, -0.5, 0.5, -0.25, -0.5, 0.75, 0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 0.25, -0.75, 0.5, 0.0, 1.0, 0.25, -0.25, -0.25, 0.75, -0.5, 0.25, -0.75, 1.0, -0.25, -0.5, -0.5, 0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 0.5, -0.25, -0.25, 0.75, -0.5, 1.0, -0.5, 0.5, 0.75, 1.0, -0.75, 0.5, ]);
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device60.destroy();
    
    
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    command_encoder007.insertDebugMarker("mymarker");
    
    command_encoder005.insertDebugMarker("mymarker");
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder008.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    command_encoder301.insertDebugMarker("mymarker");
    
    command_encoder0010.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder500.insertDebugMarker("mymarker");
    
    
    
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    command_encoder702.insertDebugMarker("mymarker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    command_encoder004.insertDebugMarker("mymarker");
    
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder005.insertDebugMarker("mymarker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    
    
    
    
    
    command_encoder702.insertDebugMarker("mymarker");
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder203.insertDebugMarker("mymarker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder703.insertDebugMarker("mymarker");
    
    
    
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder0011.insertDebugMarker("mymarker");
    
    
    command_encoder701.insertDebugMarker("mymarker");
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder0012.insertDebugMarker("mymarker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder701.insertDebugMarker("mymarker");
    
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder0011.insertDebugMarker("mymarker");
    
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder0010.insertDebugMarker("mymarker");
    
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    command_encoder704.insertDebugMarker("mymarker");
    
    
    command_encoder008.insertDebugMarker("mymarker");
    command_encoder008.insertDebugMarker("mymarker");
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    command_encoder703.insertDebugMarker("mymarker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder303.insertDebugMarker("mymarker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    
    command_encoder0010.insertDebugMarker("mymarker");
    command_encoder900.insertDebugMarker("mymarker");
    
    
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    
    
    command_encoder501.insertDebugMarker("mymarker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    command_encoder704.insertDebugMarker("mymarker");
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder0013.insertDebugMarker("mymarker");
    command_encoder0012.insertDebugMarker("mymarker");
    command_encoder503.insertDebugMarker("mymarker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    command_encoder504.insertDebugMarker("mymarker");
    command_encoder703.insertDebugMarker("mymarker");
    
    
    command_encoder700.insertDebugMarker("mymarker");
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder008.insertDebugMarker("mymarker");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    command_encoder502.insertDebugMarker("mymarker");
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder704.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder706 = device70.createCommandEncoder({ label: "command_encoder706" });
    command_encoder201.insertDebugMarker("mymarker");
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    
    command_encoder501.insertDebugMarker("mymarker");
    
    
    command_encoder703.insertDebugMarker("mymarker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    
    
    
    const array2 = new Float32Array([0.0, 0.75, -1.0, 0.75, 0.75, 0.25, -0.75, 0.25, -0.75, 0.25, 0.5, -0.5, -0.5, 0.0, 0.75, 0.5, 0.0, 0.25, -0.5, 0.5, 0.75, 0.25, 0.25, 0.75, -0.75, -0.5, 0.0, -0.75, -1.0, 0.0, 0.0, 0.75, -0.25, 1.0, 1.0, -0.5, 1.0, -0.5, 0.0, 0.75, -1.0, -0.25, 0.25, 1.0, 0.0, 0.25, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.0, 0.25, 1.0, 0.75, 0.5, -0.25, -0.75, 0.0, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, 0.5, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, -1.0, 0.0, 1.0, 0.0, -0.25, 1.0, 1.0, -0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 1.0, -1.0, 1.0, -1.0, -0.5, -0.25, 0.75, -0.5, ]);
    command_encoder000.insertDebugMarker("mymarker");
    
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    command_encoder506.insertDebugMarker("mymarker");
    command_encoder705.insertDebugMarker("mymarker");
    command_encoder007.insertDebugMarker("mymarker");
    command_encoder900.insertDebugMarker("mymarker");
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder707 = device70.createCommandEncoder({ label: "command_encoder707" });
    command_encoder0010.insertDebugMarker("mymarker");
    
    command_encoder0013.insertDebugMarker("mymarker");
    command_encoder503.insertDebugMarker("mymarker");
    command_encoder204.insertDebugMarker("mymarker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder504.insertDebugMarker("mymarker");
    command_encoder205.insertDebugMarker("mymarker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder700.insertDebugMarker("mymarker");
    
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    command_encoder706.insertDebugMarker("mymarker");
    
    command_encoder006.insertDebugMarker("mymarker");
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder009.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder504.insertDebugMarker("mymarker");
    
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder302.insertDebugMarker("mymarker");
    
    command_encoder206.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder706.insertDebugMarker("mymarker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    command_encoder009.insertDebugMarker("mymarker");
    
    
    
    
    
    
    command_encoder706.insertDebugMarker("mymarker");
    
    command_encoder002.insertDebugMarker("mymarker");
    
    
    
    command_encoder009.insertDebugMarker("mymarker");
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    command_encoder503.insertDebugMarker("mymarker");
    
    
    command_encoder700.insertDebugMarker("mymarker");
    
    command_encoder0011.insertDebugMarker("mymarker");
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    command_encoder505.insertDebugMarker("mymarker");
    
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder701.insertDebugMarker("mymarker");
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    command_encoder506.insertDebugMarker("mymarker");
    
    
    
    command_encoder203.insertDebugMarker("mymarker");
    
    
    
    
    
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
}