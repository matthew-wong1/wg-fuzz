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
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.5, -0.75, 0.0, 1.0, 0.25, -0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.25, -0.75, -0.75, -0.25, 0.25, -0.25, -0.75, -0.25, 0.0, 0.25, 0.5, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.25, -0.75, -0.25, 1.0, 0.75, -0.25, 0.25, -0.75, 0.0, 0.75, -1.0, 0.0, -0.75, 1.0, 0.5, 0.0, -0.75, 0.75, 0.75, -0.25, 0.0, 1.0, -1.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.75, -0.5, 0.0, -0.25, 1.0, -1.0, -1.0, -0.75, -0.75, 0.0, 0.5, -1.0, -0.25, 0.25, -0.5, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, -1.0, 1.0, -0.25, 0.75, 0.75, 0.0, -0.5, 0.5, -0.25, 0.25, -0.5, 0.5, 0.25, ]);
    const array1 = new Float32Array([-1.0, 1.0, -1.0, 1.0, -0.25, 0.25, -0.5, 0.5, -0.75, 0.75, 0.25, -0.75, 0.0, 0.0, -0.25, 0.0, 0.5, -1.0, 0.75, -1.0, -0.25, 0.25, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, 0.5, 0.25, 0.0, 1.0, -0.75, 0.25, -1.0, 0.0, -0.25, -0.75, 0.5, -1.0, 0.75, 0.5, -0.5, 0.0, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, 0.25, 0.0, -0.75, 1.0, -0.25, 0.25, 0.5, -0.75, 0.0, 0.5, -1.0, -1.0, 1.0, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, 0.75, -0.25, 0.5, 0.75, 1.0, 0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 0.75, 0.75, -0.5, 0.5, -0.75, 1.0, -0.5, -0.5, -0.75, -1.0, 0.75, -0.75, 0.5, -0.25, 0.0, 0.25, 0.0, 0.25, -0.5, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-1.0, -0.5, -1.0, 1.0, 0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 1.0, 0.5, 0.25, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, -1.0, 1.0, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, 0.0, 1.0, -0.5, 0.75, -1.0, 1.0, 0.0, -0.5, -0.25, 0.0, -0.75, 0.0, -1.0, -0.5, -1.0, 1.0, -0.25, -0.5, -1.0, 0.75, -0.25, -0.25, -1.0, 0.0, 0.0, -1.0, -0.25, -0.25, -0.25, -0.25, -0.25, 0.0, 0.25, -0.25, 0.75, -0.75, 0.5, 0.75, -0.25, 0.75, 1.0, 0.5, 0.25, 0.75, 0.25, -0.25, -0.5, 0.0, 0.0, 0.0, 1.0, -0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.5, -0.75, 1.0, 1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, 1.0, 1.0, -0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([0.25, 0.0, -0.25, -0.75, -1.0, 1.0, -0.5, 0.0, -0.5, 0.5, -0.25, -0.5, 0.5, 1.0, 1.0, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 1.0, 0.25, 0.0, -0.75, 0.5, 0.0, -0.75, -0.25, 0.5, 0.0, -0.75, 0.25, 1.0, -1.0, 0.75, -1.0, 0.75, 0.75, -0.5, -1.0, 0.0, 1.0, 0.75, 0.5, 1.0, 1.0, -0.75, -0.75, 0.75, -1.0, -0.75, -0.75, 0.25, 0.0, -0.75, 1.0, 0.0, 0.5, -0.25, -0.25, -0.5, -0.5, 0.25, -0.5, -0.75, -0.25, -0.25, -0.75, -0.5, -1.0, 0.75, 1.0, -0.75, 0.25, 0.0, -1.0, -0.75, -0.25, 0.75, -0.5, -1.0, -0.5, 0.5, 1.0, 0.25, -0.5, -0.5, 0.25, -1.0, 0.25, -0.75, 0.5, 0.75, -0.25, 0.75, 0.0, 0.0, -0.25, -0.5, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.pushErrorScope("internal");
    const array4 = new Float32Array([0.5, 0.25, -0.5, -0.75, 0.5, 0.25, -0.5, 0.0, 0.5, 0.5, -1.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.75, 0.75, -0.25, 0.0, 0.0, 0.75, -1.0, 0.75, 0.75, -1.0, -0.75, 0.75, 0.5, 0.25, -0.75, 0.5, 0.5, -1.0, -0.25, -1.0, -0.25, -1.0, 0.75, -0.5, 0.5, 0.75, -0.5, -0.25, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, -1.0, 1.0, -1.0, -0.5, 0.0, 1.0, 0.25, -0.75, -1.0, 0.0, -0.25, 0.5, -0.5, 1.0, -1.0, -0.75, 0.25, 0.75, 0.75, 0.0, -1.0, -0.75, 1.0, -1.0, 0.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.5, 0.25, 1.0, 0.75, 1.0, 1.0, -0.25, -0.75, -0.25, -1.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array5 = new Float32Array([-0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 0.75, 0.75, 0.75, -0.75, -1.0, 0.75, -0.5, 1.0, 0.5, 0.0, -0.75, 0.75, 0.75, -0.75, -0.5, -0.75, 1.0, 0.75, 1.0, 0.5, 0.0, 1.0, -0.75, 1.0, -0.75, 0.5, -0.75, -1.0, -0.25, 0.25, -0.75, -0.75, 1.0, -0.25, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 0.75, 1.0, 0.5, -0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, 0.5, 0.0, 0.5, 1.0, 0.25, -1.0, -1.0, -0.5, 0.5, 0.0, -0.75, 1.0, 1.0, 0.25, 1.0, 0.75, -0.75, 0.0, 0.0, -0.75, -0.75, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, 0.75, -0.5, 0.5, 0.5, 1.0, -1.0, -0.75, 1.0, -0.5, -1.0, 0.75, 0.5, 0.75, ]);
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("internal");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder002.insertDebugMarker("mymarker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_buffer001 = command_encoder001.finish();
    
    device10.pushErrorScope("out-of-memory");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    render_bundle_encoder201.popDebugGroup();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("out-of-memory");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    const command_buffer003 = command_encoder003.finish();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.popDebugGroup();
    
    texture200.destroy();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    device20.pushErrorScope("internal");
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
    render_pass_encoder1010.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    query101.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1020.setStencilReference(1);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture001.destroy();
    
    query101.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder200.popDebugGroup()
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    render_bundle_encoder200.popDebugGroup();
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
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
    texture002.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    texture102.destroy();
    
    render_pass_encoder0040.executeBundles([])
    
    
    command_encoder000.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, ]);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    render_pass_encoder1010.executeBundles([])
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1010.setStencilReference(1);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_buffer000 = command_encoder000.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device30.pushErrorScope("out-of-memory");
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.popDebugGroup();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture105.destroy();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder1020.setStencilReference(1);
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder201.popDebugGroup()
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.75, -1.0, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.5, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.75, -1.0, -0.5, -0.25, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, 0.0, 1.0, -0.25, -0.25, 0.0, -0.25, 1.0, 0.75, -0.75, -0.25, 0.5, -1.0, 1.0, -0.25, 0.5, 0.0, -0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 0.0, 0.0, -1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -1.0, 0.0, 0.75, 1.0, 0.0, -0.75, 0.0, -0.5, 0.75, -0.75, -0.5, -0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 1.0, 1.0, 0.25, 0.25, 0.0, -0.75, 0.75, 0.0, 0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.25, ]);
    query301.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query301.destroy()
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    query000.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1020.executeBundles([])
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    texture100.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const command_buffer201 = command_encoder201.finish();
    
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    command_encoder300.popDebugGroup()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query300.destroy()
    device20.queue.submit([command_buffer201, ]);
    const command_buffer301 = command_encoder301.finish();
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    render_pass_encoder1020.executeBundles([])
    
    texture000.destroy();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture300.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder202.popDebugGroup()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.executeBundles([])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    command_encoder202.pushDebugGroup("mygroupmarker")
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    query101.destroy()
    render_pass_encoder1010.executeBundles([])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    command_encoder200.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    texture005.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device30.queue.submit([command_buffer301, ]);
    
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.executeBundles([])
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    const command_buffer300 = command_encoder300.finish();
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder0040.executeBundles([])
    query301.destroy()
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    query300.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture106.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 0.5, 0.25, 0.5, 0.0, 0.75, -0.25, -0.5, 0.25, -0.25, -1.0, -0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -0.5, -0.25, 0.75, -1.0, -0.25, -0.75, 0.0, 0.75, 0.5, 0.0, 1.0, -0.75, 0.75, -0.75, -0.25, -0.75, 0.5, -0.25, -0.25, -0.75, -0.25, 0.5, -0.25, 1.0, -0.75, -0.5, 0.5, -0.5, 0.25, -1.0, 0.5, 0.5, 0.75, 1.0, 1.0, 0.5, 0.0, -0.25, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, -0.75, 0.5, 0.75, -0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 0.5, -0.25, -0.5, 0.5, 1.0, -0.25, 1.0, 0.75, -1.0, -0.25, 0.25, 0.75, 1.0, -0.5, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, 0.0, 0.75, 0.75, 0.0, -1.0, ]);
    render_pass_encoder1020.executeBundles([])
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    render_pass_encoder1020.setStencilReference(1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    render_bundle_encoder202.popDebugGroup();
    
    device20.queue.submit([command_buffer200, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.insertDebugMarker("mymarker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.0, 0.75, 0.5, 0.5, 0.0, -1.0, -0.25, 1.0, -1.0, 0.0, 0.0, 0.0, 0.5, -1.0, -0.75, 1.0, 0.75, 0.25, 0.0, 0.25, -0.75, 1.0, -0.25, 0.75, -0.75, -0.25, 0.0, 0.75, -0.25, 0.0, -0.75, -0.75, 0.75, 0.75, 0.75, -1.0, -0.25, 0.0, -0.5, 0.25, -0.5, 1.0, 0.0, 0.0, -0.25, 0.0, 0.25, 0.5, 0.5, 1.0, -1.0, -0.25, 0.75, -0.75, -0.5, 0.25, 0.25, -0.75, -0.25, -1.0, 0.0, 0.0, 0.75, -0.25, 0.75, -0.75, 0.5, 0.0, 1.0, 0.75, -1.0, 0.75, -0.25, 0.75, 0.0, -1.0, -0.5, -1.0, -0.5, -0.5, -1.0, 0.25, -1.0, 0.75, 0.75, 0.75, 0.75, 0.75, 1.0, -0.5, -0.5, -0.25, 0.0, -0.75, 1.0, 0.75, 1.0, 0.5, 0.0, 0.0, ]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1040.endOcclusionQuery()
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder202.popDebugGroup()
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
    command_encoder302.pushDebugGroup("mygroupmarker")
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder302.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer302, ]);
}