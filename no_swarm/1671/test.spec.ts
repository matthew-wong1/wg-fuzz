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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.75, -0.75, 1.0, 1.0, 0.0, 0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.5, -0.25, 0.25, 0.25, 0.75, 0.0, 1.0, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.5, 0.25, -0.5, -0.5, -0.25, 0.5, 0.25, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, 0.75, -1.0, -1.0, -0.5, -1.0, -1.0, 0.0, 0.5, 0.0, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, 1.0, 0.75, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.5, 0.75, -0.75, 0.0, 0.25, 0.5, 0.75, 1.0, 0.0, -1.0, -0.75, 0.25, -0.25, 0.75, -0.75, 0.0, -0.25, -0.75, -1.0, -1.0, 1.0, -0.25, 0.75, -0.75, -0.5, 0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([0.5, 0.5, 0.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.25, -0.5, -0.75, -1.0, 0.25, 0.75, -1.0, 0.5, 0.75, -0.5, 0.5, 0.5, -0.5, 0.5, 0.5, -1.0, -0.5, -0.75, 0.25, -1.0, 0.5, 0.5, -0.75, -0.25, 1.0, 1.0, 0.0, 0.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.0, 0.0, 0.75, -0.75, -1.0, -1.0, 0.0, 0.5, -1.0, 1.0, -1.0, -0.5, -0.5, 0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, 0.25, -0.25, -0.25, -1.0, -0.25, -0.25, -1.0, 0.25, -0.5, 0.0, -0.5, -0.5, 0.25, -0.25, -0.5, -1.0, 1.0, 0.5, -0.5, 0.25, -0.75, 0.25, 0.0, 0.5, 0.0, -0.75, -0.75, 1.0, -0.5, 0.25, 1.0, 0.75, 0.25, -0.5, 0.25, -1.0, -1.0, ]);
    const array2 = new Float32Array([0.75, 0.75, -0.5, 0.25, 0.75, -0.25, 0.5, -0.5, -0.75, 1.0, 0.0, 0.75, -0.75, -0.25, 0.75, -1.0, 1.0, -0.25, -1.0, -0.25, -0.5, 1.0, 0.75, -0.5, 0.75, -0.25, 0.25, 1.0, 0.0, 0.0, 0.75, 1.0, -0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 0.0, -0.25, 0.5, -0.75, -1.0, -0.25, -0.5, 0.25, 0.75, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, 0.25, 0.0, 1.0, 0.75, -1.0, -0.75, 1.0, 0.75, 0.5, 0.5, -1.0, 0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 1.0, 0.5, -0.25, -0.5, 1.0, 1.0, -0.5, -0.5, 0.0, 1.0, -0.75, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, 0.5, 1.0, -0.75, 0.0, -0.25, 1.0, -0.75, -0.75, -1.0, 0.75, 0.25, ]);
    
    
    
    
    const array3 = new Float32Array([-0.25, 1.0, -0.5, -0.5, 0.5, -0.75, -0.5, 0.75, 0.5, -0.5, 0.75, -1.0, 0.25, -1.0, 0.5, 0.0, -0.25, -1.0, 0.25, 0.25, 1.0, 0.75, 0.0, -1.0, -1.0, -0.75, -0.25, 1.0, 0.0, -1.0, 0.5, 0.75, -0.5, -0.75, 0.0, -0.25, 0.5, 0.0, 0.0, -0.5, 0.5, -1.0, -0.5, 1.0, 1.0, -0.5, 0.0, -0.25, -0.5, -0.5, 0.25, 0.5, 0.25, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.5, -1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.0, -1.0, 0.0, -0.5, -1.0, -1.0, 1.0, 1.0, 0.5, 0.75, -0.5, 1.0, 0.75, -1.0, -1.0, 0.5, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array4 = new Float32Array([0.75, -1.0, 0.5, 0.75, -0.75, -1.0, 0.0, 0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.25, -0.75, -0.25, 0.75, 0.75, -0.25, 0.75, -0.75, -0.75, 0.25, 0.5, -0.5, -0.75, 0.25, -0.25, 1.0, 0.0, -0.5, 1.0, 1.0, -0.75, -1.0, 1.0, -0.75, 0.0, -1.0, -0.75, -0.5, 1.0, -0.5, 0.25, -0.25, -0.75, 1.0, -0.5, -0.75, 0.75, -0.25, 0.5, -0.25, 0.5, 0.0, 0.5, -0.5, -0.25, 0.5, 0.5, 0.5, -0.75, 1.0, -0.75, 0.75, -0.25, -0.5, -0.25, -0.5, 0.25, -0.75, 0.25, 0.0, 0.5, -1.0, 0.5, 1.0, 0.75, 0.75, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, -0.5, 0.5, -0.5, 0.0, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, 0.75, -0.5, -1.0, -0.5, -0.25, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.pushErrorScope("internal");
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    const array5 = new Float32Array([-0.75, -1.0, -0.5, -1.0, -1.0, 0.5, -0.75, 0.75, 0.5, 0.0, 0.5, -1.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.25, 0.25, 0.25, -1.0, -0.75, -1.0, -0.5, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 1.0, -0.5, -0.75, -0.5, -0.25, 0.75, 0.0, 0.25, 0.0, 0.0, -0.25, 1.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 0.25, -1.0, 0.0, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 0.75, -0.25, -0.25, 0.5, -0.5, 0.25, 0.0, 0.75, -0.75, -1.0, 0.25, -0.75, 0.0, 0.5, -0.25, -0.75, -0.5, 0.75, -0.5, 0.5, 0.75, 0.5, -0.75, 0.75, 0.75, 0.75, 0.0, -0.25, -0.5, 0.75, -0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -0.25, -1.0, 0.75, ]);
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    
    
    
    
    const array6 = new Float32Array([-0.5, -0.75, 0.75, 0.5, 0.75, 0.25, 1.0, 0.75, -0.25, 0.5, -0.25, -0.25, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, -0.5, -0.25, 0.25, -1.0, -0.25, 0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.25, 0.0, 0.0, 1.0, 0.0, -1.0, 0.5, 1.0, 0.0, -0.5, 0.0, -1.0, -0.5, 0.75, 0.5, -0.5, 0.25, -0.25, -1.0, 0.5, -0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 0.5, 0.0, -1.0, 1.0, 0.0, 0.5, 0.25, 1.0, -0.75, -1.0, 0.25, -0.75, 0.75, 0.75, -0.25, -0.25, -0.25, 0.75, -1.0, -0.25, 0.5, -0.5, -0.25, 0.25, -0.75, -0.5, 0.75, -0.75, 0.75, 0.75, -1.0, ]);
    const array7 = new Float32Array([-1.0, -0.25, 0.5, 0.5, 0.75, 0.0, 0.25, 0.75, -0.75, -0.25, -0.75, 0.25, -0.5, -0.5, -0.25, 0.0, 0.5, -1.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.5, -1.0, 0.25, -0.75, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 0.25, 0.75, 1.0, -0.75, -0.25, -0.25, -0.75, -0.5, -0.25, -0.75, 0.0, 0.25, -1.0, 1.0, -1.0, 1.0, 0.25, 0.75, -1.0, -0.75, 0.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.25, -0.75, 1.0, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, 0.0, 0.0, 0.25, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, -0.5, -1.0, -0.25, -1.0, 0.0, -0.5, 0.0, 1.0, -0.25, 0.75, 0.75, 1.0, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array8 = new Float32Array([-0.25, -0.75, 0.25, 0.0, 0.75, -0.5, 1.0, 1.0, 0.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.5, -1.0, 0.25, 0.75, 0.25, -0.25, 0.0, 1.0, -0.5, 0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.75, 0.0, -0.5, -0.25, 0.75, -0.75, -0.75, 1.0, -1.0, -0.75, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, 0.5, 0.25, 0.25, 1.0, 0.5, 0.0, -0.25, 0.5, -0.25, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, -1.0, -0.75, -0.25, -0.25, 0.5, -1.0, 1.0, -1.0, 1.0, 1.0, 0.0, 0.0, -0.25, -0.5, 0.5, -0.75, 0.5, -1.0, 0.75, 0.5, 0.0, 0.0, -1.0, -0.25, 0.0, -0.5, -0.5, -0.5, 0.5, 0.75, 0.0, 0.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.0, -0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device60.pushErrorScope("out-of-memory");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder6010.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder6010.executeBundles([])
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    buffer600.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    render_pass_encoder6000.executeBundles([])
    
    
    
    
    render_pass_encoder6000.pushDebugGroup("group_marker");
    
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder6000.executeBundles([])
    
    command_encoder602.copyTextureToBuffer(
        {
            texture: texture600
        },
        {
            buffer: buffer601
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder602.copyTextureToBuffer(
        {
            texture: texture600
        },
        {
            buffer: buffer602
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    texture600.destroy();
    
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
    
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device50.pushErrorScope("out-of-memory");
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder6000.popDebugGroup();
    buffer603.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder300.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer602.destroy()
    compute_pass_encoder6020.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6000.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeBuffer(buffer604, 0, array6, 0, array6.length);
    device90.destroy();
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    render_pass_encoder6000.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder6000.executeBundles([])
    
    command_encoder600.copyTextureToBuffer(
        {
            texture: texture600
        },
        {
            buffer: buffer604
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder6010.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder6010.executeBundles([])
    compute_pass_encoder6020.setPipeline(compute_pipeline600);
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer604, 0, array6, 0, array6.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer300 = command_encoder300.finish();
    
    command_encoder602.clearBuffer(buffer604);
    
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    texture501.destroy();
    
    device70.destroy();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    device30.pushErrorScope("internal");
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer604.destroy()
    
    
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    
    render_pass_encoder6010.setStencilReference(1);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module605,
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
    
    
    
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    
    device30.queue.submit([command_buffer300, ]);
    const command_buffer301 = command_encoder301.finish();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    
    
    
    query502.destroy()
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    query501.destroy()
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6000.setPipeline(render_pipeline600);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    buffer301.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6010.setStencilReference(1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder6010.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    
    buffer300.destroy()
    buffer601.destroy()
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
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_bundle_encoder700.popDebugGroup();
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setPipeline(render_pipeline600);
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.insertDebugMarker("marker");
    
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query300.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder6000.setStencilReference(1);
    
    
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    device60.pushErrorScope("internal");
    buffer505.destroy()
    device30.queue.submit([command_buffer302, ]);
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query502.destroy()
    
    
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder6000.pushDebugGroup("group_marker");
    buffer501.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer604, 0, array3, 0, array3.length);
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer504,
        0
    )
    
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder400.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    query600.destroy()
    
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
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
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
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

    render_pass_encoder6010.setBindGroup(0, bind_group600);
    query501.destroy()
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    
    query500.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    compute_pass_encoder6020.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer606, 0, array2, 0, array2.length);
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
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
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder6001.pushDebugGroup("group_marker");
    render_pass_encoder6001.setPipeline(render_pipeline601);
    render_pass_encoder6001.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    render_pass_encoder6030.setPipeline(render_pipeline601);
    
    query501.destroy()
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer505.destroy()
    command_encoder602.copyTextureToBuffer(
        {
            texture: texture601
        },
        {
            buffer: buffer600
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout603,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_pass_encoder6001.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setStencilReference(1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6001.insertDebugMarker("marker");
    
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout604,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    render_pass_encoder6001.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    command_encoder600.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder6000.insertDebugMarker("marker");
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
        occlusionQuerySet: query300
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group601);
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout602,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout604,
        compute: {
            module: shader_module608,
            entryPoint: "main"
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout606,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6000.setVertexBuffer(0, buffer601);
    render_pass_encoder3030.setPipeline(render_pipeline300);
    render_pass_encoder6000.setIndexBuffer(buffer602, "uint16");
    command_encoder001.popDebugGroup()
    render_pass_encoder6000.setIndexBuffer(buffer602, "uint16");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6000.setIndexBuffer(buffer602, "uint16");
    render_pass_encoder6000.setIndexBuffer(buffer600, "uint16");
    const command_buffer303 = command_encoder303.finish();
    const command_buffer400 = command_encoder400.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6000.drawIndexed(3);
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

    render_pass_encoder3030.setBindGroup(0, bind_group301);
    render_pass_encoder3030.setVertexBuffer(0, buffer301);
    render_pass_encoder3030.draw(3);
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
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6001.setBindGroup(0, bind_group602);
    device50.queue.submit([]);
    compute_pass_encoder5000.end();
    const command_buffer604 = command_encoder604.finish();
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6010.setVertexBuffer(0, buffer6010);
    render_pass_encoder6030.endOcclusionQuery()
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6010.drawIndirect(buffer606, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder6001.setVertexBuffer(0, buffer600);
    render_pass_encoder6001.drawIndirect(buffer603, 0);
    render_pass_encoder3030.end();
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
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6020.setBindGroup(0, bind_group603);
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
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6030.setBindGroup(0, bind_group604);
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder6030.setVertexBuffer(0, buffer600);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder6030.setIndexBuffer(buffer600, "uint16");
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder6001.end();
    render_pass_encoder3030.draw(3);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder6030.end();
    render_pass_encoder6010.draw(3);
    render_pass_encoder6010.drawIndirect(buffer604, 0);
    const command_buffer603 = command_encoder603.finish();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder6000.end();
    render_pass_encoder6001.draw(3);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder6020.end();
    render_pass_encoder6000.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6030.end();
    render_pass_encoder6000.draw(3);
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder6010.end();
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer602, command_buffer603, command_buffer604, ]);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder6030.setIndexBuffer(buffer6013, "uint16");
    render_pass_encoder6010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.setIndexBuffer(buffer300, "uint16");
    device60.queue.submit([command_buffer600, ]);
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
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6020.setBindGroup(0, bind_group605);
    device30.queue.submit([command_buffer303, ]);
    device60.queue.submit([command_buffer601, ]);
    const command_buffer001 = command_encoder001.finish();
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group606);
    render_pass_encoder6010.end();
    device50.queue.submit([]);
    render_pass_encoder6010.setIndexBuffer(buffer602, "uint16");
    render_pass_encoder6001.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder3030.end();
    device130.queue.submit([]);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6001.drawIndirect(buffer600, 0);
    render_pass_encoder6000.setIndexBuffer(buffer602, "uint16");
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer506, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer506, 0);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5000.end();
    render_pass_encoder6000.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder6030.end();
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    device130.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder6001.setIndexBuffer(buffer603, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder6030.end();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder6000.drawIndirect(buffer609, 0);
    device60.queue.submit([command_buffer603, ]);
    device130.queue.submit([]);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6001.drawIndexed(3);
    compute_pass_encoder5000.end();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder3030.end();
    render_pass_encoder6030.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    device60.queue.submit([command_buffer602, ]);
    device30.queue.submit([]);
    render_pass_encoder6010.end();
    render_pass_encoder6000.drawIndirect(buffer605, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6000.end();
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer303, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer509, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer509, 0);
    render_pass_encoder6001.end();
    render_pass_encoder6010.draw(3);
    render_pass_encoder6000.drawIndexedIndirect(buffer6017, 0);
    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6020,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group607);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder6030.drawIndirect(buffer6012, 0);
    render_pass_encoder6001.setIndexBuffer(buffer6011, "uint16");
    render_pass_encoder6000.setIndexBuffer(buffer602, "uint16");
    render_pass_encoder6030.end();
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder5000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6001.drawIndexedIndirect(buffer607, 0);
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder6030.setIndexBuffer(buffer602, "uint16");
    render_pass_encoder6001.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder6010.drawIndexed(3);
    render_pass_encoder6010.end();
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder6010.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder6001.end();
    render_pass_encoder3030.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer6020, 0);
    render_pass_encoder6010.popDebugGroup();
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group608);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder6010.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder3030.drawIndirect(buffer302, 0);
    device10.queue.submit([]);
    render_pass_encoder6000.setIndexBuffer(buffer605, "uint16");
    render_pass_encoder3030.drawIndexed(3);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6023, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6023, 0);
    render_pass_encoder6001.drawIndexedIndirect(buffer608, 0);
    render_pass_encoder6010.popDebugGroup();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6000.drawIndirect(buffer6023, 0);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder6001.drawIndexedIndirect(buffer601, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder6000.drawIndexedIndirect(buffer6023, 0);
    render_pass_encoder6010.popDebugGroup();
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6024, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6024, 0);
    render_pass_encoder6001.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6010.drawIndexedIndirect(buffer6024, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6001.draw(3);
    render_pass_encoder6030.end();
    render_pass_encoder6001.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3030.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder6000.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder6030.end();
    device60.queue.submit([command_buffer601, command_buffer604, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6010.drawIndexedIndirect(buffer6023, 0);
    render_pass_encoder6000.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder6001.end();
    render_pass_encoder6000.drawIndexedIndirect(buffer6012, 0);
    device50.queue.submit([command_buffer500, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5010, 0);
    render_pass_encoder6030.end();
    device30.queue.submit([]);
    render_pass_encoder3030.end();
    render_pass_encoder6030.end();
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder6010.drawIndexedIndirect(buffer6011, 0);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device130.queue.submit([]);
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6026,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group609);
    render_pass_encoder6030.draw(3);
    render_pass_encoder3030.drawIndirect(buffer300, 0);
    render_pass_encoder6010.popDebugGroup();
    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6028,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6010);
    render_pass_encoder6030.drawIndexed(3);
    compute_pass_encoder6020.popDebugGroup()
    device30.queue.submit([]);
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder6001.end();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder6001.drawIndirect(buffer6014, 0);
    render_pass_encoder6000.drawIndexedIndirect(buffer6027, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6010.setIndexBuffer(buffer606, "uint16");
    compute_pass_encoder6020.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder6030.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6030.end();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder6030.setIndexBuffer(buffer6014, "uint16");
    render_pass_encoder6010.drawIndexedIndirect(buffer6025, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6001.setIndexBuffer(buffer6026, "uint16");
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5013, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5013, 0);
    render_pass_encoder6001.end();
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder6020.dispatchWorkgroups(100);
}