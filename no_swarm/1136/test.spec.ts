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
    
    
    
    const array0 = new Float32Array([-0.25, -1.0, -0.25, -0.25, -0.25, 0.5, 0.75, -0.5, 0.0, 0.5, 0.0, -0.5, -1.0, -0.25, -0.5, 1.0, -0.5, 0.5, 0.0, -0.75, -1.0, 1.0, 1.0, 0.0, 0.25, -0.75, 0.75, -0.25, 0.75, 0.25, -0.75, 0.0, 1.0, -0.5, -1.0, 0.5, -0.25, -0.75, 0.0, -1.0, -0.25, -0.75, -1.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, -0.75, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 1.0, -0.25, -0.25, 0.5, -0.5, 0.75, -0.25, -0.25, -1.0, -0.25, 0.25, 0.75, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.5, 0.25, -1.0, 0.5, -0.5, 0.75, 0.0, 1.0, -1.0, -0.5, 0.75, 0.25, 0.0, 0.5, -0.75, 0.75, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.75, ]);
    const array1 = new Float32Array([0.5, 0.25, 1.0, -1.0, 0.0, -0.25, 0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.75, -0.25, -0.25, -0.5, 0.5, 0.0, 0.0, 0.0, 0.25, 0.5, 0.25, 0.75, -0.5, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, -0.25, -0.75, 0.0, 0.5, -0.25, -1.0, 0.5, 0.5, 0.0, -0.5, 0.0, 0.0, 1.0, -0.25, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, 0.25, 0.25, 0.5, 0.5, -0.75, 0.5, 1.0, -0.5, -0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 0.25, -0.25, 0.75, -0.5, 0.75, -0.5, 0.5, 0.25, 0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 1.0, 1.0, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, -0.25, ]);
    
    const array2 = new Float32Array([1.0, 0.0, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, -0.25, 0.75, 1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.25, 0.0, -0.75, 0.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.25, 0.5, 0.5, 0.75, 0.0, 0.0, -0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.5, 1.0, 1.0, -0.5, 0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -1.0, -0.75, 0.75, 0.75, -1.0, 1.0, -0.75, -0.75, -0.75, 0.0, 1.0, 1.0, -0.25, 0.5, 0.25, -0.5, 1.0, -0.25, 0.5, -0.25, 0.5, 0.25, 0.75, -0.5, 1.0, 0.5, -0.5, -0.25, 0.25, -0.25, -0.25, -1.0, 0.25, 0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.5, -0.25, -0.5, 0.25, -0.5, ]);
    const array3 = new Float32Array([0.75, 1.0, 0.0, -0.5, 0.0, 0.25, -0.25, 1.0, -1.0, 0.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.75, -0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, 1.0, -0.25, -0.75, -0.5, -0.25, -0.25, -1.0, -0.5, 0.0, -0.75, 0.0, 1.0, 0.0, -0.5, -1.0, -0.5, -0.5, 0.5, 0.0, 0.75, -0.25, 0.0, -0.5, -0.5, -0.75, -0.25, 1.0, 0.5, -0.5, -1.0, -0.25, -0.75, -0.5, -0.5, 0.75, -0.25, 0.5, -0.25, 0.5, 0.75, 0.25, 0.0, 0.75, -0.75, 0.5, 0.5, 0.25, 0.5, -0.5, 0.75, -0.25, -0.5, -1.0, -0.25, 1.0, -0.5, -0.75, 0.5, -0.25, -1.0, 1.0, 1.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.5, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, ]);
    
    const array4 = new Float32Array([0.75, 0.75, 0.25, 0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -1.0, 1.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 1.0, 0.0, 1.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 0.0, 0.5, -0.75, 1.0, -0.5, -0.25, -0.5, -1.0, 0.5, 0.75, 0.75, 0.0, 0.25, 0.5, -1.0, 0.75, -0.25, 0.75, -1.0, -0.75, 1.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.25, 0.5, -0.25, 1.0, -1.0, -0.75, 0.0, -0.75, -1.0, 1.0, 0.75, 0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 0.25, -0.25, 1.0, 0.0, 1.0, 0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 1.0, 0.75, 0.25, -0.75, -0.5, 0.75, -1.0, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, -0.75, ]);
    
    const array5 = new Float32Array([0.0, -1.0, 1.0, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, -1.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.25, -1.0, 0.25, -1.0, -0.75, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, 0.5, -0.25, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.5, -0.5, 0.0, -0.5, -0.25, 0.5, -0.75, 0.5, 0.75, -0.25, 0.25, -0.75, -1.0, -0.25, 0.5, 0.25, -0.25, -0.25, 1.0, -0.5, -1.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, -0.25, -0.25, 0.25, -0.5, -0.5, -0.75, -1.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.25, -0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.5, 0.75, 0.75, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([0.75, 0.0, 0.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.25, 1.0, 1.0, 0.75, 0.25, -0.75, -0.5, -0.5, 0.75, 0.5, 0.75, 0.25, -0.5, 0.0, 0.25, 0.75, -0.25, 0.75, 0.75, 0.0, -0.25, -0.5, 0.25, 0.0, 0.0, -0.75, -0.25, 0.25, 0.5, -1.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.75, 0.5, -1.0, 0.0, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, -0.5, 1.0, -1.0, -0.25, 0.0, -0.5, 0.75, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, 1.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.0, 0.25, 0.25, -1.0, 0.75, -0.75, 1.0, -1.0, -1.0, 0.25, 1.0, -0.5, 1.0, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.75, -0.25, -0.75, -0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device50.pushErrorScope("out-of-memory");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array7 = new Float32Array([-0.25, -1.0, 0.75, -0.5, 0.75, -0.75, 0.0, 0.25, 0.0, 0.25, -0.25, 1.0, 0.75, -1.0, -0.5, 0.75, -1.0, -0.75, 0.5, 0.5, -0.5, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, 0.25, -0.75, 0.0, -0.5, -0.25, -1.0, 0.0, -0.75, -0.75, -0.25, 0.0, -0.25, 1.0, -0.25, 0.25, 0.0, -1.0, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, 1.0, 1.0, -0.5, -0.75, -0.5, 0.25, -0.75, -0.5, -0.75, -0.75, 0.25, -0.25, -1.0, -0.25, 0.25, 1.0, 1.0, 0.75, -0.75, 1.0, 0.75, -0.75, -1.0, 1.0, 0.5, -1.0, -0.5, -0.5, -0.75, 0.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 1.0, 0.5, -0.75, 0.5, 0.0, 0.5, -1.0, 0.25, 0.25, -1.0, 0.25, 1.0, -0.5, 0.5, ]);
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.destroy();
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture200.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query500.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device20.pushErrorScope("internal");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_bundle_encoder500.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    device10.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    texture500.destroy();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    device20.queue.submit([command_buffer201, ]);
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    query500.destroy()
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    device50.destroy();
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array8 = new Float32Array([0.0, -0.5, -0.75, -1.0, 1.0, 0.0, 0.75, -0.5, 1.0, 0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 0.0, -0.5, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, -0.25, 1.0, -0.25, 1.0, -0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 0.75, 0.0, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, -0.5, -0.25, -0.25, 0.25, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, 0.25, 0.0, 1.0, 1.0, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, 1.0, -1.0, -0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.5, -0.5, -0.75, -0.5, -0.5, 0.5, 0.5, -1.0, -0.25, ]);
    device20.pushErrorScope("internal");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer400.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    command_encoder500.clearBuffer(buffer501);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder1000.insertDebugMarker("mymarker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query400.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.pushErrorScope("out-of-memory");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2001.setStencilReference(1);
    
    
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2001.insertDebugMarker("marker");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_pass_encoder2001.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2001.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    device100.pushErrorScope("internal");
    command_encoder1000.pushDebugGroup("mygroupmarker")
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    render_pass_encoder2000.popDebugGroup();
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const array9 = new Float32Array([-0.5, -0.5, 1.0, 0.0, 0.5, -0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, 0.75, -0.5, -0.75, 0.5, -0.5, -1.0, -0.5, -0.25, 0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 0.0, 0.5, 0.5, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, -0.75, 0.0, -0.25, -0.25, 0.0, -0.5, 0.25, 0.75, -0.25, -0.25, -0.25, 0.75, 0.25, 0.75, -1.0, 0.5, -0.5, -0.5, -0.75, 1.0, 0.25, 0.5, -1.0, -0.25, 1.0, -0.5, 1.0, -0.75, 1.0, 0.0, 0.5, -1.0, 0.5, -0.25, -0.5, -0.25, 1.0, -0.5, 1.0, 0.5, 1.0, -1.0, -0.5, -0.75, 0.5, -0.25, 0.75, -0.75, -0.75, -0.25, 0.75, 0.75, 0.0, -0.25, 1.0, -0.25, 0.75, -0.75, -1.0, ]);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    device40.pushErrorScope("internal");
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    query400.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2001.executeBundles([])
    query401.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer800.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture400.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder2000.setStencilReference(1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    buffer401.destroy()
    command_encoder1000.popDebugGroup()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2001.setStencilReference(1);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    buffer801.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device80.destroy();
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    render_pass_encoder2001.insertDebugMarker("marker");
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder2000.executeBundles([])
    
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    device90.queue.submit([]);
    texture202.destroy();
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_pass_encoder2001.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    device40.destroy();
    command_encoder900.insertDebugMarker("mymarker");
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    render_bundle_encoder900.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder901.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder2000.setStencilReference(1);
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder600.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
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
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    command_encoder1000.pushDebugGroup("mygroupmarker")
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    buffer001.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder10000.insertDebugMarker("marker")
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder600.clearBuffer(buffer600);
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device90.pushErrorScope("validation");
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    compute_pass_encoder6010.insertDebugMarker("marker")
    const array10 = new Float32Array([-1.0, -0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, -1.0, 0.5, -1.0, 0.0, -0.5, -0.25, 0.25, -0.5, 0.5, 1.0, 0.75, -1.0, 1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -1.0, 0.25, 0.0, -0.5, -0.25, 1.0, -0.5, 0.0, -0.5, 0.0, -1.0, 1.0, -0.5, -0.75, 0.5, 1.0, -0.5, -1.0, -1.0, 0.0, 0.75, -0.25, -0.75, 0.5, 0.5, 0.25, -0.5, 1.0, 0.25, 0.0, -0.25, -1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.5, -0.25, -1.0, -0.25, -0.5, 0.5, -0.75, 0.75, 0.25, -1.0, -0.75, -0.5, 1.0, 1.0, -1.0, 1.0, 0.75, -0.75, -0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 0.75, 0.25, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder904 = device90.createCommandEncoder({ label: "command_encoder904" });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    const command_buffer602 = command_encoder602.finish();
    const command_encoder905 = device90.createCommandEncoder({ label: "command_encoder905" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query900.destroy()
    device70.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder901.insertDebugMarker("mymarker");
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    buffer1100.destroy()
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_bundle_encoder202.popDebugGroup();
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    command_encoder600.clearBuffer(buffer600);
    buffer600.destroy()
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    render_pass_encoder2001.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer601, 0, array10, 0, array10.length);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_buffer600 = command_encoder600.finish();
    
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    query400.destroy()
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    render_pass_encoder2000.setStencilReference(1);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    
    buffer600.destroy()
    
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_buffer902 = command_encoder902.finish();
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    command_encoder1002.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const command_encoder1003 = device100.createCommandEncoder({ label: "command_encoder1003" });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device60.queue.writeBuffer(buffer602, 0, array9, 0, array9.length);
    query901.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer500.destroy()
    device20.queue.submit([command_buffer201, ]);
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.destroy();
    const command_buffer903 = command_encoder903.finish();
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer1003 = command_encoder1003.finish();
    const command_buffer1002 = command_encoder1002.finish();
    render_pass_encoder2020.popDebugGroup();
    command_encoder901.popDebugGroup()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.submit([command_buffer902, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group200);
    const command_buffer1001 = command_encoder1001.finish();
    const command_buffer203 = command_encoder203.finish();
    device00.queue.submit([]);
    device100.queue.submit([command_buffer1002, command_buffer1003, ]);
    compute_pass_encoder6010.end();
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer600, ]);
    device100.queue.submit([command_buffer1001, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    command_encoder1000.popDebugGroup()
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    device90.queue.submit([command_buffer903, ]);
    const command_buffer601 = command_encoder601.finish();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer905 = command_encoder905.finish();
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder9010.popDebugGroup()
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.end();
    device100.queue.submit([command_buffer1002, ]);
    render_pass_encoder2001.end();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    command_encoder000.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    const command_buffer900 = command_encoder900.finish();
    device90.queue.submit([command_buffer900, command_buffer905, ]);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder6010.end();
    const command_buffer904 = command_encoder904.finish();
    render_pass_encoder2000.draw(3);
    const command_buffer202 = command_encoder202.finish();
    device90.queue.submit([command_buffer904, ]);
    render_pass_encoder2020.setVertexBuffer(0, buffer203);
    device90.queue.submit([command_buffer902, command_buffer905, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.drawIndexed(3);
    const command_buffer1000 = command_encoder1000.finish();
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    render_pass_encoder2000.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2001.end();
    render_pass_encoder2020.end();
    compute_pass_encoder6010.end();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder6010.popDebugGroup()
    command_encoder501.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer200, ]);
    device90.queue.submit([command_buffer905, ]);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer901 = command_encoder901.finish();
    const command_buffer501 = command_encoder501.finish();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, ]);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder2001.drawIndexed(3);
    device90.queue.submit([]);
    device100.queue.submit([command_buffer1002, ]);
    compute_pass_encoder6010.popDebugGroup()
    device100.queue.submit([command_buffer1003, ]);
    render_pass_encoder2001.popDebugGroup();
    device100.queue.submit([command_buffer1003, ]);
    device90.queue.submit([command_buffer904, ]);
    render_pass_encoder2000.popDebugGroup();
    device100.queue.submit([command_buffer1000, ]);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer202, ]);
    device60.queue.submit([command_buffer601, ]);
    device90.queue.submit([command_buffer905, ]);
    device90.queue.submit([command_buffer905, ]);
    render_pass_encoder2020.draw(3);
    device90.queue.submit([command_buffer904, ]);
    device90.queue.submit([command_buffer902, ]);
    device20.queue.submit([command_buffer200, ]);
    device90.queue.submit([command_buffer900, command_buffer902, ]);
    render_pass_encoder2020.end();
    device90.queue.submit([command_buffer902, command_buffer904, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device60.queue.submit([command_buffer602, ]);
    device90.queue.submit([command_buffer903, ]);
    device60.queue.submit([command_buffer602, ]);
    device100.queue.submit([command_buffer1001, ]);
    device90.queue.submit([command_buffer903, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2001.draw(3);
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder9010.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer607, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer607, 0);
    device100.queue.submit([command_buffer1002, ]);
    render_pass_encoder2000.end();
    device20.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
}