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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const array0 = new Float32Array([0.0, -1.0, 0.0, 1.0, 1.0, 1.0, -0.75, 0.75, 0.25, -0.25, 0.25, -0.5, -0.75, 1.0, -0.5, 0.75, 0.25, 0.75, 0.5, 0.75, 1.0, -0.25, -0.75, -0.75, -0.75, -0.5, -0.75, 1.0, 0.5, 0.75, -0.75, 0.0, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, 0.5, 1.0, 0.0, 0.5, 1.0, 1.0, -0.75, 1.0, 0.75, -0.25, 1.0, 0.5, 0.25, 0.0, 0.5, 0.25, -1.0, 0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -0.25, 0.25, 0.75, -1.0, 0.0, -0.75, 0.0, 0.25, -0.25, 0.0, 0.0, 0.25, -1.0, 1.0, 0.75, 1.0, 0.25, -0.25, -0.75, 1.0, 0.25, 0.0, -0.5, -0.75, 1.0, 1.0, -1.0, 0.5, -0.75, 0.25, 1.0, -0.75, 0.0, 0.5, -0.25, -0.75, -0.5, 0.5, 1.0, ]);
    device20.pushErrorScope("validation");
    texture002.destroy();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array1 = new Float32Array([0.0, -0.5, -0.25, 0.5, 0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -0.25, 0.0, 1.0, 0.75, -0.75, 0.25, -0.5, 0.5, -0.25, 1.0, 0.0, 1.0, 0.75, -0.5, 0.75, 0.0, 1.0, -0.5, 1.0, 0.0, -0.25, 0.0, 1.0, -1.0, 0.75, 1.0, 0.75, 1.0, -1.0, 0.0, 0.75, 0.75, -1.0, -0.5, -0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.75, 0.5, -0.75, -1.0, 0.0, 1.0, -0.25, 0.75, 0.5, -0.75, -1.0, 0.5, -0.5, -0.25, 0.0, 0.75, -0.5, -1.0, -1.0, 0.0, 0.25, -0.75, 0.5, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -1.0, 1.0, -0.25, 0.5, -0.25, 1.0, 1.0, -0.25, -1.0, -0.75, 0.0, -0.5, -0.25, 0.0, 0.75, -0.25, 0.0, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array2 = new Float32Array([1.0, -0.5, 0.25, 0.25, 0.25, 1.0, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, -0.5, -1.0, -1.0, -0.25, -0.5, -0.75, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.0, -0.5, -0.5, 1.0, -0.75, 0.25, 1.0, 0.75, -1.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, 1.0, 1.0, 0.0, -0.5, -0.5, -0.75, -1.0, -0.25, -0.5, 0.75, 1.0, -0.75, 1.0, 0.5, -0.75, 1.0, -0.25, 0.75, 0.75, 1.0, -0.25, 0.0, -0.75, 0.5, 0.5, -0.5, -1.0, 0.0, -0.5, -0.5, 0.0, 0.0, -0.75, -0.5, -1.0, -0.25, 0.75, -0.25, 0.25, 0.75, -1.0, -0.5, 0.75, 0.0, -0.75, -1.0, 0.0, -0.75, 1.0, 0.0, -0.5, -0.5, 0.5, -1.0, 0.5, 1.0, 0.0, 0.0, 1.0, 0.25, 0.25, ]);
    
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
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_buffer200 = command_encoder200.finish();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture003.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder003.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    texture200.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer001.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0020.popDebugGroup()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device30.pushErrorScope("out-of-memory");
    
    buffer200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.destroy();
    render_pass_encoder2010.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
        occlusionQuerySet: undefined
    });
    device00.pushErrorScope("validation");
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder001.popDebugGroup();
    texture201.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder2020.setStencilReference(1);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder003.popDebugGroup();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder003.pushDebugGroup("group_marker");
    buffer000.destroy()
    
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2020.setPipeline(render_pipeline200);
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
        occlusionQuerySet: undefined
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    device50.destroy();
    
    
    
    device50.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    texture003.destroy();
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    buffer200.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer002.destroy()
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.setPipeline(render_pipeline201);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const array3 = new Float32Array([0.25, -1.0, 0.25, -0.5, -0.75, 0.5, 0.0, 0.0, -0.25, -0.5, 1.0, 0.75, 0.0, 0.25, -1.0, 0.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.0, 0.5, 0.75, -1.0, 1.0, -0.25, 0.0, 0.5, 0.25, 1.0, 0.25, -1.0, -1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.5, 0.0, -1.0, 0.75, 0.75, -0.25, -0.75, -0.75, 0.0, 1.0, -0.5, 0.25, -0.5, 0.25, -0.5, -1.0, 1.0, -0.75, -1.0, -0.75, 1.0, -0.5, -1.0, -0.5, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, -1.0, -0.75, 0.0, 0.25, 1.0, 0.0, 0.25, 1.0, -0.75, 0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.5, 0.5, -1.0, 0.25, 0.75, -1.0, -0.25, -0.5, 1.0, ]);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder2011.popDebugGroup();
    
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder201.setPipeline(render_pipeline202);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder202.setPipeline(render_pipeline201);
    buffer000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    device50.destroy();
    render_pass_encoder0020.executeBundles([render_bundle_encoder003, ])
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query000.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const command_buffer203 = command_encoder203.finish();
    texture202.destroy();
    render_bundle_encoder003.setPipeline(render_pipeline000);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_pass_encoder0000.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    
    
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.pushErrorScope("internal");
    
    
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    render_pass_encoder0021.beginOcclusionQuery(0)
    render_pass_encoder0010.setStencilReference(1);
    device00.pushErrorScope("internal");
    render_bundle_encoder001.popDebugGroup();
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0021.setPipeline(render_pipeline001);
    
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2021.setPipeline(render_pipeline201);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture200
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
    render_pass_encoder2010.setStencilReference(1);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device20.pushErrorScope("internal");
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    command_encoder204.insertDebugMarker("mymarker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture005.destroy();
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    query002.destroy()
    query500.destroy()
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder003.popDebugGroup();
    const command_buffer204 = command_encoder204.finish();
    render_bundle_encoder000.setPipeline(render_pipeline001);
    buffer005.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer006,
        0,
        400
    );
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder003.pushDebugGroup("group_marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    compute_pass_encoder0000.setPipeline(compute_pipeline008);
    render_bundle_encoder001.popDebugGroup();
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer001,
        0,
        400
    );
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder003.setBindGroup(0, bind_group002);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    
    render_pass_encoder0021.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    buffer0011.destroy()
    render_pass_encoder0021.insertDebugMarker("marker");
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0001.setPipeline(render_pipeline001);
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0011.setStencilReference(1);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device00.queue.submit([]);
    
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder003.setVertexBuffer(0, buffer005);
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    render_bundle_encoder000.drawIndexedIndirect(buffer002, 0);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group003);
    render_pass_encoder0011.setPipeline(render_pipeline000);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0001.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    
    const array4 = new Float32Array([1.0, -0.5, -0.25, 0.5, 0.0, -0.25, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, 0.75, -0.25, -0.25, 1.0, 0.25, -1.0, 0.75, 0.25, 0.0, 0.5, 0.0, 0.25, 0.75, -0.5, 0.75, -0.75, -0.25, -0.25, -0.5, 0.25, -0.25, 0.5, 0.0, -1.0, -1.0, 0.0, 0.25, 0.5, 1.0, -0.75, -0.75, 0.0, 0.25, -0.5, 0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, -0.75, -0.75, 1.0, 1.0, -1.0, 0.5, 0.75, -0.25, -1.0, 0.75, 0.0, 0.5, 0.5, 0.0, -0.5, 0.25, 0.25, -0.5, 1.0, 0.25, 0.5, -0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -0.25, 1.0, 0.75, -0.75, -0.75, -0.75, 1.0, -0.5, -1.0, -0.25, 0.5, 0.0, -0.25, ]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group004);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query001
    });
    query002.destroy()
    
    buffer009.destroy()
    render_pass_encoder0012.setPipeline(render_pipeline000);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    render_bundle_encoder003.drawIndirect(buffer006, 0);
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0001.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0000.beginOcclusionQuery(0)
    query003.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    buffer0014.destroy()
    
    device40.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    render_pass_encoder0021.insertDebugMarker("marker");
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    const render_pass_encoder0013 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query004
    });
    const array5 = new Float32Array([0.25, 0.75, 0.5, 0.0, -0.75, 0.75, -0.5, -1.0, -0.25, -0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 0.25, 0.75, 0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, 0.0, -0.5, 0.25, -1.0, -0.25, -0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, 0.0, -0.75, 0.0, 1.0, -0.25, -0.5, -0.75, -0.25, 0.5, 0.5, 0.75, 0.0, 0.5, 0.5, -1.0, 0.5, 0.25, 0.25, -0.5, 0.25, -0.25, -1.0, 1.0, 1.0, 1.0, -0.25, -0.25, -0.75, -0.75, -0.25, -0.75, -0.25, 1.0, 0.75, 0.25, -1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 0.5, -0.75, 0.0, 1.0, 0.0, 1.0, 0.25, -1.0, 0.5, -0.5, -0.75, 0.5, -0.25, 0.0, ]);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    render_pass_encoder0011.setVertexBuffer(0, buffer005);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline008.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder0013.setPipeline(render_pipeline001);
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    render_pass_encoder0013.setBindGroup(0, bind_group007);
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
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0013.setVertexBuffer(0, buffer0014);
    command_encoder002.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer0011);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.draw(3);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0013.setIndexBuffer(buffer0017, "uint16");
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0012.setBindGroup(0, bind_group009);
    compute_pass_encoder0000.end();
    render_pass_encoder0012.setVertexBuffer(0, buffer006);
    render_pass_encoder0010.setVertexBuffer(0, buffer005);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group203);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder0013.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0012.drawIndirect(buffer0015, 0);
    const command_buffer002 = command_encoder002.finish();
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group0010);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder2020.setVertexBuffer(0, buffer207);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.setPipeline(render_pipeline001);
    render_pass_encoder2021.setVertexBuffer(0, buffer201);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder0021.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder0011.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder0013.end();
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.setVertexBuffer(0, buffer005);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0012.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0013.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0012.drawIndirect(buffer000, 0);
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer204, ]);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0013.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0010.end();
    render_pass_encoder0011.popDebugGroup();
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group0013);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.setVertexBuffer(0, buffer005);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0010, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.end();
    render_pass_encoder0013.drawIndirect(buffer0021, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.end();
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    device60.queue.submit([]);
    render_pass_encoder0012.popDebugGroup();
    compute_pass_encoder0020.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0037, 0);
    command_encoder000.popDebugGroup()
    render_pass_encoder0021.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0001.draw(3);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0030, "uint16");
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder0012.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0013.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0040, 0);
    device50.queue.submit([]);
    render_pass_encoder0013.drawIndexedIndirect(buffer0040, 0);
    device70.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0021, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer202, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.end();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0001.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0012.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder0013.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.end();
    compute_pass_encoder0010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0020.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0020.end();
    const command_buffer201 = command_encoder201.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0013.drawIndexed(3);
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0013.drawIndirect(buffer0040, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0013.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder0013.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexed(3);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0013.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0011.drawIndirect(buffer0040, 0);
    render_pass_encoder0013.end();
    compute_pass_encoder0010.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0013.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0012.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder0012.drawIndirect(buffer0037, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0012.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0013.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0013.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0013.setIndexBuffer(buffer0037, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder0001.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    device40.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0048, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder0013.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0011.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0037, 0);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0013.drawIndirect(buffer0028, 0);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0013.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0012.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0013.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0012.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0013.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    device70.queue.submit([]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0013.drawIndirect(buffer006, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0012.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0013.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0000.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0013.drawIndirect(buffer0037, 0);
    device60.queue.submit([]);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder2010.popDebugGroup();
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    render_pass_encoder0012.setIndexBuffer(buffer0017, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0021, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0013.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0013.drawIndirect(buffer0053, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndirect(buffer0043, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0027, 0);
    device20.queue.submit([command_buffer203, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder0012.end();
    render_pass_encoder0010.end();
    render_pass_encoder2020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0022);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0027, 0);
    render_pass_encoder0012.drawIndirect(buffer0021, 0);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0013.drawIndirect(buffer0034, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0013.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0013.drawIndirect(buffer0034, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([]);
    render_pass_encoder2011.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    device60.queue.submit([]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0012.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.drawIndirect(buffer0026, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0059, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0012.drawIndirect(buffer0059, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0010.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0021.drawIndirect(buffer0054, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0013.draw(3);
    render_pass_encoder0012.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0013.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0013.drawIndirect(buffer009, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    device10.queue.submit([]);
    render_pass_encoder0012.drawIndirect(buffer0048, 0);
    render_pass_encoder0013.drawIndirect(buffer0016, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0001.drawIndirect(buffer0053, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0001.drawIndirect(buffer0040, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.drawIndirect(buffer0043, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0012.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0013.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0049, 0);
    device70.queue.submit([]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0013.drawIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0021.drawIndirect(buffer0048, 0);
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0012.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, ]);
    device40.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0048, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0013.setIndexBuffer(buffer0032, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0059, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0024);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0012.drawIndirect(buffer0034, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    render_pass_encoder2011.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0011.drawIndirect(buffer008, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0012.end();
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0013.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0013.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    device40.queue.submit([]);
    render_pass_encoder0013.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    device00.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2010.end();
    render_pass_encoder0021.drawIndirect(buffer0059, 0);
    device00.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder0013.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0001.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.draw(3);
    device60.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0012.drawIndirect(buffer005, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0013.drawIndirect(buffer0043, 0);
    render_pass_encoder0012.drawIndirect(buffer0067, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0013.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndirect(buffer0034, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0013.drawIndirect(buffer002, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0013.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0012.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0013.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2021.end();
    render_pass_encoder0000.end();
    render_pass_encoder0011.end();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder0012.drawIndirect(buffer000, 0);
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0026);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0013.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0037, "uint16");
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder0011.drawIndirect(buffer0054, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder0012.drawIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0019, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0001.drawIndirect(buffer0069, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0013.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0048, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0072, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0012.drawIndexedIndirect(buffer0072, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0011.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0021.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0073, 0);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0036, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0012.drawIndirect(buffer0040, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0074, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0073, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0012.end();
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    device60.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0067, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer0031, "uint16");
    device40.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.draw(3);
    device60.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0021.drawIndirect(buffer0062, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0012.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder0013.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0034, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0013.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0013.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0013.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0013.popDebugGroup();
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0029);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0012.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0048, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device40.queue.submit([]);
    render_pass_encoder0012.drawIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndirect(buffer0059, 0);
    render_pass_encoder0013.drawIndirect(buffer0037, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0053, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0013.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder2011.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0013.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0079, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0012.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0000.drawIndirect(buffer0053, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0013.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0061, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([]);
}