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
    
    
    
    const array0 = new Float32Array([-0.5, 0.75, 0.5, 0.25, -1.0, -0.5, -0.5, -0.75, 0.5, 0.5, 0.0, 0.5, 0.0, -0.75, -1.0, 1.0, 0.0, -0.5, 1.0, -0.25, -0.75, -0.75, -0.25, 0.25, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, 0.25, 0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.75, 0.25, 0.0, -0.25, 0.0, 0.75, -0.25, 0.75, 0.25, 1.0, 0.0, -0.25, -0.25, -0.75, 0.0, 0.75, -0.75, -0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.5, 0.5, 1.0, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.75, 0.75, 1.0, -0.75, 1.0, 0.25, 0.5, -0.25, 0.75, -0.5, 1.0, -0.25, -0.75, -1.0, -0.75, 0.0, -0.75, 0.5, -0.25, 0.25, ]);
    const array1 = new Float32Array([0.75, -1.0, 0.0, -0.75, 0.75, 0.75, -0.75, -1.0, 0.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.75, -0.75, 0.0, 0.5, -0.25, 0.5, -1.0, -0.75, 0.25, -1.0, 0.0, 1.0, -1.0, -0.5, -0.75, -0.5, -0.5, -0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 0.75, -1.0, 0.5, 1.0, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, -0.75, 0.25, 0.25, 1.0, -0.75, -1.0, -0.25, -0.5, 0.25, -1.0, 0.25, -0.5, -0.75, -0.5, 0.0, -1.0, 0.25, 1.0, -0.75, -0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.0, 1.0, 0.5, -1.0, -0.75, 0.75, 0.0, -1.0, -0.75, 0.25, 0.5, 0.75, 0.75, -0.75, 0.0, 0.5, 1.0, ]);
    
    
    const array2 = new Float32Array([0.5, 0.75, -0.5, 0.0, -0.75, 0.25, 0.0, 0.25, 0.5, 0.25, 0.5, -0.25, -1.0, 1.0, -0.75, -0.25, -0.5, -0.5, -0.5, -0.75, 0.5, -0.75, 0.0, 0.25, 0.5, 1.0, 0.25, -0.25, 0.5, 0.0, 0.75, -0.5, -0.5, -0.25, 0.0, 0.25, 0.5, -0.5, 0.75, -0.75, 0.5, -0.5, 1.0, -1.0, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.0, -0.25, -0.25, -1.0, 1.0, 0.75, -1.0, -0.5, 0.0, 0.0, -0.75, -1.0, 0.25, -0.5, 0.5, 0.75, 0.5, 0.5, -0.25, 0.5, -0.75, 0.0, 0.5, 1.0, -0.75, -0.75, 0.0, 1.0, 1.0, -0.75, 1.0, 0.25, 0.0, 0.5, -0.25, -0.75, -0.5, 0.75, 0.75, 1.0, 0.5, 0.75, -0.5, 0.0, 0.25, -1.0, 0.75, -0.5, ]);
    const array3 = new Float32Array([0.5, 0.0, 0.25, 0.75, -0.25, -1.0, -0.75, -0.75, -1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -0.5, -0.25, 0.75, 0.75, 1.0, -0.25, -1.0, 0.25, -0.25, 0.5, -0.25, -0.75, -1.0, -0.5, 1.0, -1.0, -0.5, -0.25, -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, -0.25, 0.75, 1.0, -0.25, 1.0, 0.25, -1.0, -0.75, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, -0.5, 0.25, -0.5, 0.5, -0.75, 0.75, -1.0, 0.75, 0.75, 0.0, 0.5, 0.0, -0.25, 0.75, -0.75, 0.5, -1.0, -0.75, 0.25, 0.5, 0.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.5, -0.25, -0.75, -0.25, -0.75, 0.0, 0.0, 0.25, 0.5, 0.75, -1.0, -0.25, 0.5, 1.0, -0.25, 0.0, -0.5, 0.25, -0.75, 0.25, 0.5, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([1.0, -0.5, 0.5, 0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.25, 0.5, -0.25, -0.75, -0.75, 0.25, -0.25, 0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 0.5, -0.75, 1.0, 0.5, 0.25, 0.25, -0.25, 0.75, -0.5, -0.75, 0.25, -1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, -0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 1.0, -0.25, -0.25, -1.0, -0.25, 1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.0, -1.0, 0.5, 1.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 1.0, 0.25, -0.5, -1.0, -0.25, 0.5, -0.5, -1.0, 0.5, 0.5, -1.0, 1.0, 0.75, 0.5, 1.0, -0.75, -0.5, -0.5, 0.25, -0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    const command_buffer000 = command_encoder000.finish();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer100.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    texture002.destroy();
    
    texture000.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("validation");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture100.destroy();
    
    
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
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const array5 = new Float32Array([1.0, 0.75, 0.75, -0.25, -1.0, 0.5, 0.25, 0.25, -1.0, -0.5, -0.75, -0.25, -1.0, -0.5, -1.0, -1.0, 1.0, 0.0, -0.5, -0.75, -0.75, -0.75, -0.25, -0.5, 0.5, 0.75, -0.25, 0.0, 0.75, 1.0, 0.0, -0.75, -0.25, -0.5, 0.0, 0.5, 0.75, 1.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -0.5, -1.0, -0.75, 0.0, 0.5, -0.5, 0.0, 1.0, 0.25, 1.0, -0.5, -0.75, -1.0, -0.5, 0.25, 0.25, 0.75, -0.5, -1.0, -1.0, 0.25, 0.75, 1.0, -0.5, -0.25, -0.5, 0.0, -0.75, -0.75, 0.75, 0.75, -0.75, 1.0, -0.75, -0.5, 0.75, -0.25, -0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    buffer001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer100 = command_encoder100.finish();
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    command_encoder002.copyTextureToTexture(
        {
            texture: texture002
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder001.copyTextureToTexture(
        {
            texture: texture002
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array6 = new Float32Array([0.75, 0.25, 0.0, 0.75, 1.0, 0.5, -0.75, 0.5, 0.75, 0.25, -0.75, 1.0, -0.25, -0.25, 0.75, 0.0, 1.0, 0.0, 0.75, -0.75, -0.75, 0.75, 0.5, 1.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.25, -0.75, -1.0, 0.25, -0.25, -0.25, -1.0, -0.5, -0.25, 0.25, -0.5, -0.5, -0.75, 0.0, -0.75, 0.75, 0.75, 1.0, -1.0, 0.25, -0.5, 0.75, -1.0, 0.5, -0.5, 0.75, 0.0, -1.0, 0.5, 0.0, 0.75, 0.0, -0.25, -0.75, -0.5, 0.5, 0.0, 0.0, -0.75, -0.75, -1.0, -1.0, -0.25, -0.25, -0.5, 0.5, 1.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.5, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, -0.75, -0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.75, 0.75, 0.0, ]);
    buffer000.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder001.popDebugGroup()
    device00.pushErrorScope("validation");
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    texture003.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.75, 0.0, 1.0, 0.5, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, 1.0, 1.0, -0.75, 1.0, 0.25, -1.0, 1.0, -0.75, -0.5, 0.0, 0.25, 0.25, 0.5, -0.25, 0.0, -0.25, 0.75, 1.0, -0.75, 0.5, -0.75, 0.5, 1.0, -0.25, -0.5, -0.5, -0.25, -0.25, 0.25, 0.0, 0.0, 1.0, 0.25, -1.0, 1.0, 0.75, 0.75, -0.25, 0.5, 0.25, -0.75, -0.5, 0.25, -0.75, 0.5, 0.0, -0.5, -0.25, -0.25, 0.75, 0.25, 0.5, -0.25, 1.0, -1.0, 0.5, -0.5, 0.0, -0.75, 0.0, 1.0, -0.75, 0.5, 0.75, 0.0, 0.5, -0.75, 0.0, -0.25, 0.75, 0.75, 0.5, -0.5, -1.0, 0.0, -0.75, 0.75, -0.5, 0.25, 1.0, -0.75, 0.0, -1.0, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, 0.0, ]);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    buffer104.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    buffer103.destroy()
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.setVertexBuffer(0, buffer103);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer101,
        0,
        400
    );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder300.popDebugGroup()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const command_buffer003 = command_encoder003.finish();
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    device30.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const command_buffer301 = command_encoder301.finish();
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer104,
        0,
        400
    );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer104,
        0,
        400
    );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder102.copyBufferToBuffer(
        buffer104,
        0,
        buffer103,
        0,
        400
    );
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
        occlusionQuerySet: undefined
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const command_buffer102 = command_encoder102.finish();
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer101.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    
    render_bundle_encoder002.setVertexBuffer(0, buffer001);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    buffer003.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder300.popDebugGroup()
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    
    texture004.destroy();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0021 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0021" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0040.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    command_encoder103.clearBuffer(buffer107);
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0040.executeBundles([render_bundle_encoder001, ])
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder1020.setPipeline(render_pipeline101);
    
    buffer107.destroy()
    render_bundle_encoder102.drawIndirect(buffer102, 0);
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder101.popDebugGroup()
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer002,
        0,
        400
    );
    query000.destroy()
    
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
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
    device30.queue.submit([command_buffer300, ]);
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout107,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    query300.destroy()
    command_encoder101.clearBuffer(buffer105);
    device10.queue.submit([command_buffer102, ]);
    
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
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer102.destroy()
    device00.queue.submit([command_buffer003, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    command_encoder103.copyBufferToBuffer(
        buffer105,
        0,
        buffer106,
        0,
        400
    );
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    buffer004.destroy()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer100, ]);
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    buffer005.destroy()
    device00.pushErrorScope("internal");
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture101.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder101.clearBuffer(buffer105);
    
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array8 = new Float32Array([-0.5, -0.5, -0.25, 0.25, -0.5, -0.75, 0.0, -1.0, 1.0, 0.25, 0.0, -0.5, -0.75, 0.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.75, 0.75, 0.5, -0.5, -0.5, -0.75, 1.0, 0.5, -1.0, -0.5, 0.0, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, -1.0, -0.75, 0.5, 1.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 0.25, 1.0, 1.0, -0.75, -1.0, 1.0, 0.25, 1.0, 0.5, 1.0, 0.0, 0.25, -0.25, 0.75, -0.25, -0.25, -1.0, -0.75, -0.75, -0.25, 0.5, -0.75, -1.0, 0.75, -0.5, 1.0, 1.0, 0.25, 0.5, -1.0, 0.25, -0.75, 1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.75, -1.0, 0.5, 0.5, -0.75, 0.5, ]);
    
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
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
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.draw(3);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder000.setIndexBuffer(buffer005, "uint16");
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer106.destroy()
    render_pass_encoder0042.executeBundles([render_bundle_encoder002, ])
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_pass_encoder0041.executeBundles([])
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder302.popDebugGroup();
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder103.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const command_buffer103 = command_encoder103.finish();
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("internal");
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout108,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.drawIndexed(3);
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    render_pass_encoder0041.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setPipeline(render_pipeline107);
    
    
    texture300.destroy();
    
    render_pass_encoder0050.endOcclusionQuery()
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    render_pass_encoder0041.setPipeline(render_pipeline004);
    render_pass_encoder0051.setPipeline(render_pipeline004);
    device30.queue.submit([command_buffer301, ]);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0041.setBindGroup(0, bind_group003);
    render_pass_encoder1010.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.setPipeline(render_pipeline002);
    const command_buffer002 = command_encoder002.finish();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1010.setVertexBuffer(0, buffer109);
    render_pass_encoder1010.draw(3);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group004);
    render_pass_encoder0050.popDebugGroup();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group005);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group006);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0040.setVertexBuffer(0, buffer001);
    render_pass_encoder0050.setVertexBuffer(0, buffer0016);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer003, 0);
    render_pass_encoder0041.setVertexBuffer(0, buffer001);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.setVertexBuffer(0, buffer1011);
    render_pass_encoder1010.end();
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.drawIndirect(buffer007, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0051.setVertexBuffer(0, buffer0016);
    render_pass_encoder1010.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.end();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
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
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0042.setBindGroup(0, bind_group007);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder0050.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0051.end();
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1020.draw(3);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0042.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0042.end();
    render_pass_encoder1020.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0050.end();
    render_pass_encoder0051.draw(3);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0051.drawIndirect(buffer0014, 0);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    render_pass_encoder0051.drawIndirect(buffer0010, 0);
    render_pass_encoder0041.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder1010.draw(3);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder0050.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0051.drawIndirect(buffer004, 0);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, command_buffer005, ]);
    render_pass_encoder0042.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0040.drawIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0041.drawIndirect(buffer002, 0);
    compute_pass_encoder0021.popDebugGroup()
}