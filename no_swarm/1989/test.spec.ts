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
    const array0 = new Float32Array([0.0, -0.25, 1.0, 0.5, 0.5, 0.5, 0.75, 0.75, 0.75, -0.5, 1.0, -0.75, -0.5, -0.25, 0.5, 0.0, -1.0, 0.5, 0.0, 0.75, -0.5, 0.75, -0.75, 0.25, 0.75, 1.0, 1.0, 1.0, -0.5, -1.0, 0.5, -1.0, -1.0, -0.75, 1.0, 0.5, -0.5, 0.75, -0.75, -0.25, -0.25, -0.75, -0.25, -0.5, -1.0, -0.25, 0.75, 0.25, 1.0, -1.0, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, 0.5, -0.5, 0.5, -0.75, 0.25, 0.0, 1.0, -0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.25, 0.5, 0.75, -0.75, -0.25, 0.25, -0.75, 0.75, -0.75, -0.5, -1.0, -0.25, 0.0, 0.25, 0.0, -1.0, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, 1.0, ]);
    
    const array1 = new Float32Array([-0.25, -1.0, 0.75, -0.75, -0.25, 0.5, 0.25, -0.25, 0.25, -0.75, -1.0, -0.5, -0.5, 0.0, -0.75, 0.5, 1.0, 0.25, 1.0, 0.75, -1.0, -1.0, 0.75, -0.25, 0.75, -0.5, 0.5, 0.0, 0.0, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, -0.75, -1.0, 0.25, -0.75, 0.0, -0.25, 0.5, -0.25, 0.25, 0.75, 0.75, -0.5, 0.75, -0.25, -0.75, 0.25, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, 1.0, 0.25, 1.0, -1.0, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, -0.75, 1.0, -0.25, 0.25, 1.0, 0.0, -0.75, 0.0, 0.75, 0.25, 0.0, 0.75, -0.5, 0.25, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 0.75, -0.75, 0.25, 0.5, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, -1.0, -0.25, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array2 = new Float32Array([-0.75, -0.5, 1.0, 1.0, -1.0, 0.25, -0.25, -0.5, -0.25, -0.25, 0.0, 1.0, 0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.0, 0.75, -1.0, 0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.5, 0.25, -1.0, 0.75, -0.25, -1.0, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, 0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.75, 0.25, 0.0, 0.5, -0.25, -0.25, -0.5, -0.75, -0.75, -1.0, 0.5, -0.75, -1.0, 0.25, -0.25, 0.0, 0.0, 0.5, -0.75, 0.25, -1.0, 0.25, 0.0, 0.75, 0.25, 0.0, 1.0, -0.25, 0.75, 0.75, 0.5, 1.0, -0.5, -1.0, 0.75, -0.75, 0.75, -0.25, -0.25, -0.5, -0.75, -0.75, -0.5, 0.25, -0.75, -0.25, 0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device20.pushErrorScope("internal");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.destroy();
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    texture100.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    buffer202.destroy()
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device20.pushErrorScope("internal");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device40.pushErrorScope("internal");
    command_encoder200.clearBuffer(buffer201);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer200.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
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
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query200.destroy()
    command_encoder200.clearBuffer(buffer201);
    
    buffer201.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.executeBundles([render_bundle_encoder200, ])
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query500.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query200
    });
    device50.pushErrorScope("internal");
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    texture201.destroy();
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder201.clearBuffer(buffer200);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array3 = new Float32Array([0.5, 0.25, 0.25, -0.75, 0.75, 0.0, 0.5, 0.5, -1.0, 0.5, -0.5, 0.75, -0.75, 1.0, 1.0, -1.0, -1.0, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, 0.5, 0.5, 0.25, 0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 0.25, 1.0, -0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 0.5, 1.0, -0.5, -0.75, 0.75, 0.25, -0.75, -0.25, 1.0, -0.5, -0.5, 0.5, 0.5, -0.5, -0.75, -0.5, -0.25, 0.0, 1.0, 0.75, 0.5, 0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.25, 0.75, 0.25, -0.75, -1.0, -0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.25, -1.0, -0.75, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
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
        occlusionQuerySet: undefined
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2001.setPipeline(render_pipeline200);
    texture200.destroy();
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_pass_encoder2001.setBindGroup(0, bind_group200);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    device30.pushErrorScope("internal");
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query501.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query500.destroy()
    query200.destroy()
    
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
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture300.destroy();
    
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
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setStencilReference(1);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder2001.setVertexBuffer(0, buffer200);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    buffer204.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array4 = new Float32Array([-0.25, 1.0, -0.5, -0.25, -0.25, 0.75, -1.0, -0.25, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.75, -0.75, 0.25, -0.75, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 0.0, 0.25, 0.75, 0.5, -1.0, 0.75, -0.75, 0.75, 0.75, -0.25, -1.0, -0.75, -0.5, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 1.0, 0.75, 0.0, 0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 0.0, 0.75, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, 0.25, 1.0, 0.25, -1.0, 0.25, -1.0, -1.0, -0.5, 0.5, -0.5, 0.75, -0.5, 0.5, 1.0, 0.5, 0.0, 0.0, -1.0, 0.75, 0.0, 0.25, 0.0, 0.0, ]);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer400.destroy()
    render_bundle_encoder500.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder200.setPipeline(render_pipeline202);
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder300.insertDebugMarker("mymarker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder500.clearBuffer(buffer500);
    command_encoder300.pushDebugGroup("mygroupmarker")
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    command_encoder400.popDebugGroup()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder202.insertDebugMarker("marker");
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device20.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("internal");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const command_buffer501 = command_encoder501.finish();
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    
    render_pass_encoder4030.beginOcclusionQuery(0)
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer300.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    buffer400.destroy()
    render_pass_encoder4030.executeBundles([])
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer402.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder500.clearBuffer(buffer500);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_buffer600 = command_encoder600.finish();
    
    render_bundle_encoder300.popDebugGroup();
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer500.destroy()
    command_encoder401.pushDebugGroup("mygroupmarker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    compute_pass_encoder4000.setPipeline(compute_pipeline402);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder502.setPipeline(render_pipeline500);
    
    
    render_pass_encoder4030.executeBundles([])
    render_bundle_encoder502.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture700.destroy();
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    command_encoder401.popDebugGroup()
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
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    texture400.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.pushErrorScope("validation");
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_pass_encoder4020.executeBundles([render_bundle_encoder401, ])
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder300.clearBuffer(buffer301);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    query501.destroy()
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_bundle_encoder300.setPipeline(render_pipeline302);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    buffer301.destroy()
    
    buffer303.destroy()
    
    device50.pushErrorScope("internal");
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder4010.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    query601.destroy()
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.executeBundles([render_bundle_encoder400, ])
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    compute_pass_encoder4010.setPipeline(compute_pipeline404);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder401.insertDebugMarker("mymarker");
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
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
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    command_encoder404.copyBufferToBuffer(
        buffer403,
        0,
        buffer405,
        0,
        400
    );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder602.pushDebugGroup("mygroupmarker")
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    buffer304.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture700.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4002,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    command_encoder700.insertDebugMarker("mymarker");
    command_encoder404.clearBuffer(buffer402);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    command_encoder403.insertDebugMarker("mymarker");
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_buffer602 = command_encoder602.finish();
    device80.queue.submit([]);
    compute_pass_encoder4030.setPipeline(compute_pipeline406);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
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
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.setPipeline(render_pipeline301);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group400);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const command_buffer700 = command_encoder700.finish();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer408, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.endOcclusionQuery()
    compute_pass_encoder4010.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder4030.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    const command_buffer403 = command_encoder403.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer602, ]);
    command_encoder300.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group304);
    compute_pass_encoder3000.end();
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer403, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer601, ]);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    render_pass_encoder4021.popDebugGroup();
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder3000.setVertexBuffer(0, buffer3012);
    render_pass_encoder3000.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4013, 0);
    device70.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3000.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4014, 0);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    device50.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4030.popDebugGroup()
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group404);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder3000.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4021, 0);
    device40.queue.submit([]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder4020.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4022, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4022, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder4010.end();
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group406);
    render_pass_encoder4021.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    render_pass_encoder4030.popDebugGroup();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder3000.end();
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    device50.queue.submit([command_buffer500, ]);
    device80.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    device60.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2001.end();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    device40.queue.submit([]);
    device80.queue.submit([]);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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
        layout: render_pipeline201.getBindGroupLayout(0),
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
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer402, ]);
    device50.queue.submit([command_buffer501, ]);
    device70.queue.submit([]);
    render_pass_encoder4021.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4027, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4021.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer404, ]);
    device60.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder4011.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([]);
    render_pass_encoder4030.popDebugGroup();
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder3000.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group408);
    device50.queue.submit([]);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    device40.queue.submit([command_buffer404, ]);
    device60.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder4040.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder4030.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder3000.end();
    device80.queue.submit([]);
    device80.queue.submit([]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4032, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4032, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3017, 0);
    command_encoder200.popDebugGroup()
    render_pass_encoder3000.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4033, 0);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder4010.end();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer403, ]);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    compute_pass_encoder4010.end();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    device20.queue.submit([]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4034, 0);
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer101 = command_encoder101.finish();
    device30.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder4021.popDebugGroup();
    compute_pass_encoder4010.end();
    compute_pass_encoder4030.end();
    device80.queue.submit([]);
    compute_pass_encoder4000.end();
    device70.queue.submit([]);
    device70.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder4021.popDebugGroup();
    device60.queue.submit([]);
    device80.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4010.end();
    device70.queue.submit([]);
    compute_pass_encoder4000.end();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4011.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer500, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4035, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    device60.queue.submit([]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4000.end();
    device30.queue.submit([command_buffer300, ]);
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4010);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4040.popDebugGroup();
    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4039,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer305, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4040, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4040, 0);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4042,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4012);
    device30.queue.submit([]);
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    device50.queue.submit([command_buffer500, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder4040.popDebugGroup();
    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4046,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    render_pass_encoder4030.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder4000.end();
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4000.end();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    const command_buffer200 = command_encoder200.finish();
    device80.queue.submit([]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.draw(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer600, ]);
    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4048,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4015);
    render_pass_encoder4011.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder4030.end();
    render_pass_encoder3000.setIndexBuffer(buffer3020, "uint16");
    compute_pass_encoder4010.end();
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device60.queue.submit([]);
    device30.queue.submit([]);
    device40.queue.submit([command_buffer404, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4049, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4049, 0);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4030.end();
    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4051,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4016);
    device80.queue.submit([]);
    device70.queue.submit([]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4052, 0);
    render_pass_encoder3000.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder4030.popDebugGroup()
    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4054,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group4017);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([command_buffer403, command_buffer404, ]);
    render_pass_encoder4040.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    compute_pass_encoder4030.end();
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder4040.popDebugGroup();
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4018);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3000.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.end();
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder4010.end();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    compute_pass_encoder4000.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4030.popDebugGroup();
    device40.queue.submit([]);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    render_pass_encoder3000.end();
    device80.queue.submit([]);
    device70.queue.submit([]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3023, "uint16");
    device30.queue.submit([]);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4020.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder4020.popDebugGroup();
    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4058,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    device40.queue.submit([command_buffer402, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4000.popDebugGroup()
    device50.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4059, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4059, 0);
    compute_pass_encoder3000.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4060, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4060, 0);
    render_pass_encoder4021.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.drawIndirect(buffer3011, 0);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    device50.queue.submit([command_buffer501, ]);
    device60.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.end();
    device60.queue.submit([command_buffer601, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3000.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3027, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3027, 0);
    device40.queue.submit([command_buffer404, ]);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
}