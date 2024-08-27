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
    const array0 = new Float32Array([-0.5, -0.25, -0.75, 0.5, 0.0, -0.5, -0.5, -0.25, 0.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.5, -1.0, 0.5, 0.75, 1.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.75, 0.75, 0.75, 0.5, -0.5, 0.5, -1.0, 0.5, 0.5, -0.75, -0.5, 0.5, 1.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 0.25, 0.25, -1.0, 0.25, -1.0, 0.75, -1.0, -0.5, 0.5, 0.75, 0.75, 0.5, -0.75, 0.0, 1.0, -0.75, 0.0, 0.5, 0.5, 0.5, 0.5, 0.75, -1.0, -1.0, -0.75, -0.5, 0.5, 0.5, 0.75, -0.25, -0.5, 0.75, 1.0, 0.75, -0.75, -0.75, 0.5, 0.25, -1.0, -1.0, -0.75, 1.0, -0.25, 1.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.25, -0.75, 0.0, -0.25, 0.25, -0.25, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([0.25, 0.75, -0.5, -0.5, -0.75, 0.0, 1.0, 0.25, 0.5, 0.5, 1.0, 0.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.0, 0.0, -0.5, 0.5, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.5, -0.25, 0.75, -0.75, 0.25, -0.5, -0.75, -0.75, 0.75, -0.25, -0.5, -0.5, -0.75, 1.0, 0.5, 0.0, 0.25, -0.5, 0.25, -0.75, -0.5, -0.5, -0.25, -0.25, -0.5, 0.75, 0.75, -0.5, 0.75, -1.0, 0.25, -0.25, 0.25, -1.0, -0.75, -1.0, 0.75, 0.75, -0.25, 0.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, 0.75, 0.5, 1.0, -0.5, 1.0, -1.0, -1.0, -0.25, -1.0, 1.0, -0.5, 0.0, 0.0, 0.25, 0.25, 0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -1.0, -1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device10.pushErrorScope("out-of-memory");
    
    query101.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.pushErrorScope("validation");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query100.destroy()
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
    buffer200.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.copyTextureToTexture(
        {
            texture: texture101
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
    
    device10.pushErrorScope("internal");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.pushErrorScope("validation");
    texture100.destroy();
    
    
    
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
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    
    
    query101.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    buffer100.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    command_encoder100.insertDebugMarker("mymarker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    texture200.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    texture300.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    command_encoder200.popDebugGroup()
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.popDebugGroup();
    command_encoder200.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query201
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        occlusionQuerySet: query100
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device10.pushErrorScope("internal");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    command_encoder100.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    buffer301.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline100);
    query100.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device30.destroy();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    device30.pushErrorScope("internal");
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    
    device20.pushErrorScope("out-of-memory");
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
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
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    buffer101.destroy()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    render_pass_encoder2000.beginOcclusionQuery(0)
    buffer104.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1010.setPipeline(render_pipeline103);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    texture103.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
        occlusionQuerySet: query200
    });
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder2020.beginOcclusionQuery(1)
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
    render_pass_encoder2020.endOcclusionQuery()
    
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline103);
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    buffer101.destroy()
    command_encoder100.copyBufferToBuffer(
        buffer103,
        0,
        buffer104,
        0,
        400
    );
    buffer105.destroy()
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture104.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group101);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder100.draw(3);
    const array2 = new Float32Array([0.5, 0.25, 0.5, -0.25, 1.0, 0.75, -0.75, 0.75, -0.75, -0.25, -0.75, -0.75, 0.0, -1.0, -1.0, 0.25, -0.25, 0.0, -0.75, 0.0, -0.75, 1.0, 0.25, 0.5, -0.75, 0.75, 0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, -1.0, 0.5, 0.75, -1.0, -0.75, 0.0, 0.75, 0.0, -0.75, -0.25, 1.0, 0.25, 0.5, -0.5, 0.5, -0.5, 0.25, -1.0, -0.5, 0.5, 0.25, 0.25, 0.0, 1.0, 0.5, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, -0.25, -0.25, -0.25, -0.5, -0.5, 0.25, 1.0, 1.0, 0.0, 0.75, 0.75, 0.75, 0.25, -0.75, 0.75, 0.5, 0.25, -0.75, -0.25, 1.0, -0.5, -1.0, 0.75, 1.0, -0.5, -0.5, 0.75, -0.75, -0.25, 1.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.25, ]);
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2010.setPipeline(render_pipeline202);
    
    texture101.destroy();
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query102
    });
    query101.destroy()
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    buffer202.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    buffer109.destroy()
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder2000.endOcclusionQuery()
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.copyBufferToBuffer(
        buffer1010,
        0,
        buffer105,
        0,
        400
    );
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer201.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.executeBundles([])
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_pass_encoder1001.insertDebugMarker("marker");
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1011.setPipeline(render_pipeline106);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder1030.setStencilReference(1);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder2000.popDebugGroup();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder1001.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    command_encoder102.clearBuffer(buffer106);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query200.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder1030.setPipeline(render_pipeline105);
    
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    render_pass_encoder1010.setVertexBuffer(0, buffer104);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer203, 0);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1011.setStencilReference(1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2020.setStencilReference(1);
    query201.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.draw(3);
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group105);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1015.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
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
        occlusionQuerySet: query102
    });
    command_encoder200.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder1021.setPipeline(render_pipeline101);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    
    
    render_pass_encoder1001.setStencilReference(1);
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    render_pass_encoder1000.setVertexBuffer(0, buffer104);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1001.setVertexBuffer(0, buffer103);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer1016.destroy()
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder2010.popDebugGroup();
    query106.destroy()
    render_pass_encoder1011.setVertexBuffer(0, buffer107);
    
    render_bundle_encoder101.setVertexBuffer(0, buffer105);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query103.destroy()
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_bundle_encoder101.setIndexBuffer(buffer108, "uint16");
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_bundle_encoder101.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_pass_encoder1031.setPipeline(render_pipeline106);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    buffer1014.destroy()
    device60.destroy();
    command_encoder101.copyBufferToBuffer(
        buffer108,
        0,
        buffer1011,
        0,
        400
    );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device50.destroy();
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    
    buffer108.destroy()
    render_pass_encoder2001.setPipeline(render_pipeline201);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    buffer1013.destroy()
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    texture102.destroy();
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.setPipeline(render_pipeline200);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.beginOcclusionQuery(0)
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.pushErrorScope("internal");
    
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group106);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group107);
    render_pass_encoder1030.setVertexBuffer(0, buffer109);
    render_pass_encoder2021.setPipeline(render_pipeline202);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1000.popDebugGroup();
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder2020.setPipeline(render_pipeline202);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1020.setVertexBuffer(0, buffer1014);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.setVertexBuffer(0, buffer107);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer100, 0);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group109);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1031.draw(3);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    command_encoder200.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group203);
    compute_pass_encoder2010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer207);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1012);
    render_pass_encoder2021.setVertexBuffer(0, buffer205);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.draw(3);
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
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

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1030.endOcclusionQuery()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2021.draw(3);
    render_pass_encoder1021.end();
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    render_pass_encoder1000.end();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.draw(3);
    device10.queue.submit([command_buffer101, ]);
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group206);
    render_pass_encoder2020.end();
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer106, "uint16");
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1011.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2030.setVertexBuffer(0, buffer207);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer200);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder2030.end();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2001.end();
    render_pass_encoder2021.drawIndexed(3);
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
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2021.drawIndexed(3);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device50.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.draw(3);
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder2001.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device40.queue.submit([]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.end();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group209);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder2001.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2023, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2024, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.end();
    render_pass_encoder1031.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder2000.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    device20.queue.submit([command_buffer202, ]);
}