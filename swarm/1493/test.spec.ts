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
    const array0 = new Float32Array([-0.75, 0.75, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.25, 1.0, 0.5, 0.25, -0.5, 0.0, 0.0, -1.0, 0.25, -0.25, -0.5, 0.0, -1.0, -0.5, 0.25, 0.0, -0.75, 1.0, 0.5, 0.25, 0.75, 0.0, 1.0, -0.75, 0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.0, 0.5, 0.75, 0.0, 1.0, 0.0, 0.75, 1.0, 0.5, 0.25, 0.5, 0.25, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.75, 0.75, -1.0, -0.25, -0.75, 0.75, -1.0, -0.75, -0.75, 0.25, 0.25, 0.25, 0.75, -0.5, -0.5, -0.5, -1.0, -0.5, -0.25, -0.5, -0.75, 1.0, -0.25, -0.25, -0.25, -0.75, 0.5, -0.25, -0.5, -1.0, 0.75, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, -1.0, 0.25, 0.75, -0.75, ]);
    const array1 = new Float32Array([0.5, 0.0, 0.25, 0.0, 1.0, 0.75, 0.5, 0.5, -0.25, 0.0, 0.5, 0.0, 0.5, 0.5, 1.0, 0.5, 0.0, -0.5, -0.25, 0.75, -0.75, 0.25, -0.25, -1.0, -1.0, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 1.0, -0.75, 0.25, -0.75, -0.75, 0.0, 0.0, -0.5, -0.75, 0.75, -1.0, 0.5, -0.75, -0.5, -0.5, -1.0, 0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -0.25, 1.0, -0.25, 1.0, -1.0, -0.5, -1.0, 0.75, -0.75, -1.0, -0.75, 1.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.25, -0.25, 0.5, 0.0, -0.25, 0.75, -1.0, -1.0, -0.25, 0.75, -0.5, 0.0, -0.25, 1.0, 0.0, -0.5, -0.5, -0.25, 1.0, -1.0, 0.75, 0.25, -1.0, -0.25, 0.5, -0.25, 0.25, 0.5, -1.0, 0.25, ]);
    
    const array2 = new Float32Array([-0.5, -0.75, 0.0, -1.0, 0.25, 0.5, -0.25, 0.25, 0.5, 0.75, 0.0, 0.75, -1.0, -1.0, -0.75, 0.25, -0.75, 1.0, -0.5, -0.25, -0.5, 0.75, 0.0, 0.0, 0.5, -0.75, 0.5, -0.25, -0.75, 0.0, 1.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, 1.0, -1.0, 0.75, -1.0, 0.75, 0.25, 1.0, 0.5, -0.5, 1.0, 0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, 0.25, 0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 1.0, 1.0, -0.75, 0.0, -1.0, -0.75, 0.75, -0.5, 0.75, -0.5, 1.0, 1.0, -0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 0.5, -0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 1.0, -0.5, 1.0, 0.25, 0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([0.25, -0.25, 0.25, 1.0, 0.75, -0.75, -0.25, 0.0, -0.25, -0.75, 0.5, 0.5, 0.75, -0.75, 1.0, 0.75, -0.75, 0.0, -0.5, 0.75, -1.0, 0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.5, 1.0, 0.75, -1.0, 1.0, -0.75, 0.0, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.75, 0.75, 0.25, 0.5, -0.25, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, 0.75, -0.25, -0.5, -0.25, -1.0, -0.5, -1.0, 1.0, 0.75, 0.0, 0.5, 0.0, 0.0, 1.0, 0.75, 0.5, 0.0, 1.0, 1.0, -0.5, 1.0, -1.0, -0.75, -1.0, -1.0, 1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.75, 0.5, -0.75, 0.0, -0.75, -0.25, -0.75, -0.25, -1.0, 0.75, -0.5, ]);
    device00.destroy();
    
    const array4 = new Float32Array([-0.25, 0.5, 0.5, 0.25, -0.25, 0.25, 0.5, 0.25, 0.25, 0.5, -1.0, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -0.5, -0.5, 1.0, -1.0, -0.5, -0.25, -0.5, 0.0, 0.75, 0.0, 0.25, -1.0, -0.25, -0.75, 0.25, 0.0, 0.25, 1.0, 0.75, 0.25, -0.75, 0.0, 0.0, -0.25, -0.25, 0.0, 0.25, -0.75, 0.75, 0.0, 0.5, 0.5, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, 0.5, -0.25, 1.0, 0.25, 0.25, -1.0, 1.0, 0.0, 1.0, 1.0, -1.0, 0.75, 0.5, 0.75, -0.5, 0.75, 0.5, 0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 1.0, -1.0, 0.25, -0.5, 1.0, -0.5, 0.25, 0.0, -0.25, 0.25, -1.0, -1.0, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, 0.0, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array5 = new Float32Array([0.75, 0.25, -0.75, -0.5, -0.25, 1.0, -1.0, 0.25, 1.0, 1.0, 1.0, -0.25, -0.75, -1.0, 0.0, -0.25, 1.0, -1.0, 0.75, -0.75, -0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.5, -0.75, 1.0, 0.75, 0.75, -0.5, 0.75, 0.5, -0.75, -1.0, -0.5, -0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 0.5, 0.75, 0.75, -1.0, -0.75, -0.5, 0.25, 0.25, -0.25, 0.25, 0.75, -0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 0.0, 0.0, 1.0, 1.0, 0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 1.0, 0.75, 1.0, 0.75, 0.0, 0.25, 0.75, -0.75, -0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 0.5, -0.5, -0.5, -1.0, -0.25, -0.25, ]);
    
    command_encoder100.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    command_encoder101.insertDebugMarker("mymarker");
    const array6 = new Float32Array([-0.5, -1.0, -0.5, 0.0, 1.0, -0.75, 0.75, 0.5, 0.5, 0.5, 0.75, -0.25, 0.5, 0.75, 0.75, 0.25, 0.5, 1.0, -0.5, -0.25, 0.75, -1.0, 0.5, 1.0, 0.0, 0.75, 0.0, 0.25, 0.0, 0.25, -1.0, -1.0, -0.25, -1.0, 0.5, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, -0.25, -1.0, 0.25, 0.5, -0.5, -1.0, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.5, 1.0, -0.25, 0.25, -0.25, 0.5, -0.75, -1.0, -0.25, 0.0, -1.0, 0.5, 0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.25, 0.5, 0.0, 0.5, -1.0, -0.75, -1.0, 1.0, -0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, 0.0, -0.75, 0.5, -1.0, 0.25, -0.25, 0.0, 0.75, ]);
    
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.popDebugGroup()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.popDebugGroup();
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array7 = new Float32Array([0.75, 0.25, 0.75, 0.0, 0.75, 0.75, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, -0.75, 0.75, 0.0, 0.0, 0.25, -1.0, -0.75, 0.25, 0.25, 1.0, -0.75, 0.5, 0.75, 0.0, 1.0, -0.75, -0.75, 0.75, -1.0, 0.25, -1.0, -1.0, 0.5, -0.75, -0.5, 0.5, -0.25, -0.25, 1.0, -0.75, 0.0, 0.5, 0.0, 0.75, 1.0, 0.5, 1.0, -1.0, -0.75, -0.5, 0.75, -0.75, -0.5, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, 0.0, 1.0, 1.0, 0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 0.5, 0.25, 0.25, 0.0, -0.75, 0.25, 1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.5, -1.0, -0.25, -0.75, -1.0, 0.75, -0.5, 0.75, -0.75, 0.0, 0.5, 0.75, 0.75, ]);
    
    const command_buffer100 = command_encoder100.finish();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.pushErrorScope("out-of-memory");
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture100.destroy();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_bundle_encoder100.setPipeline(render_pipeline101);
    command_encoder102.pushDebugGroup("mygroupmarker")
    query100.destroy()
    
    const array8 = new Float32Array([-0.75, 1.0, 0.0, 0.25, -0.5, -1.0, 0.75, -0.75, -1.0, 0.5, -0.5, 0.75, -0.75, 0.0, 0.75, 0.25, -0.75, 0.5, 0.5, -1.0, 0.5, -0.25, 1.0, -0.75, 1.0, 0.0, 0.0, -0.25, 0.5, 0.5, -0.5, -0.25, 1.0, 1.0, -1.0, 1.0, 0.5, -0.5, -0.5, 1.0, -0.5, 0.25, 0.0, -0.5, -0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, -0.75, 0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 0.75, 1.0, 0.0, -0.75, 0.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.75, -0.5, 1.0, -0.75, -0.75, -1.0, -0.75, -0.5, -0.25, 0.0, -0.75, 0.0, -0.5, 0.75, 0.0, 1.0, 0.25, -0.75, -1.0, ]);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    buffer100.destroy()
    const array9 = new Float32Array([1.0, -1.0, 0.0, -0.25, -0.75, 0.5, -1.0, 0.25, 0.25, -0.5, -1.0, 0.25, 0.75, 0.75, 1.0, -0.25, -0.75, 0.0, 1.0, 0.5, 0.0, 0.75, 1.0, 0.75, -1.0, 0.0, 0.25, -0.75, -0.5, 0.5, 0.25, 0.25, 0.25, 0.5, -0.75, 0.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 0.75, -1.0, 0.5, -0.5, -0.5, -0.25, 0.5, -0.75, -0.75, 0.25, 0.0, 0.0, -0.25, -0.25, 0.25, 0.75, -0.25, 1.0, 0.0, -1.0, 1.0, -0.25, -0.75, -0.5, -0.25, -0.25, 1.0, -1.0, 0.25, 0.0, 0.25, -0.5, -1.0, 0.25, 0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 1.0, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, -1.0, -0.75, 0.75, -0.75, 0.25, 0.25, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    buffer101.destroy()
    
    const array10 = new Float32Array([0.0, -1.0, 1.0, 0.25, -0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 0.25, -0.75, 0.0, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, 0.25, -0.5, 1.0, -0.75, -0.5, 0.0, 1.0, 0.25, 0.5, -0.75, -0.75, 1.0, 0.5, 0.75, 0.5, 0.5, 0.0, -0.75, -0.25, 0.0, 1.0, -0.75, 0.25, 0.0, 0.75, -0.25, 1.0, -0.75, 0.0, -0.25, 0.25, -0.75, -0.5, 0.5, 0.75, -1.0, 1.0, 1.0, -0.25, -1.0, -0.5, -0.75, -0.25, 0.0, 0.0, -0.75, 0.5, 0.25, 1.0, -0.5, -0.75, -1.0, -1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.5, 0.75, 0.75, -0.25, 0.5, -0.25, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, 0.75, -0.5, 0.0, 1.0, 0.25, -1.0, -0.5, 0.25, ]);
    command_encoder102.clearBuffer(buffer101);
    
    
    
    device10.queue.submit([command_buffer100, ]);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    command_encoder102.insertDebugMarker("mymarker");
    const array11 = new Float32Array([-0.25, 0.25, -1.0, 0.0, 0.75, -0.25, -0.75, 0.5, 1.0, -0.25, 0.0, -0.75, 0.75, -0.5, -0.75, -0.75, -0.5, -0.75, 0.0, -1.0, 0.0, 0.0, 0.5, -0.75, 0.0, -0.5, -0.25, 1.0, -0.25, -0.25, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 1.0, 0.75, 1.0, -0.5, 1.0, 0.75, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 1.0, -1.0, 0.25, 0.25, 0.75, 0.25, -1.0, 0.5, 0.5, -0.75, 0.5, 0.0, 0.25, 0.75, -0.75, 0.5, 1.0, 0.0, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, -0.25, -1.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.25, -0.75, 1.0, 0.0, 0.25, 0.0, -1.0, -0.5, -0.25, 0.5, 0.5, 1.0, 0.75, 0.75, -0.75, ]);
    
    
    
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    
    query103.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.pushErrorScope("internal");
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query103.destroy()
    
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder101.insertDebugMarker("mymarker");
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    command_encoder101.popDebugGroup()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    
    
    
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1010.setPipeline(render_pipeline102);
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    texture102.destroy();
    texture100.destroy();
    render_bundle_encoder101.setPipeline(render_pipeline103);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    query101.destroy()
    render_bundle_encoder100.popDebugGroup();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1010.endOcclusionQuery()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1020.insertDebugMarker("marker");
    texture101.destroy();
    query102.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    
    buffer103.destroy()
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1011.setPipeline(render_pipeline101);
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setPipeline(render_pipeline101);
    buffer102.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    query101.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    query100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1021.setStencilReference(1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1021.setPipeline(render_pipeline101);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder301.insertDebugMarker("marker");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    query102.destroy()
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder1011.setStencilReference(1);
    
    render_bundle_encoder102.setPipeline(render_pipeline105);
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
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder100.setVertexBuffer(0, buffer105);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1031.setPipeline(render_pipeline101);
    buffer104.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    render_bundle_encoder100.drawIndirect(buffer107, 0);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    command_encoder200.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder301.popDebugGroup();
    
    
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder103.insertDebugMarker("mymarker");
    buffer107.destroy()
    command_encoder201.insertDebugMarker("mymarker");
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1041.setPipeline(render_pipeline103);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query100.destroy()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    buffer108.destroy()
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    render_pass_encoder1040.setPipeline(render_pipeline105);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group105);
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
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
    
    
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    render_pass_encoder1021.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1041.endOcclusionQuery()
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group106);
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    buffer1011.destroy()
    device30.pushErrorScope("out-of-memory");
    
    render_pass_encoder1040.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder1041.setVertexBuffer(0, buffer1010);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1020.setVertexBuffer(0, buffer1011);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query104.destroy()
    render_bundle_encoder301.popDebugGroup();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    
    const command_buffer202 = command_encoder202.finish();
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    render_pass_encoder1020.setStencilReference(1);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    
    render_pass_encoder1020.setStencilReference(1);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.setStencilReference(1);
    buffer1013.destroy()
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer1011,
        0,
        400
    );
    render_bundle_encoder101.drawIndirect(buffer107, 0);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query105
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query104
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1040.insertDebugMarker("marker");
    query105.destroy()
    
    
    render_pass_encoder1051.setPipeline(render_pipeline101);
    buffer1012.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
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
    render_pass_encoder1030.setVertexBuffer(0, buffer108);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder101.drawIndirect(buffer100, 0);
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
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
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1070.setPipeline(render_pipeline102);
    render_pass_encoder1022.setPipeline(render_pipeline100);
    render_pass_encoder1011.setStencilReference(1);
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    command_encoder106.pushDebugGroup("mygroupmarker")
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer1012,
        0
    )
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query104
    });
    
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    render_pass_encoder1041.draw(3);
    const command_buffer000 = command_encoder000.finish();
    buffer109.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    query105.destroy()
    
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array10, 0, array10.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder106.popDebugGroup()
    
    texture104.destroy();
    buffer1015.destroy()
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1071.setPipeline(render_pipeline102);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1051.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1022.setStencilReference(1);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    query104.destroy()
    render_pass_encoder1051.insertDebugMarker("marker");
    const command_buffer107 = command_encoder107.finish();
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    buffer106.destroy()
    render_pass_encoder1060.setPipeline(render_pipeline109);
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1080.setPipeline(render_pipeline106);
    const render_pass_encoder1081 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1081",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer109,
        0
    )
    render_pass_encoder1020.setStencilReference(1);
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer1013,
        0
    )
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1040.setVertexBuffer(0, buffer102);
    render_pass_encoder1081.setPipeline(render_pipeline1011);
    render_pass_encoder1022.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1070.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer1013,
        0
    )
    
    render_pass_encoder1021.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array12 = new Float32Array([0.0, 0.0, 0.0, 0.5, 0.5, 1.0, -1.0, 1.0, -0.75, 0.75, 0.75, -0.25, -1.0, 0.25, 0.0, 0.5, 1.0, 1.0, -0.75, 1.0, 0.5, 0.75, 0.5, 0.25, -0.25, -0.25, -1.0, -0.75, 0.75, 0.75, -1.0, -0.75, 0.75, 0.0, 0.25, -1.0, -0.75, 0.75, 0.0, -0.25, 1.0, 0.5, -1.0, 0.5, 1.0, -0.25, 0.0, 0.75, -0.25, -1.0, 0.0, 1.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.75, -0.25, -1.0, 0.75, -0.25, 0.75, 1.0, 0.0, -0.75, 0.0, 1.0, -0.25, -0.5, 0.5, -0.25, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, 1.0, 0.0, -0.75, -0.5, -0.75, 0.0, 1.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.25, 0.5, -0.5, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1050.setPipeline(render_pipeline104);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    device20.pushErrorScope("internal");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1022.setBindGroup(0, bind_group108);
    render_pass_encoder1061.setPipeline(render_pipeline106);
    device50.destroy();
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1022.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1030.drawIndexed(3);
    
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer1015,
        0
    )
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query200.destroy()
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group109);
    buffer1014.destroy()
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder102.drawIndirect(buffer1015, 0);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1061.setBindGroup(0, bind_group1010);
    render_pass_encoder1021.setStencilReference(1);
    
    texture102.destroy();
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_bundle_encoder303.pushDebugGroup("group_marker");
    render_pass_encoder1041.end();
    render_pass_encoder1061.setVertexBuffer(0, buffer1019);
    render_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.endOcclusionQuery()
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1011);
    render_pass_encoder1061.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer104, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder1022.setVertexBuffer(0, buffer1010);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1022.setIndexBuffer(buffer1019, "uint16");
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1071.setBindGroup(0, bind_group1012);
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
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline109.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1013);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1022.end();
    render_pass_encoder1071.setVertexBuffer(0, buffer1023);
    render_pass_encoder1022.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.setVertexBuffer(0, buffer1018);
    render_pass_encoder1060.setVertexBuffer(0, buffer107);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1080.setBindGroup(0, bind_group1014);
    render_pass_encoder1060.draw(3);
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
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group1015);
    render_pass_encoder1070.setVertexBuffer(0, buffer101);
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group1016);
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
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
    
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1017);
    render_pass_encoder1071.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1051.setVertexBuffer(0, buffer1018);
    render_pass_encoder1022.end();
    render_pass_encoder1080.setVertexBuffer(0, buffer1032);
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.setVertexBuffer(0, buffer1028);
    render_pass_encoder1061.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer101);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1060.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1071.end();
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    const command_buffer104 = command_encoder104.finish();
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer104, command_buffer105, command_buffer107, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1035, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1030, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.end();
    command_encoder102.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1021, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    render_pass_encoder1081.setBindGroup(0, bind_group1018);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1081.setVertexBuffer(0, buffer1023);
    render_pass_encoder1071.setIndexBuffer(buffer1027, "uint16");
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1019);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1031.setVertexBuffer(0, buffer1012);
    render_pass_encoder1061.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1022.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.draw(3);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1081.end();
    render_pass_encoder1081.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    const command_buffer108 = command_encoder108.finish();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1051.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.draw(3);
    render_pass_encoder1022.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer108, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1039, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1081.end();
    render_pass_encoder1081.end();
    render_pass_encoder1010.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1081.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1080.draw(3);
    render_pass_encoder1022.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer108, ]);
    render_pass_encoder1041.draw(3);
    device30.queue.submit([]);
    render_pass_encoder1030.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1031.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1071.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1071.end();
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1081.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.end();
    render_pass_encoder1071.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1071.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1081.draw(3);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1080.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.end();
    render_pass_encoder1041.setIndexBuffer(buffer106, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
}