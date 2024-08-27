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
    
    
    
    
    
    
    const array0 = new Float32Array([0.75, 0.0, 0.0, -1.0, -0.75, -0.25, 0.5, 0.75, -0.5, -0.25, 1.0, 0.75, -0.25, 0.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.0, -0.75, 0.5, -0.75, -1.0, 0.25, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.5, 1.0, 0.0, 1.0, -0.25, 0.5, 0.75, 0.75, -0.5, -1.0, 0.5, 0.5, -0.5, 1.0, -0.75, -0.5, 0.5, -0.25, 0.5, 0.75, 0.25, 0.5, -0.25, 0.5, -0.25, 0.25, 0.5, 0.0, 0.25, -0.25, 0.75, 1.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.75, 0.5, 0.5, 0.0, -0.75, -0.5, 1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.75, -0.5, -0.75, 1.0, -0.5, 0.0, 1.0, 0.25, 0.25, -1.0, 0.25, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.destroy();
    const array1 = new Float32Array([-0.5, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.75, 0.0, -0.25, -0.25, -1.0, 0.5, 0.75, -0.25, -0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.25, -0.25, -1.0, -0.25, 1.0, 1.0, 0.25, 0.25, -0.75, -0.5, -0.75, 0.0, 0.25, 0.75, -0.75, 1.0, -0.75, -1.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.0, -0.5, -0.25, 1.0, 0.5, -0.5, -0.5, -0.75, 0.75, -1.0, -0.25, -1.0, 0.0, 0.75, -0.5, 0.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.5, -0.5, 0.25, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, 0.5, -1.0, -0.5, 0.25, 0.75, 0.25, 0.25, 0.5, -0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.25, -0.25, -1.0, -0.5, 0.25, 0.5, -0.25, 0.75, -0.5, -0.5, 0.75, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    device10.pushErrorScope("internal");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.pushErrorScope("out-of-memory");
    
    const array2 = new Float32Array([-0.75, 0.75, 1.0, 0.25, 0.5, 0.0, 0.25, 1.0, -0.5, -0.5, -0.5, 1.0, -0.75, -0.5, 0.75, -0.75, 1.0, -0.25, -1.0, 0.75, -1.0, -0.5, 1.0, 0.5, 0.5, -0.25, -1.0, 0.0, 1.0, 0.5, -0.5, -0.75, 1.0, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.75, 0.25, -1.0, -1.0, 0.25, 0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 0.75, 0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, 1.0, 0.0, 0.5, 0.75, 0.0, -0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.25, 0.25, 1.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.0, -0.5, -0.25, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer103 = command_encoder103.finish();
    
    texture100.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.insertDebugMarker("mymarker");
    
    const array3 = new Float32Array([0.0, 0.0, 0.75, 0.75, -0.25, -0.75, 0.5, -1.0, -0.5, 0.25, 0.75, -0.25, 0.75, -1.0, 1.0, -1.0, 1.0, -0.25, 0.25, 1.0, 1.0, 0.25, 0.0, -0.75, -0.25, -0.75, 0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, -0.25, -0.5, -0.5, 0.25, 1.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 1.0, -0.75, 0.5, -0.5, -0.25, 1.0, 0.25, 0.0, 0.5, 0.75, -0.5, 1.0, 0.75, 0.0, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, -0.5, -0.5, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, 0.0, 0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -0.25, 0.25, 1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.5, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    
    buffer102.destroy()
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.submit([command_buffer101, ]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    compute_pass_encoder1021.insertDebugMarker("marker")
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1041 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1041" });
    buffer100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1040.executeBundles([render_bundle_encoder102, ])
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1041.pushDebugGroup("group_marker")
    compute_pass_encoder1041.popDebugGroup()
    
    texture101.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1041.setPipeline(compute_pipeline100);
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    compute_pass_encoder1021.setPipeline(compute_pipeline104);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder100.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer103.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer104,
        0,
        400
    );
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group101);
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    device10.queue.submit([command_buffer103, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1041.pushDebugGroup("group_marker")
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1041.insertDebugMarker("marker");
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_pass_encoder1050.setStencilReference(1);
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
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer107, 0);
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1040.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    render_pass_encoder1050.executeBundles([])
    compute_pass_encoder1041.popDebugGroup()
    query200.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.popDebugGroup();
    
    
    buffer106.destroy()
    texture103.destroy();
    texture102.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.setStencilReference(1);
    
    device20.pushErrorScope("out-of-memory");
    
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    compute_pass_encoder1041.insertDebugMarker("marker")
    texture104.destroy();
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
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
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.executeBundles([])
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.executeBundles([])
    buffer102.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    texture105.destroy();
    
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    
    render_pass_encoder1041.executeBundles([])
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.executeBundles([])
    command_encoder105.copyBufferToBuffer(
        buffer103,
        0,
        buffer107,
        0,
        400
    );
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group102);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const array4 = new Float32Array([1.0, 0.25, 1.0, 0.5, 0.25, -0.25, 0.75, -0.75, 1.0, -0.5, 0.0, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -0.25, 0.25, 1.0, 0.0, -1.0, -0.25, -0.75, -1.0, 1.0, 1.0, -0.25, 0.0, 0.0, -0.75, 1.0, -0.25, -1.0, 1.0, 0.75, 0.0, -0.75, -1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 0.5, 0.5, 0.5, -1.0, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 1.0, 0.0, 0.5, 0.75, -1.0, -1.0, 0.25, 1.0, -0.5, -0.5, -0.5, -1.0, 0.75, -0.75, -1.0, 0.25, 0.5, 1.0, -0.25, 0.5, 0.0, 0.0, -0.75, 0.25, -0.5, 0.25, -0.75, 0.0, -0.25, -0.75, -0.75, 0.25, 0.0, 0.75, -1.0, -0.25, 0.5, 0.5, -1.0, -1.0, -1.0, -0.25, 0.75, -0.25, 0.5, ]);
    render_pass_encoder1041.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1040.pushDebugGroup("group_marker")
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
        occlusionQuerySet: query101
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1041.pushDebugGroup("group_marker");
    query201.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1041.setStencilReference(1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
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
    query100.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    buffer105.destroy()
    compute_pass_encoder1041.pushDebugGroup("group_marker")
    
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1012, 0);
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder1041.setStencilReference(1);
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query103.destroy()
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1021.insertDebugMarker("marker")
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    render_pass_encoder1000.beginOcclusionQuery(0)
    command_encoder104.copyBufferToBuffer(
        buffer104,
        0,
        buffer109,
        0,
        400
    );
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.beginOcclusionQuery(0)
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1041.executeBundles([])
    render_pass_encoder1051.insertDebugMarker("marker");
    device30.destroy();
    render_pass_encoder1051.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.0, -0.5, 0.5, 0.5, 0.25, 0.0, -0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -1.0, -0.25, -1.0, 0.25, 0.5, -0.25, 0.5, 0.75, -0.5, 0.25, -0.25, -0.25, -0.5, 0.5, -0.5, -1.0, -0.5, -1.0, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, -1.0, -0.75, -0.75, 0.5, 0.0, -1.0, 1.0, -0.25, 0.0, -0.25, -0.75, -0.25, 0.25, 0.25, 0.0, -1.0, -0.5, 1.0, 1.0, 0.5, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 1.0, 1.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, -0.75, -1.0, 1.0, 0.25, 0.25, -1.0, -1.0, 1.0, -1.0, 1.0, 0.0, 0.0, -1.0, -0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -0.75, 0.0, -0.5, 0.75, 0.0, -1.0, -0.25, 0.0, 1.0, ]);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
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
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1011.destroy()
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    buffer100.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1021.popDebugGroup()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeBuffer(buffer1015, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1016, 0);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture106 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1017, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    texture200.destroy();
    compute_pass_encoder1041.popDebugGroup()
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer1016,
        0,
        400
    );
    {
        await buffer1015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1015.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1015.destroy()
    render_pass_encoder1041.popDebugGroup();
    
    device10.queue.writeBuffer(buffer1017, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1018, 0, array0, 0, array0.length);
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.clearBuffer(buffer1018);
    command_encoder102.clearBuffer(buffer1017);
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1040.executeBundles([])
    compute_pass_encoder1040.popDebugGroup()
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setStencilReference(1);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1017, 0, array5, 0, array5.length);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    render_pass_encoder1001.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    query202.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    
    buffer104.destroy()
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1017, 0, array5, 0, array5.length);
    
    const render_pass_encoder1042 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeBuffer(buffer1018, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1051.pushDebugGroup("group_marker");
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture106 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    buffer1018.destroy()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1019, 0);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1051.executeBundles([])
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    compute_pass_encoder1040.setBindGroup(0, bind_group105);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1050.setPipeline(render_pipeline101);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1001.setPipeline(render_pipeline101);
    texture107.destroy();
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1017, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer1019, 0, array4, 0, array4.length);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder105.clearBuffer(buffer1012);
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1051.beginOcclusionQuery(0)
    compute_pass_encoder1041.pushDebugGroup("group_marker")
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer1017, 0, array5, 0, array5.length);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    command_encoder102.copyBufferToBuffer(
        buffer104,
        0,
        buffer1021,
        0,
        400
    );
    buffer1018.destroy()
    query203.destroy()
    
    render_pass_encoder1042.setPipeline(render_pipeline100);
    
    
    
    buffer1016.destroy()
    command_encoder105.copyBufferToBuffer(
        buffer1020,
        0,
        buffer1017,
        0,
        400
    );
    compute_pass_encoder1000.popDebugGroup()
    query200.destroy()
    
    device10.queue.writeBuffer(buffer1019, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1017, 0, array5, 0, array5.length);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    render_pass_encoder1051.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1042.insertDebugMarker("marker");
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1019, 0, array0, 0, array0.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder105.copyBufferToBuffer(
        buffer108,
        0,
        buffer1019,
        0,
        400
    );
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer200.destroy()
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1051.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer1019
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer109,
        0
    )
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
    render_pass_encoder1042.insertDebugMarker("marker");
    command_encoder100.copyTextureToTexture(
        {
            texture: texture102
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.setPipeline(render_pipeline100);
    
    render_pass_encoder1051.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    buffer1021.destroy()
    buffer107.destroy()
    
    buffer1017.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.popDebugGroup();
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group106);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1051.endOcclusionQuery()
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
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
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group108);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group109);
    render_pass_encoder1000.setVertexBuffer(0, buffer1010);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.setVertexBuffer(0, buffer1028);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1010);
    render_pass_encoder1001.draw(3);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1042.setBindGroup(0, bind_group1011);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1012);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.setVertexBuffer(0, buffer106);
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.setVertexBuffer(0, buffer1028);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1042.setVertexBuffer(0, buffer103);
    render_pass_encoder1040.setVertexBuffer(0, buffer1014);
    compute_pass_encoder1041.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.setPipeline(render_pipeline100);
    render_pass_encoder1042.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1042.drawIndirect(buffer1034, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1042.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1042.drawIndirect(buffer1018, 0);
    device10.queue.submit([]);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1042.end();
    compute_pass_encoder1041.popDebugGroup()
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group1013);
    render_pass_encoder1051.setVertexBuffer(0, buffer1032);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndirect(buffer107, 0);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1042.drawIndirect(buffer100, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1036, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1051.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    command_encoder102.popDebugGroup()
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1014);
    device20.queue.submit([]);
    render_pass_encoder1042.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1041, "uint16");
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1016);
    render_pass_encoder1041.setVertexBuffer(0, buffer1027);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1021.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1041.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1051.drawIndirect(buffer100, 0);
    render_pass_encoder1042.setIndexBuffer(buffer100, "uint16");
    command_encoder104.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1042.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1041.dispatchWorkgroups(100);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    compute_pass_encoder1000.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1018);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1042.drawIndexedIndirect(buffer1041, 0);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1000.popDebugGroup();
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1020);
    render_pass_encoder1042.drawIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1021.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1021);
    render_pass_encoder1042.draw(3);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1042.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1051.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1057, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1058, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1042.drawIndirect(buffer107, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    compute_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1042.drawIndirect(buffer1057, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer1061, 0);
    render_pass_encoder1042.drawIndirect(buffer1047, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1020.popDebugGroup();
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1051.end();
    compute_pass_encoder1041.dispatchWorkgroups(100);
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    compute_pass_encoder1021.popDebugGroup()
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1024);
    render_pass_encoder1051.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1042.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1042, "uint16");
    compute_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1051, "uint16");
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1025);
    render_pass_encoder1051.end();
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1041.end();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1051.drawIndirect(buffer1064, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1068, "uint16");
    compute_pass_encoder1021.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1042.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1042.drawIndirect(buffer1027, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1026);
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    device10.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1058, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1041.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.drawIndirect(buffer1065, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1040.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1042.drawIndirect(buffer1011, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1070, 0);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexed(3);
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1028);
    render_pass_encoder1042.drawIndexedIndirect(buffer1019, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndirect(buffer1057, 0);
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    render_pass_encoder1042.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1067, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    compute_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1070, 0);
    device10.queue.submit([command_buffer105, ]);
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1029);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1001.drawIndirect(buffer1057, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    device00.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.popDebugGroup();
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1030);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1042.drawIndirect(buffer1037, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1070, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1042.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1075, "uint16");
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer1084, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1042.end();
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1031);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    device10.queue.submit([]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.end();
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1042.end();
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1042.drawIndirect(buffer1086, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.drawIndirect(buffer1084, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1042.drawIndirect(buffer1057, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1051.drawIndirect(buffer1076, 0);
    render_pass_encoder1042.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.popDebugGroup();
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1032);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1089, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1089, 0);
    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1091,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    render_pass_encoder1051.drawIndexedIndirect(buffer1070, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1034);
    render_pass_encoder1051.drawIndirect(buffer107, 0);
    render_pass_encoder1042.drawIndirect(buffer1057, 0);
    render_pass_encoder1001.drawIndirect(buffer1072, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    compute_pass_encoder1040.end();
    compute_pass_encoder1040.popDebugGroup()
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1094, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer1094, 0);
    render_pass_encoder1041.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1020.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer107, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1095, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1095, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1058, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1042.end();
    render_pass_encoder1042.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1057, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1040.drawIndirect(buffer1059, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    render_pass_encoder1051.drawIndirect(buffer1013, 0);
    render_pass_encoder1042.drawIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1042.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1042.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1050.drawIndirect(buffer1059, 0);
    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1097,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1035);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer1089, 0);
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1081, 0);
    render_pass_encoder1040.drawIndirect(buffer1070, 0);
    compute_pass_encoder1000.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1098, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1098, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1041.drawIndirect(buffer1023, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1058, 0);
    device20.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.end();
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1084, 0);
    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10100,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder1040.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1018, 0);
    device10.queue.submit([]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1070, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1041.drawIndirect(buffer1095, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1041.drawIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1070, 0);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1042.drawIndirect(buffer1057, 0);
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1042.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1037);
    render_pass_encoder1050.drawIndexedIndirect(buffer1084, 0);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1038);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer104, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10105, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10105, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1040.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1084, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1050.drawIndirect(buffer1098, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndirect(buffer1018, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1042.end();
    render_pass_encoder1000.drawIndirect(buffer1057, 0);
    render_pass_encoder1041.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1095, 0);
    render_pass_encoder1000.drawIndirect(buffer1084, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10107,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1039);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    render_pass_encoder1001.drawIndirect(buffer1095, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    compute_pass_encoder1041.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1098, 0);
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1041);
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1042);
    render_pass_encoder1041.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer1084, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1042.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1042.drawIndirect(buffer1058, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1040.end();
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder1041.end();
    compute_pass_encoder1021.end();
    render_pass_encoder1041.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1042.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1050.drawIndirect(buffer10105, 0);
    render_pass_encoder1001.drawIndirect(buffer1085, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1089, 0);
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10105, 0);
    compute_pass_encoder1041.end();
    compute_pass_encoder1020.end();
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1042.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1042.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10105, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1051, "uint16");
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1051.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1042.end();
    device30.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1042.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer10105, 0);
    render_pass_encoder1050.drawIndexed(3);
    device10.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1089, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10116,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1043);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1042.end();
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1042.drawIndirect(buffer1094, 0);
    render_pass_encoder1041.drawIndirect(buffer1010, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1042.drawIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10118,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1044);
    render_pass_encoder1040.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer10117, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer1084, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10119, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10119, 0);
    device10.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndirect(buffer10105, 0);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1042.setIndexBuffer(buffer10117, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10121,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1045);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1042.drawIndirect(buffer10115, 0);
    render_pass_encoder1051.end();
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer10114, 0);
    device20.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer10118, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10119, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10122, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10122, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1042.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndirect(buffer1084, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1064, 0);
    compute_pass_encoder1021.popDebugGroup()
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10123, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10123, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1069, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10124, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10124, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10126,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1046);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1041.draw(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1042.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1076, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1042.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1074, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1042.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer10124, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10127, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10127, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1001.drawIndirect(buffer10114, 0);
    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10129,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1047);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10130, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10130, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.end();
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10131, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10131, 0);
    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10133,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1048);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10135,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1049);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndirect(buffer10119, 0);
    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10137,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1050);
    render_pass_encoder1001.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10125, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10138, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10138, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1020.end();
    device20.queue.submit([]);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10139, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10139, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1050.draw(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10140, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10140, 0);
    compute_pass_encoder1041.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer1057, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndirect(buffer1070, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder1001.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1095, 0);
    render_pass_encoder1001.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10141, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10141, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1021.end();
    render_pass_encoder1051.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10140, 0);
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1067, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1042.drawIndirect(buffer10122, 0);
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10131, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1041.setIndexBuffer(buffer1033, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer10119, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1075, "uint16");
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10142, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10142, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.end();
    device20.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10127, 0);
    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10144,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1051);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10145, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10145, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1050.drawIndexed(3);
    compute_pass_encoder1040.end();
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1041.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1042.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1083, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer10127, 0);
    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10147 = device10.createBuffer({
        label: "buffer10147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10147,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1052);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1042.drawIndirect(buffer1064, 0);
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.end();
    const buffer10148 = device10.createBuffer({
        label: "buffer10148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10149 = device10.createBuffer({
        label: "buffer10149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10149,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1053);
    compute_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer10122, 0);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1057, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndirect(buffer10123, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndirect(buffer10126, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer10150 = device10.createBuffer({
        label: "buffer10150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10150, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer10150, 0);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer10123, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1051.end();
    compute_pass_encoder1040.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer10127, 0);
    render_pass_encoder1051.drawIndirect(buffer10139, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1042.drawIndirect(buffer10141, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1041.drawIndirect(buffer10139, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1042.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1050.drawIndirect(buffer1058, 0);
    render_pass_encoder1000.drawIndirect(buffer10131, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1001.drawIndirect(buffer10130, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1042.drawIndirect(buffer1059, 0);
    render_pass_encoder1040.end();
}