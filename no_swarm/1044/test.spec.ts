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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.destroy();
    
    const array0 = new Float32Array([0.75, 0.25, 1.0, -0.75, 0.25, -0.75, 1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -0.5, 0.25, -0.25, -0.5, 0.0, -1.0, -1.0, 0.25, -0.25, -1.0, -1.0, -0.5, -0.25, 0.75, -0.25, 0.5, 0.75, -0.75, 0.75, 1.0, 0.75, 0.25, -0.5, -0.25, -0.75, -0.5, -0.25, 0.5, 0.25, 0.75, -0.75, -0.5, -0.75, 1.0, 0.75, -0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.75, 0.0, 0.0, -0.5, -0.75, -1.0, 0.5, 0.75, 0.5, 0.0, 0.75, -0.75, 0.25, 0.5, -0.5, -0.25, -1.0, 0.75, -1.0, -0.5, -0.5, 0.0, 0.25, -0.25, 1.0, -0.5, 0.5, 1.0, -0.75, 0.25, -0.75, -0.5, -0.75, 0.75, -0.75, -0.25, -0.75, 0.25, 1.0, 0.75, -1.0, 0.75, 1.0, 0.0, 0.75, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.5, 0.5, -0.75, 0.75, -1.0, 0.25, -1.0, 0.75, -0.75, -1.0, 1.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, -0.75, -0.75, 0.25, 0.75, 0.25, -1.0, -0.5, 0.5, 0.0, 0.5, 0.25, 1.0, -0.75, 0.0, -0.75, -1.0, 0.25, -0.5, 1.0, -1.0, -0.75, -0.25, 1.0, 0.75, 0.0, 1.0, -0.75, 0.25, 0.0, -0.5, -0.5, 0.75, 1.0, 0.75, -0.25, 0.75, -1.0, -0.25, -0.25, 0.0, -0.75, 0.75, 0.0, 0.0, 0.75, 0.0, -0.75, 1.0, -1.0, 0.25, -0.75, 0.25, -1.0, 0.5, 0.75, -0.75, -0.75, -0.25, 0.0, 0.5, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 0.25, -1.0, 1.0, -0.25, -0.25, -1.0, -0.25, -0.25, -0.75, 0.0, 0.25, 0.5, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_buffer100 = command_encoder100.finish();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.destroy();
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    
    command_encoder101.clearBuffer(buffer100);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const array2 = new Float32Array([0.75, -0.25, 0.5, -0.5, 0.25, -0.25, 0.25, 0.75, -0.25, -0.75, 0.25, -1.0, -1.0, -0.25, 0.0, -0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 0.75, 0.5, -1.0, 1.0, 0.25, -0.5, 0.75, 0.0, -1.0, 1.0, 0.0, -0.25, 0.75, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.0, 0.5, -0.25, 0.25, 0.0, -0.25, 1.0, 1.0, 0.0, 0.5, 0.5, 0.75, 1.0, -0.25, 0.0, -0.25, 0.0, -0.5, 0.5, -0.75, -0.25, -1.0, -0.25, 0.75, 0.5, 0.0, 0.0, 1.0, 0.5, -0.25, -1.0, 0.25, -0.25, 0.75, -0.25, 0.75, -0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -0.5, 0.0, 0.75, -0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 0.5, 0.25, -0.75, -0.5, 0.5, 0.75, ]);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array3 = new Float32Array([0.0, 0.0, 1.0, 0.75, -0.5, -1.0, -0.25, 0.25, -1.0, 0.0, -0.25, -0.25, -0.75, -0.5, 1.0, -0.5, 0.75, 0.0, 0.0, 0.5, -1.0, -1.0, 0.75, 0.0, 0.75, -1.0, -0.5, -0.5, 0.25, -0.75, -0.25, 0.0, -1.0, 0.5, -0.5, -1.0, -1.0, -0.75, 0.5, 1.0, 0.0, 0.25, 1.0, -0.25, 1.0, -0.75, -1.0, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, 1.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.5, -1.0, 0.75, -0.25, 0.5, 1.0, 0.5, -0.75, 0.0, 1.0, 0.0, -1.0, -0.5, -0.25, -0.75, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, 0.75, -0.75, -0.75, 0.0, 1.0, -0.5, 0.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.25, 0.75, ]);
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const array4 = new Float32Array([-0.25, 0.75, 0.75, 0.75, -0.5, 0.25, 0.5, 1.0, 0.75, -0.5, 0.0, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.5, -0.75, 1.0, -0.25, 0.75, 1.0, 0.5, 0.75, -0.75, 1.0, 0.75, 0.0, -0.25, 0.25, -0.25, 0.25, 1.0, 0.0, -1.0, -1.0, -0.5, -0.5, 1.0, -0.75, 0.0, -0.25, 1.0, 0.0, 0.75, 0.75, 0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -0.5, 0.75, 0.5, -1.0, 0.5, 0.0, 0.75, -0.75, 0.75, -0.5, 0.5, 0.5, -1.0, 0.0, -0.25, -0.75, 0.25, -0.5, 0.0, 1.0, -0.25, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, -0.25, -0.5, 0.5, 0.5, 0.25, 0.5, 0.0, 0.75, -0.25, -1.0, 0.25, -0.75, 0.75, -1.0, 0.75, ]);
    
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.popDebugGroup();
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3003,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    texture301.destroy();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture300.destroy();
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    buffer300.destroy()
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.insertDebugMarker("marker");
    buffer303.destroy()
    buffer302.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setStencilReference(1);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture303.destroy();
    
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture302.destroy();
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    texture305.destroy();
    texture304.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    {
        await buffer307.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer307.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer307.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    buffer301.destroy()
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    texture400.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3000.setStencilReference(1);
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    texture306.destroy();
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    texture305.destroy();
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    device40.destroy();
    command_encoder000.clearBuffer(buffer000);
    
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

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    render_pass_encoder3000.setStencilReference(1);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    const command_buffer302 = command_encoder302.finish();
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder3000.setPipeline(render_pipeline303);
    const array5 = new Float32Array([-1.0, -0.75, -1.0, -0.25, 0.75, 0.5, -0.75, 1.0, -1.0, 0.5, 1.0, 1.0, -1.0, 0.0, -0.75, 0.25, 0.5, 1.0, 0.0, 0.25, 0.75, 0.0, 0.75, 1.0, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, 0.5, -1.0, -0.75, -0.25, 0.25, -0.5, -0.75, -0.5, -0.75, -1.0, -1.0, 0.75, 0.75, -0.25, -0.25, -1.0, -1.0, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, -0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.0, -0.75, -0.5, 0.75, -0.5, -0.25, -0.75, 0.75, 0.25, 0.25, 1.0, -1.0, -1.0, -0.25, 0.25, 0.25, 0.5, 0.75, 1.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.5, 0.0, 0.0, 0.0, 0.25, 0.5, 1.0, 0.75, -1.0, 0.75, 0.75, -1.0, ]);
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group303);
    device00.pushErrorScope("out-of-memory");
    
    
    
    render_bundle_encoder301.setPipeline(render_pipeline302);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer309.destroy()
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setVertexBuffer(0, buffer303);
    
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group304);
    
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer3015, 0, array4, 0, array4.length);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder3010.draw(3);
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    buffer3012.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.end();
    
    render_bundle_encoder301.setVertexBuffer(0, buffer307);
    buffer3014.destroy()
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer3013.destroy()
    render_bundle_encoder300.setVertexBuffer(0, buffer303);
    device30.queue.writeBuffer(buffer3016, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer306.destroy()
    
    device30.pushErrorScope("validation");
    render_pass_encoder3010.setStencilReference(1);
    
    device30.queue.writeBuffer(buffer309, 0, array2, 0, array2.length);
    render_bundle_encoder300.setIndexBuffer(buffer3014, "uint16");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    command_encoder301.copyTextureToTexture(
        {
            texture: texture306
        },
        {
            texture: texture306
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder300.drawIndexedIndirect(buffer3015, 0);
    
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.drawIndirect(buffer3015, 0);
    {
        await buffer3016.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer3016.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer3016.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture304
        },
        {
            buffer: buffer306
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer3016, 0, array3, 0, array3.length);
    render_bundle_encoder300.finish();
    render_pass_encoder3011.insertDebugMarker("marker");
    buffer3011.destroy()
    buffer304.destroy()
    device30.queue.writeBuffer(buffer3016, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer3016, 0, array5, 0, array5.length);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer3017.destroy()
    render_pass_encoder3011.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer308.destroy()
    
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    command_encoder300.popDebugGroup()
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer3016, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.popDebugGroup();
    
    render_pass_encoder3001.setPipeline(render_pipeline303);
    buffer3010.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.popDebugGroup();
    
    
    
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group305);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.popDebugGroup();
    buffer300.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline302);
    render_pass_encoder3000.setStencilReference(1);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3001.setVertexBuffer(0, buffer303);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3011.setPipeline(render_pipeline301);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3018, 0, array1, 0, array1.length);
    render_pass_encoder3001.setIndexBuffer(buffer3010, "uint16");
    buffer3018.destroy()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    buffer500.destroy()
    
    
    
    
    buffer3015.destroy()
    render_pass_encoder3001.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer3016, 0, array2, 0, array2.length);
    
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group306);
    buffer3019.destroy()
    render_bundle_encoder302.setVertexBuffer(0, buffer3012);
    render_bundle_encoder301.popDebugGroup();
    buffer303.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    buffer307.destroy()
    texture500.destroy();
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    command_encoder300.clearBuffer(buffer3016);
    render_bundle_encoder302.drawIndirect(buffer3016, 0);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer3020.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.end();
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    command_encoder301.copyBufferToBuffer(
        buffer305,
        0,
        buffer3014,
        0,
        400
    );
    device30.queue.writeTexture({ texture: texture307 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    compute_pass_encoder3000.popDebugGroup()
    
    
    
    device30.queue.writeBuffer(buffer3016, 0, array4, 0, array4.length);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    buffer307.destroy()
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    
    device30.queue.writeBuffer(buffer3021, 0, array0, 0, array0.length);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer3013.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    render_pass_encoder3001.setStencilReference(1);
    command_encoder303.copyBufferToBuffer(
        buffer3016,
        0,
        buffer3016,
        0,
        400
    );
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture306.destroy();
    render_pass_encoder3000.popDebugGroup();
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device30.queue.writeBuffer(buffer3016, 0, array2, 0, array2.length);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device30.queue.writeBuffer(buffer3016, 0, array2, 0, array2.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.beginOcclusionQuery(0)
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
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
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_buffer301 = command_encoder301.finish();
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder3001.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query300.destroy()
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer3016.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("internal");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder303.copyBufferToBuffer(
        buffer3020,
        0,
        buffer3019,
        0,
        400
    );
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_pass_encoder3010.popDebugGroup();
    buffer3022.destroy()
    command_encoder305.copyBufferToBuffer(
        buffer309,
        0,
        buffer3010,
        0,
        400
    );
    render_pass_encoder3030.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    render_pass_encoder3011.setStencilReference(1);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer3023, 0, array2, 0, array2.length);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout306,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder305.clearBuffer(buffer3017);
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
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
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    render_pass_encoder3011.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3050.setPipeline(render_pipeline301);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3011.beginOcclusionQuery(1)
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    buffer304.destroy()
    render_pass_encoder3030.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    
    
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder300.copyBufferToBuffer(
        buffer3015,
        0,
        buffer3023,
        0,
        400
    );
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group307);
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeBuffer(buffer3023, 0, array1, 0, array1.length);
    render_pass_encoder3010.setIndexBuffer(buffer3022, "uint16");
    command_encoder305.resolveQuerySet(
        query301,
        0,
        32,
        buffer3019,
        0
    )
    render_pass_encoder3011.setVertexBuffer(0, buffer3013);
    device50.pushErrorScope("internal");
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder3050.insertDebugMarker("marker");
    render_pass_encoder3030.executeBundles([render_bundle_encoder300, ])
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3040.setPipeline(render_pipeline301);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.end();
    const command_buffer303 = command_encoder303.finish();
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group308);
    render_pass_encoder3011.setIndexBuffer(buffer3020, "uint16");
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group309);
    render_pass_encoder3011.drawIndexedIndirect(buffer3015, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.end();
    device30.queue.submit([]);
    render_pass_encoder3011.drawIndirect(buffer301, 0);
    render_pass_encoder3010.drawIndirect(buffer3026, 0);
    render_pass_encoder3040.setVertexBuffer(0, buffer304);
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer309, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3030, 0);
    render_pass_encoder3000.drawIndirect(buffer3015, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3015, 0);
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder3001.drawIndirect(buffer3030, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3001.end();
    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3032,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group3010);
    render_pass_encoder3050.setVertexBuffer(0, buffer303);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3050.drawIndirect(buffer3030, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3001.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3001.end();
    render_pass_encoder3010.drawIndirect(buffer3014, 0);
    render_pass_encoder3050.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3030.draw(3);
    render_pass_encoder3000.draw(3);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3000.setIndexBuffer(buffer3020, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3011.setIndexBuffer(buffer3011, "uint16");
    const command_buffer305 = command_encoder305.finish();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3040.drawIndirect(buffer3018, 0);
    render_pass_encoder3001.end();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder3040.drawIndirect(buffer3022, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3030, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3030.drawIndirect(buffer3022, 0);
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3026, "uint16");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3050.setIndexBuffer(buffer3030, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3040.drawIndirect(buffer3029, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3011.end();
    render_pass_encoder3010.end();
    render_pass_encoder3050.drawIndirect(buffer3012, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3040.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3030.drawIndirect(buffer3030, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3001.drawIndirect(buffer3014, 0);
    device30.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3021, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3017, 0);
    device50.queue.submit([]);
    render_pass_encoder3010.end();
    device30.queue.submit([]);
    render_pass_encoder3050.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3050.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder3001.end();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder3001.drawIndirect(buffer3028, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3011.endOcclusionQuery()
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    device70.queue.submit([]);
    render_pass_encoder3050.drawIndirect(buffer3030, 0);
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    render_pass_encoder3050.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3015, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3050.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3030, 0);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    device60.queue.submit([]);
    render_pass_encoder3011.drawIndirect(buffer3017, 0);
    device60.queue.submit([]);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([]);
    render_pass_encoder3000.end();
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    device60.queue.submit([]);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder3030.drawIndirect(buffer3010, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3030.draw(3);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3001.end();
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3030.end();
    render_pass_encoder3040.popDebugGroup();
}