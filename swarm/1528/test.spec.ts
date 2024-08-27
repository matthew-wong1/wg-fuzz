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
    
    const array0 = new Float32Array([0.0, -0.5, -0.5, -0.75, 0.0, -1.0, -0.75, 0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 0.5, 0.0, -0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 0.0, -0.75, -0.25, 0.0, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, 1.0, 0.0, -1.0, 0.5, 0.5, 0.0, 0.75, -0.25, 0.25, 0.0, -0.25, -0.25, 0.25, 1.0, 1.0, -0.5, -0.5, -0.5, -0.25, 0.75, 0.25, -0.25, -0.25, -1.0, -0.5, 0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, 0.25, -0.5, -0.75, 0.0, 1.0, -0.75, 0.25, 0.75, -0.75, -0.75, -0.5, 1.0, 0.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.0, -1.0, 1.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 0.25, -1.0, 0.0, -1.0, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.queue.submit([]);
    
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
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array1 = new Float32Array([0.0, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, -1.0, -0.25, 0.25, -0.5, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, -1.0, 0.5, 0.0, -1.0, 1.0, 0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, 0.0, 1.0, -0.75, -0.25, -1.0, -0.5, 0.5, 0.25, -1.0, -1.0, 1.0, -1.0, -0.25, -0.75, -0.75, 0.0, 1.0, 0.75, -0.25, -0.75, -0.25, -0.75, -0.5, 1.0, -0.25, 0.0, 0.5, -0.5, -0.5, -0.5, 0.0, 0.5, -0.75, 0.25, -0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 0.25, 0.0, 0.5, 0.25, -1.0, 0.0, 0.0, 0.75, 0.75, -0.5, 0.5, 1.0, 0.5, 0.25, 0.25, 0.75, -0.5, -0.5, 0.75, 0.75, -0.25, 0.0, -1.0, 0.0, -0.5, -1.0, 0.5, -0.25, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array2 = new Float32Array([-1.0, -0.75, 1.0, 0.25, 0.75, -1.0, -1.0, 0.25, -0.25, 0.25, -0.75, -0.5, -0.5, -0.75, 0.75, 0.75, -1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 1.0, 0.75, -0.25, -0.75, 0.5, -1.0, 1.0, 0.75, 0.5, -0.75, 0.0, 0.25, 0.75, 0.5, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, 0.0, 0.0, 1.0, -0.75, -0.25, 0.5, 1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 0.75, 0.5, -0.5, 0.0, 0.25, 0.5, -1.0, -0.25, 1.0, -1.0, -0.75, -0.5, -1.0, 0.25, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, -0.25, -0.5, 0.5, 1.0, -0.25, 0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.5, -0.75, 1.0, -1.0, 0.25, 0.0, -0.5, -0.5, 1.0, 0.0, ]);
    
    const array3 = new Float32Array([-0.75, 0.0, 0.75, 1.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.5, -0.75, 0.0, -0.75, -0.25, -1.0, 0.25, 0.0, -0.5, -0.25, 1.0, 0.75, 1.0, -1.0, 1.0, -0.75, 0.5, -1.0, -0.5, 0.0, 0.0, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 0.5, 1.0, -0.25, -0.75, 1.0, 0.5, -0.75, 0.75, -0.75, -0.5, -1.0, 0.75, 1.0, -0.5, -1.0, -0.5, 0.25, 0.25, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.5, 0.25, 1.0, 0.25, 0.0, 0.5, 0.0, 0.0, 0.75, -0.5, 0.75, -0.25, 0.0, 1.0, 0.5, -0.75, -0.5, ]);
    const array4 = new Float32Array([0.0, -0.25, -1.0, 0.25, 0.25, -1.0, -0.25, 0.0, 0.25, 0.5, 0.0, -0.75, 0.5, 0.5, 1.0, -1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 0.75, 0.5, -0.75, -0.25, -1.0, 0.75, -0.5, -0.25, -0.25, 0.0, -0.75, 1.0, 1.0, -0.5, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 1.0, 0.75, 0.5, 0.75, -1.0, 0.5, 0.25, -0.75, -0.75, 0.75, 0.75, -0.75, 0.25, 0.0, 0.75, 0.25, 0.25, -0.5, 0.75, 0.0, 0.0, 0.0, -1.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, 1.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.0, 0.75, 0.0, -0.25, 1.0, -0.25, 0.25, -1.0, -0.25, -1.0, -0.5, -0.75, 0.75, -1.0, -0.75, 0.75, -0.75, -0.25, 0.5, 0.0, ]);
    
    
    const array5 = new Float32Array([-0.25, 0.75, 1.0, 0.5, -0.5, 0.75, 0.5, 0.0, -0.75, 0.75, 0.5, -1.0, 0.5, -0.75, -0.75, -1.0, -0.5, -0.75, -1.0, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, 0.0, 1.0, 0.75, 1.0, 0.25, -0.75, 0.75, -0.25, -0.5, -0.75, -0.75, 0.25, 0.75, -1.0, -0.5, 0.5, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, 0.5, 1.0, -0.25, 0.25, 0.0, 1.0, -0.25, 0.75, -0.75, -0.75, 0.0, 1.0, 0.75, -1.0, -0.5, -0.25, 0.5, 0.5, 0.0, -0.75, -1.0, 1.0, -0.25, 0.75, -1.0, -0.25, 0.5, 0.75, 1.0, 0.75, 0.5, -0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.0, 0.0, -1.0, 0.0, -1.0, -1.0, 1.0, -0.75, 0.0, -1.0, 0.5, 1.0, 0.75, -1.0, -0.5, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.destroy();
    const array6 = new Float32Array([0.5, 1.0, 0.5, -0.25, 0.0, 0.25, 0.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, 0.5, -0.75, 0.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.25, 0.0, 0.0, -0.25, -0.5, 1.0, -1.0, 0.25, 1.0, -0.25, 1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.5, 0.75, -0.5, 0.5, 0.75, 0.0, 0.0, -0.5, -0.75, -0.75, -0.5, 0.0, 0.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.75, 0.5, 0.25, 0.75, -0.5, 0.75, 0.0, 0.5, 0.75, -0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, 0.0, -0.25, 0.25, 0.75, -0.25, 1.0, -0.25, 0.0, -1.0, 1.0, -0.25, -0.25, 0.0, -0.25, ]);
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device20.pushErrorScope("out-of-memory");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture300.destroy();
    
    
    buffer300.destroy()
    
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.popDebugGroup();
    device30.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device50.pushErrorScope("internal");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    render_bundle_encoder200.popDebugGroup();
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    device20.queue.submit([]);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.5, -0.75, 1.0, 0.75, 0.25, -0.75, 0.5, 0.25, 0.25, 0.5, -0.5, -0.5, -0.25, 0.0, 0.75, 0.0, 1.0, 0.5, 0.25, -0.25, 0.0, -0.25, -0.5, 0.0, 0.0, -0.25, -0.25, -0.75, 0.5, 0.75, 0.75, -1.0, 0.0, 0.25, -0.5, 0.0, -0.75, 0.25, -1.0, -0.75, -0.75, 1.0, 1.0, -0.5, -0.25, -0.75, 1.0, 0.5, -0.5, -1.0, 0.75, -0.25, -0.75, 1.0, -0.5, -0.25, 0.75, -0.5, 0.0, -0.25, 0.5, 0.25, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 0.75, 0.75, 0.0, -0.75, -0.25, -1.0, -0.25, 0.75, 0.25, 0.75, -0.75, 0.75, -0.75, 0.0, -1.0, -1.0, -0.75, -1.0, -1.0, 1.0, 0.5, 0.5, -0.25, 0.25, -0.75, -0.75, 0.75, -0.25, ]);
    buffer500.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    texture001.destroy();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer400.destroy()
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
    
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    texture500.destroy();
    
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device40.destroy();
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer301.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    texture600.destroy();
    
    
    device20.destroy();
    
    device60.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    device60.pushErrorScope("out-of-memory");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device00.destroy();
    
    
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const array8 = new Float32Array([-1.0, -0.75, -0.25, -1.0, -0.25, 0.0, -0.5, -0.25, 1.0, -0.25, 0.5, 0.75, -0.5, -0.5, 0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 1.0, 0.5, -0.5, -1.0, 0.25, 0.5, -1.0, 0.5, -1.0, -0.75, 0.5, -0.5, 0.75, 0.0, -0.5, 1.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.5, 1.0, -0.75, -0.25, 0.0, -0.25, -0.75, 0.25, 0.25, -0.5, -0.5, 0.0, -0.5, 1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 0.75, 0.0, -0.75, -0.25, -0.5, -0.25, 0.75, 0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.5, 1.0, -0.5, -0.25, 0.25, -0.25, 0.75, 0.75, -0.5, 1.0, -0.75, 1.0, 0.25, ]);
    buffer101.destroy()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.popDebugGroup();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device80.pushErrorScope("out-of-memory");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("out-of-memory");
    
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    device20.destroy();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture602.destroy();
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
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
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer603, 0, array2, 0, array2.length);
    
    buffer602.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    texture800.destroy();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    buffer603.destroy()
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
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

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    device60.destroy();
    
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device90.queue.submit([]);
    device90.destroy();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    texture601.destroy();
    
    
    device80.destroy();
    
    
    
    
    
    const array9 = new Float32Array([1.0, 0.0, 0.75, 1.0, -0.25, 0.25, 0.0, 0.0, -0.75, -0.25, -0.75, -0.5, -0.5, 0.0, -0.25, -0.25, 1.0, 0.25, -1.0, 1.0, -1.0, 0.75, 0.25, 0.0, 0.5, 0.75, -0.25, 0.5, 0.25, -0.75, -0.5, 1.0, 0.25, -0.25, -0.5, -1.0, -1.0, 0.5, -1.0, 0.0, -0.5, 0.5, 0.25, 0.0, -0.75, 0.25, 0.25, 0.0, -0.5, 0.25, 0.25, 1.0, -0.5, -1.0, -0.25, 1.0, -0.5, -0.75, 1.0, -0.5, -0.75, -0.75, 0.5, 0.75, 1.0, -0.25, -0.75, 1.0, 0.25, -0.25, 0.5, 1.0, -1.0, 0.25, 0.75, 0.5, 0.0, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, -0.5, 0.75, -0.25, -0.5, -0.75, 0.25, -0.5, -0.25, 1.0, 1.0, 0.0, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, ]);
    buffer604.destroy()
    
    
    
    
    
    
    render_bundle_encoder601.setVertexBuffer(0, buffer601);
    
    const array10 = new Float32Array([1.0, 0.0, -0.25, -0.25, -1.0, 0.5, 0.75, 0.0, -1.0, 0.25, -0.5, 0.0, 0.75, -0.5, -0.75, 0.5, 0.75, 0.75, -0.75, 1.0, 0.0, 0.75, 0.0, 1.0, 0.75, -1.0, -1.0, -0.25, 0.25, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 1.0, 0.0, -0.75, 0.75, 0.75, 0.25, -1.0, 0.75, 1.0, 1.0, -1.0, -0.5, 0.5, 0.0, -0.75, -1.0, -0.5, 1.0, 0.25, -1.0, -0.25, 0.25, 0.75, -0.5, -0.75, -0.75, 0.75, 1.0, 1.0, 0.5, 1.0, 1.0, 0.75, 0.0, -0.25, 0.0, 0.0, 0.0, -0.5, -0.5, -1.0, 0.75, -0.5, 0.5, 0.5, -1.0, 0.0, 0.75, 1.0, -0.5, -0.75, -0.25, -0.25, 0.75, -0.5, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.5, -1.0, -0.5, 0.25, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array11 = new Float32Array([0.5, -0.75, 1.0, 0.0, 0.5, 0.0, -0.5, -0.75, 0.75, 0.5, 0.75, 0.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.75, 0.75, 0.75, 0.25, 0.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.25, -0.25, -0.75, -1.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.75, -0.25, 0.0, -0.25, -0.75, 0.75, 0.0, 0.0, 0.25, 0.5, 0.5, 0.5, 1.0, 0.5, 0.25, -0.75, 0.25, 0.25, -0.75, 1.0, 1.0, 0.25, -1.0, -1.0, 1.0, -1.0, -0.75, -0.5, 0.5, 0.0, -0.5, 0.0, -0.75, 0.75, 0.0, -0.5, 0.25, -0.75, -1.0, -0.5, -0.75, -0.75, -0.75, -1.0, -1.0, -0.25, -1.0, -0.5, 1.0, 0.75, 1.0, -1.0, -0.5, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array12 = new Float32Array([0.75, -1.0, -0.25, 0.5, 1.0, 0.75, -0.5, 1.0, -1.0, 0.25, 0.75, -0.25, 1.0, -1.0, 0.0, 0.25, -0.5, -0.5, 0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 0.25, -1.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.25, -0.25, -1.0, 0.0, 0.5, 0.0, 0.25, 0.75, -0.25, 1.0, -0.25, 1.0, 0.5, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, -0.25, 0.25, -1.0, 0.0, -0.75, -0.25, 0.25, 0.75, 0.0, 0.75, 0.5, 0.25, -0.25, 0.0, 0.75, -1.0, -0.5, 0.25, -0.75, 0.75, 0.25, -0.5, -0.75, 0.75, -0.75, 0.25, 0.5, -0.25, 0.5, -1.0, 0.75, -0.75, 1.0, -0.75, -0.25, 1.0, -0.75, 0.5, 0.5, 0.0, 1.0, -1.0, 1.0, -0.5, 0.0, 0.0, -1.0, -1.0, -1.0, -0.75, ]);
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    
    buffer401.destroy()
    
    const array13 = new Float32Array([0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 1.0, 1.0, 1.0, 0.75, 0.75, 0.0, 0.25, 1.0, -0.75, 1.0, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -1.0, -0.75, 0.75, 0.0, -1.0, -1.0, 0.75, 0.0, -1.0, 1.0, -0.5, -0.5, -0.25, 1.0, -0.75, -0.75, 1.0, 1.0, 1.0, -0.25, 0.5, -0.5, 0.5, -0.5, -0.5, -0.5, -0.75, 1.0, -1.0, 0.75, 0.5, 0.75, -1.0, -0.25, -1.0, 0.75, 0.5, 0.25, 0.25, -1.0, 0.25, -0.25, 1.0, -0.25, -0.25, -0.5, 0.5, 0.25, -1.0, -0.25, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, -0.25, -0.75, -0.5, 0.5, 1.0, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, 1.0, -0.75, -1.0, -1.0, 1.0, 0.75, ]);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
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
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    
    
    
    
    buffer302.destroy()
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device100.destroy();
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_bundle_encoder200.popDebugGroup();
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
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
    
    
    const array14 = new Float32Array([0.5, 1.0, 0.75, -1.0, -1.0, 0.0, 0.0, 0.0, -1.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.5, -0.5, -0.75, 0.75, 0.5, -0.75, 0.75, 1.0, 1.0, -0.5, 0.25, 0.5, 0.0, -0.25, -0.25, 0.75, 0.5, 0.0, -0.75, -0.25, -1.0, 1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 0.5, 0.0, 0.5, -0.5, -0.5, 0.5, 0.75, 0.5, 0.5, 0.75, 0.25, 0.75, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, -0.5, -0.5, -1.0, -1.0, -1.0, 0.75, -0.75, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.25, -1.0, 1.0, -0.25, -0.5, -0.25, 0.0, 1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 1.0, 0.0, 0.25, ]);
    
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    const array15 = new Float32Array([-1.0, 0.75, -1.0, 1.0, 0.25, -0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 0.5, -0.75, 0.0, -0.25, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, 0.0, -0.25, -0.5, 0.5, 0.5, 0.75, 0.75, -1.0, -0.25, 0.0, -0.75, 0.0, -0.75, 0.75, 1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.75, 0.25, 0.0, -0.75, -0.25, 0.75, 0.75, 0.75, 0.0, -0.25, 0.0, 0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 0.25, 0.5, 0.5, 1.0, -0.5, -1.0, -0.75, 0.0, -0.25, 0.75, -0.25, 0.5, 1.0, 0.0, -0.25, -0.5, -0.5, 1.0, 0.0, 1.0, -0.25, -0.5, 1.0, 0.0, -0.25, -0.5, 0.75, 0.25, 0.25, -0.75, 0.5, 0.25, -0.5, -0.5, -0.25, 0.75, -0.25, 0.0, -0.25, 1.0, 1.0, 0.0, ]);
    
    const array16 = new Float32Array([-1.0, -0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.0, -0.5, 1.0, 1.0, 0.75, 0.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.5, -1.0, 0.75, -0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.75, 0.25, 0.0, -0.5, 0.25, -1.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.0, 0.25, -0.25, -0.75, -0.75, -0.25, 0.25, 1.0, 0.0, -0.25, -1.0, -0.25, -0.75, -0.75, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, 0.5, 0.25, -0.25, 0.5, 0.25, 0.25, 1.0, -0.75, 0.5, -1.0, 0.0, 0.5, 1.0, 0.75, 0.25, -1.0, -1.0, 1.0, 0.25, -1.0, -0.75, -0.25, 0.5, -1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 1.0, 1.0, 0.25, -0.75, 1.0, ]);
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    const array17 = new Float32Array([-0.5, -0.25, -0.25, -0.5, -0.5, 0.0, 0.75, 0.0, -0.5, -0.25, 0.5, 0.0, -1.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.75, 0.75, -0.5, -0.25, -0.5, 1.0, 0.75, 0.5, 0.0, 0.5, 0.25, 0.75, -0.5, 0.75, -0.5, -0.25, 0.75, -0.25, -0.5, -0.5, 0.5, 0.5, 0.5, 0.5, -0.75, 1.0, 0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.0, -1.0, -0.25, 0.0, -0.5, 0.5, -0.25, 0.75, 1.0, 1.0, 0.75, -0.5, 1.0, -0.5, 0.25, -0.75, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, 0.5, 0.25, 0.75, 0.25, -0.5, 0.5, 0.0, -1.0, 1.0, -0.75, 0.75, -0.5, -0.75, 0.75, 1.0, 0.75, -0.75, ]);
    
    
    
    device40.pushErrorScope("out-of-memory");
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    const array18 = new Float32Array([1.0, -0.25, -0.75, -0.5, 0.75, 0.25, -0.75, 0.75, -0.25, 0.0, 0.25, -0.5, 0.25, -1.0, 0.0, -0.5, 0.75, -0.75, -1.0, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, -0.25, 0.5, -1.0, -0.75, -0.25, 0.5, 1.0, 0.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.0, -0.5, -0.5, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 0.0, 0.75, 0.25, 1.0, -0.75, -1.0, 1.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.25, 0.75, 0.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 0.5, -1.0, 0.75, 0.0, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.5, 0.25, -0.5, 1.0, 0.5, 0.0, 0.75, -0.25, ]);
    
    
    
    const array19 = new Float32Array([-0.5, -0.75, 0.75, 0.5, 0.25, 0.75, -0.75, 0.75, -0.75, 0.0, 0.0, 1.0, -0.5, 0.75, 0.0, 0.0, 1.0, -0.5, -1.0, 0.0, 0.0, 0.75, -1.0, -1.0, 1.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, -1.0, 1.0, -0.75, 0.25, 0.25, -0.5, -1.0, -0.25, 0.25, 0.75, -0.5, -1.0, 0.5, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, -1.0, -0.25, 1.0, -0.5, 1.0, 0.0, -1.0, 0.75, 0.25, -1.0, 0.0, 1.0, -0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -0.25, -1.0, 0.25, 0.5, -1.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.75, -1.0, 0.0, 0.5, 1.0, -0.5, -0.5, -0.5, 1.0, 0.5, 0.5, -0.5, 0.0, 0.0, ]);
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const array20 = new Float32Array([-0.25, 0.0, -0.5, -0.5, 0.25, -1.0, 0.0, 0.75, 0.75, 0.0, 0.5, -0.75, 0.25, 1.0, 0.5, 0.75, -0.75, 0.25, 0.75, 1.0, 0.5, 0.75, 0.0, 0.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.25, -0.25, -0.5, 0.5, 0.25, 0.75, 0.0, -0.5, -0.5, 1.0, -1.0, -0.25, -1.0, -1.0, 0.0, 0.75, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, 0.0, -1.0, 0.75, 0.0, -0.5, 0.0, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, -0.75, -0.5, -0.75, -0.5, 0.25, -1.0, 0.25, -0.5, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 0.25, 0.0, 0.75, 1.0, -1.0, 0.0, -1.0, -0.75, -1.0, 0.0, -0.75, -0.25, 0.75, 0.0, ]);
    device80.destroy();
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    
    const array21 = new Float32Array([-1.0, 0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 0.75, -0.25, 1.0, -0.75, -0.5, 0.75, -0.5, -0.75, -0.5, -0.25, 0.25, -0.25, -0.5, 0.5, 0.75, 0.75, -1.0, -0.25, 0.75, -0.25, 0.75, 0.0, -0.5, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 1.0, -0.25, -0.5, 0.75, -0.75, -0.5, -0.75, -0.25, -0.25, -1.0, 0.25, 0.5, 0.75, 0.25, 0.5, 0.75, 0.5, 0.0, -0.5, -0.5, -0.75, 0.5, 1.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, 0.5, -0.5, 0.75, 1.0, -0.25, 0.5, -0.25, 0.75, -0.75, -0.75, -0.25, 0.75, -0.25, 0.0, 0.0, 0.0, -1.0, 0.25, 0.5, 0.0, -0.75, 0.0, 1.0, -0.75, -1.0, 0.5, -0.5, -0.5, -0.75, -0.5, 0.5, 0.5, 0.0, -1.0, ]);
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer001.destroy()
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
    
    
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    device50.pushErrorScope("validation");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    device10.queue.writeBuffer(buffer100, 0, array17, 0, array17.length);
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder1100.insertDebugMarker("marker");
    const array22 = new Float32Array([0.75, 0.0, 1.0, -0.5, 0.25, 0.25, 0.0, 0.0, -0.75, 0.75, 0.25, 1.0, -0.5, 0.25, -1.0, 0.5, -0.75, 1.0, -0.25, 0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, -1.0, -0.5, -0.75, -1.0, -1.0, -0.25, 0.5, -0.25, -0.75, 1.0, 1.0, 0.25, 0.75, -1.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.5, -0.75, -1.0, 1.0, 0.75, -0.25, 0.5, -0.5, 0.75, 0.75, 0.25, -1.0, 1.0, 0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 0.25, 0.75, 1.0, -0.5, 0.25, -0.75, -1.0, 1.0, 1.0, 0.25, 0.0, -0.25, -0.75, 0.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, 0.0, 0.25, -0.25, 0.5, 0.0, -1.0, 1.0, -0.5, ]);
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1201,
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
            module: shader_module1201,
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
    render_bundle_encoder600.popDebugGroup();
    
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
}