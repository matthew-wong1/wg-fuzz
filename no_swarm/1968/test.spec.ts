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
        powerPreference: undefined
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([-0.75, -0.25, 0.0, 0.75, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, 1.0, 0.25, -1.0, -0.25, 0.25, -0.25, -0.5, 0.5, 0.5, 0.25, -0.75, -0.75, 0.0, 1.0, 0.25, 1.0, -1.0, -0.5, -0.75, -0.5, -1.0, 0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.0, 0.75, 0.25, 0.5, -1.0, 1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.75, -0.25, 0.0, -0.75, -1.0, 0.5, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, -0.5, 0.75, -0.5, -0.25, -0.75, -1.0, -0.25, 0.75, 0.0, 0.5, 0.75, -0.5, 0.5, 1.0, 0.0, -0.25, 0.0, 0.5, -0.75, -0.5, -0.5, 0.0, 0.75, 0.0, 0.0, 0.25, 0.75, 0.75, 0.0, -1.0, 0.0, -1.0, -1.0, -0.75, 0.75, ]);
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const array1 = new Float32Array([0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 1.0, 0.25, -0.5, 0.75, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, 1.0, -0.75, -1.0, 0.0, 0.5, 1.0, 0.75, 0.75, 0.25, 0.25, 0.25, 0.75, 1.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.5, -0.75, -1.0, 0.0, 0.0, 0.25, 1.0, -0.5, 0.75, 0.5, -0.75, 0.0, 0.5, -1.0, 0.5, -0.75, -0.25, -0.75, 0.5, 0.25, 0.0, 1.0, -0.75, 0.5, 0.0, -0.75, -1.0, -1.0, 1.0, 0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.0, 0.75, 0.0, 0.0, 0.5, 0.75, 0.0, -0.25, -1.0, -0.25, 1.0, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, 0.75, 0.25, -0.5, 0.25, 0.75, 0.0, -0.75, 0.5, 0.75, 0.0, -0.25, 0.5, -0.5, ]);
    
    
    
    
    query000.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query000.destroy()
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const array2 = new Float32Array([0.0, 0.0, -0.5, 0.0, 0.5, 0.25, -0.5, 0.25, 0.75, 0.75, 0.5, 0.75, 0.5, 0.75, 1.0, 1.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, 1.0, -0.75, 0.25, -0.25, -0.25, 0.25, -0.75, 1.0, -0.75, -0.75, -0.5, -1.0, 0.25, -0.5, -0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 1.0, -0.25, 0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.5, -1.0, 0.75, 0.5, 0.5, 0.75, 1.0, -0.5, 1.0, -0.75, 1.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.25, -1.0, -0.25, 1.0, 0.0, 1.0, 0.0, -0.5, -0.5, 1.0, 1.0, 1.0, -0.25, -0.5, 0.0, -0.25, -0.75, 0.5, -1.0, 1.0, 0.75, -0.5, 0.25, 0.5, -0.5, -0.5, 1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.5, 0.5, ]);
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([1.0, -0.75, -0.75, 0.0, 0.75, 0.5, -0.75, -1.0, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.25, 1.0, -0.25, -0.75, -0.5, 0.75, 0.25, -0.5, 1.0, 1.0, 0.25, 0.0, -0.5, -0.75, 1.0, 1.0, -0.25, 0.5, -0.5, -0.75, -1.0, -0.5, 0.0, 0.0, -0.5, -1.0, -0.75, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, 1.0, 0.5, -0.75, 0.5, 0.0, 0.5, 0.75, 0.0, 0.25, 0.5, -0.25, -0.5, -0.25, -0.5, -1.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.75, -1.0, -0.75, 0.25, 0.25, 1.0, -0.5, 0.75, 1.0, -0.75, 0.0, -1.0, 0.75, 1.0, 0.75, 1.0, 0.75, 0.5, -1.0, -0.25, 1.0, 0.75, 1.0, -1.0, -0.25, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture200.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.popDebugGroup()
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const array4 = new Float32Array([1.0, 0.75, -0.75, -0.25, -1.0, -0.5, -1.0, 0.0, -1.0, 1.0, -0.25, 0.75, -0.75, -0.75, -0.75, -1.0, -1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -1.0, 0.75, 1.0, -0.25, 0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, -0.75, -0.5, -1.0, 0.25, 1.0, 0.75, -0.5, 0.75, 0.0, -0.75, 0.75, -0.75, 1.0, 0.75, -0.5, -0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 0.5, -1.0, 0.5, 0.0, -1.0, 0.75, 0.5, -0.25, -0.25, -0.75, 0.0, 0.0, -0.75, -0.25, 0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.5, -1.0, -1.0, 0.0, 1.0, 1.0, -1.0, 1.0, 0.5, 0.75, -0.5, -0.5, -0.5, -0.5, 0.0, 0.25, 1.0, 0.5, -1.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.75, ]);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture201.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
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
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer202.destroy()
    
    
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    texture202.destroy();
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer203.destroy()
    
    buffer200.destroy()
    query300.destroy()
    
    const array5 = new Float32Array([-0.5, -0.5, 0.25, -0.75, 0.75, 0.0, 0.75, 0.0, -0.25, -0.75, 0.0, -0.25, -0.25, 0.25, 0.5, 0.5, -0.25, -1.0, 1.0, 0.5, 0.25, -0.75, -0.25, -0.5, 0.75, 0.25, 1.0, 0.0, 0.75, 0.25, 0.5, 0.75, 0.25, -0.75, -0.25, -1.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.5, 1.0, 0.5, 0.75, 1.0, 0.0, 0.0, 0.5, -0.75, -1.0, -0.25, 0.5, 0.5, 0.25, 1.0, -1.0, 1.0, -1.0, 1.0, 1.0, 0.0, 0.75, -0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 0.5, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, 0.75, 0.25, -0.5, -0.5, 1.0, 1.0, 0.25, -0.5, 1.0, -0.25, -1.0, -0.5, -0.25, 0.5, 0.75, 0.75, 0.75, 0.75, 0.5, ]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    query200.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query300.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder301.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    command_encoder202.clearBuffer(buffer203);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer200.destroy()
    
    command_encoder301.insertDebugMarker("mymarker");
    texture204.destroy();
    
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture206.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer301 = command_encoder301.finish();
    device20.pushErrorScope("internal");
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    device30.pushErrorScope("validation");
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2020.executeBundles([])
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture207 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    texture203.destroy();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture207 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    command_encoder302.popDebugGroup()
    device20.queue.writeTexture({ texture: texture207 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device20.queue.writeTexture({ texture: texture207 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture207 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeTexture({ texture: texture207 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    compute_pass_encoder3020.setPipeline(compute_pipeline302);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture_view2052 = texture205.createView({ label: "texture_view2052" });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    texture205.destroy();
    render_pass_encoder2030.setStencilReference(1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2030.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.clearBuffer(buffer201);
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    texture400.destroy();
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2051,
            },
        ],
        occlusionQuerySet: query202
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query201
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture207 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    render_pass_encoder2020.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder2031.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.executeBundles([render_bundle_encoder200, ])
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2052,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2031.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeTexture({ texture: texture207 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    render_pass_encoder2000.executeBundles([])
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2001.insertDebugMarker("marker");
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2031.beginOcclusionQuery(0)
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder2000.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2020.popDebugGroup();
    
    render_pass_encoder2001.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    query400.destroy()
    device40.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2021.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2021.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    device50.pushErrorScope("internal");
    
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_pass_encoder2001.setStencilReference(1);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder2031.setStencilReference(1);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    buffer300.destroy()
    query301.destroy()
    render_pass_encoder2020.executeBundles([render_bundle_encoder202, ])
    compute_pass_encoder2000.popDebugGroup()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer500.destroy()
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture207 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder2031.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2000.insertDebugMarker("marker");
    device50.destroy();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2031.endOcclusionQuery()
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2021.setStencilReference(1);
    const array6 = new Float32Array([1.0, -0.25, 0.5, -1.0, 0.25, 0.25, 0.75, 0.5, -0.75, -0.75, 1.0, -0.75, -1.0, 0.0, 0.5, 0.5, -1.0, -0.75, 1.0, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, -0.75, 0.5, -0.25, 0.25, 0.25, 0.75, 0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.25, -0.75, -0.5, 0.75, 0.5, 1.0, 0.0, -0.5, 1.0, -1.0, -1.0, 0.0, 1.0, 1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.0, 0.75, -0.5, -0.25, -0.75, 0.0, -0.5, 0.0, 0.25, 0.75, 0.25, -1.0, -1.0, 0.5, 0.0, 0.75, 0.0, 0.0, 0.0, 0.0, 0.25, -0.25, -1.0, 0.25, -1.0, 1.0, -0.75, -1.0, 1.0, 0.75, 1.0, -1.0, 1.0, 0.0, -0.25, 0.75, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2021.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    render_pass_encoder2030.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture207 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device20.queue.writeTexture({ texture: texture207 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture207 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2070,
            },
        ],
        occlusionQuerySet: query200
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder2000.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.executeBundles([])
    buffer301.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.pushErrorScope("out-of-memory");
    
    
    query401.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture207 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    device10.pushErrorScope("internal");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query202
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    buffer302.destroy()
    buffer202.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout306,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device60.destroy();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2020.executeBundles([])
    command_encoder303.clearBuffer(buffer302);
    
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2011.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture207 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    texture300.destroy();
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture207 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_pass_encoder2011.setPipeline(render_pipeline202);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.setPipeline(render_pipeline202);
    render_pass_encoder2020.setPipeline(render_pipeline202);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group200);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2031.setPipeline(render_pipeline201);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2020.setVertexBuffer(0, buffer208);
    render_pass_encoder2000.end();
    render_pass_encoder2021.setPipeline(render_pipeline202);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group204);
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer208);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group205);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group206);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2031.setVertexBuffer(0, buffer207);
    render_pass_encoder2011.setVertexBuffer(0, buffer205);
    render_pass_encoder2031.drawIndirect(buffer209, 0);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2021.setVertexBuffer(0, buffer203);
    render_pass_encoder2001.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2015, 0);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2031.end();
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder3020.end();
    render_pass_encoder2010.setVertexBuffer(0, buffer200);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2021.end();
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2010.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2001.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.endOcclusionQuery()
    command_encoder203.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2030.end();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    device30.queue.submit([command_buffer303, ]);
    device30.queue.submit([command_buffer300, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer308, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.draw(3);
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    command_encoder500.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    const command_buffer500 = command_encoder500.finish();
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([]);
    render_pass_encoder2021.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2031.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer309, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3010, 0);
    render_pass_encoder2001.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2000.end();
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    device30.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2001.end();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer206, 0);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder2021.end();
    render_pass_encoder2010.end();
    render_pass_encoder2020.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2011.end();
    device20.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2001.drawIndexed(3);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.end();
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3024, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3025, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2031.end();
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
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2011.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3028, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3028, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2031.drawIndirect(buffer2018, 0);
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3011);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2030.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2011.drawIndirect(buffer2017, 0);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2011.popDebugGroup();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3033, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3034, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.end();
    compute_pass_encoder3020.end();
    compute_pass_encoder3020.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2030.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2000.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3035, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2030.draw(3);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder3000.end();
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder3020.end();
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    compute_pass_encoder3020.end();
    render_pass_encoder2001.end();
    device20.queue.submit([]);
    render_pass_encoder2000.end();
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2021.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2010, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2030.drawIndexed(3);
}