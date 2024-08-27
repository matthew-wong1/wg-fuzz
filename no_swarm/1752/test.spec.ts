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
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
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
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    
    
    const array0 = new Float32Array([-0.5, 1.0, -0.5, -0.5, -0.5, 1.0, 0.75, 0.75, 0.5, -0.75, -0.25, -1.0, -1.0, 0.5, -1.0, 0.0, 0.75, -1.0, 0.5, 0.0, -0.25, 1.0, -0.75, -0.75, -0.25, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, -0.5, -1.0, -0.5, -0.5, -0.75, 0.5, 1.0, 0.75, -1.0, 0.75, -0.75, -1.0, -0.5, 0.5, 1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, -0.25, -0.5, -0.25, 0.25, -0.75, -1.0, -0.75, -0.25, -1.0, 0.75, -0.5, 0.5, 1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 1.0, 0.25, 0.5, 1.0, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, -0.75, 1.0, 0.25, -1.0, -0.5, 0.5, -0.25, 0.75, 0.0, -0.25, 1.0, 0.25, 0.75, 0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-1.0, 0.75, 1.0, 0.25, 0.25, 0.25, -0.25, -1.0, 0.5, 0.0, 0.25, -0.5, -0.25, -0.75, -0.5, -0.75, 0.5, 1.0, -0.5, 0.0, 0.75, 0.5, 0.25, -0.5, -1.0, 0.5, 0.0, 0.75, 1.0, -0.75, 0.5, -1.0, -0.5, -0.5, 0.25, -0.25, 0.25, -0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -0.25, -0.25, -0.5, -0.25, -1.0, 0.75, 0.25, -0.5, -0.25, 0.0, 0.0, -0.5, 0.25, -0.25, -0.5, 1.0, -1.0, 1.0, 0.75, 1.0, 0.75, -0.75, 0.5, -1.0, -0.25, 0.0, 0.0, -0.75, 0.25, 0.75, -1.0, -0.5, -1.0, 0.75, 0.0, -1.0, -1.0, 0.75, -0.25, 0.0, 0.75, 1.0, 0.5, 1.0, 0.5, -0.5, 0.75, 1.0, 0.0, 1.0, 0.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.75, 0.0, 0.5, 0.5, -0.5, 1.0, 0.0, 1.0, -0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 0.0, -0.75, -0.75, 0.5, 1.0, 1.0, 1.0, 0.75, -0.5, -0.75, -0.5, 0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 0.25, -0.75, -1.0, -0.5, 0.5, -0.5, 1.0, 0.25, 1.0, -0.75, -1.0, 0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -0.5, 0.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.5, 0.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, 1.0, 0.25, 0.5, -0.5, 0.0, -0.25, 0.5, -0.25, -0.5, -0.5, -0.5, 1.0, 0.5, 1.0, -0.75, -0.5, 0.5, -0.75, -0.5, -0.75, 1.0, -0.75, 1.0, 0.5, 0.75, -0.5, ]);
    
    const array3 = new Float32Array([0.5, 0.75, -0.25, -1.0, 0.25, -0.25, -0.25, 0.5, -0.5, -0.5, 1.0, -0.5, -0.5, 1.0, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -0.75, 0.0, 0.75, -0.75, -0.5, -0.5, -1.0, 1.0, 0.25, 0.5, 1.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.25, 0.25, -0.75, -0.75, 1.0, -0.75, 0.5, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, -0.5, -0.25, 0.75, -0.25, -0.75, 0.75, 1.0, -0.5, -0.25, 1.0, -0.25, -0.75, 0.5, 0.5, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.75, 0.75, -1.0, 0.5, -0.75, -0.5, 1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 0.25, 0.75, -0.25, -0.75, 0.75, -0.25, 1.0, -1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array4 = new Float32Array([0.25, 1.0, -0.75, -0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 0.0, 0.75, 0.5, -1.0, 0.0, -1.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.5, -0.75, 0.25, 0.5, -0.5, -0.25, -1.0, -1.0, 0.0, 0.5, 0.75, 1.0, 0.5, 0.0, 0.75, -0.75, 1.0, -0.5, -0.5, 0.0, -1.0, 0.25, 0.5, 1.0, -0.5, 0.25, -0.25, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, -0.75, 1.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, 0.75, 0.0, -0.25, 0.0, 0.5, 0.5, 1.0, -0.25, 1.0, -1.0, -0.75, -0.75, 0.0, -0.25, -0.25, 0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.5, -0.75, -0.25, 0.25, 1.0, 0.0, 0.25, 0.25, -0.5, -0.5, -0.5, -1.0, 1.0, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device20.destroy();
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("validation");
    const array5 = new Float32Array([-0.25, 0.75, 0.5, -0.5, -0.5, 0.5, 1.0, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.5, 0.0, 0.75, 0.5, 0.0, 1.0, 1.0, -1.0, 0.0, -0.25, -0.5, -0.5, 0.25, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 0.75, -0.5, 1.0, 0.0, 1.0, 0.0, -1.0, 0.75, -1.0, -0.25, -0.75, 0.25, -0.25, -0.25, -0.25, -0.25, 1.0, -0.5, 1.0, -0.5, 0.75, -1.0, 0.25, -0.25, -0.5, -0.5, -0.25, -0.5, 0.75, -0.75, 0.25, -1.0, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, -0.75, 0.25, 0.0, 1.0, 0.5, -0.25, 0.0, 0.75, 0.0, -0.5, 0.25, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 0.0, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const array6 = new Float32Array([1.0, 1.0, 0.0, -0.25, -0.5, -0.25, 1.0, 1.0, -0.5, -1.0, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 1.0, -0.75, 0.25, 0.5, -1.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.5, 0.25, 1.0, -0.75, 0.0, -0.5, -0.5, -1.0, 0.0, 0.75, 0.5, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, -0.25, -1.0, -0.25, -0.75, -0.5, -0.25, 0.0, -0.25, -1.0, -0.25, 0.75, -0.75, 0.25, 0.75, 0.5, -0.25, 0.5, -1.0, 0.25, 0.5, -0.75, -1.0, 1.0, 0.25, -0.5, -0.75, 0.75, 0.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.75, 1.0, 0.5, 0.0, -0.5, 1.0, -1.0, 0.25, 0.75, -0.25, 0.25, 0.25, ]);
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    texture600.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder301.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device60.destroy();
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device20.pushErrorScope("internal");
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer600.destroy()
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.submit([]);
    const command_buffer401 = command_encoder401.finish();
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    command_encoder300.clearBuffer(buffer300);
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer301.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder300.clearBuffer(buffer302);
    
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    render_bundle_encoder301.popDebugGroup();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query400.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const array7 = new Float32Array([0.25, -0.75, -0.5, -0.5, 0.75, -0.5, -0.75, 0.5, -0.5, 0.25, -0.75, -0.25, -0.75, -0.25, 0.5, -1.0, 0.5, 0.5, -0.75, -1.0, -0.25, -1.0, 0.25, 0.5, 1.0, 0.25, 1.0, 1.0, 0.25, 1.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, -1.0, -0.25, -0.75, 0.0, 0.75, 1.0, 0.25, 1.0, -1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 1.0, -0.25, 1.0, 0.0, -0.25, -0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 1.0, -0.5, -1.0, 0.75, -1.0, 0.75, 1.0, 0.0, 0.0, -1.0, -0.5, 0.75, -0.75, 0.0, 1.0, 0.25, 0.0, -0.25, -0.5, -0.75, -0.75, 0.5, -1.0, 0.75, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, -0.25, 0.25, 0.0, 1.0, 0.0, 0.5, ]);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
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
    const command_buffer300 = command_encoder300.finish();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_buffer400 = command_encoder400.finish();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    
    render_bundle_encoder300.popDebugGroup();
    query300.destroy()
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    device70.destroy();
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    texture400.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    buffer300.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    device70.pushErrorScope("validation");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array8 = new Float32Array([-1.0, 1.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, -0.5, -0.75, 0.0, 0.0, -1.0, 0.25, 0.25, 0.5, -0.75, 0.25, 0.5, 0.5, -0.25, -1.0, 0.0, -1.0, 0.25, -0.75, -1.0, 0.25, 0.25, -0.5, -1.0, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.25, -1.0, -0.5, 0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 0.0, 0.25, 0.75, -0.5, -0.5, 1.0, -1.0, -1.0, 0.25, 1.0, -0.5, 0.75, 0.25, 1.0, 0.25, -1.0, -0.5, 0.75, -1.0, 0.0, 0.75, -0.25, -0.5, -0.5, -0.25, -0.5, -0.75, 0.25, -0.25, -0.5, -0.25, 0.75, 0.25, -0.75, 1.0, 0.25, 0.25, 0.0, 0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.75, 0.25, ]);
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    buffer305.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    
    device80.destroy();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    buffer302.destroy()
    texture402.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder302.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    device30.queue.submit([]);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout403]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer303.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    const command_buffer302 = command_encoder302.finish();
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder402.setPipeline(render_pipeline401);
    render_bundle_encoder301.setVertexBuffer(0, buffer307);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.popDebugGroup();
    const array9 = new Float32Array([-0.25, 0.75, 0.5, -0.25, 1.0, 0.25, -0.25, 0.5, 0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 0.0, 0.75, -0.5, 0.25, 0.75, 0.25, 0.0, 0.5, 1.0, 0.0, -1.0, 1.0, 1.0, -0.5, 0.75, 0.25, 0.25, -1.0, -0.25, 0.0, 0.5, -0.5, -1.0, -0.5, 1.0, -0.75, 0.0, -1.0, 1.0, -1.0, 1.0, -0.5, -0.5, 0.0, 1.0, 1.0, 0.0, -1.0, -1.0, 0.0, -0.25, -0.5, -0.75, -0.5, 0.25, 1.0, 1.0, -0.75, 0.25, 1.0, -0.5, 0.0, -0.5, 0.25, 0.25, -0.75, 0.25, 0.0, -0.5, 0.5, 1.0, -0.5, 0.5, -0.5, 0.75, 1.0, -1.0, 0.75, -0.75, -0.75, -0.5, -0.25, 0.25, 0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 0.5, -1.0, 1.0, 1.0, 0.75, 0.75, -0.75, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.setIndexBuffer(buffer305, "uint16");
    compute_pass_encoder3011.insertDebugMarker("marker")
    command_encoder402.copyTextureToTexture(
        {
            texture: texture403
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_bundle_encoder402.popDebugGroup();
    
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    query500.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
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
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder3011.setPipeline(compute_pipeline302);
    device50.pushErrorScope("internal");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    command_encoder402.insertDebugMarker("mymarker");
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder4020.executeBundles([])
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
        occlusionQuerySet: query300
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3030.setPipeline(render_pipeline302);
    
    
    render_bundle_encoder300.popDebugGroup();
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder4020.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder301.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.pushErrorScope("out-of-memory");
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    buffer402.destroy()
    
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder3030.setStencilReference(1);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder400.popDebugGroup();
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder3010.executeBundles([])
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const array10 = new Float32Array([0.75, -0.25, -1.0, -0.75, -1.0, 0.25, 0.0, 0.75, -1.0, -0.25, -1.0, 0.25, 1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.75, 0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -1.0, -0.5, 0.75, 0.5, 1.0, -1.0, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, -0.75, 0.75, 0.0, 0.5, -0.5, -0.25, 0.5, 0.75, -1.0, 0.25, 0.5, 0.25, -0.75, 0.5, 1.0, -0.5, -0.25, 0.25, -1.0, -0.25, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.25, 0.75, 0.0, 1.0, -0.5, -0.75, 0.25, 0.5, -0.5, -0.75, -0.5, -0.25, 0.25, 0.0, -0.75, 0.25, 0.75, -0.5, 0.25, 0.75, -0.75, 0.25, 0.0, -1.0, 0.5, -0.25, 0.75, -0.25, 0.5, ]);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    
    
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    command_encoder403.insertDebugMarker("mymarker");
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3031.setPipeline(render_pipeline301);
    
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: query401
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder4030.setPipeline(render_pipeline400);
    buffer3010.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group304);
    buffer3011.destroy()
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device90.pushErrorScope("validation");
    
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    render_pass_encoder4021.setPipeline(render_pipeline404);
    render_pass_encoder4020.executeBundles([])
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
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    render_pass_encoder3031.setVertexBuffer(0, buffer303);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array11 = new Float32Array([0.25, 1.0, 0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -0.5, 0.75, -0.75, -0.25, 0.5, 0.25, -0.5, -0.5, -0.25, 0.75, 0.5, 1.0, -1.0, 0.75, -1.0, -0.5, -0.75, 0.0, -0.5, -0.75, -1.0, 0.5, -0.25, 0.75, -0.75, -0.75, 0.75, -0.75, 0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.75, 0.25, 0.0, -1.0, 1.0, 0.0, 0.5, -0.75, -0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 1.0, -1.0, 0.75, -1.0, -1.0, 0.5, -0.75, -0.5, -1.0, -1.0, 1.0, -0.25, -1.0, 0.75, -0.75, -1.0, -0.5, -1.0, -0.5, -0.25, -0.25, -0.5, 1.0, -0.5, 0.5, 0.25, -0.75, -0.75, -0.75, -1.0, -0.5, -0.75, 0.5, 0.75, 0.5, -0.25, -0.75, -0.25, ]);
    
    
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
    render_pass_encoder3030.popDebugGroup();
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    
    device30.queue.writeBuffer(buffer307, 0, array11, 0, array11.length);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3011.setPipeline(render_pipeline303);
    
    render_pass_encoder3031.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    render_pass_encoder3010.setPipeline(render_pipeline302);
    render_pass_encoder4020.setPipeline(render_pipeline402);
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer309.destroy()
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer3012, 0, array8, 0, array8.length);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module309,
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
            module: shader_module309,
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
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder3031.drawIndirect(buffer304, 0);
    compute_pass_encoder3020.popDebugGroup()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group305);
    compute_pass_encoder3010.popDebugGroup()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder3010.setVertexBuffer(0, buffer3012);
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3016, 0);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group402);
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder3010.end();
    const command_buffer800 = command_encoder800.finish();
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3011.setBindGroup(0, bind_group306);
    render_pass_encoder4021.setVertexBuffer(0, buffer405);
    render_pass_encoder3011.setVertexBuffer(0, buffer303);
    render_pass_encoder3010.popDebugGroup();
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group307);
    render_pass_encoder3011.setIndexBuffer(buffer305, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group403);
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    render_pass_encoder3011.drawIndirect(buffer3016, 0);
    render_pass_encoder4021.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder3011.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder3011.drawIndirect(buffer3016, 0);
    render_pass_encoder4021.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4030.setVertexBuffer(0, buffer404);
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3010.end();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3021, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder4020.setVertexBuffer(0, buffer408);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group308);
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
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
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

    compute_pass_encoder3011.setBindGroup(0, bind_group309);
    render_pass_encoder3030.setVertexBuffer(0, buffer3014);
    render_pass_encoder3011.end();
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3026, 0);
    compute_pass_encoder3011.end();
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder4021.drawIndirect(buffer403, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder4030.draw(3);
    render_pass_encoder3031.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder4021.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3030.end();
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder3031.draw(3);
    device90.queue.submit([]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4020.drawIndexedIndirect(buffer401, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3011.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3030.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3011.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3011.end();
    render_pass_encoder3011.drawIndirect(buffer3011, 0);
    device60.queue.submit([]);
    render_pass_encoder4021.end();
    render_pass_encoder4020.end();
    render_pass_encoder3011.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3031.end();
    command_encoder303.popDebugGroup()
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4030.end();
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3031.end();
    render_pass_encoder3031.setIndexBuffer(buffer3024, "uint16");
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
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    render_pass_encoder3031.drawIndirect(buffer303, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3011, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
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
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder3011.end();
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3030, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    device30.queue.submit([]);
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4021.drawIndirect(buffer400, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder3011.dispatchWorkgroups(100);
    compute_pass_encoder3011.end();
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder4021.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3030.end();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3032, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3031.drawIndexedIndirect(buffer3032, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3010.drawIndirect(buffer3026, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder4030.draw(3);
    render_pass_encoder4020.setIndexBuffer(buffer402, "uint16");
    device40.queue.submit([]);
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3011);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    device90.queue.submit([]);
    render_pass_encoder4020.draw(3);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder3020.end();
    render_pass_encoder4020.popDebugGroup();
    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3036,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    render_pass_encoder4021.end();
    render_pass_encoder3011.drawIndirect(buffer3030, 0);
    render_pass_encoder3031.drawIndirect(buffer3021, 0);
    render_pass_encoder3031.drawIndirect(buffer3033, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3030.drawIndirect(buffer3031, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3030, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer403, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder3011.drawIndirect(buffer3021, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndirect(buffer3030, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3037, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3037, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder4020.setIndexBuffer(buffer400, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4030.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4030.drawIndexed(3);
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.drawIndexedIndirect(buffer3031, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
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
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group3013);
    compute_pass_encoder3011.end();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder3011.end();
    compute_pass_encoder3020.end();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3031.end();
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group3014);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4021.draw(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder4030.end();
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3032, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3011.end();
    device90.queue.submit([]);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group3015);
    render_pass_encoder4030.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder4020.end();
    device90.queue.submit([]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3044, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3044, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3031.end();
    device30.queue.submit([]);
    render_pass_encoder4020.drawIndexed(3);
    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3046,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3016);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder4030.end();
    render_pass_encoder3030.setIndexBuffer(buffer3026, "uint16");
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group3017);
    render_pass_encoder3011.drawIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder4021.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer305, "uint16");
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder3031.drawIndirect(buffer3030, 0);
    render_pass_encoder3011.end();
    device40.queue.submit([]);
    render_pass_encoder4021.end();
    render_pass_encoder3031.setIndexBuffer(buffer3032, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3011.drawIndirect(buffer3032, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3013, 0);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer302, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3049, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3049, 0);
    render_pass_encoder4030.end();
    device40.queue.submit([]);
    render_pass_encoder4020.drawIndexedIndirect(buffer403, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3030.setIndexBuffer(buffer3043, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder3031.drawIndirect(buffer3031, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3049, 0);
    render_pass_encoder4021.drawIndirect(buffer406, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer3041, "uint16");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3031.end();
    device30.queue.submit([]);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4020.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder3010.drawIndirect(buffer3030, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3041, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer3016, 0);
    compute_pass_encoder3011.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder4021.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3019, "uint16");
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder4021.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3031.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3022, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer408, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3030.drawIndirect(buffer3037, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder4020.drawIndirect(buffer402, 0);
    device70.queue.submit([]);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    render_pass_encoder4020.draw(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3051,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group3018);
    render_pass_encoder4021.end();
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder4021.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder4021.draw(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.draw(3);
    render_pass_encoder4021.drawIndirect(buffer400, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3028, 0);
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.end();
    render_pass_encoder3031.drawIndirect(buffer3029, 0);
    render_pass_encoder3031.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder3011.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3052, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3052, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3052, 0);
    render_pass_encoder4021.draw(3);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder3011.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3021, 0);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder3010.drawIndirect(buffer3021, 0);
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3019);
    device90.queue.submit([]);
}