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
    const array0 = new Float32Array([0.25, 1.0, 0.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.75, -0.75, -1.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.5, -0.75, 0.0, -0.75, -0.25, -0.25, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, 0.5, -0.75, 1.0, -0.75, 0.5, -0.75, -0.75, 0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 0.25, 0.75, 0.0, -1.0, -0.5, -0.75, 0.0, 0.25, 1.0, 0.25, 0.0, 1.0, 0.25, 0.5, 0.25, 0.5, -0.75, 0.25, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.75, 0.5, 0.5, 1.0, 0.0, 1.0, -0.5, -0.75, -1.0, 0.25, 0.0, 0.5, 1.0, -0.25, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, -0.5, -1.0, ]);
    
    
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
    
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const array1 = new Float32Array([0.25, 1.0, 0.75, -0.75, -0.5, 0.75, -0.75, -0.75, -0.5, -1.0, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.25, -0.75, -1.0, -0.25, -1.0, 0.5, 0.25, 0.0, -0.25, -0.5, -1.0, -0.5, 1.0, 0.0, 1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 0.25, 0.0, 1.0, -1.0, -0.25, -0.5, 0.5, 0.0, -0.25, -0.25, 0.25, -0.75, -0.5, -1.0, -0.5, 0.0, -1.0, 0.0, -1.0, 0.25, -0.5, -1.0, 0.5, 1.0, 0.75, 0.0, 0.75, 1.0, 1.0, -0.75, 0.0, -1.0, 0.25, -0.75, 1.0, 0.0, -0.5, 1.0, -0.75, -1.0, 0.25, -0.75, 1.0, -0.5, -0.25, 0.5, 0.25, -0.25, 1.0, 1.0, -1.0, -1.0, 0.75, 0.75, 0.5, -1.0, -0.5, 0.75, -0.75, 1.0, 1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array2 = new Float32Array([-0.25, 0.75, -0.25, -0.75, -0.75, 1.0, 0.75, -0.75, 0.75, 0.5, 0.75, -0.25, 0.0, 1.0, -0.75, 0.5, -0.25, 0.25, 1.0, -1.0, 0.75, -0.75, 0.5, 0.25, -1.0, -0.75, -0.75, 0.5, 1.0, -0.75, 1.0, 0.75, -0.25, -1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -1.0, -0.5, 0.75, 0.25, -0.5, 0.25, 0.25, -0.25, -0.75, -1.0, -0.75, 0.0, -0.5, -0.5, -0.25, -1.0, 0.25, 1.0, 0.5, 0.0, -0.5, 0.25, 0.25, 0.25, -1.0, 0.75, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, 0.75, 0.5, 0.0, 0.5, 1.0, 0.25, -0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 1.0, 0.25, -1.0, 0.5, -0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -1.0, 0.0, ]);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("out-of-memory");
    query002.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.pushErrorScope("validation");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -0.75, -0.25, -0.5, 1.0, 0.5, 0.75, -0.75, 0.25, -0.5, 0.75, -1.0, 0.5, 0.0, 0.75, -0.75, 0.75, 1.0, 0.0, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, -0.5, -1.0, -0.5, -1.0, 0.25, -0.25, -0.5, 0.25, -0.5, -0.75, 0.5, -0.75, 0.25, -1.0, 0.5, -0.25, 1.0, -0.75, 0.75, 0.25, -1.0, -1.0, 0.25, -0.75, 0.75, -1.0, 0.5, -1.0, 0.25, -1.0, -1.0, 0.75, -1.0, -0.5, -1.0, 0.25, 1.0, 0.75, -0.25, 0.25, -0.75, -0.5, 0.0, -0.75, 0.25, -0.75, 1.0, 0.0, 0.25, -1.0, -1.0, 0.0, 0.75, -0.5, -0.5, 0.25, -0.25, 0.25, 1.0, 1.0, 0.25, 0.0, 0.5, 0.0, 0.5, -0.5, -0.75, 0.5, 0.5, 0.0, ]);
    query003.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    query003.destroy()
    texture000.destroy();
    buffer000.destroy()
    query001.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    texture100.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query002.destroy()
    
    device10.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder001.popDebugGroup();
    const array4 = new Float32Array([0.75, -0.25, 0.75, -1.0, -1.0, -0.25, -1.0, -1.0, 0.25, -0.25, 0.75, 0.25, -1.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, 0.25, -0.75, 1.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, 0.5, 0.5, 0.5, 0.75, 0.5, -1.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, -0.25, 0.0, 1.0, 0.0, 0.0, -0.75, 0.0, -0.75, 1.0, 0.0, -0.5, 0.25, -1.0, -0.5, -0.5, 0.75, -0.25, -0.25, 0.0, -0.25, 0.0, 1.0, 1.0, -0.75, -0.5, 1.0, -1.0, -0.5, ]);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    
    
    
    query003.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query002.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query001.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    buffer001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    buffer002.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    texture002.destroy();
    buffer004.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    const array5 = new Float32Array([-0.25, -1.0, -0.75, -0.5, 0.0, -0.25, 0.75, 1.0, -0.5, -0.5, 0.0, 0.75, 0.0, -0.25, -0.25, -0.25, -0.25, -0.5, 0.75, -0.5, 1.0, -0.25, -0.75, 0.75, -0.5, -0.75, 0.0, 0.0, -0.25, -0.5, -0.5, 0.5, 0.25, 0.75, -0.75, -0.25, -1.0, -1.0, 0.0, 1.0, -0.25, 1.0, 1.0, -0.5, 0.75, -1.0, -1.0, 0.5, 0.25, 0.0, 0.5, 0.5, 0.5, -0.5, 1.0, -0.25, -0.5, -0.25, -0.5, -0.25, -1.0, -1.0, -0.25, 1.0, 0.5, 1.0, 0.5, -1.0, 1.0, -1.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, 0.5, -0.25, 1.0, -0.5, 0.25, -0.5, -0.5, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, -0.75, -0.75, 0.0, -0.75, 0.75, 0.0, 0.5, -0.25, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.destroy();
    
    const array6 = new Float32Array([0.25, -0.25, -0.75, 0.75, 0.75, -0.5, -0.25, -0.25, 0.25, 1.0, 1.0, 0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 1.0, -0.5, 0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -0.75, 1.0, 0.25, 0.25, -1.0, -1.0, 0.5, -1.0, -0.5, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, 0.75, 0.0, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -0.5, -0.25, -0.75, 0.75, 0.0, 0.0, 0.25, 0.0, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, -0.25, 1.0, -0.25, 0.0, -0.25, 0.75, 0.0, 1.0, -0.25, 0.75, 0.75, 0.75, 0.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.0, 0.0, 0.0, -0.25, 0.75, -0.25, -0.5, -0.75, 0.75, -0.5, 0.25, -0.25, -1.0, -0.75, -1.0, 1.0, 1.0, -1.0, -0.5, 1.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    device50.pushErrorScope("internal");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const array7 = new Float32Array([-0.5, -1.0, -1.0, -0.5, -0.5, -0.25, 0.5, -1.0, 1.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.5, 1.0, 0.25, 0.5, -1.0, 0.75, 0.5, -0.5, -1.0, -0.25, 1.0, 0.25, -0.75, -0.25, -0.75, 0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, 0.25, 0.5, 0.25, 0.25, 1.0, 0.75, -0.25, -0.25, 1.0, 0.5, 0.5, 0.0, -0.25, -0.5, -1.0, -1.0, 0.75, -1.0, 0.5, 0.0, 1.0, 0.5, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, 0.75, -0.5, 0.75, 0.75, 0.25, 0.75, 0.25, 1.0, -0.75, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, 0.0, -0.5, -0.5, -0.25, 0.0, 0.5, -0.25, 0.5, -0.25, 0.25, 0.75, 1.0, -0.25, 0.25, -1.0, -0.75, 0.25, 0.5, ]);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const array8 = new Float32Array([0.5, 0.25, 0.5, 0.0, 0.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.5, -0.5, -1.0, 0.75, 0.5, 0.25, -0.25, -0.25, -0.5, 0.75, -0.75, 0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, 0.5, 0.25, 1.0, 0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 1.0, -0.25, -0.75, 0.75, 0.25, 0.0, 0.5, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, 0.75, 1.0, 0.0, -0.75, 0.25, 0.5, 1.0, -1.0, 0.0, 0.0, -0.5, 1.0, -0.5, 1.0, -1.0, -0.75, -1.0, 0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, -0.25, -0.75, 0.0, 0.5, 0.5, 0.75, -0.5, 0.5, 1.0, -1.0, 1.0, 0.0, -1.0, 0.5, 0.75, 0.75, 0.75, 0.75, 1.0, -0.75, -0.5, 0.5, 0.25, 0.25, 1.0, ]);
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer600 = command_encoder600.finish();
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
    render_pass_encoder5000.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([1.0, 1.0, 0.25, -1.0, 1.0, 0.0, -0.25, -0.75, 1.0, -1.0, 0.0, 0.25, 0.25, 0.5, 1.0, 0.75, -0.25, 0.0, -1.0, -1.0, 0.0, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, -1.0, 0.0, -0.75, 0.25, 0.75, -0.5, 1.0, 1.0, 0.5, -0.75, 0.25, -0.25, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.5, -0.5, -0.25, 0.5, 0.25, 1.0, 0.0, -0.75, -0.25, 0.0, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.5, -0.75, -0.25, 0.25, 0.5, 1.0, 1.0, 0.0, 0.75, -1.0, 0.5, 0.0, -1.0, 0.5, 1.0, -1.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.5, -0.5, 0.25, -0.25, 0.25, -1.0, 0.0, 0.75, 0.5, 0.75, 0.75, -0.5, 1.0, -0.75, -1.0, -0.75, 0.75, ]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_pass_encoder5000.executeBundles([])
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    const array10 = new Float32Array([0.0, 0.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.5, 0.75, -1.0, 0.5, 0.25, 0.75, 0.0, -0.5, -0.25, 1.0, 0.0, -0.25, 1.0, 0.0, 0.5, -0.25, -1.0, 1.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.5, 0.25, 0.25, -0.25, -0.25, -0.25, 1.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.75, -1.0, -0.25, -0.75, 1.0, -1.0, -0.75, -0.75, 0.25, 0.75, -0.25, 0.75, 0.25, -0.25, -0.5, 0.25, 1.0, -0.75, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, -0.25, -0.25, 0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.0, -0.75, -1.0, 0.5, 0.0, 0.75, 1.0, -0.25, -0.25, 1.0, -1.0, 0.25, -0.75, -1.0, 1.0, -0.25, -0.25, 1.0, 0.0, -0.5, 0.75, 1.0, ]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query500.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    texture501.destroy();
    command_encoder501.pushDebugGroup("mygroupmarker")
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    render_pass_encoder5000.executeBundles([])
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    device60.pushErrorScope("out-of-memory");
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder5020.setStencilReference(1);
    query500.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query600.destroy()
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    render_pass_encoder5030.executeBundles([])
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5010.executeBundles([])
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder5020.setStencilReference(1);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array10, 0, array10.length);
    
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    render_pass_encoder5020.popDebugGroup();
    
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
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    render_pass_encoder5030.executeBundles([])
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder5010.executeBundles([])
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder5040.insertDebugMarker("marker")
    render_pass_encoder5030.setPipeline(render_pipeline500);
    render_pass_encoder5010.setStencilReference(1);
    
    
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    compute_pass_encoder5040.setPipeline(compute_pipeline504);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_pass_encoder5010.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query502.destroy()
    texture502.destroy();
    render_pass_encoder5010.insertDebugMarker("marker");
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder5030.pushDebugGroup("group_marker");
    
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    
    
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    render_pass_encoder5000.setPipeline(render_pipeline500);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    query501.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    device60.pushErrorScope("validation");
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.setPipeline(render_pipeline501);
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    query600.destroy()
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    compute_pass_encoder5040.insertDebugMarker("marker")
    
    query500.destroy()
    texture503.destroy();
    query502.destroy()
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    
    query500.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder5020.setPipeline(render_pipeline501);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder5000.insertDebugMarker("marker");
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5030.popDebugGroup();
    query501.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    texture601.destroy();
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    texture602.destroy();
    
    render_pass_encoder5010.insertDebugMarker("marker");
    buffer600.destroy()
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    query600.destroy()
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    query502.destroy()
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    query602.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    buffer601.destroy()
    
    buffer500.destroy()
    render_bundle_encoder601.setPipeline(render_pipeline600);
    texture603.destroy();
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    render_pass_encoder5000.popDebugGroup();
    compute_pass_encoder5040.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.popDebugGroup();
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group501);
    render_pass_encoder5010.setPipeline(render_pipeline501);
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer505, 0);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group502);
    compute_pass_encoder5040.end();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group503);
    const command_buffer504 = command_encoder504.finish();
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group504);
}