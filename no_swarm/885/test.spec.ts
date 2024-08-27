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
    const array0 = new Float32Array([0.25, 1.0, -0.25, 1.0, -1.0, 0.75, 0.0, 0.5, -0.25, -1.0, 0.75, 1.0, -0.25, -0.5, -0.75, 0.0, 1.0, -0.75, -1.0, -0.75, -1.0, -0.75, 0.25, 0.0, -0.5, 0.75, 1.0, 0.0, -0.25, 0.25, -0.75, -1.0, 0.25, -0.75, 0.75, 0.25, 1.0, -0.5, -1.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.75, -0.75, 0.5, 0.25, 0.0, 0.0, 1.0, 0.75, 0.5, 0.0, -0.5, 0.5, -0.5, -0.5, -0.75, 0.75, -0.5, -0.25, 0.75, 0.75, 0.5, -0.5, 0.25, 1.0, 0.75, -1.0, 0.5, 0.0, -0.75, 1.0, 0.0, 0.5, 0.75, -0.75, 0.0, 0.25, -1.0, 0.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.25, 0.0, 0.5, -0.5, -1.0, -1.0, -0.5, -0.75, ]);
    const array1 = new Float32Array([0.5, 0.5, 0.0, -1.0, -0.5, 0.0, -0.5, 1.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, 0.5, 1.0, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, 0.25, 0.5, -1.0, 0.25, -0.75, 1.0, -0.75, 1.0, -1.0, 0.75, 0.25, 0.5, 0.25, 0.25, 1.0, 0.75, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, -0.75, -0.25, -0.25, -0.25, -0.25, 0.25, 1.0, 1.0, -0.5, 0.75, 1.0, 0.0, -0.75, 0.25, -0.75, 0.25, -0.5, 0.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.0, -0.5, 0.75, -0.75, 0.25, 0.0, 0.0, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, 1.0, 0.75, 0.5, -0.25, -1.0, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, ]);
    
    const array2 = new Float32Array([0.0, -0.75, 1.0, -1.0, -0.75, 0.5, 0.0, 0.25, 0.25, -0.25, -0.5, 1.0, 0.5, 0.5, -0.75, -0.75, 0.25, 0.25, 0.75, -0.5, 0.5, -0.75, -0.75, -0.5, -1.0, 0.0, 1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.5, 1.0, 0.0, 0.5, -1.0, 0.5, 0.0, -0.5, 0.25, -0.25, 0.5, -1.0, -0.25, 0.5, -0.75, -0.25, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, -0.25, 0.25, 0.25, 0.75, -0.75, -0.25, 0.0, 0.0, -0.25, 0.25, -0.5, 1.0, 0.75, 0.5, -1.0, 1.0, -0.75, -0.75, 0.25, -0.25, 0.25, -0.5, 0.5, 0.5, -0.75, 0.25, -0.5, 0.0, 1.0, 0.5, -0.5, 0.25, -0.5, 0.25, -1.0, 0.75, 0.25, -0.25, 0.0, 0.0, 0.75, 0.75, 1.0, 0.0, 0.0, 0.75, ]);
    const array3 = new Float32Array([-1.0, -0.5, -1.0, 0.0, -1.0, -1.0, -0.75, 0.5, -0.75, -0.25, 0.75, 0.25, -1.0, 0.0, 0.5, -0.5, 1.0, 0.0, -1.0, -0.25, -0.25, 0.25, 0.75, -0.25, 0.75, 0.25, 0.75, -0.5, 0.25, 0.25, -0.25, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, 0.25, -0.25, -0.25, -0.25, -0.25, 1.0, 0.75, 0.25, 1.0, -0.75, -0.75, 1.0, -0.25, 0.0, 0.75, 0.0, 0.75, -0.75, 0.5, -0.5, 0.0, -1.0, 0.75, 0.75, 0.0, 1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.75, 0.75, -0.5, 0.75, -0.25, -0.25, -0.5, 0.0, 0.0, -0.75, 0.75, 0.0, 1.0, -0.25, 0.75, -0.25, -1.0, 0.25, -0.5, 0.5, -1.0, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([-1.0, 0.5, 0.5, -0.5, -1.0, -0.5, -0.5, -0.75, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, 0.25, 0.25, -0.75, -0.25, -0.75, 0.75, -0.5, -1.0, 1.0, -0.5, -0.25, 0.75, 0.75, 0.0, -0.25, 0.75, 0.0, 0.25, 0.0, -0.75, 1.0, -0.25, -0.25, -0.5, 0.25, -0.5, -1.0, -1.0, 0.75, -0.25, 0.75, -0.25, -0.75, -1.0, -0.75, -0.75, -0.25, -0.25, 0.25, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, 0.75, 0.75, 0.25, 0.0, 0.0, 0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 0.75, -0.5, 1.0, 1.0, -0.5, -0.5, -0.25, -0.75, -0.25, 0.0, 0.5, 0.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 1.0, 1.0, 1.0, 0.5, -0.75, -0.75, 0.5, -0.5, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array5 = new Float32Array([0.75, 0.75, 0.5, 0.0, -0.5, 0.5, -0.5, 0.25, 1.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.0, -0.25, -0.5, -0.25, -0.25, -0.5, 0.0, 0.25, 1.0, -1.0, 0.0, 1.0, -0.25, -0.75, 1.0, 0.0, 0.25, 1.0, -0.25, -0.5, -0.25, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, 1.0, -0.25, 0.25, -0.5, -0.75, -1.0, 0.25, -1.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.0, 0.75, -0.25, 0.25, 0.5, 1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 0.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.0, 0.75, 0.25, -1.0, 1.0, 0.25, -1.0, -1.0, 0.75, -1.0, -0.75, -0.25, 1.0, -0.25, -0.5, 0.75, 0.5, 0.25, 1.0, -1.0, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, 1.0, -0.25, 1.0, ]);
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array6 = new Float32Array([-1.0, 0.75, 0.25, -0.5, 0.75, -0.75, 0.5, -0.5, 1.0, -0.75, -0.5, -0.5, -0.25, 1.0, 0.75, -0.75, -1.0, 0.5, -1.0, -0.25, -0.5, 0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 0.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.0, -1.0, 0.5, -0.75, -1.0, 1.0, 0.75, -1.0, 0.25, 1.0, -1.0, 1.0, -1.0, 0.5, -0.5, 0.75, -1.0, 1.0, -1.0, 0.75, -0.25, -0.75, 0.5, 1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.5, 1.0, 1.0, 1.0, 1.0, -0.5, -0.75, -0.25, 0.5, 0.5, 1.0, -0.5, -1.0, 0.5, 1.0, 0.25, -0.5, 0.25, -0.5, 0.75, 0.0, -0.5, -0.75, 0.0, 0.25, -0.75, 0.0, 0.0, -1.0, 0.0, -0.75, 0.5, -0.5, -1.0, 0.0, -1.0, ]);
    
    const array7 = new Float32Array([0.0, -1.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.25, 0.25, 1.0, 0.75, 1.0, -0.25, -0.75, 0.0, -1.0, -0.5, 0.5, 0.25, -1.0, 0.25, -0.75, 0.5, 0.5, 0.0, -0.25, 0.25, 0.75, 1.0, 0.0, -0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.75, 0.0, -0.5, 0.0, 0.0, -0.75, -0.75, -0.5, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, 0.5, 1.0, -0.25, 0.75, 0.75, 0.5, -0.25, 1.0, -0.5, 0.25, 0.0, -0.25, -0.25, -1.0, 0.75, 0.0, -0.75, 0.0, -0.5, -0.75, -1.0, -1.0, 1.0, 0.5, 0.0, -0.25, -0.25, -0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.75, 0.75, 0.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.5, ]);
    device30.pushErrorScope("validation");
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const array8 = new Float32Array([-0.5, -0.75, -0.25, 0.75, 0.5, 0.25, -1.0, 0.75, 0.75, 0.75, -0.5, 0.0, -0.25, 0.0, 1.0, -0.5, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, 0.75, -0.5, -0.5, 0.0, -0.5, -0.25, 1.0, 0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 1.0, 0.5, -0.75, -0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.0, -0.5, -0.25, -0.75, 0.0, -0.5, -0.5, 0.0, -0.75, 0.75, 0.0, 1.0, -0.75, 0.5, -0.75, -0.25, -0.5, 0.75, 0.5, 0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, 1.0, -0.75, 0.25, 1.0, 0.5, 0.25, 1.0, 0.25, ]);
    
    query300.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer301 = command_encoder301.finish();
    
    const array9 = new Float32Array([0.25, 0.0, -1.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.75, 0.5, -0.25, 0.25, 0.25, -1.0, -0.75, 0.25, -0.25, 0.25, 1.0, 1.0, -0.5, -0.25, 0.75, 0.0, 0.5, -0.25, -0.25, -0.5, -0.25, -0.25, -0.5, -1.0, 1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 0.25, 0.25, -0.75, -0.5, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.5, -0.25, 0.75, -0.5, -0.75, -1.0, 0.0, -0.5, -0.25, -1.0, 0.0, -0.25, 0.0, 0.25, 0.0, -1.0, 0.75, 0.0, 1.0, 0.5, -0.25, 0.75, 0.25, -0.25, 0.0, 0.75, 0.25, 0.25, -1.0, -0.5, -0.25, -0.25, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, -0.5, 0.5, -0.75, 0.75, 0.0, 0.5, -0.5, 0.75, ]);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    buffer300.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array10 = new Float32Array([-0.25, -0.75, -0.75, -0.25, 0.75, -0.5, -0.5, 0.25, -1.0, 0.25, -0.25, 0.5, -0.25, 0.0, -0.5, 0.25, -0.75, 0.25, -1.0, 1.0, -0.75, 0.25, 0.0, 0.0, 0.25, 0.0, 0.5, 0.75, 0.75, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.5, 1.0, 1.0, 0.75, 0.25, 0.5, 0.75, 0.25, -0.5, -1.0, 0.25, 0.25, 1.0, -0.5, -0.75, -0.5, 0.0, 0.5, 0.75, -1.0, 1.0, 0.25, 0.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.0, 0.5, 0.0, 0.75, -0.5, -0.75, 0.5, 0.25, 0.5, 0.0, -1.0, -1.0, -0.25, 0.5, 1.0, -1.0, -0.5, 0.75, 0.5, 0.0, -0.5, 0.25, -0.25, -0.5, 0.25, 0.0, 0.0, 0.25, 1.0, 0.0, 1.0, -1.0, 0.25, 0.5, 0.75, ]);
    query300.destroy()
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    device20.destroy();
    query300.destroy()
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer301.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    buffer100.destroy()
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    texture301.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array11 = new Float32Array([-0.25, -0.75, 0.25, 0.25, 0.75, 0.75, 0.75, 0.0, 0.75, -0.5, -0.5, 0.25, -0.5, 1.0, 0.0, -1.0, 0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, 0.25, -1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -1.0, -0.5, 0.0, 0.25, -0.5, 0.0, 0.75, 0.25, -1.0, 0.75, -0.75, 1.0, -1.0, 0.25, 1.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.0, -1.0, -0.75, -0.25, 0.5, -0.75, 0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, -0.25, -0.75, -0.75, -0.75, 0.5, -1.0, -0.5, -0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 0.0, -0.25, 0.0, -0.75, 0.25, 0.25, -0.25, 0.75, -0.25, 0.75, -1.0, 1.0, -0.75, ]);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    device30.queue.submit([command_buffer301, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.pushErrorScope("validation");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer000.destroy()
    
    const command_buffer100 = command_encoder100.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer400 = command_encoder400.finish();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    device40.pushErrorScope("internal");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder300.popDebugGroup();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.pushErrorScope("out-of-memory");
    buffer402.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder3020.setPipeline(render_pipeline300);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device40.pushErrorScope("out-of-memory");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    device00.pushErrorScope("validation");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query302.destroy()
    render_bundle_encoder401.popDebugGroup();
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    buffer302.destroy()
    render_pass_encoder3020.setStencilReference(1);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    query303.destroy()
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query302.destroy()
    query300.destroy()
    buffer401.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const command_buffer402 = command_encoder402.finish();
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    buffer400.destroy()
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder3030.popDebugGroup();
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const command_buffer403 = command_encoder403.finish();
    query300.destroy()
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3030.setPipeline(render_pipeline300);
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query300.destroy()
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query401.destroy()
    texture302.destroy();
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    query300.destroy()
    buffer305.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer101.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_pass_encoder3030.setStencilReference(1);
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    render_bundle_encoder301.setPipeline(render_pipeline301);
    texture001.destroy();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder3030.insertDebugMarker("marker");
    texture102.destroy();
    render_bundle_encoder302.setVertexBuffer(0, buffer306);
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    texture400.destroy();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    query302.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder100.popDebugGroup();
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    texture100.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query400.destroy()
    
    device30.queue.writeBuffer(buffer303, 0, array11, 0, array11.length);
    
    device10.queue.writeBuffer(buffer103, 0, array11, 0, array11.length);
    buffer001.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder300.popDebugGroup();
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    buffer102.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    query300.destroy()
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    device10.pushErrorScope("internal");
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    
    
    render_bundle_encoder002.popDebugGroup();
    
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.popDebugGroup();
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.popDebugGroup();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture101.destroy();
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query301.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    texture103.destroy();
    
    
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder401.popDebugGroup();
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    
    texture401.destroy();
    
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    command_encoder304.resolveQuerySet(
        query303,
        0,
        32,
        buffer301,
        0
    )
    buffer004.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    query400.destroy()
    buffer306.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3013, 0);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder3000.end();
    render_pass_encoder3020.setVertexBuffer(0, buffer306);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3020.drawIndirect(buffer3013, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.end();
    command_encoder300.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3030.setVertexBuffer(0, buffer306);
    render_pass_encoder3030.drawIndirect(buffer3013, 0);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder3030.end();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
}