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
    
    const array0 = new Float32Array([0.75, 0.75, 0.25, -0.25, -1.0, 0.75, 0.75, 1.0, -1.0, 0.0, 1.0, 0.75, 0.25, 0.75, 0.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.5, 0.0, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, 0.75, 0.0, -1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -0.5, 0.0, 0.25, 0.0, -1.0, -0.75, -0.5, 0.25, 1.0, 0.0, -0.25, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, -0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -1.0, 0.0, -1.0, -0.25, 1.0, 1.0, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, 1.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.75, -1.0, -0.75, -1.0, 0.75, -0.25, 1.0, 0.25, 0.0, 0.75, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    
    
    const array1 = new Float32Array([0.0, 0.5, -0.75, 0.0, 0.0, 0.5, -0.25, 0.25, 1.0, -0.25, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, -0.25, 0.5, -0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 0.25, -0.5, -0.25, 0.5, -0.25, 0.5, -0.75, -0.5, 0.5, 0.75, 0.25, 0.25, 0.0, -0.75, 1.0, -0.25, -0.25, 1.0, -0.75, 0.0, 0.75, -0.75, 0.0, 0.0, 0.25, -1.0, 0.25, 0.5, 0.75, -0.75, -0.75, 0.0, -1.0, 1.0, 1.0, -0.25, -0.5, 0.25, -1.0, 1.0, -0.75, 0.75, 1.0, 1.0, 0.5, -0.75, 1.0, -0.75, -0.5, 0.5, 0.5, 1.0, 0.0, 0.75, 0.0, -0.25, -0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 1.0, -0.25, 0.0, 0.25, -0.75, -0.25, 1.0, -1.0, 1.0, 0.25, -0.5, 0.0, -0.75, -0.25, ]);
    
    
    const array2 = new Float32Array([-0.5, -0.5, 0.75, 0.75, 0.0, 0.0, -0.25, 0.0, -0.25, -0.5, -0.5, -1.0, -0.25, 1.0, -0.75, 0.25, -0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.25, -0.25, -0.5, -0.25, 0.5, 0.75, 0.75, -0.75, 0.0, 0.25, 0.25, -0.75, 0.5, 0.75, -1.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.25, -1.0, -0.75, -0.75, -0.5, 0.25, -0.25, 1.0, 0.75, 0.5, 0.25, -0.25, -0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, 0.0, 0.25, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.0, ]);
    
    
    
    const array3 = new Float32Array([0.75, 0.0, 0.25, -0.25, -0.75, -0.5, -1.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.0, 0.75, 1.0, -0.5, 0.75, -0.25, -0.5, 0.25, -1.0, -0.25, -1.0, 0.75, 1.0, 0.0, -0.5, -0.75, -0.25, 0.5, -0.25, 0.0, 1.0, -0.75, 0.25, 0.75, -0.5, 0.0, 1.0, -1.0, -0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 0.75, -0.5, -0.75, -0.5, -0.75, -1.0, -0.5, -1.0, -1.0, 0.75, -1.0, 0.5, 0.75, -0.75, -0.5, -0.5, -0.75, 0.25, -0.25, 0.25, -1.0, 0.75, -0.5, -1.0, 0.75, 0.75, -0.25, 0.0, 0.5, 1.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, -1.0, 1.0, -1.0, -0.75, 0.5, -0.75, -0.25, 0.25, -0.5, -0.75, -0.75, -0.25, 0.5, 0.75, -0.75, ]);
    const array4 = new Float32Array([-0.25, 1.0, 0.75, -1.0, -0.25, 0.25, 0.0, 0.0, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.75, 0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 1.0, 0.25, -0.5, 0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 1.0, 0.0, -0.25, -0.25, 0.5, 0.5, 0.25, -0.5, 0.25, 1.0, 0.75, 0.25, -0.25, 0.5, -0.5, 0.0, 1.0, -0.25, 1.0, 0.75, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, 0.0, 0.75, 0.25, -0.25, 0.5, 0.75, -0.5, 0.25, 0.75, -0.75, -1.0, -0.5, 0.5, -0.75, -1.0, -0.25, -0.25, 1.0, 0.0, 0.25, 0.75, 0.25, 0.75, 0.25, 0.75, 1.0, -0.75, 0.75, 0.5, 0.75, -1.0, -0.5, -0.5, -1.0, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 0.75, 0.5, ]);
    const array5 = new Float32Array([-0.25, 0.0, 0.0, 1.0, 0.0, 0.0, 0.25, 1.0, -0.25, -0.75, -0.5, 0.25, 0.25, -0.25, -0.5, 0.0, 0.75, 0.25, -0.25, 0.75, 0.75, 0.5, -0.75, 0.0, 0.25, 1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, 1.0, -0.25, -1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.5, 1.0, -0.25, -0.75, -1.0, 0.25, 0.25, -0.25, -0.5, 0.25, 0.0, 1.0, 1.0, 0.25, -1.0, -0.25, -0.5, 1.0, -1.0, 0.0, 0.25, 0.5, 0.5, -0.25, -0.5, 0.25, 0.75, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, 0.5, 0.25, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, 0.75, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -1.0, 0.25, 1.0, 0.75, -0.25, 0.75, -1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([-0.25, 1.0, 0.75, -0.25, -0.25, -1.0, -0.75, 0.5, 1.0, 0.0, 0.25, 0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 0.0, 0.0, 1.0, 0.0, 1.0, -0.5, -1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, -0.25, 1.0, 0.75, 0.0, -1.0, 1.0, 1.0, -0.5, 0.25, 0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 0.5, -0.75, 0.25, -0.5, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 1.0, -0.5, -0.75, 1.0, 0.75, 0.25, 0.0, 0.25, 1.0, 0.0, -0.25, 0.5, 1.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.5, 0.25, 0.25, 0.25, -0.25, 0.0, 0.25, 0.25, 0.5, -0.75, 0.5, -0.5, ]);
    
    
    const array7 = new Float32Array([-0.75, 0.25, -0.5, 0.5, 0.5, 1.0, 1.0, 0.25, 0.0, -0.75, -1.0, 1.0, 0.0, 0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -1.0, -1.0, 1.0, 0.75, 1.0, 1.0, -0.75, 0.25, -0.25, -0.75, -0.25, 1.0, -1.0, 0.75, 0.75, 0.25, 0.5, -0.25, -0.5, -1.0, 0.75, -0.5, -0.25, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, 0.0, -1.0, 0.75, -0.5, -1.0, 0.75, -0.25, -0.25, 1.0, 0.0, -0.25, 0.5, -0.5, -0.25, -0.25, 0.0, 0.5, -0.5, -1.0, 1.0, 0.5, 0.5, 0.25, 1.0, -0.5, 0.5, -0.75, 0.0, 0.0, 0.5, 0.5, 1.0, 0.75, -0.25, 0.0, 1.0, -0.25, 0.0, -0.75, 0.25, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 0.5, -1.0, -0.25, ]);
    const array8 = new Float32Array([-0.25, -1.0, -0.5, 0.0, 0.5, 0.75, -1.0, -0.5, -1.0, -1.0, 0.75, -0.25, -0.5, -0.75, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.25, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 0.0, 0.25, -0.25, -1.0, 0.0, 0.5, 0.25, 0.25, 1.0, -0.25, 0.0, 0.0, 0.5, 0.25, -0.5, 0.5, -1.0, 0.0, 1.0, -1.0, -0.25, 0.0, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, 0.75, 0.25, -0.5, -1.0, -0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, 0.75, 0.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 0.0, 0.0, 0.75, 0.75, 0.0, 1.0, 1.0, 0.0, 0.0, ]);
    
    
    const array9 = new Float32Array([0.5, 1.0, -0.5, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, 1.0, -0.5, -0.25, 0.5, 0.5, 0.0, -1.0, -0.5, -0.75, 1.0, 0.25, -0.5, -1.0, -0.5, -0.25, 1.0, -0.5, 1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.75, 1.0, -0.5, 1.0, -1.0, -0.5, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 0.25, 0.0, -0.25, -0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 1.0, 0.25, 1.0, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.0, 0.25, 1.0, -0.5, -0.75, -0.75, 0.25, 0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.5, 0.5, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, -1.0, 0.0, 0.5, -0.5, 0.25, -0.75, 1.0, -0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array10 = new Float32Array([0.75, 0.0, 0.25, -0.25, -0.25, 1.0, 0.5, 0.0, -0.25, 1.0, -1.0, 0.5, -0.75, 1.0, -0.25, 0.25, 0.5, 0.5, -0.5, -0.5, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.25, -0.75, 1.0, -0.75, 0.5, 1.0, 0.0, -0.75, 0.0, 0.75, -0.5, -0.25, -0.5, -0.5, -0.5, 0.75, -1.0, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, -0.25, 0.25, -0.5, -0.75, -0.25, -1.0, 0.5, -0.5, 1.0, 1.0, 0.0, 0.75, 0.75, -0.25, -1.0, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, 0.75, 0.0, 0.75, -0.75, -0.25, 0.0, 0.5, 0.5, 0.75, -0.5, 0.0, -0.25, 0.75, 0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.5, -0.75, -0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 0.75, -0.25, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    command_encoder100.popDebugGroup()
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder101.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array11 = new Float32Array([-0.25, 0.0, -0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.0, -0.75, 1.0, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, -1.0, 0.0, 0.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.5, -0.5, 0.25, 0.5, 0.5, 0.25, 0.75, 0.5, 0.25, 0.0, 0.0, 0.0, 0.0, -0.5, 0.25, 0.25, -0.75, 0.0, -0.75, 0.0, -0.5, -0.75, -0.25, 0.25, 0.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.25, -1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 0.25, -1.0, 0.25, 1.0, 0.5, 1.0, 0.5, 0.25, 0.75, -0.5, 0.0, 0.5, 0.25, 0.5, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.75, 0.0, -0.5, -0.25, 0.25, -1.0, 0.5, -0.75, 1.0, 0.75, ]);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder102.insertDebugMarker("mymarker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device10.pushErrorScope("internal");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array12 = new Float32Array([0.5, 0.25, -0.75, -0.25, -0.5, -0.25, 0.5, 0.75, -0.75, 0.75, -1.0, -0.5, 0.75, -0.25, 1.0, 0.75, 0.75, -0.75, -0.25, 0.75, -0.75, -1.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, 0.25, 0.0, -1.0, 0.25, 0.5, -0.75, 0.0, -0.25, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, 1.0, -0.25, 0.0, 0.75, 0.0, 0.75, -0.25, 0.75, 0.5, 0.75, -0.75, 0.75, 0.5, 0.75, 0.0, -0.5, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, 0.25, -0.75, 0.75, -0.75, 1.0, -0.75, 0.0, -1.0, 0.5, 0.25, -0.25, 0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 0.5, 0.0, 0.25, 1.0, -0.75, -1.0, -0.5, -0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 0.5, 0.5, -1.0, -0.25, ]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setStencilReference(1);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const array13 = new Float32Array([-0.25, -0.5, -0.5, -0.5, 0.25, 1.0, -0.75, -0.75, -0.75, 0.75, 0.0, -1.0, -0.25, -1.0, -0.5, -0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 0.25, -0.5, -0.75, 0.5, 0.75, -0.75, 0.5, 0.75, 0.0, -1.0, -0.5, 0.0, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, -0.25, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, 1.0, -0.25, 0.5, 1.0, -1.0, -1.0, 0.75, -0.75, -0.25, -0.25, -1.0, -0.5, 0.25, -1.0, -0.75, 0.0, -1.0, 0.75, 0.5, 0.5, -1.0, -0.75, -1.0, 0.75, -1.0, 0.0, 1.0, 0.0, -0.25, -0.5, 0.25, -0.75, 0.5, 0.5, 0.5, 0.5, 0.5, -1.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.0, 0.25, -1.0, 0.0, 0.25, -1.0, -0.75, -0.5, -0.5, 0.75, -0.25, ]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.popDebugGroup();
    
    
    
    query100.destroy()
    buffer102.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    query102.destroy()
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.executeBundles([])
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1040.setStencilReference(1);
    
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    render_pass_encoder1000.setStencilReference(1);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_pass_encoder1030.setStencilReference(1);
    
    
    query101.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1050.executeBundles([])
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    render_pass_encoder1060.setPipeline(render_pipeline100);
    
    buffer103.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1030.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline102);
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer101, 0, array13, 0, array13.length);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group100);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1050.setStencilReference(1);
    
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    render_pass_encoder1030.popDebugGroup();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const array14 = new Float32Array([0.0, 0.5, 0.0, -0.75, 0.0, 0.25, 0.75, 0.5, 0.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.5, 1.0, -0.25, 0.0, -1.0, -0.75, 0.0, 0.25, -0.25, -0.25, -0.25, 0.0, 0.25, 0.5, -0.25, 0.5, 1.0, 0.5, 0.0, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -0.75, 0.25, 1.0, 0.5, 1.0, -0.25, 0.75, 0.5, 0.75, 0.25, 0.0, 1.0, 0.75, 0.75, 0.25, 0.25, -0.5, 1.0, 1.0, -0.75, 0.25, 0.75, -1.0, 0.25, -0.25, -0.75, -0.75, 0.25, 1.0, -1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.25, -1.0, -0.25, -0.25, -0.5, 0.25, 0.25, 1.0, -1.0, 1.0, 0.25, -0.25, -0.25, -0.5, 0.0, -0.5, -0.5, -0.5, -1.0, 0.5, -1.0, 0.0, 0.0, -0.25, ]);
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    buffer107.destroy()
    
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1050.setStencilReference(1);
    query102.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1060.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1000.setStencilReference(1);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1050.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const array15 = new Float32Array([1.0, -0.5, -0.5, 0.0, -1.0, -0.75, -0.5, -0.5, 1.0, -0.25, -1.0, -1.0, 0.0, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, 0.0, 1.0, -0.75, -0.25, -0.25, 0.5, 0.0, 0.5, 0.0, 0.75, 1.0, 0.75, 1.0, -0.5, -0.75, 0.0, -0.5, -0.5, 0.75, -0.75, 0.25, -0.25, 0.0, -0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.5, -0.5, 0.25, -0.25, 1.0, 1.0, 0.0, -0.75, 1.0, 0.25, 0.75, -0.25, 0.25, -0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -0.25, -1.0, 0.0, -0.25, 0.0, 0.0, -0.25, 0.25, -1.0, 0.5, 0.0, -0.25, 0.0, 1.0, -1.0, -0.5, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -1.0, -0.5, -0.25, -1.0, -0.25, 0.25, 0.25, -0.75, -0.75, -0.5, 0.5, ]);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1040.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder1050.setPipeline(render_pipeline104);
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    buffer108.destroy()
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer105.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    texture100.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1060.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.pushErrorScope("internal");
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1060.setVertexBuffer(0, buffer102);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1060.setStencilReference(1);
    render_bundle_encoder101.setPipeline(render_pipeline102);
    query102.destroy()
    
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.setPipeline(compute_pipeline107);
    render_pass_encoder1060.draw(3);
    device10.queue.writeBuffer(buffer101, 0, array15, 0, array15.length);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array14, 0, array14.length);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder102.setVertexBuffer(0, buffer102);
    render_pass_encoder1060.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer1012.destroy()
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer109.destroy()
    
    device10.queue.writeBuffer(buffer101, 0, array11, 0, array11.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array15, 0, array15.length);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.popDebugGroup();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer101, 0, array14, 0, array14.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1011.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    buffer101.destroy()
    
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_pass_encoder1040.popDebugGroup();
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    
    
    
    
    
    
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.end();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query100
    });
    device30.pushErrorScope("internal");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1013.destroy()
    texture200.destroy();
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer200.destroy()
    render_pass_encoder1050.setStencilReference(1);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_pass_encoder1061.executeBundles([])
    
    render_pass_encoder1000.setStencilReference(1);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1030.draw(3);
    render_bundle_encoder101.popDebugGroup();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer1018.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setVertexBuffer(0, buffer1018);
    buffer1010.destroy()
    device20.destroy();
    render_bundle_encoder100.popDebugGroup();
    buffer106.destroy()
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1050.setVertexBuffer(0, buffer1018);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1061.pushDebugGroup("group_marker");
    const command_buffer300 = command_encoder300.finish();
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1061.setPipeline(render_pipeline104);
    buffer1022.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.draw(3);
    render_pass_encoder1040.setStencilReference(1);
    buffer1019.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1061.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.draw(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1050.end();
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1061.popDebugGroup();
    const command_buffer107 = command_encoder107.finish();
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1061.setBindGroup(0, bind_group108);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    render_pass_encoder1061.setVertexBuffer(0, buffer1018);
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.end();
    command_encoder101.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1061.end();
    device10.queue.submit([command_buffer107, ]);
    const command_buffer102 = command_encoder102.finish();
    const command_buffer106 = command_encoder106.finish();
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
}