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
    
    
    device00.destroy();
    const array0 = new Float32Array([-0.25, 0.25, 0.75, -0.75, 0.75, -0.25, 1.0, 0.25, 1.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.0, 0.25, 0.25, -0.5, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, 0.25, 0.75, -0.75, 0.25, -0.5, 0.0, -0.5, 1.0, -1.0, 0.0, -1.0, 1.0, 0.5, 1.0, -0.75, -0.25, -1.0, -0.5, 0.0, -1.0, 1.0, 0.25, 0.0, -0.75, -0.75, 0.5, 0.25, 0.25, -0.5, 0.5, -0.25, 0.5, -0.75, -0.25, -0.5, -0.75, 0.0, -1.0, 1.0, -1.0, 0.5, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.25, 0.0, -0.25, 0.0, 0.75, 0.25, 0.75, 0.75, 1.0, 0.75, 0.75, -0.75, 1.0, -0.75, -0.25, -0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.5, 0.0, 0.5, -1.0, -1.0, 1.0, -0.5, 0.5, ]);
    
    
    const array1 = new Float32Array([-1.0, -0.75, 0.0, 0.25, 0.25, -1.0, 0.5, -0.5, 0.5, 1.0, 0.0, -0.75, 0.25, -0.5, 0.75, 0.75, -0.5, -0.75, -0.5, 0.75, -0.5, 1.0, 0.25, -0.5, -0.25, -1.0, -1.0, 0.75, 0.75, 0.75, 0.0, 0.75, 0.75, -0.5, -0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -0.5, 0.0, -0.5, 0.5, -1.0, -0.75, 0.25, 0.75, 0.75, -0.25, -0.5, 0.75, -0.75, 0.5, -0.75, 0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.0, 1.0, -0.25, 0.0, 0.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.75, 0.0, 0.25, -0.75, 1.0, 1.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, 0.75, -0.5, 0.0, 0.0, -0.25, 0.25, 0.5, -0.5, -0.25, -0.25, 1.0, 0.5, 1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("validation");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([-1.0, -1.0, 0.75, 0.75, 0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 0.0, 0.25, -0.75, -0.5, 0.5, 1.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.25, -1.0, 0.0, 0.25, -0.75, 0.25, -0.25, -1.0, -1.0, -0.75, -0.25, 0.5, 0.25, 0.25, -0.75, -0.75, -0.25, 0.0, -1.0, -0.5, 0.75, -0.25, 1.0, -0.25, -0.25, 0.75, -0.75, -0.25, -0.75, 0.5, 0.75, -1.0, -0.75, -0.25, 1.0, -0.25, 1.0, 0.5, 0.75, -0.25, -0.5, 1.0, -0.5, -0.75, 0.25, -0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, -0.75, -0.5, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, 0.5, 0.0, -0.75, 0.0, 0.5, -1.0, -1.0, -0.75, 0.5, -0.25, 1.0, -0.25, 1.0, 0.75, ]);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder100.clearBuffer(buffer100);
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array3 = new Float32Array([-0.5, -0.75, 1.0, 0.75, 0.0, -0.5, 0.5, 0.5, 0.0, 0.75, 1.0, -0.5, -1.0, -0.5, 0.25, 0.0, -1.0, 0.25, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, 0.5, 0.25, -0.5, -0.75, -1.0, 0.25, 0.5, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, -0.25, -0.25, -1.0, 0.75, 0.5, 0.0, -0.5, -0.75, -0.75, -1.0, -0.25, -0.25, 0.25, 0.25, -0.5, 0.5, -1.0, 0.25, -1.0, 0.75, 0.0, 0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 1.0, -0.25, 0.0, -1.0, 0.75, 0.75, -0.5, 1.0, 0.75, 1.0, -0.5, 0.5, -1.0, -0.75, -0.25, -0.75, 0.75, 0.25, -0.75, 0.25, 0.0, -1.0, 0.25, -0.25, -0.25, -1.0, -0.5, 0.75, ]);
    
    const command_buffer101 = command_encoder101.finish();
    
    device10.pushErrorScope("internal");
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    query100.destroy()
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
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.submit([command_buffer101, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    texture100.destroy();
    command_encoder100.clearBuffer(buffer100);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array4 = new Float32Array([1.0, 1.0, 0.5, 0.75, 0.0, 1.0, -0.5, -0.25, -1.0, -1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.5, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, -0.75, 0.25, 0.75, -1.0, 0.0, -0.25, 1.0, 0.0, 0.5, -0.5, 1.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 1.0, 0.25, 0.75, -0.75, -0.5, -0.25, -1.0, 0.75, -0.5, 0.75, 0.0, 0.0, -0.25, 0.0, -0.5, -1.0, 0.75, -0.5, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 0.0, -0.5, 0.5, 0.75, 0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 0.5, 0.25, ]);
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array5 = new Float32Array([-0.25, 0.0, -1.0, 0.0, 0.75, 0.0, 0.75, 0.75, 0.75, -0.25, 0.75, 0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.0, 0.0, 0.75, -0.25, -0.5, 0.0, -0.75, -1.0, 0.5, 0.75, 1.0, -0.25, -0.25, -0.25, -0.5, 0.5, 0.25, 0.0, 0.5, 0.5, 0.5, -0.5, -0.5, 0.0, -0.5, -0.25, 0.75, -0.25, -0.25, -1.0, -0.5, 0.25, 0.75, -0.5, -0.25, -0.25, -0.25, -1.0, 0.0, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, -0.25, 0.25, -0.75, 0.0, 0.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.5, -0.25, -0.5, 0.75, 0.0, -0.75, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, 1.0, 0.25, -0.75, 0.5, 0.5, 1.0, 0.0, -0.25, -0.5, -0.5, 0.75, -0.75, -0.25, 0.0, 0.75, 0.25, ]);
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
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.executeBundles([])
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder104.insertDebugMarker("mymarker");
    
    texture102.destroy();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_buffer104 = command_encoder104.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const array6 = new Float32Array([0.0, 0.75, 0.0, -0.75, -0.5, 1.0, 0.0, 0.5, 0.75, 0.5, 0.0, 0.75, 0.75, -0.75, 0.5, -0.75, -1.0, 0.5, -0.5, 0.0, 0.0, -0.5, -1.0, 0.0, 0.0, 0.25, -0.75, -0.75, -0.75, 0.25, 0.75, -0.5, 0.0, 0.0, 0.0, -1.0, -0.75, -1.0, 0.25, 0.0, -0.5, -0.75, -1.0, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, -0.25, -0.75, 0.25, 0.25, -1.0, 1.0, 1.0, 0.0, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.75, -0.5, 1.0, -0.5, -1.0, 0.25, -0.75, 0.5, -0.75, 0.75, -1.0, 0.0, 0.0, -1.0, -0.5, 0.75, 0.0, -0.5, -0.25, -0.25, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 1.0, 0.5, -0.5, 0.5, 0.0, 0.75, 1.0, 0.5, ]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1000.executeBundles([])
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1001.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1050.setStencilReference(1);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([render_bundle_encoder100, ])
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const array7 = new Float32Array([0.0, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, 1.0, -0.5, -0.75, -0.25, 0.5, 0.0, 1.0, 1.0, 0.5, -0.25, 0.25, 0.75, 0.25, 0.75, 0.0, -0.25, 0.0, 0.25, 0.75, 0.75, 1.0, 0.25, 0.0, -1.0, 1.0, 0.0, 0.0, 0.5, 0.0, -0.75, 0.5, -0.75, -0.25, 1.0, 1.0, -0.5, -1.0, -0.5, 0.5, -1.0, 0.5, -0.75, 1.0, 0.25, -0.5, 0.0, 0.0, 0.75, 0.5, 0.25, 0.0, 1.0, 0.75, -0.75, 0.5, -1.0, 1.0, -1.0, -1.0, 0.25, 0.0, -1.0, -0.75, 1.0, 1.0, 1.0, 0.75, 0.25, 0.5, -1.0, 0.25, 0.75, 0.0, -0.75, -0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 0.5, 0.75, 1.0, 0.0, -0.75, 1.0, 0.0, 1.0, 0.75, -1.0, -0.75, -1.0, ]);
    render_pass_encoder1050.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    render_pass_encoder1050.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer103, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer103, 0);
    
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout104]
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    
    
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.insertDebugMarker("marker");
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    
    render_pass_encoder1060.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1001.setStencilReference(1);
    buffer104.destroy()
    
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline105);
    compute_pass_encoder1020.end();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder1050.setStencilReference(1);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const array8 = new Float32Array([1.0, 1.0, 0.75, -0.75, -1.0, 0.0, -0.75, -0.25, -0.25, 0.0, 0.25, 0.25, -0.75, -1.0, 1.0, -0.5, 0.0, 0.0, 1.0, -0.75, 0.0, -0.25, 0.5, 0.75, -0.5, 0.75, 0.5, 0.0, -1.0, 0.5, 0.5, -0.5, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, 0.25, 0.5, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -0.75, 0.25, 1.0, 1.0, -0.25, 0.5, -0.75, 1.0, -1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -0.25, 0.0, 0.0, -1.0, 0.75, -1.0, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, -0.5, -0.5, -0.75, -0.75, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.25, 0.75, 1.0, 0.25, 1.0, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, 0.5, 0.25, 0.25, -0.25, ]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    buffer102.destroy()
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture103.destroy();
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1031.executeBundles([])
    render_pass_encoder1060.executeBundles([])
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1031.setStencilReference(1);
    
    command_encoder102.clearBuffer(buffer103);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    render_pass_encoder1060.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder105.insertDebugMarker("mymarker");
    buffer103.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group101);
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder103.clearBuffer(buffer105);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer105,
        0,
        400
    );
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1030.setStencilReference(1);
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    buffer101.destroy()
    const render_pass_encoder1052 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_pass_encoder1052.executeBundles([])
    render_pass_encoder1000.pushDebugGroup("group_marker");
    compute_pass_encoder1050.dispatchWorkgroups(100);
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1051.setStencilReference(1);
    query100.destroy()
    command_encoder100.clearBuffer(buffer105);
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setStencilReference(1);
    buffer100.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1052.executeBundles([])
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder1001.executeBundles([])
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer108
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1052.pushDebugGroup("group_marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1051.insertDebugMarker("marker");
    
    query101.destroy()
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1031.pushDebugGroup("group_marker");
    
    buffer106.destroy()
    render_pass_encoder1052.insertDebugMarker("marker");
    render_pass_encoder1051.executeBundles([render_bundle_encoder100, ])
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    buffer108.destroy()
    const array9 = new Float32Array([0.0, -1.0, 0.75, 0.0, -0.75, 0.25, -1.0, 0.75, 0.75, -0.25, 0.75, -0.75, -0.5, 0.75, 0.25, 1.0, -1.0, -1.0, -0.25, -0.5, 0.0, 0.0, -0.5, -0.5, 1.0, -0.5, -0.5, 0.0, 0.25, 0.5, 0.75, 1.0, -1.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.5, -0.75, -0.75, 0.0, -0.25, -0.75, -1.0, 1.0, -0.25, 0.0, 1.0, 0.0, 0.25, 0.75, 0.25, 1.0, 0.0, 0.25, 0.75, -0.75, 0.5, 0.5, 0.25, -0.5, 1.0, 0.5, -1.0, 0.0, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, -1.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 0.25, 0.25, 1.0, -0.75, 0.75, -0.75, 0.75, -1.0, 0.5, 0.0, 0.5, -0.75, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, -0.75, ]);
    render_pass_encoder1052.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query102.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1050.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([])
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.insertDebugMarker("marker");
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1051.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer105 = command_encoder105.finish();
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_pass_encoder1060.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer105, 0, array9, 0, array9.length);
    
    
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    
    
    render_pass_encoder1020.popDebugGroup();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_pass_encoder1031.executeBundles([])
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    compute_pass_encoder1050.insertDebugMarker("marker")
    render_pass_encoder1061.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1060.insertDebugMarker("marker");
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout105]
    });
    const array10 = new Float32Array([-1.0, -0.75, -0.25, -1.0, -0.5, -0.25, -0.75, -0.25, 0.25, 0.25, 1.0, -0.5, 0.25, -0.25, 0.25, 0.75, -1.0, -0.75, -0.25, 0.0, 0.5, -1.0, -0.25, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, 1.0, -0.25, -0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -0.25, 0.25, -0.5, -1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -1.0, -0.25, -0.75, 0.75, -0.25, 0.75, -0.5, 0.0, -0.25, -1.0, -1.0, -0.5, 0.25, 1.0, 0.25, 0.75, 0.25, 0.0, -1.0, -1.0, -0.25, 0.0, 0.0, 0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 0.5, 1.0, 0.5, 0.75, 0.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.75, -1.0, 0.25, -0.75, 0.25, -0.75, 1.0, -0.75, -0.5, 0.0, -0.25, 1.0, 0.25, ]);
    render_pass_encoder1052.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture105 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer107.destroy()
    
    render_pass_encoder1061.pushDebugGroup("group_marker");
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1061.executeBundles([])
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    render_pass_encoder1050.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer105.destroy()
    compute_pass_encoder1050.end();
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture101.destroy();
    render_pass_encoder1052.insertDebugMarker("marker");
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1021.executeBundles([])
    const array11 = new Float32Array([-0.25, -0.5, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, -1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.0, 0.0, 0.0, -0.5, 1.0, -0.5, -0.25, -0.5, -0.75, 0.75, -0.25, -0.25, 0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, 0.5, -1.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 1.0, 1.0, 0.75, 0.25, -0.5, -1.0, 1.0, -0.5, 0.0, -0.5, -1.0, 0.0, -0.25, -0.25, -0.5, 0.5, 1.0, -0.5, 0.0, 0.25, 1.0, -0.75, 0.75, 1.0, 0.75, -0.75, -0.5, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, -1.0, 0.25, -0.25, 0.5, -1.0, 0.0, 0.0, 0.0, -0.75, 0.25, 1.0, -0.25, 0.75, -0.5, 1.0, -0.75, 0.0, ]);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group103);
    render_pass_encoder1061.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array12 = new Float32Array([-0.5, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.5, 0.75, -1.0, 0.0, 0.5, 0.75, 0.75, 0.75, -1.0, 1.0, -0.5, 0.0, 0.75, 0.75, 0.0, 1.0, -1.0, -1.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.25, 0.25, -1.0, 0.0, -0.75, -1.0, 1.0, -0.75, 0.0, -0.5, -0.25, 0.25, -0.75, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, -0.5, 1.0, -1.0, -0.75, -1.0, 0.75, 0.5, -0.75, -1.0, -1.0, 1.0, 0.25, 0.25, 1.0, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, -0.5, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.25, 0.75, -0.25, 0.75, -0.25, -0.5, 0.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 0.5, -1.0, 0.25, -0.25, 0.5, -1.0, -0.75, 0.25, 0.5, ]);
    render_pass_encoder1001.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1061.setStencilReference(1);
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    render_pass_encoder1020.executeBundles([render_bundle_encoder102, ])
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    render_pass_encoder1052.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1061.setStencilReference(1);
    
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    
    render_pass_encoder1000.popDebugGroup();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1030.end();
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1061.popDebugGroup();
    command_encoder100.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1013, 0);
    compute_pass_encoder1050.end();
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1030.end();
    render_pass_encoder1060.endOcclusionQuery()
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    render_pass_encoder1052.popDebugGroup();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1052.endOcclusionQuery()
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1020.end();
    render_pass_encoder1052.endOcclusionQuery()
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1017, 0);
    render_pass_encoder1001.endOcclusionQuery()
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1030.end();
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group107);
    render_pass_encoder1050.popDebugGroup();
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
}