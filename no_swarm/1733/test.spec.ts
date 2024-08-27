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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array0 = new Float32Array([0.0, 0.25, -1.0, 0.25, -1.0, 0.75, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.75, -0.5, -1.0, 0.5, 0.0, 0.0, 0.75, -1.0, -0.75, 1.0, -0.5, -0.5, 1.0, -0.75, -1.0, 0.5, 1.0, -0.25, 1.0, 0.75, 0.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.25, 0.0, 0.75, -0.25, 0.25, 0.25, 0.25, -0.75, 0.5, 0.0, 0.0, -0.5, 0.25, -0.5, 1.0, 0.75, 1.0, -0.75, 0.25, 0.0, 1.0, -0.5, 0.0, 0.75, -0.25, 1.0, 0.5, -0.5, -1.0, 0.25, 1.0, 0.5, -0.75, 1.0, 0.5, -1.0, 0.5, -0.5, 1.0, -0.5, 1.0, 0.0, -0.5, 0.0, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 0.5, 0.5, -0.75, 0.75, 1.0, -0.75, 0.25, 0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    const array1 = new Float32Array([-0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 0.0, 0.0, 1.0, 1.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.75, 0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.5, -0.75, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, 0.5, 0.25, 0.75, -0.75, 0.25, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, 0.75, -0.5, 0.75, 0.75, 0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.5, 0.25, -0.5, -0.25, -0.5, 0.25, -0.75, 0.75, 0.5, -1.0, -1.0, -0.25, -0.75, 0.0, -1.0, 1.0, 0.0, -0.75, 0.0, 0.5, -1.0, 0.25, 0.5, 0.0, 0.0, -0.75, 0.5, -0.75, 0.25, -1.0, -0.5, 1.0, -0.5, -0.75, -0.5, 0.5, -0.75, 0.25, -1.0, -0.75, 0.5, 0.75, 0.75, 0.75, 0.0, 0.0, 0.5, -1.0, 1.0, ]);
    const array2 = new Float32Array([0.0, 1.0, 0.75, 0.5, 0.75, -0.75, -0.5, -0.75, -1.0, 0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 1.0, 0.25, -1.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.25, 0.0, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, 0.75, -1.0, -0.5, -1.0, -0.25, -0.5, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -1.0, 0.0, 1.0, 0.25, 0.0, -1.0, 0.5, 1.0, -0.5, 0.25, -0.5, 0.5, 0.25, 1.0, 0.0, -0.75, -0.25, -0.5, -1.0, -0.5, 0.75, 1.0, 0.25, 0.5, -0.75, 0.75, 0.5, 1.0, 0.75, -0.25, -0.75, 0.0, -0.5, -1.0, 1.0, 0.25, 0.0, -0.75, -0.75, 0.5, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, -0.25, 1.0, 1.0, -0.75, ]);
    const array3 = new Float32Array([-0.25, 0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -0.25, 1.0, -1.0, -0.5, 1.0, 1.0, -0.5, -1.0, 1.0, 0.5, 1.0, -0.75, 0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 0.0, -1.0, 1.0, -1.0, -0.5, -0.25, -1.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.5, 0.5, -1.0, -1.0, 0.25, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, 0.25, 0.5, 1.0, -0.5, -0.75, -1.0, 1.0, 0.5, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 0.5, 0.5, 0.0, 0.25, -0.25, -0.25, -0.25, -0.5, 0.0, 0.25, 0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.0, -0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.5, 1.0, -0.75, 1.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.5, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array4 = new Float32Array([-1.0, 0.5, -0.75, 0.75, 1.0, 0.0, -0.5, 0.0, -0.75, 0.0, 1.0, 0.5, 0.0, 0.25, -1.0, 1.0, -0.25, 1.0, 0.5, 0.75, 0.5, -0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.75, 1.0, -0.5, -1.0, 1.0, -0.25, -0.25, -0.5, -0.75, 0.25, 0.5, 0.5, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.25, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, 0.25, -1.0, 0.75, -0.5, -1.0, 0.5, 0.0, 0.25, -0.75, -0.5, -0.25, 0.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.5, 0.0, -0.5, 1.0, 0.25, -0.5, 0.25, -0.25, -0.75, -1.0, -1.0, -0.5, 0.0, 0.75, -0.5, 1.0, 1.0, 0.0, 1.0, -0.5, -0.25, -0.25, -0.25, 0.0, 0.0, -0.75, -0.25, 1.0, 0.5, -0.25, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const array5 = new Float32Array([0.5, -0.25, 0.0, 0.25, -0.25, -0.25, 0.5, 0.75, 0.5, 1.0, 0.75, 1.0, -1.0, -0.25, -0.5, -0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.75, -0.5, 0.25, 1.0, 0.75, 1.0, 1.0, -0.75, -0.5, 0.0, 1.0, -0.5, 0.5, 0.5, 0.25, -0.75, 0.5, 0.75, -0.5, -0.75, 0.25, -0.5, 0.0, 0.75, 0.5, 0.5, -0.5, -0.5, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, -0.75, 0.0, -0.5, 0.25, 0.5, -1.0, -0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.75, 0.75, 0.5, -0.75, 0.25, 0.25, -1.0, 1.0, -1.0, -1.0, -0.75, -0.75, -0.25, 0.5, -0.25, 1.0, 0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array6 = new Float32Array([0.75, 0.0, -1.0, 0.25, -1.0, -0.25, 0.0, -0.75, 0.75, 0.0, 0.75, -0.75, 0.75, -0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 0.75, 0.0, -0.5, 0.75, 0.25, 1.0, -0.75, 1.0, 0.75, 1.0, 1.0, -1.0, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, -1.0, -0.5, 1.0, -0.75, 0.5, 0.75, -1.0, -1.0, -0.5, -0.25, 1.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.25, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, -0.5, -0.75, -0.75, 0.25, -0.25, 0.5, 1.0, 0.5, 0.25, -0.5, 0.25, -1.0, -0.5, 0.0, 0.0, 0.5, 0.0, 0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, -0.5, 1.0, -1.0, -0.75, 0.75, 0.25, 0.25, 1.0, -0.25, 1.0, -0.5, 0.25, 0.75, -1.0, -0.5, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    device10.pushErrorScope("internal");
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const array7 = new Float32Array([-0.25, 0.5, 0.5, -0.25, -0.25, 0.25, 0.0, 0.75, 0.75, 0.0, 0.0, 0.5, -0.5, 0.0, -0.75, 0.25, 0.75, 0.75, 0.25, -1.0, 0.0, 0.25, -0.25, 0.0, 0.5, 1.0, -0.75, 1.0, 0.25, -0.25, -0.75, 0.25, -0.25, 0.25, -0.25, -0.5, 1.0, 0.75, 1.0, -0.75, -0.5, -0.75, 0.75, 0.25, 1.0, -1.0, -0.75, 0.5, 0.5, 0.75, 0.0, 0.5, -1.0, -0.5, -0.75, 0.25, 0.75, -0.25, -1.0, -0.5, 0.25, -0.25, -0.5, 0.5, 0.25, -0.75, 1.0, 0.25, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, 1.0, -1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 0.0, -0.5, 0.25, 0.25, 0.75, -0.25, 0.75, 1.0, 0.75, 0.25, -0.25, -0.25, 1.0, 0.5, -0.5, -0.25, 1.0, 1.0, 0.0, ]);
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
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([0.25, 0.75, -0.75, -0.75, 0.25, -0.25, 1.0, 0.75, -0.75, -1.0, 0.0, -0.5, -0.75, -0.75, 0.75, 0.5, 0.0, 1.0, -0.75, -0.75, 0.25, 0.5, -1.0, -0.75, 0.25, 1.0, 0.0, -0.5, 1.0, 1.0, -1.0, -0.5, -0.5, -0.25, -0.75, -0.5, -1.0, -0.5, -0.75, 1.0, -0.5, -0.25, 0.25, 0.5, -0.25, 0.5, 0.0, -0.25, 0.25, -0.5, 0.0, -0.75, 1.0, 0.0, 0.75, -0.25, 1.0, -0.5, 0.25, 0.0, 0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.5, -0.25, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, 0.5, -1.0, -0.75, 0.75, 0.75, -1.0, 1.0, 0.25, 0.25, -0.75, 0.25, 1.0, -1.0, 0.75, -0.5, -0.75, 0.75, 0.0, -0.25, -1.0, 0.75, 0.5, 0.5, 0.25, -1.0, -0.5, ]);
    
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder101.insertDebugMarker("mymarker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
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
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer101.destroy()
    render_bundle_encoder100.popDebugGroup();
    device20.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder101.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const array9 = new Float32Array([0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, 0.25, 0.75, 0.25, -0.25, -1.0, -0.75, 0.25, 0.0, -0.5, 0.0, -1.0, 0.5, 0.25, -0.25, 0.5, 1.0, -1.0, 0.25, 0.0, -0.75, 0.5, 0.75, 1.0, 0.75, -0.5, -0.75, 0.25, -0.25, 0.5, 0.25, 0.25, 0.25, 1.0, 0.25, 0.25, 0.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.5, -0.75, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, -1.0, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.0, 0.25, -0.5, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -0.75, 1.0, 0.0, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 0.25, 1.0, -0.5, -0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -0.75, 0.25, 0.25, ]);
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer100);
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
    buffer102.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    
    
    
    
    device30.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const array10 = new Float32Array([-1.0, 0.5, -0.75, 0.75, 0.5, 1.0, 0.0, 0.25, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 0.75, 0.25, 1.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.0, 1.0, 0.5, 0.5, 0.25, 0.75, 0.5, -0.25, -1.0, 1.0, 0.75, 0.5, 0.0, 0.75, -1.0, -0.25, 0.75, 0.75, -0.25, -0.25, 0.25, 0.0, 0.5, 0.0, -0.5, -1.0, -0.5, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, 0.75, 0.5, -0.5, -0.75, 0.5, 0.75, -1.0, 0.0, 0.25, -1.0, 0.5, 1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.75, -0.5, -0.25, -0.5, 0.25, 0.25, 0.75, -0.5, 1.0, -0.75, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, 0.25, 1.0, -0.5, ]);
    
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array11 = new Float32Array([-0.25, -1.0, 0.25, 1.0, 0.75, -0.75, 0.5, 0.75, 1.0, 0.75, -0.5, 0.25, -0.25, -0.25, 0.0, 0.25, 0.25, 0.0, 0.5, -1.0, -0.75, 1.0, -0.5, 0.5, -0.25, -0.25, -0.75, -0.25, -0.5, 0.75, 0.25, -0.75, -1.0, -0.5, -0.5, -0.25, 0.5, 0.75, -1.0, 1.0, 0.5, -0.25, 1.0, -0.5, 0.25, 0.5, 0.5, 0.0, -1.0, -0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 0.0, -0.75, 0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 1.0, -0.25, 0.0, 0.0, 0.5, 0.0, 0.0, 0.5, 0.5, 0.5, 0.25, 0.0, 0.0, 0.5, 0.25, 0.5, 0.25, 0.0, 0.0, 0.75, -0.75, -0.25, -0.25, -0.5, 0.0, -0.5, -0.25, -1.0, -0.75, 0.0, -1.0, 1.0, -0.75, -0.5, 0.0, -0.75, 1.0, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("validation");
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer400.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device60.destroy();
    
    
    query300.destroy()
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
    
    const array12 = new Float32Array([0.25, -0.25, 0.25, 1.0, 0.5, 0.5, -0.75, -0.75, 0.25, 0.75, 0.0, -0.25, -0.25, 0.25, -0.75, 0.75, -0.25, -1.0, 0.0, -1.0, 1.0, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 0.5, -1.0, 1.0, -1.0, -1.0, -1.0, 0.0, -0.5, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, 0.25, -0.75, -1.0, 1.0, 0.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.25, 0.25, -0.25, -0.75, 0.25, 0.0, 1.0, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, -0.5, -0.25, 0.0, -0.75, -0.5, -1.0, 0.5, -0.5, 0.25, 0.75, -0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 1.0, -0.25, ]);
    
    
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
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer000.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer400 = command_encoder400.finish();
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
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
    
    
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([-1.0, -1.0, -0.25, 0.5, -0.75, -0.25, -0.75, 1.0, 1.0, -0.75, -0.25, -0.75, -0.5, 1.0, -0.5, 1.0, -0.25, -0.5, 0.5, 0.0, -1.0, 0.5, 0.5, -0.75, -0.75, 0.25, -0.75, 0.5, 1.0, -1.0, -0.5, -0.75, -0.5, 0.5, -1.0, 0.25, -1.0, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, -0.25, 0.5, 0.25, -0.75, -0.75, -0.25, 0.75, -0.5, -1.0, -0.25, 1.0, -1.0, 0.0, 0.5, -0.75, 0.25, 1.0, -0.75, 0.25, -1.0, 0.0, 0.25, -1.0, -0.5, 0.0, 0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, 0.75, 0.75, 1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 1.0, 0.25, 0.75, -0.25, 0.75, -0.25, -1.0, -0.75, 0.5, -0.75, -0.75, 0.5, ]);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    
    
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    render_pass_encoder4010.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device40.destroy();
    
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const array14 = new Float32Array([0.5, -0.75, -1.0, 1.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, 0.25, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, -0.5, 0.25, -0.25, 0.0, -0.75, -0.25, -1.0, -0.75, 0.75, 0.25, -0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.75, -0.75, -1.0, -0.5, -0.75, -0.75, 0.5, 0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 0.0, -0.75, -0.5, 0.0, 0.0, -0.25, 0.25, -0.5, -1.0, 0.25, 0.75, 0.25, 0.0, 0.5, 1.0, 0.25, 0.5, 0.75, -1.0, 1.0, 0.5, 1.0, 0.5, 0.0, -0.75, 1.0, 1.0, -0.25, -0.75, 0.0, -0.75, -0.75, -0.5, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, 0.0, 0.0, -0.75, -0.25, 0.25, -1.0, -0.75, 0.5, 0.0, -0.25, -1.0, ]);
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const array15 = new Float32Array([0.5, -0.25, -0.75, -0.75, 0.0, 0.75, 0.25, 0.5, -0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.25, -1.0, 1.0, 1.0, 1.0, 0.5, -0.25, 0.5, 1.0, -0.75, 0.0, 0.25, 0.25, 0.5, -1.0, -0.75, -0.25, 0.75, -0.5, 0.25, 0.5, 0.5, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -0.25, -1.0, 0.5, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.25, -1.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, -1.0, 0.5, -0.75, 0.5, 1.0, -0.75, -0.5, -1.0, -1.0, 0.75, -1.0, -0.25, 0.0, 1.0, -0.25, 0.5, 0.25, -1.0, 0.25, -1.0, 0.5, -0.75, 0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 1.0, 0.25, -0.5, -0.75, 0.25, -0.5, ]);
    
    
    
    
    
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const array16 = new Float32Array([0.25, 0.5, -0.5, 0.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.5, 1.0, 0.75, -0.5, 1.0, 0.0, 0.25, 0.5, 0.0, -0.75, 0.75, 0.0, 0.25, -0.5, -0.75, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.0, -1.0, -1.0, -0.25, 0.0, 0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 0.75, 0.75, 0.5, -0.5, 0.0, 0.5, -0.75, 0.0, 0.75, -0.25, 0.5, -0.5, 0.25, 0.5, -0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, 0.5, 0.25, 0.0, -0.5, 0.75, -0.25, 0.75, -1.0, 0.25, -0.5, -0.5, 0.0, -0.75, -1.0, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, 1.0, 1.0, 0.75, -1.0, 0.75, -1.0, ]);
    device30.pushErrorScope("internal");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array17 = new Float32Array([0.75, -1.0, -1.0, 0.75, -1.0, 0.0, -0.5, 0.75, -1.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.25, -0.75, 1.0, 0.75, 1.0, 0.75, 0.0, -0.25, 0.25, 0.5, 0.5, 0.75, -0.75, -0.25, 0.75, -0.5, -0.75, 0.75, 0.0, -0.25, 0.25, 0.5, -0.25, -0.75, -0.5, 0.5, 1.0, 0.75, -0.25, -0.75, -0.5, -0.5, -0.25, 0.25, 0.5, 0.0, -0.75, 0.75, 0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -0.25, -0.5, -1.0, -0.75, -1.0, 0.5, 0.5, 0.75, 1.0, -0.25, -1.0, 1.0, 0.75, -0.25, 1.0, -0.25, 1.0, 0.0, 0.25, 1.0, 0.5, -0.75, 0.25, -0.75, -0.25, -1.0, 1.0, -0.75, -0.75, 0.0, -0.25, 0.0, 0.75, -0.25, 0.25, 1.0, -0.5, 0.75, -0.25, 0.5, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    
    
    const array18 = new Float32Array([-0.25, -0.75, 0.25, -0.5, 0.75, -1.0, 0.0, 0.5, 0.75, -0.75, -0.25, 1.0, 0.0, 0.0, 0.25, -0.5, -0.75, -0.5, 0.5, 0.25, 0.5, -0.25, 0.75, -0.25, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, -0.25, 0.5, -0.5, -1.0, 0.5, -1.0, -0.75, -0.75, 0.0, 0.0, -1.0, -0.25, -0.25, 1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.5, 0.25, 1.0, -0.5, -1.0, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, -0.5, 0.75, 0.75, -0.75, -1.0, 0.25, 0.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.0, 0.5, -0.25, 0.0, 0.75, -0.25, 0.0, -0.5, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -1.0, 0.75, 1.0, -0.75, -1.0, 0.25, 0.0, 0.5, -0.5, 0.5, -1.0, 0.0, 0.0, -1.0, ]);
    
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.pushErrorScope("validation");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device00.queue.writeBuffer(buffer001, 0, array17, 0, array17.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    
    
    device70.pushErrorScope("validation");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const array19 = new Float32Array([0.25, -0.25, 0.0, -0.25, 0.25, 0.75, -0.5, 1.0, 0.5, -1.0, 0.5, -0.25, 0.75, -1.0, -0.5, 0.25, -1.0, 0.5, 0.75, -1.0, 1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.5, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 1.0, 0.25, -0.5, -0.5, -0.5, -0.25, 0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 0.5, 1.0, -0.25, 0.0, 0.75, 0.25, 0.25, 0.0, -0.25, 0.5, -0.25, -0.25, 0.75, 0.25, -0.25, 0.25, -0.25, -0.25, 0.5, 0.25, -1.0, -0.5, -0.5, 0.5, -1.0, 0.25, -0.75, -0.25, -0.5, 0.5, 1.0, -0.25, 0.0, 0.0, 0.25, -0.25, -0.75, -0.5, 1.0, 0.5, 1.0, 0.0, 0.75, 1.0, -0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 0.0, -0.75, 1.0, -0.25, -0.5, ]);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.submit([command_buffer400, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    texture700.destroy();
    
    
    device70.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device90.pushErrorScope("out-of-memory");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_buffer900 = command_encoder900.finish();
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    
    
    
    
    
    
    
    const command_buffer901 = command_encoder901.finish();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array17, 0, array17.length);
    buffer002.destroy()
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    device90.queue.submit([command_buffer900, ]);
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    device00.queue.writeBuffer(buffer001, 0, array14, 0, array14.length);
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const compute_pass_encoder9020 = command_encoder902.beginComputePass({ label: "compute_pass_encoder9020" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    
    
    device80.queue.submit([]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array20 = new Float32Array([-0.75, 0.0, -0.5, -0.25, -0.5, -0.5, -1.0, 1.0, -1.0, 0.25, -0.5, -0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 0.5, 0.75, 0.0, -0.5, -1.0, 0.5, -0.75, 0.0, -1.0, 1.0, 0.5, -0.75, 0.5, -0.25, 0.75, -1.0, 1.0, 0.25, -0.5, 1.0, 0.25, -0.5, 0.5, 0.0, 0.0, -0.5, 0.0, -0.5, -0.75, -0.25, -0.5, -0.5, 0.0, -0.5, -0.5, -0.75, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.75, -0.75, -1.0, -0.5, -1.0, 0.0, -0.25, -0.5, 1.0, -0.75, -0.5, 1.0, 0.75, -0.5, 0.5, 0.25, 0.25, -0.5, 0.0, -0.5, -1.0, 0.5, -0.75, 0.75, 0.5, -0.25, -1.0, 0.75, -0.75, -0.5, 0.25, -1.0, 0.0, 1.0, ]);
    render_bundle_encoder700.setPipeline(render_pipeline700);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    command_encoder800.pushDebugGroup("mygroupmarker")
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query800.destroy()
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    compute_pass_encoder9020.pushDebugGroup("group_marker")
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout802]
    });
    device80.pushErrorScope("out-of-memory");
    
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    command_encoder801.insertDebugMarker("mymarker");
    
    device70.destroy();
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const command_buffer903 = command_encoder903.finish();
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder9020.insertDebugMarker("marker")
    compute_pass_encoder9020.popDebugGroup()
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    device100.destroy();
    
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout802,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline902 = device90.createComputePipeline({
        label: "compute_pipeline902",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeBuffer(buffer103, 0, array12, 0, array12.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device90.queue.writeBuffer(buffer900, 0, array13, 0, array13.length);
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    compute_pass_encoder9020.insertDebugMarker("marker")
    
    compute_pass_encoder9020.setPipeline(compute_pipeline902);
    const command_buffer600 = command_encoder600.finish();
    command_encoder800.popDebugGroup()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: compute_pipeline902.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer901,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer902,
                },
            },
        ],
    });

    compute_pass_encoder9020.setBindGroup(0, bind_group900);
    const command_buffer801 = command_encoder801.finish();
    const uint32_9020 = new Uint32Array(3);

    uint32_9020[0] = 100;
    uint32_9020[1] = 1;
    uint32_9020[2] = 1;

    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device90.queue.writeBuffer(buffer903, 0, uint32_9020, 0, uint32_9020.length);

    compute_pass_encoder9020.dispatchWorkgroupsIndirect(buffer903, 0);
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder9020.end();
    device90.queue.submit([command_buffer901, command_buffer903, ]);
    device60.queue.submit([]);
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: compute_pipeline902.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer904,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer905,
                },
            },
        ],
    });

    compute_pass_encoder9020.setBindGroup(0, bind_group901);
    const command_buffer902 = command_encoder902.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer801, ]);
    device90.queue.submit([command_buffer902, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    const command_buffer103 = command_encoder103.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([]);
    device80.queue.submit([command_buffer801, ]);
    const uint32_9020 = new Uint32Array(3);

    uint32_9020[0] = 100;
    uint32_9020[1] = 1;
    uint32_9020[2] = 1;

    const buffer906 = device90.createBuffer({
        label: "buffer906",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device90.queue.writeBuffer(buffer906, 0, uint32_9020, 0, uint32_9020.length);

    compute_pass_encoder9020.dispatchWorkgroupsIndirect(buffer906, 0);
    device90.queue.submit([command_buffer901, ]);
    device80.queue.submit([]);
    device90.queue.submit([command_buffer902, ]);
    compute_pass_encoder9020.end();
}