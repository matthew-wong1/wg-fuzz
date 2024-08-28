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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer000 = command_encoder000.finish();
    
    query200.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query200.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device00.queue.submit([command_buffer000, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query202 = device20.createQuerySet({
        label: "query202",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_buffer003 = command_encoder003.finish();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.submit([command_buffer003, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer100 = command_encoder100.finish();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query201.destroy()
    
    
    query001.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query202.destroy()
    
    const command_buffer004 = command_encoder004.finish();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query203.destroy()
    const command_buffer006 = command_encoder006.finish();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query202.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.queue.submit([command_buffer004, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query203.destroy()
    query000.destroy()
    const command_buffer203 = command_encoder203.finish();
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    query201.destroy()
    query203.destroy()
    query003.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query203.destroy()
    
    query202.destroy()
    query004.destroy()
    
    query003.destroy()
    query102.destroy()
    
    query203.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    query102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query100.destroy()
    
    query200.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    query102.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query204.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    query203.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const command_buffer007 = command_encoder007.finish();
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const command_buffer102 = command_encoder102.finish();
    query301.destroy()
    device00.queue.submit([command_buffer007, ]);
    query201.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query003.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    query101.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query203.destroy()
    query101.destroy()
    query301.destroy()
    query205.destroy()
    query102.destroy()
    device20.queue.submit([command_buffer203, ]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    query005.destroy()
    query101.destroy()
    query201.destroy()
    query005.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query103.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    query005.destroy()
    query002.destroy()
    query104.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    query101.destroy()
    query105.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer205 = command_encoder205.finish();
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    query302.destroy()
    query301.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_buffer204 = command_encoder204.finish();
    query300.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query001.destroy()
    query100.destroy()
    query104.destroy()
    query004.destroy()
    query302.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    query203.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const command_buffer008 = command_encoder008.finish();
    
    query003.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query204.destroy()
    query000.destroy()
    query100.destroy()
    query203.destroy()
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query201.destroy()
    query301.destroy()
    query104.destroy()
    query007.destroy()
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer008, ]);
    query104.destroy()
    query100.destroy()
    query006.destroy()
    query007.destroy()
    query203.destroy()
    query103.destroy()
    query302.destroy()
    query001.destroy()
    query201.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query007.destroy()
    query102.destroy()
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    query001.destroy()
    query302.destroy()
    query105.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    query202.destroy()
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    query205.destroy()
    query205.destroy()
    query106.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query202.destroy()
    query208.destroy()
    query106.destroy()
    const command_buffer207 = command_encoder207.finish();
    query006.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query007.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query002.destroy()
    query101.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device20.queue.submit([command_buffer204, command_buffer205, command_buffer207, ]);
    query004.destroy()
    query007.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_buffer401 = command_encoder401.finish();
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query005.destroy()
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query302.destroy()
    query001.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    query000.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const command_buffer009 = command_encoder009.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query300.destroy()
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const command_buffer304 = command_encoder304.finish();
    query105.destroy()
    
    query004.destroy()
    query102.destroy()
    query200.destroy()
    query009.destroy()
    device30.queue.submit([command_buffer304, ]);
    const command_buffer0010 = command_encoder0010.finish();
    query005.destroy()
    query303.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    query105.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    query208.destroy()
    query005.destroy()
    device00.queue.submit([command_buffer009, command_buffer0010, ]);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query101.destroy()
    query100.destroy()
    
    query101.destroy()
    query005.destroy()
    query205.destroy()
    query302.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    query200.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    query0010.destroy()
    query201.destroy()
    query105.destroy()
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    query104.destroy()
    const command_buffer208 = command_encoder208.finish();
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    query600.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_buffer104 = command_encoder104.finish();
    query205.destroy()
    query601.destroy()
    query004.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    query208.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    query209.destroy()
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    query000.destroy()
    query107.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query304.destroy()
    query003.destroy()
    query205.destroy()
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    query100.destroy()
    query301.destroy()
    query108.destroy()
    query300.destroy()
    query109.destroy()
    query201.destroy()
    query002.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query001.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    query108.destroy()
    const command_buffer0011 = command_encoder0011.finish();
    query006.destroy()
    const command_buffer106 = command_encoder106.finish();
    query603.destroy()
    const command_buffer305 = command_encoder305.finish();
    query205.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query206.destroy()
    query301.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer105 = command_encoder105.finish();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    query109.destroy()
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query208.destroy()
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const command_buffer600 = command_encoder600.finish();
    query0011.destroy()
    query107.destroy()
    query205.destroy()
    query105.destroy()
    query201.destroy()
    query102.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query0010.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query104.destroy()
    query106.destroy()
    query301.destroy()
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    
    query007.destroy()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query109.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    query009.destroy()
    const command_buffer0012 = command_encoder0012.finish();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query208.destroy()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    query604.destroy()
    query304.destroy()
    
    query008.destroy()
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    query1010.destroy()
    query102.destroy()
    const command_buffer306 = command_encoder306.finish();
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    query106.destroy()
    query700.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    query301.destroy()
    query205.destroy()
    query208.destroy()
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    query204.destroy()
    query305.destroy()
    query101.destroy()
    query103.destroy()
    query302.destroy()
    query004.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    query004.destroy()
    query009.destroy()
    query602.destroy()
    query600.destroy()
    const command_buffer601 = command_encoder601.finish();
    query107.destroy()
    query208.destroy()
    query206.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query0010.destroy()
    
    query106.destroy()
    query305.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query109.destroy()
    query700.destroy()
    query007.destroy()
    device00.queue.submit([command_buffer0012, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query106.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    query003.destroy()
    const command_buffer404 = command_encoder404.finish();
    query701.destroy()
    query603.destroy()
    query206.destroy()
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer106, ]);
    query0010.destroy()
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    query701.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query104.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    query201.destroy()
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device20.queue.submit([command_buffer208, ]);
    query305.destroy()
    query300.destroy()
    
    query0011.destroy()
    const command_buffer701 = command_encoder701.finish();
    query206.destroy()
    query200.destroy()
    
    query603.destroy()
    query301.destroy()
    query109.destroy()
    query305.destroy()
    query2011.destroy()
    query604.destroy()
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    
    query100.destroy()
    query209.destroy()
    query108.destroy()
    query0010.destroy()
    query209.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query203.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query2011.destroy()
    query205.destroy()
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    
    query204.destroy()
    query005.destroy()
    const command_buffer700 = command_encoder700.finish();
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer305, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    const command_buffer0013 = command_encoder0013.finish();
    device00.queue.submit([command_buffer0011, ]);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer403, ]);
    const command_buffer209 = command_encoder209.finish();
}