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
    
    
    const array0 = new Float32Array([-0.75, 0.5, 1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.75, -1.0, 0.25, 0.5, 1.0, -0.25, -0.75, 0.75, 0.5, -1.0, 0.25, 0.5, -0.5, -0.75, 1.0, 0.5, 0.5, -0.75, -1.0, 0.5, 1.0, -1.0, -1.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.5, -0.5, 1.0, -0.25, 1.0, 0.25, 0.0, -0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 1.0, -0.25, -0.25, -1.0, 0.75, 1.0, -1.0, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, -1.0, -0.25, -0.75, -0.25, 0.5, -0.5, -0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.25, -1.0, 0.0, 0.5, -1.0, -0.75, -0.75, -1.0, 0.0, 0.75, 1.0, -0.25, -1.0, 0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 0.25, 1.0, 0.25, 0.5, -0.75, -0.5, 0.0, ]);
    
    const array1 = new Float32Array([-0.75, -1.0, -0.25, 0.0, 0.75, 0.5, -0.25, 0.5, -0.5, 0.0, -1.0, -0.25, -1.0, -1.0, 0.75, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.25, 1.0, 0.75, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.25, -0.75, 0.5, 0.25, -0.5, -0.5, 0.75, -0.25, -0.5, 0.5, 0.25, -0.25, 0.5, 1.0, -0.5, 0.75, 0.0, 0.75, -0.25, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, 0.25, 0.75, 0.5, -0.5, 0.25, 1.0, -0.75, -0.75, -0.25, 0.75, 0.0, -0.25, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, -0.75, -0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 0.5, 1.0, 0.5, 0.75, 0.25, ]);
    
    
    const array2 = new Float32Array([0.75, 0.75, 0.75, 0.5, -1.0, -1.0, -0.75, 1.0, -0.5, 0.75, 1.0, 1.0, 1.0, 0.25, 0.5, -1.0, 0.75, -0.75, -0.25, 1.0, 0.25, 0.5, -0.5, -1.0, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.5, 0.25, 0.75, 0.75, 1.0, 0.25, 0.5, 0.25, -0.5, -0.25, 0.25, -0.75, 1.0, 0.0, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, 1.0, -1.0, -0.25, -0.5, 1.0, 0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.25, -1.0, -1.0, 1.0, 0.75, 0.25, -0.25, -0.75, -0.5, 0.75, -0.5, 0.5, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, -0.25, 1.0, -0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.75, -0.75, 1.0, -1.0, -0.75, -0.75, 1.0, -0.75, 1.0, 0.75, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.25, 0.75, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, 1.0, 0.25, -1.0, -0.75, 0.75, 0.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.5, 0.25, 0.0, 0.0, -1.0, 0.25, 0.5, 0.0, 0.25, 0.75, -0.75, -0.75, -0.5, -0.75, -0.5, 0.0, -1.0, 0.25, -1.0, -1.0, 0.75, 0.5, -0.75, -0.25, -0.25, -0.25, -0.5, -0.75, 0.5, -0.5, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 0.0, 0.75, 0.0, 0.5, -0.25, 0.75, -0.75, 0.0, 0.75, 0.5, 1.0, 0.75, -0.25, -0.5, -1.0, 0.5, -0.5, -0.75, 0.75, 0.25, 0.25, 0.5, 0.75, 0.25, -0.75, 1.0, 0.0, 1.0, -1.0, -0.25, -0.5, -1.0, -0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.25, -0.75, -0.5, -0.25, 1.0, 0.75, ]);
    
    const array4 = new Float32Array([0.75, 0.0, -1.0, 0.0, 0.25, 0.75, -0.25, -0.5, 0.25, 1.0, -0.25, -0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.5, -0.25, 0.75, -1.0, 1.0, -1.0, 0.0, -0.5, 0.0, 1.0, 0.75, -0.5, 1.0, 0.5, -0.75, 0.25, 0.5, 0.25, -1.0, -1.0, -0.5, 0.75, 0.5, 0.25, -0.25, 0.25, -0.5, -0.25, -0.5, 0.0, -1.0, -0.5, -0.25, -0.25, 0.75, -0.25, 0.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.5, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, -0.25, 0.75, 0.0, 1.0, -0.5, 0.25, 0.75, 0.75, -0.75, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, 1.0, 0.75, -0.5, 0.75, 0.5, -0.75, -0.75, ]);
    
    
    const array5 = new Float32Array([0.75, -0.5, 0.5, 1.0, 1.0, 1.0, 0.0, -0.25, -0.75, -1.0, 1.0, 0.5, 1.0, 0.5, -1.0, -1.0, -0.25, -0.25, -0.25, 0.25, -0.25, -0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 0.0, -0.25, -0.25, 0.25, 0.0, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.25, -0.5, 0.0, 0.0, -0.5, -0.5, -0.5, -0.75, 0.75, 0.25, 0.0, 0.75, 0.25, 0.75, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 0.0, -0.5, 0.75, 1.0, 1.0, -0.25, -0.5, 0.5, -0.5, -0.5, 0.0, -0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, 1.0, -0.75, -0.25, 0.25, 0.5, -0.25, 1.0, 0.5, 1.0, -1.0, 0.75, -0.75, -1.0, 0.75, -0.5, -0.5, ]);
    const array6 = new Float32Array([-0.5, -0.75, 0.5, 0.0, -0.75, -0.5, -0.5, -0.75, 0.0, -0.25, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.25, -0.25, 0.75, 0.5, 0.5, -1.0, 0.5, 0.25, 0.0, 0.5, -0.75, -0.25, 0.25, -0.25, 0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.0, -0.25, 0.75, -0.5, -0.25, -0.5, 0.25, 0.0, 0.25, 0.25, 0.0, 1.0, -1.0, 1.0, -0.5, 1.0, 0.0, -1.0, -1.0, -0.5, 0.75, 0.25, -1.0, -1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 1.0, -0.5, -1.0, -1.0, -1.0, 0.75, -1.0, 1.0, -1.0, 0.0, -0.75, 0.75, 0.5, -0.25, 0.25, -0.75, -0.25, 1.0, 0.0, -1.0, 1.0, 0.0, 1.0, 0.0, 0.5, 0.25, 1.0, -0.25, 1.0, -0.25, -0.5, -1.0, -0.5, 1.0, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array7 = new Float32Array([-1.0, 0.0, -0.5, 0.0, -0.5, 0.0, 0.5, 1.0, 1.0, 0.25, 0.0, -1.0, -1.0, -0.25, -0.5, -1.0, -0.5, -0.75, -1.0, 0.0, 1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.25, -1.0, 0.0, 1.0, 0.25, 0.0, -0.25, 0.0, 0.25, 0.25, 0.25, 0.0, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 1.0, -0.75, -1.0, -1.0, 0.25, 0.75, -1.0, 0.5, -1.0, 0.75, 0.25, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, 1.0, -0.5, -0.5, -0.75, -0.75, 0.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 0.25, 0.0, -1.0, -0.25, 0.25, -0.5, -0.5, -0.25, -1.0, -0.5, 1.0, 0.25, 0.0, -1.0, 0.5, ]);
    
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.pushErrorScope("out-of-memory");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const array8 = new Float32Array([0.25, 0.5, 0.0, 0.5, 0.25, -0.5, 0.5, -0.5, 0.0, 0.75, -0.25, 1.0, 0.25, -0.75, -1.0, 0.25, -0.75, 0.5, 1.0, -0.5, 0.5, 0.0, 0.25, -0.5, 0.25, 1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, 0.5, 0.5, -0.5, 0.0, 0.5, -0.75, -0.5, -1.0, -0.5, -0.25, 0.25, 0.75, 0.5, 0.25, -0.5, -0.25, 0.75, 1.0, -1.0, -1.0, -1.0, 0.25, 1.0, -0.75, -0.25, -0.5, 0.75, -0.75, -1.0, -0.5, 0.5, -0.5, -0.75, 0.75, -0.25, -0.75, -0.5, 0.5, -0.75, 0.5, 0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 0.25, 0.0, -0.75, 0.25, 0.0, 0.75, -0.25, -0.25, -0.75, -0.75, 0.25, 1.0, 0.75, 1.0, -1.0, 1.0, 0.75, 0.0, -0.25, 0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    
    
    
    
    
    
    
    command_encoder100.popDebugGroup()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-0.75, -0.25, 0.25, 1.0, 0.25, -0.75, -0.5, 0.75, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, -1.0, 1.0, 0.25, -0.5, -1.0, -0.25, -0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 0.0, -0.5, 0.25, -0.75, 1.0, -0.75, 0.5, -0.5, -0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 0.0, 0.25, -0.25, -0.5, -0.75, 0.75, -0.75, 0.5, -1.0, 0.0, -0.25, -0.75, -0.75, -0.25, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, 0.5, -0.5, -0.25, -0.25, -0.25, -0.25, 0.75, -0.25, 1.0, -0.5, 0.25, 0.0, -0.75, 1.0, 1.0, -0.5, -0.5, 1.0, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, -0.25, 0.25, -0.5, 0.5, -0.25, 0.0, 1.0, -0.75, -1.0, 0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, ]);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    const array10 = new Float32Array([0.0, -1.0, -0.25, 1.0, -0.25, 1.0, 0.0, 0.75, 0.0, 1.0, -0.5, 1.0, 0.75, -0.75, 0.5, 0.5, -0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 0.0, 0.0, 1.0, 0.5, -0.75, -0.75, -0.25, -0.5, 1.0, 1.0, -1.0, 0.0, -0.5, 0.75, 0.25, -0.5, 0.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 1.0, -1.0, -0.75, -0.5, -0.5, 1.0, -0.25, 1.0, 0.25, 0.0, -0.5, 0.25, 0.25, -0.75, 1.0, -0.5, -0.75, -0.25, 0.0, 0.0, 0.5, 0.5, 0.0, -1.0, -0.5, -0.25, 1.0, -1.0, -0.5, -0.5, 0.5, -0.5, -0.5, -0.75, -0.5, -1.0, -1.0, 0.75, 1.0, -0.5, -0.5, -1.0, -0.5, 0.5, -0.25, -0.75, -0.75, -0.5, 0.25, 0.5, -0.75, ]);
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder101.popDebugGroup();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.popDebugGroup();
    
    command_encoder100.popDebugGroup()
    command_encoder100.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const array11 = new Float32Array([0.5, -1.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.0, -0.75, -0.75, 0.0, 0.0, -0.75, -1.0, -1.0, 0.25, -1.0, 1.0, -0.25, -0.25, 0.5, -1.0, -1.0, 0.5, -1.0, 0.25, 0.75, -0.5, -0.25, -0.25, 0.0, 1.0, -0.25, -0.5, 0.75, -0.75, 0.25, 0.5, 0.5, -0.5, -0.75, -0.5, 0.5, -0.5, 0.25, 0.25, 0.75, -0.75, 0.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.5, 0.5, 0.25, 1.0, -0.75, 0.5, -0.5, 1.0, -0.75, -0.25, -1.0, -0.75, 0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 1.0, -1.0, 0.5, 0.75, 0.0, -0.5, -0.25, 0.0, 0.5, -0.75, -1.0, -0.75, -0.5, 1.0, -0.75, -0.25, 0.0, -0.75, 0.25, 0.25, 0.25, 0.75, 0.75, -1.0, -0.25, 0.25, 1.0, -0.5, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder101.popDebugGroup()
    
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder100.popDebugGroup();
    command_encoder100.insertDebugMarker("mymarker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const command_buffer100 = command_encoder100.finish();
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const array12 = new Float32Array([-0.5, 1.0, 0.25, -1.0, 0.75, -0.75, 0.5, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, -0.75, 0.75, -0.5, -0.5, 0.5, -0.75, 0.5, 0.25, 1.0, 0.75, -1.0, -0.25, -0.75, -0.25, 0.25, 0.75, -1.0, 0.75, 0.0, 1.0, -0.25, 0.0, -0.5, 0.0, 1.0, 0.75, 0.25, 0.5, -1.0, 0.75, 0.25, -0.25, -0.5, -0.5, -0.25, -0.75, -0.25, -1.0, -0.5, -0.25, -1.0, 0.0, -0.25, 0.75, -0.25, 0.75, 0.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.75, -0.5, 0.25, 0.0, -0.25, 0.5, -0.25, -0.25, -0.25, 0.75, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.5, 0.5, -0.5, -0.25, 1.0, 0.5, -0.75, 1.0, 0.0, -0.5, 1.0, ]);
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder102.popDebugGroup();
    
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device30.destroy();
    
    
    
    const command_buffer102 = command_encoder102.finish();
    
    
    
    
    
    
    const array13 = new Float32Array([1.0, 0.75, 0.25, -0.75, 0.25, -0.75, 0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 0.5, 0.5, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, 0.75, 0.75, 1.0, 1.0, -1.0, -1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.5, 1.0, -0.25, 0.0, -1.0, -0.25, -0.25, -1.0, 0.5, 0.0, 0.5, 0.75, 0.25, 0.25, 0.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 0.75, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -1.0, 0.0, 0.75, 0.5, -0.5, -0.75, 0.0, -0.5, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.75, 0.75, 0.25, 0.75, 0.5, -0.5, 0.75, -1.0, 0.25, 1.0, 0.25, -1.0, -0.75, -0.25, 1.0, ]);
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const array14 = new Float32Array([0.25, 0.25, -1.0, 0.75, 0.75, 0.25, -0.25, -0.25, -1.0, 0.75, 0.75, -0.75, -0.5, 1.0, 1.0, -0.75, 0.75, -1.0, 0.75, 0.25, 1.0, -0.25, 0.25, -0.5, 1.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.0, 0.75, 1.0, 0.25, 0.0, 0.75, 0.0, -0.5, -0.5, 0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 1.0, -1.0, 0.25, 0.75, -0.75, 0.75, 0.25, -0.75, 0.5, 0.25, 1.0, 0.0, 0.25, 0.25, -1.0, -0.25, -1.0, 0.75, 0.75, -0.5, -0.25, 1.0, -0.75, -0.75, -0.5, -1.0, 0.75, -0.25, -0.25, 0.0, -0.25, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, 0.5, -1.0, 0.75, 0.0, 0.25, -1.0, -1.0, ]);
    
    
    
    render_bundle_encoder102.popDebugGroup();
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    
    device50.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    device40.destroy();
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device10.queue.submit([command_buffer102, ]);
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    
    command_encoder103.popDebugGroup()
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    render_bundle_encoder100.popDebugGroup();
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile(__dirname + '/shader_module1015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module1014,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1014,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module1014,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1014,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    
    var shader_module1017_code = "";
    try {
        shader_module1017_code = await fs.readFile(__dirname + '/shader_module1017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1017 = await device10.createShaderModule({ label: "shader_module1017", code: shader_module1017_code })
    
    command_encoder104.insertDebugMarker("mymarker");
    
    
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module1016,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1016,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    var shader_module1018_code = "";
    try {
        shader_module1018_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1018 = await device10.createShaderModule({ label: "shader_module1018", code: shader_module1018_code })
    render_bundle_encoder101.popDebugGroup();
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder103.popDebugGroup()
    
    
    command_encoder107.pushDebugGroup("mygroupmarker")
    
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_buffer104 = command_encoder104.finish();
    command_encoder105.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    
    
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const array15 = new Float32Array([0.25, 0.5, -1.0, 0.25, 0.0, -0.5, 0.5, 0.25, -0.75, 0.75, 0.0, -0.75, 0.5, 1.0, -0.5, -0.25, 1.0, -0.75, -0.75, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 1.0, -0.75, 1.0, 0.75, 1.0, -0.5, -0.25, 0.75, 0.5, 0.25, -0.75, 1.0, 0.75, -0.75, -0.25, 0.5, -0.75, 0.0, -1.0, -0.75, -0.5, 0.0, 0.0, 0.0, 0.5, 1.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.5, -0.75, -1.0, 0.5, 0.5, -0.25, 0.25, -0.75, 0.5, -0.5, 0.25, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, 1.0, 0.5, -0.75, 0.75, -0.25, -0.5, 0.5, 0.25, -0.75, -1.0, -0.75, -0.75, -0.75, 0.5, 0.0, -0.5, -0.75, -0.25, -0.5, 1.0, 0.0, 0.0, 0.5, 0.75, 0.5, -1.0, -0.75, ]);
    
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    
    
    const array16 = new Float32Array([0.5, -0.25, 0.75, -1.0, 0.25, -0.25, 0.5, -0.75, 0.5, 0.25, -0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, -0.75, 0.5, 0.25, -0.75, 0.25, 0.5, 0.25, -0.5, 0.0, 0.75, -1.0, 0.0, -0.25, 1.0, -0.5, -0.25, 1.0, 0.0, -0.25, -1.0, 0.5, 1.0, -1.0, 1.0, -0.75, 1.0, -0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.75, 1.0, 0.5, -1.0, 1.0, -0.25, -0.5, -0.25, 0.75, -0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 0.0, 0.25, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, 0.5, 0.5, 0.5, 0.5, 0.25, 0.25, -0.25, 0.0, 0.75, 1.0, -0.25, 0.5, 1.0, 0.0, -0.25, -0.5, -0.25, -1.0, 0.5, 0.0, 1.0, -0.25, -0.25, 0.25, -0.25, -1.0, ]);
    command_encoder106.insertDebugMarker("mymarker");
    
    const array17 = new Float32Array([0.75, -0.5, -1.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.5, 1.0, -0.5, -0.25, -0.25, 0.0, 0.75, 0.25, -1.0, 0.5, -0.25, -1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -1.0, 1.0, 0.5, 1.0, -0.25, 0.0, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.0, -0.5, 1.0, 0.0, -0.25, 0.5, -1.0, 0.5, -0.25, 0.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.5, 0.75, 0.0, -0.5, 0.5, -1.0, 0.5, 0.75, -0.75, 1.0, 1.0, -0.75, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, -1.0, 0.25, 1.0, 0.25, 0.25, -0.5, 0.0, -1.0, 1.0, 0.75, 0.0, -0.5, 0.75, 0.25, -0.75, 0.25, -0.5, 1.0, 1.0, 0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.5, ]);
    command_encoder106.insertDebugMarker("mymarker");
    
    
    
    const command_buffer106 = command_encoder106.finish();
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder107.insertDebugMarker("mymarker");
    
    
    
    
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const array18 = new Float32Array([0.5, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, 0.25, 0.5, 0.75, -0.25, -1.0, -0.5, 0.5, -1.0, 0.0, 0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.5, -0.5, -0.5, 0.75, 0.25, 1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.25, -0.5, 0.0, -0.75, 0.5, -1.0, -0.5, -0.5, 0.75, 0.75, 0.25, -0.75, 1.0, -0.5, -0.75, 0.25, -0.75, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 0.5, -1.0, -0.5, 0.5, 0.0, 0.75, -0.75, -0.25, -0.5, -1.0, 0.25, -0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -0.5, 0.25, 0.0, 0.5, -0.5, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, -0.25, 0.5, 0.75, -1.0, -0.5, 0.75, 1.0, 0.5, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, -1.0, 0.25, ]);
    
    
    
    device10.queue.submit([command_buffer106, ]);
    
    const array19 = new Float32Array([0.25, 0.5, 0.25, 0.75, -0.25, 0.5, -1.0, -0.25, -0.5, 0.5, 0.75, -0.5, -0.5, 0.75, 0.5, 0.5, 0.0, -0.25, 0.5, -0.75, -0.5, 0.25, 0.75, -0.25, -0.5, 0.0, 1.0, -0.75, -0.25, -1.0, -0.25, 0.75, -1.0, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.0, 1.0, -0.25, 0.25, -1.0, 0.75, 1.0, -0.25, 0.0, 0.25, 1.0, 0.75, 0.25, 0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, 1.0, -1.0, 1.0, -1.0, -0.25, 1.0, 1.0, 0.5, 1.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.0, 0.5, -0.25, 0.0, 0.25, -0.5, -0.75, 1.0, -0.25, 0.25, 0.25, 0.25, ]);
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module1018,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1018,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const array20 = new Float32Array([-1.0, 0.75, 0.0, 0.5, 0.75, 0.25, 0.5, 0.25, -0.25, 1.0, -0.5, 0.0, -0.25, -0.75, -1.0, 0.25, -1.0, 0.0, 0.75, 0.5, 0.5, 0.0, 0.75, -0.5, 0.5, -0.75, -0.75, 0.25, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, -0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 0.75, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.25, 0.5, -0.25, 0.0, -0.5, -0.75, -1.0, -1.0, -0.75, -0.75, 0.5, 0.5, -0.75, 0.0, 1.0, -0.5, 0.25, 0.5, 0.25, 0.75, 0.5, 0.25, 0.75, 0.0, -1.0, -0.25, 0.0, 0.75, -1.0, 1.0, 0.5, -0.75, -1.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.25, 0.5, 0.5, -0.25, 0.75, -0.5, -0.25, -0.5, -0.75, 0.5, 0.5, -0.5, -0.75, -0.75, -0.75, ]);
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const render_pipeline1024 = device10.createRenderPipeline({
        label: "render_pipeline1024",
        vertex: {
            module: shader_module1016,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1016,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    const render_pipeline1025 = device10.createRenderPipeline({
        label: "render_pipeline1025",
        vertex: {
            module: shader_module1018,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1018,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    const render_pipeline1026 = device10.createRenderPipeline({
        label: "render_pipeline1026",
        vertex: {
            module: shader_module1014,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1014,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const render_pipeline1027 = device10.createRenderPipeline({
        label: "render_pipeline1027",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    var shader_module1019_code = "";
    try {
        shader_module1019_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1019 = await device10.createShaderModule({ label: "shader_module1019", code: shader_module1019_code })
    
    var shader_module1020_code = "";
    try {
        shader_module1020_code = await fs.readFile(__dirname + '/shader_module1020.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1020 = await device10.createShaderModule({ label: "shader_module1020", code: shader_module1020_code })
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    
    const array21 = new Float32Array([-0.5, 0.25, 0.75, 0.75, -1.0, -0.5, 0.0, -0.75, -0.75, 0.0, -0.5, -1.0, 0.5, 0.75, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 1.0, 0.5, 0.5, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.0, -0.75, 0.5, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.75, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, -0.25, -1.0, 0.5, 1.0, -0.25, -1.0, -0.75, 1.0, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 0.5, 0.75, -0.25, 0.0, 1.0, -0.75, -0.5, -0.75, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.75, 0.25, -0.5, -0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.75, 0.25, -0.25, -1.0, -0.25, -0.75, -0.25, -0.25, 1.0, -0.75, 0.75, -0.25, 0.5, 1.0, -1.0, ]);
    
    
    command_encoder103.insertDebugMarker("mymarker");
    
    const command_buffer108 = command_encoder108.finish();
    
    
    command_encoder105.popDebugGroup()
    const command_buffer109 = command_encoder109.finish();
    
    var shader_module1021_code = "";
    try {
        shader_module1021_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1021 = await device10.createShaderModule({ label: "shader_module1021", code: shader_module1021_code })
    const command_buffer105 = command_encoder105.finish();
    
    
    var shader_module1022_code = "";
    try {
        shader_module1022_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1022 = await device10.createShaderModule({ label: "shader_module1022", code: shader_module1022_code })
    command_encoder103.popDebugGroup()
    
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    var shader_module1023_code = "";
    try {
        shader_module1023_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1023 = await device10.createShaderModule({ label: "shader_module1023", code: shader_module1023_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module1024_code = "";
    try {
        shader_module1024_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1024 = await device10.createShaderModule({ label: "shader_module1024", code: shader_module1024_code })
    
    
    
    
    const render_pipeline1028 = device10.createRenderPipeline({
        label: "render_pipeline1028",
        vertex: {
            module: shader_module1021,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1021,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const render_pipeline1029 = device10.createRenderPipeline({
        label: "render_pipeline1029",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    
    const render_pipeline1030 = device10.createRenderPipeline({
        label: "render_pipeline1030",
        vertex: {
            module: shader_module1018,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1018,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline1031 = device10.createRenderPipeline({
        label: "render_pipeline1031",
        vertex: {
            module: shader_module1024,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1024,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline1032 = device10.createRenderPipeline({
        label: "render_pipeline1032",
        vertex: {
            module: shader_module1023,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1023,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    const render_pipeline1033 = device10.createRenderPipeline({
        label: "render_pipeline1033",
        vertex: {
            module: shader_module1022,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1022,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const command_buffer1011 = command_encoder1011.finish();
    
    const command_encoder1012 = device10.createCommandEncoder({ label: "command_encoder1012" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline1034 = device10.createRenderPipeline({
        label: "render_pipeline1034",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline1035 = device10.createRenderPipeline({
        label: "render_pipeline1035",
        vertex: {
            module: shader_module1016,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1016,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    
    const render_pipeline1036 = device10.createRenderPipeline({
        label: "render_pipeline1036",
        vertex: {
            module: shader_module1023,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1023,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    
    
    const sampler1011 = device10.createSampler( { label: "sampler1011" } );
    
    
    
    
    command_encoder1010.pushDebugGroup("mygroupmarker")
    var shader_module1025_code = "";
    try {
        shader_module1025_code = await fs.readFile(__dirname + '/shader_module1025.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1025 = await device10.createShaderModule({ label: "shader_module1025", code: shader_module1025_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    
    
    const command_encoder1013 = device10.createCommandEncoder({ label: "command_encoder1013" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_buffer1013 = command_encoder1013.finish();
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const command_encoder1014 = device10.createCommandEncoder({ label: "command_encoder1014" });
    const command_buffer1014 = command_encoder1014.finish();
    
    command_encoder107.popDebugGroup()
    const command_buffer1012 = command_encoder1012.finish();
    command_encoder1010.popDebugGroup()
    const command_buffer1010 = command_encoder1010.finish();
    device10.queue.submit([command_buffer104, command_buffer105, command_buffer109, command_buffer1010, command_buffer1011, command_buffer1012, command_buffer1013, command_buffer1014, ]);
    const command_buffer107 = command_encoder107.finish();
    device10.queue.submit([command_buffer103, command_buffer107, command_buffer108, ]);
}