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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    buffer001.destroy()
    device00.queue.submit([]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device00.destroy();
    
    
    const array0 = new Float32Array([-1.0, -1.0, 0.75, 1.0, -0.75, 0.25, 0.5, -0.75, 1.0, 1.0, -0.75, 0.5, 0.75, 0.0, -0.5, -0.5, 0.5, 0.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.5, 1.0, -0.5, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, -0.75, -0.75, 0.0, 0.5, 1.0, -1.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.5, 0.75, -0.5, -1.0, 0.75, -0.25, 1.0, -0.25, 0.5, -1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -1.0, 0.75, -0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.5, -0.75, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.25, -0.5, 0.25, 1.0, 0.75, 0.25, 0.25, -0.25, 0.75, 0.0, ]);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const array1 = new Float32Array([0.0, 0.25, 0.25, -0.25, 0.25, 0.5, 1.0, 0.25, -0.75, -0.75, -0.5, -0.75, 0.0, -1.0, -0.25, 0.75, 0.5, 0.0, -0.25, 1.0, 0.5, 0.75, -0.25, 1.0, -0.5, 0.75, -0.25, 0.25, 0.25, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, -1.0, -1.0, 0.0, 0.5, 1.0, 0.75, -1.0, -1.0, 0.25, -0.25, 0.25, -0.25, 0.0, -0.5, 0.0, 0.25, 0.0, -0.75, 1.0, -0.75, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, 1.0, 0.5, -1.0, -0.75, -0.25, 1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 0.25, 1.0, -0.25, -0.75, 0.75, -0.75, -0.75, 0.25, -0.5, 0.25, 0.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.0, -1.0, 0.25, -0.25, 1.0, -0.25, -0.75, 0.75, -0.25, 0.5, 0.75, 1.0, ]);
    const array2 = new Float32Array([-0.75, -0.5, -0.25, 0.5, -1.0, 0.75, 1.0, 0.25, 0.75, 0.25, -1.0, -0.5, -0.75, -0.25, -1.0, -1.0, -1.0, -0.75, 0.25, 1.0, 0.25, -0.5, 0.5, 0.0, 0.5, -0.25, 0.75, 0.25, -0.5, 0.5, -1.0, -0.25, -0.5, 0.0, 0.5, 0.0, -0.5, -0.5, 1.0, 0.5, 0.75, 1.0, -0.25, 0.5, 1.0, 0.5, -0.5, -1.0, 0.75, 0.0, 0.25, -0.25, 0.25, -0.5, 1.0, 0.5, -0.5, 0.0, -1.0, 0.5, -1.0, -0.75, 1.0, 0.75, 1.0, -0.75, 0.75, 0.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, -0.75, -0.5, 0.75, -0.25, 0.75, -1.0, 0.75, 1.0, -1.0, 0.25, -0.75, 0.25, 1.0, -0.25, -0.5, -0.5, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 1.0, -0.25, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.popDebugGroup()
    const array3 = new Float32Array([0.75, 0.25, 0.0, -0.25, 0.0, 1.0, 0.75, -0.75, -0.5, -0.75, -1.0, -0.25, 0.0, 0.75, 0.5, -0.75, 0.5, -0.5, 1.0, -1.0, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, 0.5, -0.75, 0.0, 1.0, -0.25, 0.25, 0.5, -1.0, 1.0, 0.75, 0.5, -0.25, 0.5, 1.0, -0.25, -0.5, -0.75, 0.75, 0.5, -0.75, 0.75, 0.25, 1.0, -0.75, 0.25, -1.0, -0.5, 0.25, -0.75, 0.25, -1.0, 0.5, 0.5, -0.25, 0.25, 0.25, -0.5, -0.25, -1.0, -0.75, -0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 0.25, 1.0, 0.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.25, -1.0, -0.5, -0.75, 0.0, 1.0, 1.0, -0.5, -1.0, 1.0, 0.25, -0.25, 1.0, 0.75, 0.5, 0.0, -0.5, 0.25, -1.0, ]);
    device10.pushErrorScope("out-of-memory");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer100 = command_encoder100.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-1.0, 1.0, 0.0, 0.25, 1.0, 0.75, 1.0, -1.0, 0.5, -0.75, 0.75, 0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, -1.0, -0.75, 0.5, 1.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.75, 0.25, -0.5, 0.5, 0.5, -0.5, 0.25, -0.75, 1.0, -0.25, 0.0, 0.5, 0.75, 0.0, -0.75, 0.5, -1.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.75, 0.0, -0.25, 0.75, -0.5, 1.0, -0.25, 0.5, -0.5, 1.0, 1.0, -0.75, 0.5, 0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 1.0, 0.25, 0.75, 0.0, 1.0, -0.25, -0.25, 0.0, 0.75, 0.25, -0.25, 0.25, 0.75, 0.5, -0.25, -1.0, -1.0, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 1.0, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.destroy();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
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
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query301.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    texture101.destroy();
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    command_encoder301.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query300.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer100, ]);
    device30.pushErrorScope("out-of-memory");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query300.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device10.pushErrorScope("validation");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer101.destroy()
    
    
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
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer400 = command_encoder400.finish();
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    
    query301.destroy()
    texture102.destroy();
    device00.pushErrorScope("validation");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
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
    buffer103.destroy()
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer103, ]);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    
    buffer501.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    const array5 = new Float32Array([0.5, 0.5, -0.5, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -0.5, -0.75, -0.25, 1.0, 0.75, 0.75, -0.5, -1.0, -1.0, 0.5, 0.0, -1.0, -0.75, 0.75, 1.0, 0.5, -0.75, -0.25, 0.25, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 0.75, 0.5, 0.75, 0.25, -0.5, 0.25, 0.25, -0.5, 0.5, 0.25, -0.25, -0.75, 0.0, 0.25, -0.25, 0.5, 1.0, -1.0, -0.75, 1.0, -0.25, -0.75, -1.0, 0.75, 1.0, -0.5, 1.0, 0.75, -0.75, 1.0, -0.75, 0.25, 0.25, -0.75, -0.25, -0.75, 0.75, -0.75, 1.0, -1.0, 1.0, -0.25, -0.25, 0.25, -0.5, 0.75, 1.0, 0.75, 0.25, 0.75, 0.0, -0.25, 0.25, -1.0, -0.5, -0.25, -0.75, -0.25, -0.5, -0.5, -0.75, -0.5, ]);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture500.destroy();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    const command_buffer500 = command_encoder500.finish();
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer106, 0);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    buffer106.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer102.destroy()
    query301.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer502.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer105.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_buffer501 = command_encoder501.finish();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.executeBundles([])
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    texture500.destroy();
    buffer502.destroy()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_pass_encoder3010.pushDebugGroup("group_marker");
    query501.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
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
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    compute_pass_encoder1010.popDebugGroup()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3031.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    texture300.destroy();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("validation");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder3011.executeBundles([])
    
    
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pass_encoder3032 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3003,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder1020.popDebugGroup()
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    buffer105.destroy()
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device40.queue.submit([command_buffer400, ]);
    buffer301.destroy()
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_pass_encoder3020.setStencilReference(1);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    query400.destroy()
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    render_pass_encoder3031.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const command_buffer502 = command_encoder502.finish();
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder101.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer306, 0);
    render_pass_encoder3032.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    render_pass_encoder3030.setStencilReference(1);
    
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3021.setPipeline(render_pipeline300);
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
    render_pass_encoder3021.setStencilReference(1);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.draw(3);
    render_pass_encoder1020.insertDebugMarker("marker");
    const array6 = new Float32Array([0.0, 0.0, -1.0, 0.25, -0.25, 1.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.25, 0.25, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, 0.25, 0.5, 0.75, 0.25, 1.0, -0.25, 0.0, 0.75, -0.5, 0.75, -1.0, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.75, 0.5, 0.75, -1.0, -0.25, -0.5, 1.0, 0.0, 0.0, 0.25, -1.0, -0.5, -1.0, 0.5, -1.0, 0.5, 0.75, 0.75, -0.25, -0.75, 1.0, 0.5, 1.0, 0.25, 1.0, 1.0, 0.75, 0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 0.5, 1.0, 0.25, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, -1.0, -0.75, 0.0, 0.25, 0.75, 0.25, 1.0, 0.0, 0.25, 0.75, -0.25, -1.0, 0.25, -0.25, 0.0, 0.0, 0.75, 0.0, ]);
    
    texture301.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    query101.destroy()
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3032.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3032.pushDebugGroup("group_marker");
    
    render_pass_encoder3041.pushDebugGroup("group_marker");
    buffer105.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder302.insertDebugMarker("mymarker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query400.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3032.popDebugGroup();
    render_pass_encoder3031.executeBundles([])
    
    render_pass_encoder3032.setStencilReference(1);
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3031.setPipeline(render_pipeline300);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    query401.destroy()
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    texture302.destroy();
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3032.executeBundles([])
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    command_encoder101.clearBuffer(buffer105);
    render_pass_encoder3041.setStencilReference(1);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder402.popDebugGroup();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer500.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_pass_encoder3032.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3041.executeBundles([])
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    command_encoder304.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    buffer401.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3032.pushDebugGroup("group_marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder401.popDebugGroup();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    query501.destroy()
    query501.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    
    render_pass_encoder3030.setPipeline(render_pipeline302);
    render_pass_encoder3011.setPipeline(render_pipeline302);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group303);
    render_pass_encoder3010.setPipeline(render_pipeline302);
    compute_pass_encoder1020.popDebugGroup()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group304);
    render_pass_encoder3040.setPipeline(render_pipeline301);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3041.setPipeline(render_pipeline300);
    render_pass_encoder3032.setPipeline(render_pipeline301);
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder3032.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group305);
    render_pass_encoder3031.setVertexBuffer(0, buffer305);
    render_pass_encoder1020.setPipeline(render_pipeline101);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3031.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3031.draw(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1021.setPipeline(render_pipeline100);
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

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder3021.setVertexBuffer(0, buffer300);
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    render_pass_encoder3031.drawIndirect(buffer306, 0);
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group306);
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group307);
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

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    compute_pass_encoder1010.end();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer309, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1014, 0);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3032.setBindGroup(0, bind_group308);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    render_pass_encoder3021.end();
    render_pass_encoder3011.setVertexBuffer(0, buffer3011);
    render_pass_encoder3010.setVertexBuffer(0, buffer3015);
    render_pass_encoder3021.drawIndirect(buffer303, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3032.setVertexBuffer(0, buffer3010);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3032.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3040.setVertexBuffer(0, buffer305);
    render_pass_encoder3040.drawIndirect(buffer306, 0);
    render_pass_encoder3011.drawIndirect(buffer302, 0);
    render_pass_encoder3032.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3032.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3010.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3011.end();
    render_pass_encoder3032.drawIndirect(buffer306, 0);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    render_pass_encoder3032.end();
    render_pass_encoder3031.end();
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group309);
    compute_pass_encoder3010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3020.setVertexBuffer(0, buffer3014);
    render_pass_encoder3020.draw(3);
    device30.queue.submit([]);
    render_pass_encoder3010.end();
    compute_pass_encoder1020.end();
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer300, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1017, 0);
    command_encoder301.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3031.draw(3);
    const command_buffer101 = command_encoder101.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.setVertexBuffer(0, buffer3015);
    render_pass_encoder3032.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer3020, "uint16");
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    render_pass_encoder3030.drawIndexedIndirect(buffer3017, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1012);
    device70.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder3030.end();
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
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3041.setBindGroup(0, bind_group3010);
    render_pass_encoder3040.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1020.setVertexBuffer(0, buffer1011);
    render_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder3032.drawIndexed(3);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3041.setVertexBuffer(0, buffer3019);
    render_pass_encoder3020.end();
    render_pass_encoder3041.drawIndirect(buffer306, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder3031.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3023, 0);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder3041.end();
    device10.queue.submit([command_buffer101, ]);
    command_encoder302.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3021.drawIndirect(buffer3023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder3041.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1020, 0);
    render_pass_encoder3032.draw(3);
    render_pass_encoder3020.draw(3);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3010.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3041.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer304, ]);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
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
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer302, ]);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3011);
    render_pass_encoder3041.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3031.endOcclusionQuery()
    render_pass_encoder3032.end();
    render_pass_encoder3041.drawIndexedIndirect(buffer305, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder3031.drawIndexedIndirect(buffer3023, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3031.draw(3);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3011, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder3010.end();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer103, ]);
    device70.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3031.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3041.drawIndirect(buffer3012, 0);
    render_pass_encoder3041.drawIndirect(buffer306, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder3010.drawIndirect(buffer3026, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3020.setIndexBuffer(buffer3022, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    render_pass_encoder3011.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3010.drawIndirect(buffer3024, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3021.draw(3);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3012);
    render_pass_encoder3040.setIndexBuffer(buffer3016, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder3021.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3021.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3041.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3032.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder3031.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3023, 0);
    device30.queue.submit([command_buffer302, command_buffer304, ]);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3021.popDebugGroup();
    device10.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1021.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder3011.draw(3);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder3041.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3040.draw(3);
    render_pass_encoder3021.drawIndirect(buffer3012, 0);
    render_pass_encoder3041.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer3023, 0);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3032.drawIndirect(buffer307, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder3040.drawIndexedIndirect(buffer3011, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3020.end();
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3011.drawIndirect(buffer3026, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group108);
    compute_pass_encoder1010.end();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder3041.drawIndirect(buffer3011, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3031.drawIndirect(buffer3011, 0);
    render_pass_encoder3041.drawIndirect(buffer3023, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3011.drawIndirect(buffer3018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3032.drawIndirect(buffer3011, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3025, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3029, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3032.drawIndirect(buffer3029, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3021.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3032.drawIndirect(buffer3021, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3010.drawIndirect(buffer3026, 0);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3011.drawIndirect(buffer3026, 0);
    render_pass_encoder3031.drawIndirect(buffer3027, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3041.drawIndexedIndirect(buffer3023, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3016, 0);
    device70.queue.submit([]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3011.drawIndirect(buffer306, 0);
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3040.popDebugGroup();
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3020.end();
    render_pass_encoder3011.drawIndirect(buffer309, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3032.drawIndexed(3);
    render_pass_encoder3032.drawIndirect(buffer3026, 0);
    render_pass_encoder3010.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3040.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3032.drawIndirect(buffer3026, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3029, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder3010.drawIndexedIndirect(buffer3023, 0);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder3032.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3031.drawIndirect(buffer3029, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3010.drawIndirect(buffer3023, 0);
    render_pass_encoder3011.drawIndirect(buffer3023, 0);
    render_pass_encoder3031.drawIndirect(buffer308, 0);
    device50.queue.submit([]);
    render_pass_encoder3041.drawIndexedIndirect(buffer3029, 0);
    device50.queue.submit([]);
    compute_pass_encoder1020.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3041.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3012, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer306, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
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
    render_pass_encoder3021.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    device50.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder3010.drawIndirect(buffer3011, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3032.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer3029, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3021, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer3026, 0);
    device40.queue.submit([]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder1020.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    compute_pass_encoder3010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3020.drawIndirect(buffer3026, 0);
    render_pass_encoder3032.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer302, 0);
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    render_pass_encoder3011.drawIndexed(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    device30.queue.submit([command_buffer304, ]);
    device70.queue.submit([]);
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3013);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
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
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder3041.end();
    render_pass_encoder3032.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndexed(3);
}