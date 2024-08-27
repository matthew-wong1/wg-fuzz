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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    texture000.destroy();
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array0 = new Float32Array([0.0, 0.5, 0.25, 0.5, 1.0, -0.25, 0.75, 0.75, 0.75, 0.25, 0.5, 0.25, -0.25, -1.0, 0.75, 0.25, -1.0, -1.0, -0.75, -0.75, 0.25, 0.0, -0.5, -0.75, -1.0, 0.0, 0.75, -0.25, 1.0, -0.75, 0.25, -1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, -1.0, 0.25, 0.75, 0.75, -0.5, -0.75, 0.25, 0.25, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 1.0, -0.25, -0.25, -1.0, 0.75, -0.5, -1.0, -0.25, -1.0, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, 0.5, 0.0, -0.75, 1.0, -1.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.25, -0.5, 1.0, -0.5, 0.75, -1.0, 0.75, -0.75, 0.75, 1.0, -1.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture001.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const command_buffer000 = command_encoder000.finish();
    device00.pushErrorScope("validation");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([1.0, -1.0, 0.75, 0.25, -0.75, 0.5, 1.0, 0.5, 1.0, -0.75, 0.25, -1.0, -0.25, 1.0, 0.75, -0.25, 0.5, 0.0, 0.5, -1.0, 0.0, 0.5, -0.5, -0.5, 0.75, 0.0, -0.5, -0.5, -0.75, -0.5, -0.75, 0.75, 0.75, -0.5, -0.75, -1.0, 0.75, -0.25, 1.0, 0.25, 1.0, -1.0, -0.75, 0.0, 0.0, 0.0, -0.25, -0.25, 0.25, 1.0, 0.0, 0.0, 0.5, 0.25, 0.25, -0.25, -1.0, 0.25, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 1.0, -0.25, -1.0, 1.0, 1.0, 0.0, 0.25, -0.25, 0.0, 0.5, 0.5, -0.25, -1.0, 0.25, 0.0, -0.5, 1.0, -0.5, -0.25, 1.0, 0.25, 0.25, -0.25, -0.25, 0.75, 0.0, 0.0, 0.5, 0.0, -0.25, -1.0, -0.25, 0.5, 0.75, 0.0, 0.0, ]);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer000.destroy()
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.clearBuffer(buffer000);
    device10.pushErrorScope("validation");
    
    query000.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture002.destroy();
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
    const array2 = new Float32Array([-0.75, -0.25, 1.0, -1.0, 1.0, -1.0, 0.5, 1.0, -0.5, 1.0, 0.5, -1.0, -1.0, 0.25, -1.0, 0.5, -1.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.25, -0.5, -1.0, -0.5, 1.0, 1.0, 0.25, 0.25, -1.0, 0.5, -0.75, 0.0, 0.0, -0.25, 1.0, 0.5, 1.0, -1.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.25, 1.0, -0.75, -0.5, -1.0, 0.0, -0.75, -1.0, -0.75, 0.25, -0.5, -0.25, -1.0, -1.0, -0.5, 0.0, -1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 1.0, -0.5, 0.0, -1.0, -1.0, -1.0, -0.75, -0.25, -0.25, 0.5, 0.5, 1.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.75, -0.75, 0.25, -0.25, 0.5, 0.75, 0.75, 0.75, 0.75, 0.75, 0.0, 1.0, -0.25, 0.5, ]);
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    command_encoder002.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_pass_encoder0020.setStencilReference(1);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture200.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device00.pushErrorScope("validation");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0020.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.submit([command_buffer000, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    
    query203.destroy()
    buffer201.destroy()
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0010.executeBundles([])
    command_encoder001.insertDebugMarker("mymarker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0011.setStencilReference(1);
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
    render_pass_encoder0011.executeBundles([render_bundle_encoder001, ])
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query202.destroy()
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder000.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture003.destroy();
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
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    
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
    
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query400.destroy()
    render_pass_encoder0010.executeBundles([])
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_pass_encoder0021.setPipeline(render_pipeline000);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    query200.destroy()
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array3 = new Float32Array([0.25, -0.5, 0.75, -1.0, 0.25, -0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 0.25, -0.5, -0.5, -0.25, -1.0, 0.25, 0.0, 0.25, 0.5, 1.0, -1.0, -1.0, 0.25, 0.25, -0.75, -0.25, 1.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.0, 1.0, 0.0, 0.0, 0.5, -1.0, -1.0, 1.0, -0.75, -0.5, -0.25, 0.5, 1.0, -0.5, -1.0, -0.5, 0.5, -1.0, -1.0, -0.25, -0.25, 0.0, -0.75, -0.25, -0.75, -1.0, -0.25, -0.75, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 0.0, -0.25, 0.75, 1.0, 0.75, -0.25, 0.5, -0.75, 0.75, 0.5, -1.0, -0.25, 0.25, 0.5, -1.0, -0.75, -0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 0.0, 0.25, -0.5, -0.25, 0.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.5, ]);
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
        occlusionQuerySet: query202
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.destroy();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    query400.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_pass_encoder0030.setStencilReference(1);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    render_pass_encoder0010.endOcclusionQuery()
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder000.setPipeline(render_pipeline003);
    render_pass_encoder0030.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.executeBundles([])
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    texture201.destroy();
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0040.setStencilReference(1);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    render_pass_encoder0020.setPipeline(render_pipeline003);
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query203.destroy()
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.insertDebugMarker("marker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder0030.insertDebugMarker("marker");
    buffer206.destroy()
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    query000.destroy()
    
    
    render_pass_encoder0011.setPipeline(render_pipeline000);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    buffer203.destroy()
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_pass_encoder0040.setPipeline(render_pipeline004);
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture004.destroy();
    render_pass_encoder0041.setPipeline(render_pipeline005);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    query200.destroy()
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder0041.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    buffer204.destroy()
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
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    
    render_pass_encoder0030.setPipeline(render_pipeline001);
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture203.destroy();
    
    
    query001.destroy()
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    buffer003.destroy()
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline102);
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.submit([command_buffer002, ]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group003);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    texture400.destroy();
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer005.destroy()
    render_pass_encoder0041.endOcclusionQuery()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder003.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setStencilReference(1);
    
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    buffer100.destroy()
    query000.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setPipeline(render_pipeline201);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer009.destroy()
    buffer202.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_pass_encoder0041.setStencilReference(1);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder0030.pushDebugGroup("group_marker");
    texture202.destroy();
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query203
    });
    buffer205.destroy()
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder2010.setPipeline(render_pipeline203);
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0021.insertDebugMarker("marker");
    buffer0010.destroy()
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    const render_pass_encoder0043 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0043",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer201.destroy()
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    query204.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer0010,
        0,
        400
    );
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.insertDebugMarker("marker");
    query000.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    render_pass_encoder0010.setVertexBuffer(0, buffer0013);
    query401.destroy()
    render_pass_encoder2001.setPipeline(render_pipeline206);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    
    
    buffer003.destroy()
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0042.setPipeline(render_pipeline004);
    render_pass_encoder0043.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder0031.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0043.setPipeline(render_pipeline000);
    render_pass_encoder2011.setPipeline(render_pipeline200);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.setPipeline(render_pipeline006);
    render_pass_encoder0021.drawIndexedIndirect(buffer0012, 0);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group006);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0040.setVertexBuffer(0, buffer006);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0040.popDebugGroup();
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0043.setBindGroup(0, bind_group007);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group202);
    render_pass_encoder2001.setVertexBuffer(0, buffer200);
    render_pass_encoder0040.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0043.setVertexBuffer(0, buffer0013);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0041.setVertexBuffer(0, buffer007);
    render_pass_encoder0010.end();
    render_pass_encoder0021.end();
    render_pass_encoder0021.draw(3);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder2001.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    command_encoder001.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0043.draw(3);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0043.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group008);
    render_pass_encoder0020.setVertexBuffer(0, buffer0012);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder0011.setVertexBuffer(0, buffer004);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder0041.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group009);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
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
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group204);
    render_pass_encoder2011.setVertexBuffer(0, buffer201);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0041.end();
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0042.setBindGroup(0, bind_group0010);
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2011.end();
    const command_buffer201 = command_encoder201.finish();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0011);
    render_pass_encoder0020.end();
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder0031.setVertexBuffer(0, buffer0025);
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0042.setVertexBuffer(0, buffer0015);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0042.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    device40.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.draw(3);
    device40.queue.submit([]);
    render_pass_encoder0042.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0043.setIndexBuffer(buffer0014, "uint16");
    const command_buffer004 = command_encoder004.finish();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder0041.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0021.end();
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer104, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0041.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer004, ]);
    render_pass_encoder0010.draw(3);
    render_pass_encoder2011.end();
    device30.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0043.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2001.end();
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0042.drawIndirect(buffer007, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0041.end();
    render_pass_encoder0043.end();
    render_pass_encoder0021.end();
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2000.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0021.end();
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    device20.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0042.end();
    render_pass_encoder2010.draw(3);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0043.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0011.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0043.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    render_pass_encoder0043.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder0040.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0043.drawIndirect(buffer000, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0043.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0042.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0042.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    device20.queue.submit([]);
    render_pass_encoder0043.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0010.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0042.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    render_pass_encoder0042.draw(3);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder0042.drawIndirect(buffer002, 0);
    render_pass_encoder0043.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.end();
    device30.queue.submit([]);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2011.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0043.drawIndexed(3);
    render_pass_encoder0011.drawIndexed(3);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder0042.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0043.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2011.end();
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2010.end();
    render_pass_encoder0043.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder0043.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2001.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    device20.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0042.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0043.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0043.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0043.draw(3);
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.endOcclusionQuery()
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0042.drawIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0043.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    render_pass_encoder2001.end();
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0043.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2001.end();
    render_pass_encoder0042.drawIndirect(buffer0019, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0042.endOcclusionQuery()
    render_pass_encoder2010.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0031.drawIndirect(buffer0020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0043.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0013, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0043.drawIndirect(buffer0020, 0);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0043.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0042.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0042.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0042.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder0043.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0042.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0042.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0030.draw(3);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0021.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0042.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0042.setIndexBuffer(buffer0013, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer004, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0042.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0042.drawIndirect(buffer003, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.endOcclusionQuery()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder0043.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0043.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0042.drawIndirect(buffer005, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([]);
    render_pass_encoder0043.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0043.setIndexBuffer(buffer0017, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder0043.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0042.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0043.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0043.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0023, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0043.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0043.drawIndirect(buffer0022, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder0042.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0043.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder0043.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0043.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0042.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0043.drawIndexedIndirect(buffer009, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder4001.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    render_pass_encoder0042.drawIndirect(buffer0021, 0);
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0010, 0);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0043.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0043.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0043.drawIndirect(buffer007, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder0041.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0043.drawIndirect(buffer0021, 0);
    render_pass_encoder0042.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0043.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0042.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0042.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0043.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0042.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2000.end();
}