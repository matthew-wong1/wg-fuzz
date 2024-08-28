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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_buffer000 = command_encoder000.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer000, ]);
    const array0 = new Float32Array([-0.75, -0.5, 0.75, 0.25, 0.0, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, 0.25, 0.75, -0.5, -0.75, 0.5, 1.0, 0.75, 0.25, 0.5, 1.0, 0.75, 0.75, -0.25, -0.5, -0.75, -0.5, 0.25, -1.0, 0.0, 0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 0.75, 1.0, -0.25, 0.0, 1.0, 0.25, 0.25, 0.25, 0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 1.0, 1.0, 0.75, 0.25, 0.75, 0.0, -0.5, -0.75, -1.0, 1.0, 0.25, -1.0, 0.5, -1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -0.5, 0.5, -0.5, 1.0, -0.5, 0.0, 0.0, -0.5, 0.5, -0.25, 0.5, 1.0, -1.0, 0.75, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, -1.0, 0.5, -0.25, 0.0, -1.0, 0.5, 0.0, ]);
    command_encoder001.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const command_buffer001 = command_encoder001.finish();
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_buffer002 = command_encoder002.finish();
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const array1 = new Float32Array([0.0, 0.75, 0.25, -1.0, -1.0, -0.5, -0.25, 0.5, -0.75, 0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 1.0, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, 1.0, -1.0, 0.75, -0.5, 0.75, 1.0, -0.25, -0.5, 0.75, 0.25, 1.0, 0.75, 0.5, -0.5, -1.0, 0.25, -0.5, 0.5, 1.0, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, 1.0, 0.0, -0.25, 0.0, -0.25, -0.75, 0.0, -0.25, -0.5, 0.0, -0.75, 1.0, 0.5, 0.0, 0.25, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, -0.25, -0.25, 0.75, -0.25, 0.5, -0.25, -0.75, 1.0, -0.25, 0.25, -0.25, -0.5, 0.5, -1.0, -0.5, -0.5, -0.75, -1.0, 0.5, 0.25, 1.0, -0.75, ]);
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer003, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder007.insertDebugMarker("mymarker");
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder007.insertDebugMarker("mymarker");
    const command_buffer005 = command_encoder005.finish();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    command_encoder007.insertDebugMarker("mymarker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    command_encoder007.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer005, ]);
    
    device00.queue.submit([command_buffer004, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder001.popDebugGroup();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const command_buffer008 = command_encoder008.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder006.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.destroy();
    command_encoder006.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder007.insertDebugMarker("mymarker");
    
    
    device30.destroy();
    command_encoder007.insertDebugMarker("mymarker");
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    command_encoder007.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_buffer009 = command_encoder009.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device20.pushErrorScope("internal");
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    command_encoder007.insertDebugMarker("mymarker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    render_bundle_encoder002.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer008, command_buffer009, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder006.insertDebugMarker("mymarker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer200 = command_encoder200.finish();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([-1.0, 1.0, -0.5, -1.0, 0.0, 0.0, -0.5, 0.5, -1.0, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, 0.0, 0.5, 1.0, -0.5, -0.75, -0.75, 0.25, -0.75, 0.0, -0.5, -1.0, -0.75, 0.0, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 0.0, -1.0, 0.0, -0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, 1.0, -1.0, 0.0, -1.0, 0.5, -0.75, 0.25, -1.0, -0.75, 0.0, 0.75, -1.0, 0.5, 0.5, 0.0, 0.5, -0.25, 0.5, 0.25, 0.25, -0.5, 0.75, -0.25, -1.0, 0.75, 0.75, 1.0, -0.75, 0.25, 0.5, -0.25, -0.25, 1.0, -0.5, 0.25, -0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -0.75, ]);
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_buffer007 = command_encoder007.finish();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    render_bundle_encoder001.popDebugGroup();
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer007, ]);
    const command_buffer006 = command_encoder006.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    device20.queue.submit([command_buffer200, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.submit([command_buffer006, ]);
    render_bundle_encoder200.popDebugGroup();
    const command_buffer0010 = command_encoder0010.finish();
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_bundle_encoder001.popDebugGroup();
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("internal");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    device00.queue.submit([command_buffer0010, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    const command_buffer201 = command_encoder201.finish();
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_buffer203 = command_encoder203.finish();
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.popDebugGroup();
    const array3 = new Float32Array([0.25, 0.5, -1.0, 0.25, -1.0, -0.5, -0.25, -0.5, -0.75, -0.25, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, 0.0, 0.0, -0.75, 0.75, -0.75, -1.0, 0.25, 0.5, -1.0, 0.5, 0.0, 0.75, 0.25, 0.75, -0.75, 1.0, 0.0, 0.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.0, 0.25, -0.25, 0.25, -0.25, -0.5, -1.0, 0.0, 1.0, 0.75, -0.5, -0.25, -0.75, 1.0, 0.5, 0.5, -0.25, -1.0, 0.75, -0.5, -0.75, 0.5, -1.0, 1.0, 0.25, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, 0.25, -1.0, 0.0, 1.0, 0.0, -0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.25, 1.0, 0.0, 1.0, 0.75, 1.0, -0.5, -0.5, 0.0, ]);
    command_encoder0011.insertDebugMarker("mymarker");
    render_bundle_encoder002.popDebugGroup();
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    
    const command_buffer202 = command_encoder202.finish();
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder0012.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.5, 0.25, 1.0, -0.25, 0.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.5, -0.25, -0.25, -0.25, -1.0, -0.75, 0.5, 0.5, 0.75, -0.5, 1.0, -0.5, -1.0, -0.75, -0.25, -0.75, -0.75, 1.0, 0.75, 0.25, 0.25, -0.5, 0.5, 0.0, 0.25, -0.25, -0.5, 0.75, -1.0, 1.0, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.5, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, 0.0, 0.75, -0.5, 0.5, -1.0, 0.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.75, -0.5, -0.5, -1.0, 0.75, 1.0, -0.25, 0.75, -0.75, 0.0, -1.0, 0.25, 0.25, -1.0, 1.0, -0.75, 0.25, -0.5, 0.25, 0.75, 1.0, 1.0, 0.0, 0.0, ]);
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    command_encoder400.insertDebugMarker("mymarker");
    device40.pushErrorScope("validation");
    command_encoder0013.insertDebugMarker("mymarker");
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile(__dirname + '/shader_module0015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    command_encoder0012.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder202.popDebugGroup();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder201.popDebugGroup();
    command_encoder0011.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder0011.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer400 = command_encoder400.finish();
    
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile(__dirname + '/shader_module0016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile(__dirname + '/shader_module0017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const command_buffer0011 = command_encoder0011.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const array5 = new Float32Array([-1.0, -0.25, 0.5, -1.0, 0.75, 0.75, 1.0, -0.5, 0.0, 0.25, -1.0, -0.25, 0.0, 0.25, -0.25, 0.25, -0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -1.0, -0.25, 0.5, -1.0, 0.5, -0.5, -0.25, 0.75, 0.0, 0.0, 1.0, -1.0, 0.75, -0.75, -0.5, 0.0, 0.5, 1.0, 0.25, -0.5, 0.5, 0.0, -0.75, 0.25, 0.75, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.5, 0.25, -0.5, 0.25, 0.75, 0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.25, 0.25, -0.5, -0.75, -1.0, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.75, 1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, 1.0, 0.0, 1.0, 1.0, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    render_bundle_encoder001.popDebugGroup();
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder002.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder0012.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device40.pushErrorScope("internal");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    const command_buffer402 = command_encoder402.finish();
    
    var shader_module0018_code = "";
    try {
        shader_module0018_code = await fs.readFile(__dirname + '/shader_module0018.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0018 = await device00.createShaderModule({ label: "shader_module0018", code: shader_module0018_code })
    
    
    var shader_module0019_code = "";
    try {
        shader_module0019_code = await fs.readFile(__dirname + '/shader_module0019.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0019 = await device00.createShaderModule({ label: "shader_module0019", code: shader_module0019_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    device00.queue.submit([command_buffer0011, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_buffer0012 = command_encoder0012.finish();
    
    device00.pushErrorScope("validation");
    
    command_encoder403.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module0020_code = "";
    try {
        shader_module0020_code = await fs.readFile(__dirname + '/shader_module0020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0020 = await device00.createShaderModule({ label: "shader_module0020", code: shader_module0020_code })
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer204 = command_encoder204.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    const array6 = new Float32Array([0.75, 0.25, -0.75, 0.75, 0.75, -0.5, -0.25, 0.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.75, -0.75, 0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.0, -0.25, 0.25, -0.25, 0.0, -1.0, -0.25, -0.25, 0.75, 0.75, 0.25, 0.25, 0.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.5, -1.0, 0.0, -0.25, -0.75, 0.0, -1.0, 0.5, 0.5, 1.0, -0.75, -1.0, -1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.75, 0.0, -0.25, -0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 0.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.0, -0.75, 0.75, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 1.0, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module2014_code = "";
    try {
        shader_module2014_code = await fs.readFile(__dirname + '/shader_module2014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2014 = await device20.createShaderModule({ label: "shader_module2014", code: shader_module2014_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_buffer404 = command_encoder404.finish();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module0021_code = "";
    try {
        shader_module0021_code = await fs.readFile(__dirname + '/shader_module0021.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0021 = await device00.createShaderModule({ label: "shader_module0021", code: shader_module0021_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder0014 = device00.createCommandEncoder({ label: "command_encoder0014" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder0014.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer0013 = command_encoder0013.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder403.insertDebugMarker("mymarker");
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer0012, command_buffer0013, ]);
    const command_buffer205 = command_encoder205.finish();
    const command_encoder0015 = device00.createCommandEncoder({ label: "command_encoder0015" });
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder405.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder202.popDebugGroup();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module0022_code = "";
    try {
        shader_module0022_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0022 = await device00.createShaderModule({ label: "shader_module0022", code: shader_module0022_code })
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    
    const command_buffer0015 = command_encoder0015.finish();
    
    
    const command_encoder0016 = device00.createCommandEncoder({ label: "command_encoder0016" });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const command_buffer0014 = command_encoder0014.finish();
    var shader_module2015_code = "";
    try {
        shader_module2015_code = await fs.readFile(__dirname + '/shader_module2015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2015 = await device20.createShaderModule({ label: "shader_module2015", code: shader_module2015_code })
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_buffer0016 = command_encoder0016.finish();
    command_encoder405.insertDebugMarker("mymarker");
    
    const command_buffer406 = command_encoder406.finish();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 0.25, -0.25, 0.75, 0.75, 1.0, 0.75, -0.25, 0.0, 1.0, 1.0, -0.25, 0.0, 0.75, 0.25, 0.5, -0.25, -0.75, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.5, -1.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.75, -1.0, 0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, 0.75, 0.0, 0.25, -0.25, 0.5, 0.75, 0.25, -1.0, 0.75, -0.75, -0.25, -0.25, -1.0, 0.0, 0.0, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, 0.0, 0.75, 1.0, 0.5, 1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 0.75, -1.0, 0.0, -0.25, 0.75, -0.25, 1.0, -0.25, -1.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.5, 0.5, 0.0, -1.0, -1.0, -0.75, 0.0, -0.75, ]);
    var shader_module0023_code = "";
    try {
        shader_module0023_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0023 = await device00.createShaderModule({ label: "shader_module0023", code: shader_module0023_code })
    device00.pushErrorScope("validation");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    render_bundle_encoder201.popDebugGroup();
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    
    
    var shader_module0024_code = "";
    try {
        shader_module0024_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0024 = await device00.createShaderModule({ label: "shader_module0024", code: shader_module0024_code })
    const command_buffer408 = command_encoder408.finish();
    
    const command_encoder0017 = device00.createCommandEncoder({ label: "command_encoder0017" });
    
    device00.queue.submit([command_buffer0014, command_buffer0015, ]);
    command_encoder407.insertDebugMarker("mymarker");
    const command_buffer403 = command_encoder403.finish();
    const command_encoder409 = device40.createCommandEncoder({ label: "command_encoder409" });
    command_encoder0017.insertDebugMarker("mymarker");
    
    const command_buffer405 = command_encoder405.finish();
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const command_buffer407 = command_encoder407.finish();
    const command_buffer0017 = command_encoder0017.finish();
    const command_buffer409 = command_encoder409.finish();
    device20.queue.submit([command_buffer205, ]);
    device40.queue.submit([command_buffer402, command_buffer404, command_buffer407, command_buffer408, ]);
    device40.queue.submit([command_buffer405, command_buffer406, command_buffer409, ]);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer0017, ]);
    device00.queue.submit([command_buffer0016, ]);
    device40.queue.submit([command_buffer403, ]);
}