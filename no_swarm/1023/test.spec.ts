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
    const array0 = new Float32Array([0.5, 0.0, 0.0, -0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 0.0, -0.75, 1.0, -0.5, -0.5, 1.0, -1.0, -0.5, -1.0, 0.5, 0.0, 0.25, 1.0, -0.5, 1.0, 0.0, -0.75, 0.25, 0.0, -0.5, 0.5, 0.5, -0.75, -0.25, -0.5, 0.25, -0.75, 0.75, -0.75, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 1.0, 1.0, 0.0, 0.75, -0.25, 0.5, 0.5, -0.75, -0.5, -0.25, 0.0, -0.25, 0.75, -0.5, -0.75, 0.25, 0.0, -1.0, -0.25, 0.25, 0.25, -0.5, 0.0, -1.0, 0.5, -0.5, 0.5, 0.0, 0.75, -0.5, -0.25, 1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.25, 1.0, -0.5, 0.5, -0.5, -0.5, 0.0, 0.75, 0.25, ]);
    const array1 = new Float32Array([0.25, 0.0, -0.25, 0.5, -0.75, -0.75, 0.25, 0.5, -1.0, 0.0, 0.5, -1.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.0, -1.0, -1.0, -0.75, 0.75, -0.5, 0.0, -0.75, 0.75, -0.75, 0.5, 0.0, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, 0.75, -0.25, 0.0, 0.5, -1.0, -0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 0.25, 0.75, 0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 0.5, -0.75, 0.5, -1.0, -1.0, 1.0, -0.5, -0.5, -0.75, -0.25, -1.0, 0.25, -1.0, 0.0, 0.0, 0.75, 1.0, 0.0, 1.0, -0.75, -0.25, 0.75, -0.75, -0.5, -1.0, 0.25, 0.0, -1.0, -0.25, -0.5, 1.0, ]);
    
    const array2 = new Float32Array([0.5, -0.75, 0.0, 0.0, 0.5, 1.0, 0.0, -0.5, 0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -0.25, 0.75, 0.0, -0.75, -0.5, 0.75, 0.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.0, -0.25, 1.0, -0.75, 0.5, -0.5, 0.0, 0.75, -0.25, 0.5, -1.0, -1.0, 0.5, 1.0, -1.0, 0.25, -1.0, -0.5, -0.75, -0.75, 0.25, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, -0.75, -0.5, -0.25, 0.75, 0.0, -0.25, 1.0, 0.0, -0.5, -0.75, -0.5, -1.0, 0.5, 0.0, -0.5, 0.0, 0.75, 0.0, -1.0, 1.0, 0.25, 0.5, 1.0, 0.25, 0.5, 1.0, -0.75, 1.0, 0.75, -0.5, 0.0, -0.25, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -1.0, 1.0, 0.25, 0.25, -0.5, -0.25, 0.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    query000.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.destroy();
    
    texture000.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([-0.75, 1.0, -0.25, -0.75, -0.5, 0.75, 0.75, 0.75, 0.0, -0.75, 1.0, 0.5, -0.25, 0.0, -0.75, -0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.5, 0.25, -0.5, 0.0, 0.75, 0.75, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, -1.0, -1.0, -0.75, 0.25, 0.25, -1.0, -0.75, 0.75, 0.75, -0.75, -0.5, 0.75, -0.5, 0.75, -0.75, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, 0.5, -0.5, 0.5, 0.5, -0.25, 0.0, 0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.75, 0.75, -0.75, 0.25, 0.5, 0.5, -1.0, 0.5, -0.75, 0.0, -1.0, -0.5, -0.5, 0.25, 1.0, -0.75, 0.25, 0.5, -0.5, 0.25, -0.5, -1.0, -1.0, -0.5, -1.0, 0.5, -1.0, 0.75, -1.0, 0.0, -0.75, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.25, -1.0, 0.25, -0.75, 0.25, -0.5, -0.75, 0.75, -0.5, -0.25, 0.0, -0.5, 1.0, 0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.0, 0.75, 0.5, 0.0, 0.5, -0.5, 1.0, -0.25, 0.25, -1.0, -0.25, 0.0, -0.75, -1.0, -1.0, 0.25, -1.0, -0.5, 1.0, -0.25, -0.5, 0.25, 0.75, -0.25, -0.5, 0.0, -0.75, 0.25, 0.0, 0.5, -0.75, 0.0, -0.75, -0.5, 0.5, 0.25, -0.75, 0.75, -0.5, 0.5, -0.75, 0.5, 1.0, 0.75, 0.75, -0.5, -0.75, 0.5, -0.75, -1.0, 0.5, -0.25, 1.0, 1.0, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.25, 1.0, 1.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.5, -0.75, 0.0, -0.25, 0.5, -0.25, ]);
    device20.destroy();
    
    const array5 = new Float32Array([-0.75, 0.25, -0.75, 0.0, 0.75, 0.75, 0.75, 0.5, 0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 0.5, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, 0.0, -1.0, 0.5, 0.0, -0.75, 1.0, -1.0, -0.75, 0.25, -0.5, 1.0, -0.5, 0.25, -0.25, 1.0, -0.5, -0.25, 1.0, -1.0, -1.0, -0.5, -0.25, 0.75, -1.0, 0.25, -1.0, -1.0, -0.75, 0.25, 1.0, 0.0, 0.0, -0.25, -1.0, -0.25, 0.5, -0.5, 0.25, 0.25, 0.25, 0.5, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, 1.0, -1.0, -1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, -0.5, -0.25, 0.75, 0.0, 0.75, 1.0, -0.25, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, -1.0, -0.5, -0.5, 0.0, 0.75, -0.5, -1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.queue.submit([]);
    const array6 = new Float32Array([0.25, 0.75, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 0.0, -0.25, -0.25, 0.75, -0.75, -0.5, -0.75, 0.25, -0.75, -0.5, -0.5, 0.0, 1.0, 0.5, -0.25, 0.75, -0.75, 0.5, -0.75, 1.0, 1.0, -0.75, 0.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.25, 0.5, 0.0, 0.0, 0.0, -0.75, 0.25, -0.25, 1.0, 1.0, 0.0, -1.0, -1.0, -1.0, 0.25, 0.0, -0.25, 1.0, -0.5, -1.0, 0.0, 0.75, -1.0, 0.0, -0.25, 0.5, 0.5, 1.0, -0.5, -0.25, -0.5, 0.25, -0.5, 0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 0.5, 0.5, 0.75, 0.25, 1.0, -0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 1.0, 0.75, -1.0, 0.0, -0.5, -0.75, 1.0, 0.25, -0.5, -1.0, 0.25, ]);
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    texture101.destroy();
    const array7 = new Float32Array([0.0, 0.5, 0.25, 1.0, 0.25, -1.0, 0.75, 0.5, -0.5, 0.25, 0.25, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.5, -0.75, -0.5, -0.25, -0.5, -0.25, -0.25, 0.0, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, -1.0, 0.5, 1.0, 0.0, 0.5, 0.5, -0.5, 0.5, -0.25, -0.5, 0.25, -0.25, -0.75, -0.5, -1.0, 1.0, -0.75, -1.0, -0.25, 0.25, 0.75, 0.5, 1.0, 0.0, -0.75, 0.5, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, 0.25, 1.0, 0.75, 0.5, 0.25, -0.25, 1.0, -0.25, -1.0, -1.0, -0.75, -0.25, 0.25, 0.5, -0.25, 0.75, 0.5, -0.5, 0.0, 1.0, 1.0, 0.75, 0.0, 0.5, -0.25, 0.25, -1.0, 1.0, -0.5, -0.25, 0.75, 0.75, 0.5, 1.0, -0.25, 0.25, 0.0, ]);
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, -0.5, 0.0, -0.5, -1.0, 0.5, -0.75, 0.75, 1.0, -0.25, -1.0, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, -1.0, -0.75, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -0.5, 0.5, 0.25, 0.0, 1.0, 0.0, -0.25, 0.0, -0.5, -0.5, 0.25, -0.75, 0.25, -0.25, -0.5, -0.25, -0.25, -0.5, -1.0, 0.0, 1.0, 1.0, 0.0, 0.75, 0.25, 0.0, 0.75, -0.75, -0.5, -0.75, -0.5, -0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 0.0, -0.5, 0.25, 0.75, -1.0, -1.0, -0.5, 0.25, -0.25, 0.0, -0.5, 0.0, -0.75, 0.25, 0.0, -1.0, -0.25, -0.5, -0.25, -0.5, -0.25, -0.75, 0.0, 0.0, -0.25, -0.25, 0.25, -0.75, -1.0, -1.0, -0.25, 1.0, 0.25, -0.75, -0.75, 0.0, 0.75, ]);
    
    device10.pushErrorScope("internal");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    query100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer102.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    command_encoder101.insertDebugMarker("mymarker");
    buffer100.destroy()
    const command_buffer101 = command_encoder101.finish();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer103.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    compute_pass_encoder1001.popDebugGroup()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const array9 = new Float32Array([-0.25, 0.75, -0.5, 0.25, -0.5, -0.25, 1.0, -0.75, 0.0, 0.5, 0.25, -0.25, -0.25, -0.75, -1.0, -0.25, 0.0, -0.25, -0.5, -1.0, -0.25, 0.75, -0.75, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, -0.75, 0.75, 0.75, -0.5, 0.0, 1.0, 0.5, 0.25, -0.75, -0.5, -0.25, -1.0, 0.5, -0.5, 1.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.25, 0.0, 0.75, 0.75, 0.5, -1.0, 0.25, 0.75, -0.25, -0.75, -1.0, 1.0, -0.25, -0.25, 1.0, 0.75, -0.25, 0.5, 0.0, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, 1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -0.5, -0.75, 0.5, 0.5, 0.75, -0.75, 0.75, -0.25, 1.0, 0.0, -0.25, 0.5, 0.25, -1.0, -1.0, 0.25, 0.75, 0.25, 0.0, -1.0, ]);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    query103.destroy()
    
    
    command_encoder102.copyBufferToBuffer(
        buffer104,
        0,
        buffer104,
        0,
        400
    );
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1001.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array10 = new Float32Array([0.25, -1.0, -1.0, 0.75, 0.0, 1.0, -0.75, -0.25, 1.0, -1.0, 1.0, -0.25, 0.75, -1.0, -0.75, -0.75, -0.75, -0.5, -0.5, -0.5, 0.75, 0.25, 0.0, -0.5, -0.5, -0.75, -1.0, 0.75, -0.5, 0.25, 0.0, -0.75, 0.75, 0.25, -0.75, -0.25, 0.75, 0.75, 1.0, 1.0, 0.5, -0.5, 0.5, -0.75, 0.0, -0.75, -0.75, -1.0, -1.0, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, -0.75, -0.5, 0.5, 0.25, -0.5, -0.25, -0.25, 0.0, -0.75, -0.5, -0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 0.0, 0.5, 0.75, -1.0, -0.25, 0.25, 1.0, -0.75, 0.5, 0.0, 0.5, 0.0, 1.0, 0.0, 0.25, -0.25, 0.0, 0.75, -0.25, -0.5, 0.25, 0.75, 0.0, -0.5, 0.5, 0.25, -0.5, 0.5, 0.5, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.queue.writeBuffer(buffer105, 0, array9, 0, array9.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture100.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    query100.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    command_encoder200.pushDebugGroup("mygroupmarker")
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder100.setIndexBuffer(buffer100, "uint16");
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query104.destroy()
    query106.destroy()
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder100.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    query105.destroy()
    const array11 = new Float32Array([0.25, 0.5, 0.75, 0.25, 0.0, -1.0, -0.5, -0.75, 0.5, -0.5, 0.0, -0.5, 0.0, 1.0, 0.75, 0.75, 0.0, 1.0, -0.5, -0.25, -0.25, 1.0, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.0, 0.0, 1.0, -1.0, 0.5, -0.75, 0.25, 0.0, -0.5, 0.5, 0.0, -0.25, 0.5, -0.5, 0.5, 0.5, 0.25, 1.0, -0.5, -0.75, 0.0, -1.0, -0.25, 0.75, 1.0, 0.25, -0.5, -0.25, 0.5, 1.0, 1.0, -0.75, 1.0, -1.0, -0.75, 0.75, -0.75, -0.75, 0.0, 0.5, 0.25, -1.0, -0.75, 1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, 0.75, -0.25, -0.5, 0.0, 0.75, -0.25, -0.5, 0.75, 0.0, -0.5, 1.0, -0.25, 0.75, -0.5, -0.25, 0.5, 0.5, -1.0, -0.25, 0.75, ]);
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query101.destroy()
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query105.destroy()
    query104.destroy()
    compute_pass_encoder1001.setPipeline(compute_pipeline101);
    
    texture301.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer102.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    compute_pass_encoder1001.insertDebugMarker("marker")
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const array12 = new Float32Array([0.75, -0.5, -0.75, -0.25, -1.0, 0.75, 0.25, -0.5, -0.75, 0.25, -0.25, 0.25, 0.5, 0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 0.75, 0.75, 0.25, 0.5, 0.5, -0.75, 0.25, 0.25, -1.0, 0.25, 0.0, -0.75, -0.5, 1.0, -1.0, 0.5, 0.75, -0.25, -0.5, -0.5, 1.0, -0.75, 0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, -0.75, 1.0, 1.0, 0.25, 0.0, -0.25, 0.5, 0.0, -0.5, -0.25, -0.5, -0.75, 1.0, 0.5, 0.25, -0.5, -1.0, 0.5, -1.0, 0.5, 0.0, 0.5, 1.0, 0.5, 0.5, -1.0, 0.75, -0.75, -1.0, 1.0, -0.75, -0.25, 1.0, 0.0, 1.0, 0.25, 0.5, -1.0, 0.75, 0.5, -0.5, 0.75, 0.75, 0.75, 0.0, -0.5, 0.75, 0.0, 0.25, 0.25, -0.75, ]);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer303, 0, array10, 0, array10.length);
    buffer104.destroy()
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    compute_pass_encoder1000.popDebugGroup()
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1001.insertDebugMarker("marker")
    const array13 = new Float32Array([0.5, -1.0, -0.5, -0.5, 0.25, 0.75, 0.5, 0.25, 0.5, 0.25, -0.75, -1.0, -0.25, -0.75, 1.0, 0.25, 1.0, -0.25, -0.75, 0.75, 0.25, -0.5, 0.75, -1.0, -1.0, -0.25, -0.25, -0.25, 0.0, 0.5, -0.5, 0.75, 0.5, -0.5, -0.25, 0.5, -0.75, 0.5, 0.0, 0.5, 0.5, 0.0, 0.75, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -1.0, 1.0, -0.25, -1.0, -1.0, 1.0, -0.75, 0.75, -1.0, 1.0, 0.75, 0.5, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, -0.25, -1.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.25, -0.75, 0.0, 0.0, -1.0, 0.0, -0.5, -1.0, -1.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, 0.5, 0.25, 1.0, -0.5, ]);
    
    query101.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder101.popDebugGroup();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder3001.setPipeline(render_pipeline300);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group103);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
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
    
    device30.queue.writeBuffer(buffer302, 0, array13, 0, array13.length);
    buffer300.destroy()
    
    query101.destroy()
    
    
    
    render_pass_encoder3001.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer109,
        0,
        400
    );
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer302.destroy()
    render_bundle_encoder100.setIndexBuffer(buffer106, "uint16");
    
    
    device30.pushErrorScope("validation");
    
    device30.queue.writeBuffer(buffer303, 0, array13, 0, array13.length);
    device10.queue.writeTexture({ texture: texture102 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query103.destroy()
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    buffer107.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    buffer1011.destroy()
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3000.setPipeline(render_pipeline300);
    
    device10.queue.writeBuffer(buffer1010, 0, array5, 0, array5.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query105.destroy()
    
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer1010.destroy()
    const array14 = new Float32Array([0.25, 0.25, -0.25, -1.0, 0.75, -0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 1.0, 1.0, -0.75, -1.0, -0.5, 0.0, -0.5, -0.75, -1.0, -0.5, 0.25, 0.75, 0.25, 0.25, -1.0, -0.25, 0.75, -0.75, -0.5, 0.25, 0.0, -1.0, 0.5, 0.25, 0.25, -1.0, 0.5, 0.25, 0.75, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, 0.5, -1.0, 0.5, -0.5, -0.25, 0.0, 0.75, 0.75, -0.75, 0.5, 1.0, 0.5, -0.5, 0.5, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, -1.0, 0.75, -1.0, -0.75, 0.5, 0.5, 0.5, -0.25, -1.0, -1.0, 0.5, -1.0, -1.0, 0.5, 0.5, 0.75, 1.0, -0.75, -1.0, -1.0, -1.0, -0.5, -0.25, -1.0, 0.5, 1.0, 0.25, 0.25, 0.0, 0.25, 0.0, -0.25, -0.5, 0.75, ]);
    query301.destroy()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    render_bundle_encoder101.draw(3);
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    
    
    texture102.destroy();
    device10.queue.writeBuffer(buffer106, 0, array5, 0, array5.length);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder101.draw(3);
    
    device50.destroy();
    buffer106.destroy()
    const array15 = new Float32Array([-0.75, 0.25, -1.0, 0.5, -0.75, 0.25, 0.75, 1.0, -0.25, 0.0, -0.75, -0.25, 0.0, -0.75, -0.5, 0.25, 0.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, -0.25, 1.0, -1.0, 0.25, -0.75, -0.25, -1.0, -1.0, -1.0, 1.0, -0.25, 0.25, 0.75, 1.0, -0.5, 0.5, -0.5, 1.0, -0.75, 0.5, 0.5, 0.75, 0.5, 1.0, -0.25, 0.0, 0.75, 0.25, 0.25, 1.0, 0.5, 0.25, 1.0, -0.75, -0.25, 0.25, 0.75, 1.0, -0.5, -0.25, 0.75, 0.25, 0.5, 0.0, -0.5, 0.0, -0.5, 0.75, -0.5, 0.5, 0.5, 0.75, -1.0, -0.5, -1.0, -0.5, 0.75, 0.75, 0.25, 0.25, -0.75, 1.0, -0.25, 0.5, 0.25, -0.25, 0.75, 0.0, -1.0, -1.0, 0.0, 0.0, 0.0, -1.0, -1.0, -1.0, -0.5, ]);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query106,
        0,
        32,
        buffer108,
        0
    )
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer105.destroy()
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    compute_pass_encoder1001.popDebugGroup()
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    buffer101.destroy()
    device80.pushErrorScope("out-of-memory");
    const command_buffer501 = command_encoder501.finish();
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    device30.queue.writeBuffer(buffer303, 0, array13, 0, array13.length);
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture103 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    render_pass_encoder3001.pushDebugGroup("group_marker");
    texture103.destroy();
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_pass_encoder3000.setStencilReference(1);
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    buffer302.destroy()
    buffer107.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query103.destroy()
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    device10.queue.writeBuffer(buffer108, 0, array14, 0, array14.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    render_bundle_encoder101.drawIndirect(buffer1011, 0);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query600.destroy()
    render_bundle_encoder100.setIndexBuffer(buffer106, "uint16");
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device30.queue.writeBuffer(buffer303, 0, array11, 0, array11.length);
    compute_pass_encoder1001.popDebugGroup()
    device30.queue.writeBuffer(buffer303, 0, array11, 0, array11.length);
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    query102.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    query106.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    render_bundle_encoder100.drawIndexedIndirect(buffer106, 0);
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer304, 0, array10, 0, array10.length);
    render_bundle_encoder101.popDebugGroup();
    device30.queue.writeBuffer(buffer305, 0, array12, 0, array12.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const array16 = new Float32Array([0.0, -0.75, -0.5, 0.0, -0.25, -0.75, -0.5, 0.5, -0.75, -1.0, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, -0.75, -0.75, -1.0, -1.0, 0.0, -0.25, -0.5, 1.0, 0.5, -1.0, -0.5, 0.0, 0.75, 0.5, 0.75, -0.5, 0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.5, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, 0.5, -1.0, -0.25, 0.0, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, -0.5, -0.75, 1.0, 1.0, 0.5, -1.0, 1.0, -0.25, 1.0, -0.25, 0.75, 0.5, -1.0, 0.5, 0.5, 0.25, -0.75, 0.25, -0.5, -0.75, -0.5, 0.5, 1.0, -0.25, -1.0, -0.25, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, 0.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.5, 1.0, ]);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer305.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer305.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer305.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder100.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device60.pushErrorScope("out-of-memory");
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer303, 0, array14, 0, array14.length);
    query100.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer600, 0, array15, 0, array15.length);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3001.popDebugGroup();
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3001.setBindGroup(0, bind_group301);
    render_pass_encoder3001.setVertexBuffer(0, buffer300);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1001.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.setVertexBuffer(0, buffer303);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder3000.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1001.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder3000.end();
    render_pass_encoder3001.popDebugGroup();
    const command_buffer800 = command_encoder800.finish();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const command_buffer502 = command_encoder502.finish();
    command_encoder300.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3001.draw(3);
    const command_buffer300 = command_encoder300.finish();
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.draw(3);
    compute_pass_encoder1001.end();
}