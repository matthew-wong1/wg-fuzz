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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    
    device00.pushErrorScope("validation");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query200.destroy()
    device20.pushErrorScope("out-of-memory");
    query200.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    
    command_encoder201.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
    
    const command_buffer200 = command_encoder200.finish();
    
    const command_buffer201 = command_encoder201.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    query102.destroy()
    
    device20.pushErrorScope("out-of-memory");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    
    
    query202.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("internal");
    const command_buffer203 = command_encoder203.finish();
    query102.destroy()
    
    
    
    
    device10.queue.submit([command_buffer100, ]);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query103.destroy()
    query104.destroy()
    
    
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device30.pushErrorScope("out-of-memory");
    
    query100.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_buffer000 = command_encoder000.finish();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    
    
    query101.destroy()
    query000.destroy()
    
    
    query200.destroy()
    
    
    query000.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    query104.destroy()
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device20.pushErrorScope("validation");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    query203.destroy()
    
    
    
    query101.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query103.destroy()
    query101.destroy()
    query001.destroy()
    
    
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query001.destroy()
    query203.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder102.pushDebugGroup("mygroupmarker")
    query104.destroy()
    query001.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query202.destroy()
    query205.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    query200.destroy()
    
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device20.pushErrorScope("validation");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query102.destroy()
    
    
    query203.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.pushErrorScope("validation");
    
    query202.destroy()
    query000.destroy()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    query202.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query103.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    query200.destroy()
    query100.destroy()
    
    
    
    query100.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    device00.queue.submit([command_buffer000, ]);
    query000.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query105.destroy()
    query102.destroy()
    
    query100.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    
    query201.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer205 = command_encoder205.finish();
    const command_buffer400 = command_encoder400.finish();
    query201.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device20.pushErrorScope("validation");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device00.pushErrorScope("internal");
    query101.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device10.pushErrorScope("internal");
    query202.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_buffer301 = command_encoder301.finish();
    
    device30.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query105.destroy()
    
    query206.destroy()
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    
    
    query101.destroy()
    query400.destroy()
    
    query102.destroy()
    query104.destroy()
    
    query004.destroy()
    
    
    
    
    device30.pushErrorScope("internal");
    query001.destroy()
    
    
    
    query002.destroy()
    
    
    query100.destroy()
    
    
    
    
    
    device30.queue.submit([command_buffer301, ]);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    query202.destroy()
    
    
    query204.destroy()
    query001.destroy()
    query004.destroy()
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    
    command_encoder206.pushDebugGroup("mygroupmarker")
    
    query205.destroy()
    
    
    
    query002.destroy()
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    query102.destroy()
    
    query002.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query102.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    query101.destroy()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    query300.destroy()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    
    command_encoder401.insertDebugMarker("mymarker");
    query101.destroy()
    query205.destroy()
    query300.destroy()
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_buffer401 = command_encoder401.finish();
    query205.destroy()
    
    query001.destroy()
    command_encoder207.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder207.popDebugGroup()
    
    query002.destroy()
    query005.destroy()
    device40.queue.submit([command_buffer400, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query208.destroy()
    
    query002.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query106.destroy()
    device30.pushErrorScope("validation");
    
    query400.destroy()
    device10.pushErrorScope("internal");
    query002.destroy()
    query006.destroy()
    
    
    
    const command_buffer207 = command_encoder207.finish();
    query201.destroy()
    const command_buffer104 = command_encoder104.finish();
    query006.destroy()
    
    query202.destroy()
    
    
    query100.destroy()
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query400.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    query200.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("validation");
    query102.destroy()
    query202.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query103.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    query500.destroy()
    
    
    query206.destroy()
    query203.destroy()
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    
    query209.destroy()
    
    query2010.destroy()
    
    
    query207.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query004.destroy()
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query201.destroy()
    
    
    query204.destroy()
    query202.destroy()
    const command_buffer001 = command_encoder001.finish();
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    query209.destroy()
    query500.destroy()
    query200.destroy()
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.popDebugGroup()
    
    query004.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query104.destroy()
    query204.destroy()
    
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    device20.pushErrorScope("validation");
    query002.destroy()
    query501.destroy()
    query002.destroy()
    query204.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer002 = command_encoder002.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    const command_buffer208 = command_encoder208.finish();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer403 = command_encoder403.finish();
    device20.queue.submit([command_buffer205, command_buffer207, command_buffer208, ]);
    const command_buffer402 = command_encoder402.finish();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([command_buffer403, ]);
}