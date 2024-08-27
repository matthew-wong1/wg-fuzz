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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer000.destroy()
    query000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.destroy();
    const array0 = new Float32Array([0.75, -1.0, -0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, 0.75, -0.5, 0.25, -0.75, -0.25, 1.0, 0.75, 0.75, -0.25, -0.25, 0.0, 0.0, -0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, 0.5, 0.0, 0.0, 1.0, 0.5, 0.0, -0.75, -0.75, -0.75, 0.5, -1.0, -0.25, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 1.0, 0.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.5, 0.25, -1.0, -0.5, -1.0, 0.5, -1.0, -1.0, -0.25, -0.5, 0.5, 0.75, -0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -0.75, 0.5, 0.5, 0.0, 0.25, 0.75, -0.25, -1.0, -0.75, -0.25, 0.75, 0.25, 1.0, -1.0, ]);
    const array1 = new Float32Array([1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.0, 0.0, 0.75, -0.75, -0.75, -1.0, -0.75, -0.75, 0.75, 0.25, -0.5, -1.0, 1.0, -0.25, 1.0, 0.75, -0.5, -0.75, 1.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, -0.25, -0.75, -0.5, 0.5, 1.0, -1.0, -0.25, -0.75, 0.25, 0.25, -1.0, -0.5, -0.25, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 0.5, 0.25, -0.25, -0.5, -0.5, -1.0, 0.0, 1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.25, -0.75, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 1.0, -1.0, 0.5, 0.5, 0.0, 0.5, -0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.0, -0.5, 1.0, -0.25, -1.0, 0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 0.25, -0.5, 0.75, -0.25, 0.0, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.pushErrorScope("validation");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    const array2 = new Float32Array([0.0, -1.0, -1.0, 0.5, 0.0, -0.75, 0.0, -1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.75, -0.75, -0.5, -0.25, -0.25, 0.75, -0.75, -0.5, 0.0, 0.75, -0.5, 0.25, 0.5, 1.0, 1.0, -0.75, 0.25, -1.0, 0.25, 0.5, -1.0, 0.5, 0.5, 0.75, -0.25, 0.25, 0.0, -0.5, -0.5, -0.25, -0.25, 0.75, 0.5, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -0.25, 0.5, 1.0, 0.75, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, 0.0, 0.0, 0.25, 0.0, -1.0, -0.75, -1.0, -0.75, -1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.25, -0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 0.5, -0.75, -0.75, -0.5, 0.25, 0.5, 1.0, -0.5, 0.0, -0.25, 0.25, 0.5, -1.0, 0.75, -1.0, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.pushErrorScope("validation");
    render_pass_encoder2010.pushDebugGroup("group_marker");
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2010.beginOcclusionQuery(0)
    texture201.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    render_pass_encoder2010.executeBundles([])
    device20.destroy();
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder400.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    compute_pass_encoder4000.popDebugGroup()
    const array3 = new Float32Array([1.0, -1.0, -0.5, 0.5, -0.5, -1.0, -1.0, 0.5, 0.0, -0.25, 1.0, -1.0, 0.25, 1.0, -1.0, 1.0, 0.75, 1.0, -0.75, 0.25, 0.25, 1.0, 0.5, 0.0, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 0.25, 0.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.5, 0.25, -0.5, -1.0, 0.0, 0.25, 0.25, -0.5, -0.5, -0.25, -0.5, -0.75, -0.75, -1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 0.5, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.0, -0.25, 0.75, 1.0, -0.75, 1.0, 1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 0.75, 0.0, 1.0, ]);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder2000.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    texture400.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    query401.destroy()
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
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
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    render_pass_encoder2010.endOcclusionQuery()
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.pushErrorScope("out-of-memory");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device60.pushErrorScope("out-of-memory");
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const array4 = new Float32Array([0.5, 0.0, 0.75, 0.5, 1.0, 0.75, -0.5, 1.0, 0.5, 0.25, 0.75, 0.75, 0.75, 1.0, 0.0, -1.0, 0.5, 0.25, -0.5, 0.75, -0.5, -0.25, 0.25, 0.0, 0.0, -0.5, -0.5, 0.25, -0.5, 0.5, 0.75, 0.75, -0.75, 0.75, -0.5, -0.25, 1.0, 0.75, -1.0, 0.25, 0.25, 0.0, 0.0, 0.5, -1.0, 0.5, -0.25, 0.25, -0.5, 0.25, -0.5, -1.0, -0.75, 1.0, 0.25, 0.0, 0.0, 0.75, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, 0.75, 0.0, -1.0, 0.5, -1.0, 0.75, 0.75, -0.5, -0.25, 0.5, 0.0, -1.0, 0.5, -0.5, 0.0, -0.25, 0.75, -0.5, -0.75, 0.5, 0.75, -0.5, 0.0, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, -0.5, 0.75, -0.25, 0.5, -0.5, -0.5, 1.0, ]);
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder600.popDebugGroup();
    buffer401.destroy()
    device40.queue.submit([]);
    
    const command_buffer401 = command_encoder401.finish();
    texture402.destroy();
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder4001.setPipeline(compute_pipeline400);
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder401.popDebugGroup();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    buffer400.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    
    
    
    buffer600.destroy()
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder400.copyTextureToBuffer(
        {
            texture: texture406
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    
    const array5 = new Float32Array([0.5, -1.0, -0.75, -0.25, 0.75, 0.25, 0.25, -0.75, -0.5, 0.5, -0.25, -1.0, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.75, -0.75, 0.5, -0.25, 0.75, -0.25, 0.0, 0.75, 0.0, 0.75, 0.75, -1.0, -0.25, 0.75, -1.0, -0.5, -0.5, 0.25, 1.0, 0.5, 0.75, -0.75, 0.0, 1.0, -0.5, -0.25, -0.75, 0.5, -1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.75, -0.5, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, 0.75, 0.5, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.75, -0.75, -0.5, 0.0, 1.0, -0.5, 0.75, -0.5, 0.75, -0.75, 0.75, -0.25, 1.0, -0.5, -0.25, 0.5, -0.25, ]);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder6000.popDebugGroup()
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
    buffer402.destroy()
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    render_bundle_encoder400.popDebugGroup();
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer401.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture402.destroy();
    render_bundle_encoder400.popDebugGroup();
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
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group402);
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture407 = device40.createTexture({
        label: "texture407",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.setPipeline(render_pipeline403);
    texture600.destroy();
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer408, 0);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device40.queue.writeBuffer(buffer406, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    
    render_pass_encoder6010.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture407 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture200.destroy();
    
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group403);
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group404);
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: query400
    });
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer408, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer408, 0, array1, 0, array1.length);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    render_pass_encoder4001.setPipeline(render_pipeline402);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    render_pass_encoder4001.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer407.destroy()
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    buffer403.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder403.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture405
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeTexture({ texture: texture407 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer402.destroy()
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    command_encoder403.clearBuffer(buffer403);
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder403.copyTextureToBuffer(
        {
            texture: texture406
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder4030.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder4030.executeBundles([])
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    compute_pass_encoder4020.setPipeline(compute_pipeline403);
    buffer409.destroy()
    
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder400.setVertexBuffer(0, buffer408);
    render_bundle_encoder401.setVertexBuffer(0, buffer409);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer408, 0, array3, 0, array3.length);
    
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4013, 0);
    render_pass_encoder6000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer4013, 0, array3, 0, array3.length);
    
    render_bundle_encoder400.setIndexBuffer(buffer401, "uint16");
    
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4014, 0);
    
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer4013,
        0
    )
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    compute_pass_encoder4001.end();
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder4020.setStencilReference(1);
    device40.queue.writeBuffer(buffer407, 0, array1, 0, array1.length);
    texture406.destroy();
    device40.queue.writeBuffer(buffer408, 0, array4, 0, array4.length);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.queue.writeBuffer(buffer409, 0, array1, 0, array1.length);
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4013, 0, array5, 0, array5.length);
    command_encoder403.copyTextureToTexture(
        {
            texture: texture406
        },
        {
            texture: texture407
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder4030.setPipeline(render_pipeline404);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    command_encoder403.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer4013, 0, array0, 0, array0.length);
    render_pass_encoder4020.setStencilReference(1);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer408.destroy()
    device40.queue.writeBuffer(buffer4010, 0, array0, 0, array0.length);
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6000.executeBundles([])
    
    render_pass_encoder4030.setStencilReference(1);
    texture601.destroy();
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setStencilReference(1);
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6000.executeBundles([])
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: query401
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4021.setPipeline(render_pipeline405);
    texture401.destroy();
    render_pass_encoder4020.executeBundles([])
    render_bundle_encoder400.drawIndirect(buffer4014, 0);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4031.pushDebugGroup("group_marker");
    render_pass_encoder6010.pushDebugGroup("group_marker");
    render_pass_encoder6010.executeBundles([])
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    buffer4014.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setPipeline(render_pipeline401);
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4041,
            },
        ],
        occlusionQuerySet: query401
    });
    query300.destroy()
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4040.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    device40.queue.writeBuffer(buffer4013, 0, array3, 0, array3.length);
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: query402
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer4013, 0, array1, 0, array1.length);
    command_encoder400.copyTextureToTexture(
        {
            texture: texture403
        },
        {
            texture: texture407
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const compute_pass_encoder4002 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4002" });
    render_pass_encoder4031.setStencilReference(1);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder401.draw(3);
    render_bundle_encoder402.popDebugGroup();
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4040.setViewport(0, 0, texture404.width / 2, texture404.height / 2, 0, 1);
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4002.setPipeline(compute_pipeline402);
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture408 = device40.createTexture({
        label: "texture408",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6000.beginOcclusionQuery(0)
    texture400.destroy();
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder6010.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    buffer405.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_pass_encoder4031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeBuffer(buffer406, 0, array5, 0, array5.length);
    
    render_pass_encoder4030.insertDebugMarker("marker");
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
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4002.setBindGroup(0, bind_group405);
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4031.setPipeline(render_pipeline400);
    render_pass_encoder4040.setPipeline(render_pipeline403);
    render_pass_encoder4000.setVertexBuffer(0, buffer4012);
    render_pass_encoder4000.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder6010.setPipeline(render_pipeline600);
    render_pass_encoder4021.endOcclusionQuery()
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
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
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4031.setBindGroup(0, bind_group406);
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
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline403.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group408);
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
    
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_pass_encoder4001.setBindGroup(0, bind_group409);
    render_pass_encoder4031.setVertexBuffer(0, buffer401);
    render_pass_encoder6000.endOcclusionQuery()
    render_pass_encoder4001.setVertexBuffer(0, buffer4014);
    render_pass_encoder4001.drawIndirect(buffer408, 0);
    render_pass_encoder4030.setVertexBuffer(0, buffer407);
    render_pass_encoder4001.end();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder4030.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4030.drawIndirect(buffer408, 0);
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4031.drawIndirect(buffer4022, 0);
    const uint32_4002 = new Uint32Array(3);

    uint32_4002[0] = 100;
    uint32_4002[1] = 1;
    uint32_4002[2] = 1;

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4025, 0, uint32_4002, 0, uint32_4002.length);

    compute_pass_encoder4002.dispatchWorkgroupsIndirect(buffer4025, 0);
    render_pass_encoder4030.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6000.setPipeline(render_pipeline600);
    render_pass_encoder4041.setPipeline(render_pipeline404);
    device40.queue.submit([command_buffer401, ]);
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group4010);
    render_pass_encoder6010.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4028, 0);
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
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6010.setBindGroup(0, bind_group600);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder6010.setVertexBuffer(0, buffer601);
    compute_pass_encoder4000.end();
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group4011);
    render_pass_encoder4040.setVertexBuffer(0, buffer4021);
    render_pass_encoder4040.drawIndirect(buffer4012, 0);
    render_pass_encoder4040.drawIndirect(buffer406, 0);
    render_pass_encoder4040.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4031, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4031, 0);
    device60.queue.submit([]);
    render_pass_encoder4031.end();
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4021.setVertexBuffer(0, buffer408);
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
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group601);
    render_pass_encoder4030.drawIndirect(buffer4027, 0);
    compute_pass_encoder4002.end();
    render_pass_encoder6010.drawIndirect(buffer601, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer4030, 0);
    render_pass_encoder4021.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4023, 0);
    render_pass_encoder6010.drawIndirect(buffer605, 0);
    render_pass_encoder4021.popDebugGroup();
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group602);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder4002.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4021.end();
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder4021.drawIndirect(buffer4028, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder4021.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4033, "uint16");
    render_pass_encoder4001.setIndexBuffer(buffer406, "uint16");
    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4035,
                },
            },
        ],
    });

    render_pass_encoder4041.setBindGroup(0, bind_group4013);
    render_pass_encoder6000.setVertexBuffer(0, buffer600);
    render_pass_encoder4040.drawIndirect(buffer402, 0);
    render_pass_encoder4041.setVertexBuffer(0, buffer4017);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4041.drawIndirect(buffer4013, 0);
    render_pass_encoder4040.setIndexBuffer(buffer401, "uint16");
    compute_pass_encoder4000.end();
    compute_pass_encoder6000.end();
    render_pass_encoder4040.drawIndexedIndirect(buffer4025, 0);
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
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    render_pass_encoder4000.drawIndirect(buffer408, 0);
    render_pass_encoder4041.end();
    compute_pass_encoder4002.popDebugGroup()
    render_pass_encoder6010.end();
    render_pass_encoder4001.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4030.end();
    render_pass_encoder6000.draw(3);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4021.setIndexBuffer(buffer4024, "uint16");
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder4000.drawIndexedIndirect(buffer4030, 0);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder4000.end();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder6000.end();
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder4041.drawIndirect(buffer4014, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4015, "uint16");
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const command_buffer600 = command_encoder600.finish();
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
    
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group4015);
    render_pass_encoder4030.end();
    render_pass_encoder4001.drawIndirect(buffer4025, 0);
    render_pass_encoder4030.drawIndirect(buffer4031, 0);
    render_pass_encoder4001.drawIndirect(buffer4033, 0);
    render_pass_encoder4041.setIndexBuffer(buffer401, "uint16");
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4001.setIndexBuffer(buffer4029, "uint16");
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder4020.setVertexBuffer(0, buffer406);
    render_pass_encoder4040.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4020.drawIndirect(buffer4031, 0);
    render_pass_encoder4001.drawIndirect(buffer4013, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4024, "uint16");
    render_pass_encoder4000.popDebugGroup();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder4040.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder4031.drawIndirect(buffer4013, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4020.end();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4039, 0);
    render_pass_encoder4031.drawIndirect(buffer4031, 0);
    render_pass_encoder4001.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer4025, 0);
    render_pass_encoder4030.drawIndirect(buffer4031, 0);
    render_pass_encoder4041.drawIndirect(buffer4026, 0);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4040.drawIndexedIndirect(buffer4025, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4027, "uint16");
    render_pass_encoder4041.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4041.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4040.end();
    render_pass_encoder4021.drawIndirect(buffer4031, 0);
    render_pass_encoder4031.draw(3);
    compute_pass_encoder6000.end();
    device50.queue.submit([]);
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer404, 0);
    render_pass_encoder6010.end();
    render_pass_encoder4040.drawIndirect(buffer4013, 0);
    compute_pass_encoder4002.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4040, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4040, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4031.drawIndirect(buffer4040, 0);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group603);
    render_pass_encoder4041.setIndexBuffer(buffer4027, "uint16");
    render_pass_encoder4040.drawIndirect(buffer401, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4037, "uint16");
    render_pass_encoder4040.drawIndirect(buffer408, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4040, 0);
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
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group4016);
    render_pass_encoder4030.drawIndexedIndirect(buffer406, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4024, "uint16");
    render_pass_encoder4000.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder4001.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder6010.setIndexBuffer(buffer607, "uint16");
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4043, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4043, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4030.drawIndexedIndirect(buffer4040, 0);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4002.end();
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4017);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4046, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4046, 0);
    render_pass_encoder4041.drawIndirect(buffer4031, 0);
    render_pass_encoder4030.end();
    render_pass_encoder4031.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4030.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4041.drawIndexedIndirect(buffer4025, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4021.setIndexBuffer(buffer405, "uint16");
    compute_pass_encoder4002.end();
    render_pass_encoder4030.draw(3);
    render_pass_encoder4021.drawIndirect(buffer4037, 0);
    render_pass_encoder4040.drawIndirect(buffer404, 0);
    render_pass_encoder6010.drawIndirect(buffer601, 0);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4041.drawIndexedIndirect(buffer4025, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder6010.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder4020.end();
    compute_pass_encoder4002.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4041.drawIndirect(buffer4025, 0);
    render_pass_encoder4020.setIndexBuffer(buffer4034, "uint16");
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group604);
    device40.queue.submit([command_buffer401, ]);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4047, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4047, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder6010.end();
    render_pass_encoder4041.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder6010.end();
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
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
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4002.setBindGroup(0, bind_group4018);
    render_pass_encoder6010.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder4000.drawIndirect(buffer4031, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4041.drawIndirect(buffer4047, 0);
    render_pass_encoder4030.drawIndirect(buffer4040, 0);
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    render_pass_encoder6010.setIndexBuffer(buffer606, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4046, 0);
    render_pass_encoder4041.popDebugGroup();
    compute_pass_encoder4002.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4041.drawIndirect(buffer4034, 0);
    render_pass_encoder4030.end();
    compute_pass_encoder4020.end();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4021.end();
    render_pass_encoder4021.setIndexBuffer(buffer4024, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4033, 0);
    render_pass_encoder4041.drawIndirect(buffer408, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4016, 0);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder4001.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer409, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4041.drawIndirect(buffer4031, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4035, 0);
    render_pass_encoder4041.drawIndirect(buffer408, 0);
    render_pass_encoder4001.drawIndexedIndirect(buffer4036, 0);
    render_pass_encoder4021.draw(3);
    render_pass_encoder4041.drawIndexedIndirect(buffer4033, 0);
    compute_pass_encoder4002.end();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4040, 0);
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
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4002.setBindGroup(0, bind_group4019);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder4041.drawIndexed(3);
    render_pass_encoder4001.setIndexBuffer(buffer4036, "uint16");
    render_pass_encoder4040.drawIndirect(buffer4014, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4042, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4017, "uint16");
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder4001.drawIndirect(buffer4043, 0);
    render_pass_encoder6010.drawIndirect(buffer601, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4031, 0);
    render_pass_encoder6000.draw(3);
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group605);
    render_pass_encoder4040.drawIndirect(buffer4018, 0);
    render_pass_encoder4020.drawIndexed(3);
    const uint32_4002 = new Uint32Array(3);

    uint32_4002[0] = 100;
    uint32_4002[1] = 1;
    uint32_4002[2] = 1;

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4052, 0, uint32_4002, 0, uint32_4002.length);

    compute_pass_encoder4002.dispatchWorkgroupsIndirect(buffer4052, 0);
    render_pass_encoder6000.drawIndirect(buffer604, 0);
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    render_pass_encoder4041.end();
    render_pass_encoder4000.drawIndirect(buffer4052, 0);
    render_pass_encoder4000.drawIndirect(buffer4028, 0);
    render_pass_encoder6010.drawIndexedIndirect(buffer6013, 0);
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group606);
    const uint32_4002 = new Uint32Array(3);

    uint32_4002[0] = 100;
    uint32_4002[1] = 1;
    uint32_4002[2] = 1;

    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4053, 0, uint32_4002, 0, uint32_4002.length);

    compute_pass_encoder4002.dispatchWorkgroupsIndirect(buffer4053, 0);
    render_pass_encoder4021.drawIndirect(buffer4053, 0);
    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4055,
                },
            },
        ],
    });

    compute_pass_encoder4001.setBindGroup(0, bind_group4020);
    render_pass_encoder4021.drawIndexedIndirect(buffer4041, 0);
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4056, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4056, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4041, 0);
    render_pass_encoder6000.drawIndirect(buffer601, 0);
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
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group4021);
    render_pass_encoder4031.drawIndirect(buffer4025, 0);
    render_pass_encoder4021.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    render_pass_encoder4040.drawIndirect(buffer4037, 0);
    render_pass_encoder4030.drawIndirect(buffer4052, 0);
    compute_pass_encoder4020.popDebugGroup()
}