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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer001.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array0 = new Float32Array([0.5, 0.25, -0.25, 0.25, 0.75, 0.5, 0.75, 0.25, 0.25, 0.25, -0.25, 0.0, -1.0, 0.0, -0.75, 1.0, 0.0, 0.25, -1.0, 0.0, 0.5, -0.25, 0.75, -0.25, 0.5, 1.0, 0.5, -0.25, -0.75, 0.5, -0.5, 0.25, -0.5, -0.25, -0.5, -1.0, 1.0, 0.0, 0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.5, -1.0, -0.5, -0.75, -0.25, -0.25, 0.25, -1.0, -0.5, 1.0, -0.75, -0.75, 0.75, 0.75, 0.75, 0.5, 0.0, -0.75, 0.0, 1.0, 0.75, 0.25, -1.0, 0.0, -0.5, 0.25, -0.75, -1.0, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, -1.0, -0.75, -0.25, 1.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.0, 1.0, 0.0, -0.25, 0.0, -0.5, -1.0, -0.5, -0.5, 0.5, 0.5, 1.0, -0.25, ]);
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    device10.pushErrorScope("validation");
    
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array1 = new Float32Array([-0.5, 0.5, -1.0, -0.25, -0.5, -1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.25, -1.0, -0.25, 0.75, 0.0, -1.0, -0.75, 1.0, 0.5, 0.5, 0.25, 0.5, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, 0.0, 1.0, -0.5, 0.0, 1.0, 0.0, -0.5, -0.5, -0.5, -1.0, -1.0, 0.0, -0.75, 0.75, -0.75, -1.0, -1.0, 0.75, -0.25, 1.0, -0.25, 1.0, 0.75, -0.25, -0.5, -0.75, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.25, -0.5, 0.0, 0.75, 0.75, 0.75, 0.5, 0.75, -0.5, 0.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.25, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer002.destroy()
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query000.destroy()
    buffer000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("out-of-memory");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.popDebugGroup()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
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
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder000.clearBuffer(buffer002);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
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
    const array2 = new Float32Array([0.0, 0.5, -0.25, 0.25, 0.75, -1.0, -1.0, 0.75, 0.25, 0.75, 0.0, -0.25, 0.75, -0.25, 1.0, 1.0, -0.25, 0.25, 1.0, -0.25, 0.5, -0.25, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, -0.25, -0.75, 0.75, 0.0, 1.0, -0.5, -0.25, -0.5, 0.25, -1.0, -1.0, 0.5, -0.75, 1.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.0, -0.25, 0.5, -0.25, 0.5, 1.0, -0.75, -1.0, 0.5, 0.5, 0.0, 0.0, 0.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -1.0, -1.0, 1.0, 0.75, 1.0, -0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 0.5, 0.75, -0.25, -1.0, 0.75, -0.75, -0.5, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, -1.0, -1.0, 0.25, 1.0, 0.0, -0.75, 1.0, 0.5, 0.5, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    buffer103.destroy()
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    render_bundle_encoder100.popDebugGroup();
    
    command_encoder001.insertDebugMarker("mymarker");
    const array3 = new Float32Array([0.0, -0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, 0.25, 1.0, -0.5, -0.25, 0.0, -0.25, -0.5, -0.5, -0.5, 0.0, 0.25, 0.25, 0.5, 0.25, -0.25, -1.0, 0.75, -0.5, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, -1.0, 0.25, -0.5, -0.75, -0.25, -0.5, 1.0, 0.0, 1.0, -0.25, 1.0, 1.0, 0.0, -0.5, -1.0, -0.5, 0.25, 1.0, -0.75, 0.75, 1.0, -0.75, 0.5, 0.25, 0.5, -0.25, -0.75, 0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -0.75, 0.5, 0.25, -0.25, -0.5, -1.0, -0.75, -1.0, 0.75, 0.0, 1.0, 0.75, 1.0, -0.75, 0.25, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 0.5, 1.0, -0.75, -1.0, ]);
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    
    query001.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const array4 = new Float32Array([-0.75, 0.0, 0.75, 0.25, 0.0, 0.0, 0.0, -0.25, 0.75, 0.0, 0.5, -0.75, 0.25, -1.0, 0.75, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 0.25, -1.0, -1.0, 1.0, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, 0.0, 0.75, 0.5, 1.0, 0.75, -1.0, 0.25, -1.0, 0.5, -0.25, -1.0, 0.5, -1.0, -1.0, 0.0, 0.75, -0.5, -0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, -0.75, 0.75, 0.0, 0.75, -1.0, 0.0, -0.25, -0.5, -0.5, 0.75, -0.5, -0.5, -0.25, -0.5, 0.0, 0.5, -1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -0.25, 0.75, 0.5, 1.0, 1.0, 0.75, -1.0, 0.5, -0.25, -1.0, -0.75, 1.0, -0.5, 0.25, 0.75, 0.25, 0.75, -0.75, -1.0, -0.75, ]);
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    texture102.destroy();
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
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
    render_pass_encoder0000.pushDebugGroup("group_marker");
    buffer100.destroy()
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([]);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder001.clearBuffer(buffer002);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    buffer006.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer107.destroy()
    query001.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    
    buffer101.destroy()
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture100.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setVertexBuffer(0, buffer006);
    
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    
    buffer104.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([0.0, -0.25, 0.75, -0.25, 0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, -0.75, 0.5, -0.75, -0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, -0.5, -1.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.5, -0.25, 0.5, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, 0.75, 1.0, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.0, 1.0, -0.5, 0.25, 0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 1.0, 0.25, 0.5, 0.25, 0.0, -0.25, -0.25, -0.5, -0.25, -0.75, 0.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.5, -0.5, 0.25, -1.0, 0.0, 0.75, -0.25, 0.25, -0.25, 0.75, 0.75, ]);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    texture001.destroy();
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer103.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    compute_pass_encoder0011.setPipeline(compute_pipeline003);
    
    
    
    const render_pass_encoder0002 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query002
    });
    
    render_pass_encoder0010.setPipeline(render_pipeline002);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0001.setStencilReference(1);
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_pass_encoder0002.setPipeline(render_pipeline000);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    
    texture100.destroy();
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder100.setVertexBuffer(0, buffer103);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    buffer003.destroy()
    query000.destroy()
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    render_pass_encoder0001.setPipeline(render_pipeline002);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder1000.setPipeline(render_pipeline102);
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer108.destroy()
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    buffer004.destroy()
    render_bundle_encoder100.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.drawIndirect(buffer000, 0);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.pushErrorScope("internal");
    render_pass_encoder0000.draw(3);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder100.draw(3);
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query002
    });
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    {
        await buffer1010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1010.unmap();
        console.log(new Float32Array(data));
    }
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.draw(3);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    buffer1010.destroy()
    compute_pass_encoder0011.popDebugGroup()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder102.setPipeline(render_pipeline100);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_bundle_encoder000.finish();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0011.setPipeline(render_pipeline004);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    buffer008.destroy()
    render_pass_encoder0002.beginOcclusionQuery(0)
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer009.destroy()
    render_bundle_encoder101.setIndexBuffer(buffer104, "uint16");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer007.destroy()
    
    const render_pass_encoder0003 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0003.setPipeline(render_pipeline006);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    
    render_pass_encoder0002.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0002.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer104
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0002.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer0012.destroy()
    render_pass_encoder0003.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder100.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder0000.beginOcclusionQuery(1)
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    render_bundle_encoder101.drawIndexed(3);
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    render_bundle_encoder100.finish();
    texture101.destroy();
    texture001.destroy();
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group005);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture003.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture103.destroy();
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder100.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder0001.popDebugGroup();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer105.destroy()
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group006);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0003.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_pass_encoder0003.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    query001.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0003.setBindGroup(0, bind_group007);
    render_pass_encoder1010.executeBundles([render_bundle_encoder100, ])
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
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
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    buffer0019.destroy()
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
    render_pass_encoder0000.setStencilReference(1);
    {
        await buffer0010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0010.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0002.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer0011.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer200 = command_encoder200.finish();
    texture002.destroy();
    buffer0017.destroy()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0003.setVertexBuffer(0, buffer0012);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.draw(3);
    
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
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
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0002.setBindGroup(0, bind_group008);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.popDebugGroup()
    
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0023, 0);
    buffer006.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer0013.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.setVertexBuffer(0, buffer000);
    device40.pushErrorScope("validation");
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0002.setVertexBuffer(0, buffer0015);
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("validation");
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0010.popDebugGroup()
    query003.destroy()
    buffer0016.destroy()
    render_pass_encoder0003.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    render_pass_encoder0002.drawIndirect(buffer0011, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder0000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0011.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
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
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group102);
    render_pass_encoder0003.popDebugGroup();
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group009);
    render_pass_encoder0001.setVertexBuffer(0, buffer004);
    render_pass_encoder0002.end();
    device00.queue.submit([command_buffer002, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0003.draw(3);
    render_pass_encoder0003.popDebugGroup();
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder0001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1011.setVertexBuffer(0, buffer1013);
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1001.setPipeline(render_pipeline100);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    compute_pass_encoder0000.end();
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0010);
    render_pass_encoder0003.end();
    render_pass_encoder0010.end();
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group105);
    compute_pass_encoder0011.end();
    render_pass_encoder1001.setVertexBuffer(0, buffer105);
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder0011.drawIndirect(buffer0023, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0011);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder0000.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0002.drawIndirect(buffer0030, 0);
    render_pass_encoder0003.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0011.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0002.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0003.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0003.drawIndirect(buffer0011, 0);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0011.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0003.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.popDebugGroup();
    device50.queue.submit([]);
    device50.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0010.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder0002.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder0002.drawIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0002.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0003.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0003.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0002.endOcclusionQuery()
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    render_pass_encoder0001.drawIndirect(buffer0030, 0);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.draw(3);
    render_pass_encoder0011.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0003.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0002.drawIndirect(buffer0023, 0);
    render_pass_encoder0003.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0003.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0003.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0012);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder0003.end();
    device20.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0003.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0011.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0002.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0011, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0003.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0002.end();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0014);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0003.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0002.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder1000.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder0011.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0003.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0002.setIndexBuffer(buffer006, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder0011.end();
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    device00.queue.submit([]);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
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
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0003.end();
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder0002.drawIndirect(buffer0031, 0);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0001.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0003.end();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer0042, 0);
    render_pass_encoder0011.drawIndirect(buffer0046, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0011.end();
    render_pass_encoder1010.end();
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0003.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0003.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0003.drawIndirect(buffer0015, 0);
    render_pass_encoder0010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0003.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0003.setIndexBuffer(buffer0047, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0003.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0002.drawIndirect(buffer007, 0);
    render_pass_encoder0003.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0002.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0003.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.popDebugGroup();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0011.drawIndirect(buffer0030, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0051, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    device50.queue.submit([]);
    render_pass_encoder0010.end();
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0003.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0023, 0);
    device40.queue.submit([]);
    render_pass_encoder0003.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0003.setIndexBuffer(buffer001, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder0003.drawIndirect(buffer0042, 0);
    render_pass_encoder0002.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer0052, 0);
    render_pass_encoder0003.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0002.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0011.drawIndirect(buffer0021, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0003.end();
    render_pass_encoder0002.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1011.end();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0002.end();
    render_pass_encoder0002.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0031, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0003.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0003.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0001.end();
    device00.queue.submit([]);
    render_pass_encoder0003.end();
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0003.drawIndirect(buffer0046, 0);
    render_pass_encoder1010.end();
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
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
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder0002.drawIndirect(buffer0033, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0003.drawIndirect(buffer003, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder0002.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0003.popDebugGroup();
    render_pass_encoder0003.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    render_pass_encoder1010.draw(3);
    device20.queue.submit([]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0055, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0003.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndirect(buffer0031, 0);
    render_pass_encoder0002.drawIndirect(buffer0050, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder0003.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0001.drawIndexed(3);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    render_pass_encoder0011.drawIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0002.drawIndirect(buffer004, 0);
    render_pass_encoder1001.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0003.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndirect(buffer0056, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0003.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder0011.end();
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0002.drawIndirect(buffer0047, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndirect(buffer0027, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0003.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0011.drawIndirect(buffer0048, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0034, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0059, 0);
    device40.queue.submit([]);
    render_pass_encoder0003.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
}