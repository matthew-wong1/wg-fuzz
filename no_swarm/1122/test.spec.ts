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
    
    const array0 = new Float32Array([-1.0, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, -0.25, 0.75, -0.5, -0.75, 0.25, 0.0, 0.0, -0.5, 0.25, 0.75, 0.0, -0.5, 1.0, 1.0, 1.0, 0.75, -1.0, 0.25, -0.5, -0.75, 0.0, -0.75, 0.75, 0.5, -0.25, -0.25, -0.75, -0.25, -0.5, -0.25, -0.5, -0.75, -0.25, 0.25, 0.75, -0.75, -0.5, -0.25, 0.0, -0.25, -0.25, 0.5, 1.0, -0.5, 1.0, -0.25, 0.0, -1.0, -0.25, -0.5, -1.0, -1.0, 0.5, -0.25, 0.0, -0.75, 0.75, 0.0, 0.5, 0.25, 0.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.5, -1.0, -0.5, 1.0, -1.0, 0.75, -1.0, -0.5, 1.0, 1.0, -0.75, 0.0, 1.0, 0.0, 0.0, 0.75, -0.75, -1.0, 0.25, -0.75, 0.75, -0.75, 1.0, -0.75, -1.0, -0.75, 0.75, ]);
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer000 = command_encoder000.finish();
    const array1 = new Float32Array([0.75, 0.75, 0.0, 0.75, 1.0, 0.0, -1.0, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, 1.0, 0.0, 0.5, -0.75, 0.5, -0.5, 0.75, 0.5, -1.0, 0.0, -1.0, 0.5, -0.75, 0.5, 0.75, -0.75, -1.0, -0.25, 1.0, 0.75, -1.0, 0.0, -0.75, -0.5, -0.5, 0.5, 0.5, 0.75, 0.5, -0.5, 0.75, 0.5, 0.75, -0.75, 0.75, 1.0, -0.25, 0.75, 0.75, 0.5, -0.5, 0.25, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, 0.25, 0.25, 0.5, -0.25, -0.25, -1.0, -1.0, 0.0, 0.5, 0.0, 0.5, 1.0, -0.75, -0.25, -0.25, 0.5, 0.0, 0.5, -1.0, 1.0, 1.0, -1.0, -0.5, -0.75, 0.75, 0.75, ]);
    command_encoder001.insertDebugMarker("mymarker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    query000.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture000.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer003 = command_encoder003.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer100 = command_encoder100.finish();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder001.clearBuffer(buffer000);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    device10.pushErrorScope("internal");
    compute_pass_encoder0010.popDebugGroup()
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
    device00.queue.submit([command_buffer003, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder101.setPipeline(render_pipeline100);
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.pushErrorScope("out-of-memory");
    device30.queue.submit([]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer000, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    device30.pushErrorScope("internal");
    device30.queue.submit([]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
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
    texture100.destroy();
    device50.destroy();
    buffer000.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    texture200.destroy();
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query201.destroy()
    texture001.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    command_encoder004.pushDebugGroup("mygroupmarker")
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder101.insertDebugMarker("mymarker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder102.setPipeline(render_pipeline103);
    const array2 = new Float32Array([0.0, 0.25, 0.25, -1.0, -1.0, -0.5, 0.25, -0.5, -0.5, 0.25, -0.25, -1.0, -0.25, 0.5, 0.0, 1.0, 0.75, 0.5, -0.5, 0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.75, -0.75, -1.0, -0.75, -0.25, -0.25, 0.0, -0.25, -0.75, -0.75, 0.25, -0.5, -0.5, 0.5, 0.75, 0.0, 1.0, -0.25, 0.25, -0.5, 0.75, 0.5, -0.5, -1.0, 0.75, 1.0, 0.25, 0.75, 0.0, -0.75, 0.25, -0.5, 0.25, 0.25, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 0.0, -0.75, 0.5, 0.5, -0.5, 0.0, 0.75, 0.75, 0.0, -0.25, -0.5, 1.0, -1.0, 1.0, -1.0, -0.75, -0.75, 1.0, 1.0, 1.0, 0.75, 0.0, 0.0, 0.75, -0.75, 0.0, 1.0, -0.25, 0.25, 0.5, 0.25, -0.25, 0.75, 1.0, 1.0, ]);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0040.beginOcclusionQuery(0)
    query201.destroy()
    
    
    
    texture201.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0040.endOcclusionQuery()
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer001.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline002);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    query100.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0040.setStencilReference(1);
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    command_encoder200.pushDebugGroup("mygroupmarker")
    buffer102.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    buffer101.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_buffer002 = command_encoder002.finish();
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder0020.setPipeline(compute_pipeline003);
    const array3 = new Float32Array([0.75, -0.5, -1.0, 0.0, 0.0, 0.5, -1.0, 0.25, -0.25, -0.25, 0.75, 0.75, -1.0, 0.75, 0.5, -1.0, -1.0, 0.75, 1.0, 0.5, -0.75, 0.5, 1.0, 0.5, 1.0, 0.75, 0.75, -1.0, -0.75, 1.0, -0.5, 0.75, -0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 0.25, 0.0, 0.0, -0.5, 0.25, 0.5, -0.5, -0.5, -1.0, 1.0, 0.75, 0.75, -0.25, -0.25, -0.25, -0.25, -0.75, 1.0, 1.0, 0.25, -0.5, -1.0, 0.75, 0.75, 1.0, 0.25, 0.75, 0.25, 0.0, 1.0, 0.5, 0.25, 0.5, -0.75, 1.0, 0.25, 0.25, -0.25, -0.25, 0.5, 0.5, -0.25, -0.25, 1.0, 0.25, 0.25, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, -1.0, -0.25, 0.25, -0.75, -0.5, -1.0, 1.0, -0.75, 1.0, -0.5, ]);
    render_pass_encoder0040.pushDebugGroup("group_marker");
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0040.setPipeline(compute_pipeline004);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query202.destroy()
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
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.setStencilReference(1);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group000);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    buffer002.destroy()
    device00.queue.submit([command_buffer002, ]);
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder0040.setStencilReference(1);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    texture301.destroy();
    render_bundle_encoder000.setPipeline(render_pipeline003);
    
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    query202.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.submit([command_buffer003, ]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
        layout: render_pipeline003.getBindGroupLayout(0),
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    texture300.destroy();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer009, 0);
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer300.destroy()
    render_pass_encoder0040.setVertexBuffer(0, buffer001);
    render_pass_encoder0040.draw(3);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group003);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    buffer0010.destroy()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    buffer008.destroy()
    
    
    
    device10.pushErrorScope("validation");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    texture303.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_buffer300 = command_encoder300.finish();
    device30.pushErrorScope("out-of-memory");
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    buffer004.destroy()
    
    command_encoder005.copyBufferToBuffer(
        buffer007,
        0,
        buffer005,
        0,
        400
    );
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device10.queue.submit([command_buffer102, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.queue.submit([command_buffer300, ]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer001 = command_encoder001.finish();
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.executeBundles([])
    
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    texture104.destroy();
    buffer106.destroy()
    
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0060.setPipeline(render_pipeline000);
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    buffer003.destroy()
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    query301.destroy()
    
    
    query200.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder101.draw(3);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer103.destroy()
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    buffer203.destroy()
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setPipeline(render_pipeline003);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    render_pass_encoder0050.setStencilReference(1);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    texture102.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    query000.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
        occlusionQuerySet: undefined
    });
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device20.pushErrorScope("internal");
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group004);
    texture002.destroy();
    texture001.destroy();
    command_encoder006.clearBuffer(buffer009);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
    
    render_bundle_encoder000.setVertexBuffer(0, buffer0013);
    
    
    device20.destroy();
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
    render_pass_encoder0041.setPipeline(render_pipeline000);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    device40.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
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

    render_pass_encoder0041.setBindGroup(0, bind_group005);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.setVertexBuffer(0, buffer001);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.setVertexBuffer(0, buffer001);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.end();
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    command_encoder004.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0016, 0);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0016, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0017, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer301);
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder0040.end();
    device30.queue.submit([]);
    render_pass_encoder3010.drawIndirect(buffer302, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder0040.end();
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0050.setVertexBuffer(0, buffer0019);
    compute_pass_encoder1010.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0041.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group301);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer0015, 0);
    render_pass_encoder0060.drawIndirect(buffer009, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer304);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    render_pass_encoder0040.end();
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group008);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    command_encoder500.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0040.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    const command_buffer201 = command_encoder201.finish();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0024, 0);
    device40.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1010.end();
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group009);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder3000.draw(3);
    const command_buffer004 = command_encoder004.finish();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer301, ]);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0041.end();
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
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
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0011);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    device30.queue.submit([]);
    render_pass_encoder3010.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.end();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder3010.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0012);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    device60.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer006, ]);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0013);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0040.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
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
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    device10.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0015);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer000, 0);
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder3010.draw(3);
    device60.queue.submit([]);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0019, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder3000.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    render_pass_encoder3010.end();
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0040.end();
    render_pass_encoder0040.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    device30.queue.submit([command_buffer301, ]);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
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
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0048, 0);
    device60.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0052, 0);
    device30.queue.submit([command_buffer301, ]);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0042, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
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
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group0021);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0024, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    compute_pass_encoder0010.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0058, 0);
    device10.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0052, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder0060.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
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
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder3010.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer004, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0061, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder3000.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1021, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0057, 0);
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0060.end();
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder0060.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder0060.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0064, 0);
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
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0024);
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    device30.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([]);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0027);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
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
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    render_pass_encoder0041.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0067, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.setIndexBuffer(buffer006, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer0073, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0050.drawIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3010.draw(3);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer004, ]);
    device60.queue.submit([]);
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer006, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0040.drawIndirect(buffer009, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder3010.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer001, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder3000.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0074, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0053, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    device10.queue.submit([]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.draw(3);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0055, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device60.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder0060.drawIndirect(buffer0070, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.end();
    device40.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0040, "uint16");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0078, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0078, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndirect(buffer0077, 0);
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0080, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
    device40.queue.submit([]);
    device60.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0081, 0);
    render_pass_encoder3000.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0062, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
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
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0029);
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0059, 0);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
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
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder3000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0030);
    render_pass_encoder0041.end();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    device60.queue.submit([]);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0040.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0062, "uint16");
    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0087,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0031);
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder0050.setIndexBuffer(buffer0086, "uint16");
    render_pass_encoder3010.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder3000.setIndexBuffer(buffer301, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0088, 0);
    render_pass_encoder0060.end();
    render_pass_encoder3010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0060.endOcclusionQuery()
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0064, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0078, 0);
    compute_pass_encoder3000.popDebugGroup()
    device50.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    device10.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3010.end();
    device10.queue.submit([]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3010.popDebugGroup();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0090, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0040.end();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder3010.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0050.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1031, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0073, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0041.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0060.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0085, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0081, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0091, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    device00.queue.submit([command_buffer001, ]);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0095, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0095, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0033);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    device60.queue.submit([]);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0034);
    device40.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder3010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0060.drawIndirect(buffer0064, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0060.drawIndirect(buffer0052, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0095, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0040.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00100, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0049, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0050.drawIndirect(buffer0058, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([]);
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0035);
    device10.queue.submit([]);
    render_pass_encoder3010.draw(3);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0090, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00103, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00103, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder3000.draw(3);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0091, 0);
    render_pass_encoder0050.drawIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0078, 0);
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    render_pass_encoder0050.drawIndirect(buffer0070, 0);
    render_pass_encoder0060.drawIndirect(buffer0090, 0);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0078, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0080, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3000.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    device60.queue.submit([]);
    render_pass_encoder0041.end();
    render_pass_encoder3000.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0041.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00103, 0);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00105,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0036);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer002, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00106, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00106, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00107, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder0050.popDebugGroup();
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0037);
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0095, 0);
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0050.drawIndirect(buffer0078, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0024, 0);
    device60.queue.submit([]);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer0089, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder3010.end();
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder0041.drawIndirect(buffer0091, 0);
    render_pass_encoder0050.drawIndirect(buffer0035, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0077, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer006, ]);
    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00113,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0039);
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0040);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00117,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0041);
    render_pass_encoder0040.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0041.end();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0082, 0);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0060.drawIndirect(buffer0087, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.draw(3);
    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00119,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0042);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0080, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.end();
    render_pass_encoder0041.end();
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0043);
    render_pass_encoder3000.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00122, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00122, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00123, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00123, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder3010.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder0060.drawIndirect(buffer0091, 0);
    render_pass_encoder3010.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00121, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00124, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00124, 0);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer003, ]);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder0041.drawIndexedIndirect(buffer00107, 0);
    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00126,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0044);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1037, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00127, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00127, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00116, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.end();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00128, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00128, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00130,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0045);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00131, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00131, 0);
    render_pass_encoder0040.drawIndirect(buffer00124, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder0041.end();
    render_pass_encoder3000.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3000.drawIndexed(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0081, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0060.drawIndirect(buffer00127, 0);
    device60.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder3000.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1039, 0);
    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00133,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0046);
    render_pass_encoder0060.drawIndirect(buffer0091, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00134, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00134, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0060.drawIndirect(buffer0095, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3010.drawIndirect(buffer304, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0079, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00135, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0047);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder3000.end();
    compute_pass_encoder1010.end();
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer001, ]);
    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00139,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0048);
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00141,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0049);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00100, 0);
    device40.queue.submit([]);
    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00143,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0050);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder3010.end();
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer00103, 0);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0041.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0077, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00143, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0037, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0050.drawIndirect(buffer0078, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0080, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer001, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00144, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00144, 0);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0078, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0091, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0020, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0060.drawIndirect(buffer0052, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0024, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0070, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0060.drawIndirect(buffer00127, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    device00.queue.submit([command_buffer001, ]);
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00127, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.drawIndirect(buffer00144, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00145, 0);
    render_pass_encoder0060.drawIndirect(buffer0058, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0064, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00123, 0);
    device40.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0044, 0);
    device60.queue.submit([]);
    compute_pass_encoder0040.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00146, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00146, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    command_encoder200.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00103, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0078, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00128, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00147, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00147, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0060.popDebugGroup();
    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00149,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0051);
    render_pass_encoder0041.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0033, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00125, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00144, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder3010.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00106, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00105, 0);
}