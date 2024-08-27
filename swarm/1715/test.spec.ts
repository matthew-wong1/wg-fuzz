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
    const array0 = new Float32Array([1.0, 1.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.75, -0.25, 0.75, -0.5, 0.0, 1.0, 1.0, 0.5, -1.0, 1.0, 0.75, 0.5, -0.75, 0.0, -1.0, -0.25, 0.5, 0.25, -1.0, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.75, 0.25, 0.0, -1.0, -0.75, -1.0, -0.5, 0.75, 0.5, 0.0, 0.25, 0.75, 1.0, 0.5, 0.5, -0.5, -1.0, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, -0.25, -0.25, -0.75, -0.75, 0.5, 0.25, -0.5, -1.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.25, -0.25, 0.0, -0.75, -0.5, -0.5, 0.25, 1.0, -1.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.0, 0.25, 0.75, -0.75, 0.75, 0.75, 0.75, 0.5, -1.0, 0.75, 1.0, 0.0, -0.25, 1.0, -0.75, -0.25, 0.0, 0.25, ]);
    
    
    
    const array1 = new Float32Array([-1.0, 1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, -1.0, 0.5, 0.0, 0.0, -1.0, -0.75, 0.5, 1.0, 0.5, 0.5, -0.25, 1.0, -1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.25, -0.5, -0.25, 0.0, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, 0.25, 0.0, 1.0, 0.0, -1.0, 0.0, -0.75, 0.75, 0.75, 0.75, -0.5, -1.0, 0.0, 0.0, -0.5, 0.75, 0.0, 0.75, -0.75, -0.5, 0.25, -0.75, 1.0, 0.5, -0.75, -1.0, -0.25, -0.5, 0.25, -1.0, 0.75, 0.75, -1.0, 0.0, 0.75, -0.25, 1.0, 0.0, -0.5, 0.5, -1.0, -1.0, -0.75, -0.5, 0.25, 0.25, -0.5, 0.75, -1.0, -0.25, 0.25, -0.75, 1.0, -1.0, 0.5, 1.0, 0.75, 1.0, 0.25, 0.5, -1.0, -1.0, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array2 = new Float32Array([1.0, 0.5, -0.25, 0.0, -0.5, 0.75, 1.0, -0.5, 0.25, -0.5, -1.0, 0.5, 1.0, -1.0, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, -1.0, 0.0, 1.0, -0.75, 0.0, -0.5, 0.5, 0.75, 0.5, 1.0, -1.0, 0.25, 0.25, -0.75, -0.75, 0.25, 1.0, 0.0, -0.5, 0.0, 1.0, 0.5, 0.0, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.0, 0.25, -0.75, 0.25, -0.5, 0.25, 0.25, -0.25, -0.75, 0.0, 0.75, -0.25, -1.0, -1.0, 0.5, -1.0, 0.5, -0.25, 0.0, 0.0, 1.0, -1.0, -0.5, 1.0, -0.5, 0.25, -0.25, -0.75, 1.0, -0.75, 0.0, 0.75, -0.5, 0.75, -0.75, 1.0, -1.0, -0.5, 0.75, 0.5, 0.5, 0.25, 0.25, -0.75, -0.25, 1.0, -0.25, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device00.destroy();
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const array3 = new Float32Array([-0.5, -0.25, 0.25, 0.25, 1.0, 0.0, 0.0, -0.75, -0.75, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, -1.0, 0.25, 1.0, -0.75, 0.5, 0.75, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, -0.75, 0.0, 0.5, 1.0, 0.25, 0.75, -1.0, 0.5, 0.25, 0.5, 0.75, -0.75, 0.5, 0.0, 0.25, 0.75, -1.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, 0.0, 0.0, -0.75, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, 0.75, 0.0, -0.5, -0.75, 0.25, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, 0.5, 1.0, 0.0, -1.0, 0.5, 0.0, -0.5, -0.25, 0.75, 0.75, -0.25, -0.25, 0.5, -1.0, 0.0, 1.0, 0.75, 0.0, -0.75, 1.0, 0.75, 0.5, -1.0, -0.5, ]);
    device10.destroy();
    const array4 = new Float32Array([1.0, 0.0, -0.75, 0.25, 0.0, 0.75, 0.25, 0.5, -1.0, 0.25, -0.25, -0.5, -0.25, 0.0, 0.0, -0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.5, 0.0, 0.5, -1.0, 0.25, 1.0, 0.5, 0.5, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, -0.25, -0.5, 1.0, 0.5, -1.0, -0.25, 1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, -1.0, -0.75, -1.0, -0.25, -0.75, 1.0, -1.0, 0.25, -0.75, -0.75, 0.75, 0.25, -0.25, -0.5, -0.25, -0.25, -0.5, 0.25, -0.5, 1.0, -1.0, 0.75, 0.75, 0.25, 0.25, -0.5, 0.0, -0.75, 0.5, 0.5, 0.25, 0.0, 0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, -0.75, 0.75, -0.75, -0.25, ]);
    
    
    const array5 = new Float32Array([-0.75, -0.25, -0.25, -0.5, 0.0, 0.5, 0.75, -0.25, -0.25, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, -0.75, 0.5, -0.25, 0.0, 0.5, 0.0, -1.0, 0.75, 0.25, 0.0, -1.0, -0.25, 1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.5, 0.25, 0.75, -0.5, 1.0, -0.5, 0.5, 0.25, 0.5, -0.5, -1.0, -1.0, 1.0, -1.0, 0.5, 0.25, -0.25, 0.25, 0.5, 1.0, -0.75, -0.75, -0.75, 0.25, 0.25, -0.75, 0.0, -1.0, -0.5, 0.25, 0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 0.25, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, -0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -0.25, 0.75, 1.0, -0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, -0.5, 1.0, 0.5, 0.75, ]);
    
    const array6 = new Float32Array([0.0, 0.25, -0.75, 0.5, 0.25, 1.0, -0.25, 0.75, 0.0, 0.25, -0.75, 0.5, 0.75, 1.0, -1.0, -0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 1.0, 1.0, -0.75, 0.25, 0.5, 0.0, -0.5, -0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 1.0, 0.5, 1.0, 0.0, -1.0, 1.0, -0.75, -0.25, 0.25, 0.0, 0.25, 0.75, 0.75, -0.5, -0.25, -0.25, -0.5, 1.0, 0.75, -0.25, -0.5, 0.25, 0.75, -1.0, 0.5, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, -0.25, 0.25, 0.5, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, 0.0, 0.5, 1.0, 0.0, -0.75, 0.5, -0.75, 0.0, -0.25, -0.75, -0.5, -0.25, 0.75, -0.75, -0.25, 0.75, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 0.5, ]);
    
    
    
    const array7 = new Float32Array([-0.75, -1.0, 0.5, -1.0, -0.75, -0.75, 0.75, 1.0, 1.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, -0.25, 0.75, 0.5, -0.25, 0.5, -0.75, -0.75, 0.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.75, 0.75, -1.0, 0.25, 0.5, -0.75, -0.75, 0.75, 1.0, -0.75, 0.75, 0.25, 0.75, 0.25, 1.0, 0.25, -0.75, 0.25, 1.0, 0.5, 0.5, 0.75, -0.25, 0.0, -0.5, 1.0, 0.5, 0.75, -0.5, 0.25, 0.5, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, 1.0, -1.0, 0.0, 0.75, 0.75, -1.0, -1.0, 0.25, -0.5, -0.25, -1.0, 0.25, -0.5, 0.25, -0.25, -0.5, 0.25, -0.5, 0.0, -0.5, 0.5, -1.0, -1.0, 0.75, -0.25, 0.0, -0.25, 0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([0.75, 0.75, -0.25, -0.75, 0.0, 0.75, -0.5, -1.0, 0.75, 0.25, -0.5, 0.75, -0.5, 0.0, 0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, 1.0, -0.25, -0.25, 0.5, 0.0, -0.25, 0.25, -0.25, 0.75, -1.0, -0.5, 1.0, -1.0, -0.5, -0.5, -0.5, 0.75, -1.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.25, 0.25, -1.0, 1.0, 0.25, -0.25, 0.75, -0.75, -1.0, 0.0, -1.0, -0.25, 0.0, 0.25, 0.5, -0.25, 0.5, -0.25, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, -1.0, 0.5, 0.25, 0.75, -0.25, 0.25, 1.0, -0.25, 1.0, -0.75, -1.0, -0.25, -0.5, -0.75, 1.0, 0.25, 0.75, -0.5, 0.75, -0.5, 0.75, -1.0, -1.0, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, -1.0, -0.25, -0.5, ]);
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const array9 = new Float32Array([-0.75, -0.25, -0.5, 0.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.75, 0.0, 0.75, -0.5, -1.0, 1.0, -1.0, -0.75, -1.0, 1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 0.0, 0.0, 0.0, -0.75, -0.75, 0.75, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.0, 1.0, 0.0, -1.0, -0.5, 0.25, 0.5, 1.0, 0.0, 1.0, 1.0, 0.0, 0.25, -0.25, -0.75, 0.0, -0.75, 0.75, 0.75, 0.5, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, 0.0, 0.25, -1.0, -1.0, 0.0, -0.25, -0.25, 0.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.5, -1.0, -0.25, -0.5, 0.25, -1.0, 0.25, -0.25, 0.75, -1.0, 1.0, 0.0, 0.5, 0.5, 0.0, 0.0, 0.25, 0.0, 0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    device00.destroy();
    const array10 = new Float32Array([0.5, 0.0, 0.25, 0.0, -1.0, 0.25, 0.25, 0.0, -1.0, -0.25, -1.0, -0.25, 0.75, -0.5, -1.0, -0.5, 1.0, -1.0, 1.0, 0.75, 0.25, -0.25, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, 0.0, 0.0, -1.0, 1.0, -1.0, -0.75, -0.75, -0.25, -0.5, -0.5, -0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.0, -1.0, -0.5, 0.0, 0.75, -0.75, 0.75, -0.75, 0.5, 0.0, -0.75, 0.25, -0.5, -1.0, 0.75, -1.0, -1.0, 0.25, -0.75, 0.75, -0.25, -0.25, 0.25, -0.5, -0.5, 0.75, -0.5, -1.0, -0.5, 0.75, 0.75, 0.0, -0.25, -0.25, -1.0, -0.5, -0.5, 0.75, 0.0, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, -0.25, 0.0, 0.5, 1.0, 1.0, -0.5, 0.5, -0.5, 0.75, -0.5, 0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([1.0, 0.5, -0.25, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, 0.5, -0.25, 0.5, -0.25, 1.0, -1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 1.0, -0.75, 0.75, 0.0, -1.0, 0.25, -0.25, -0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, -0.5, -1.0, -0.75, 0.0, -1.0, -0.75, -1.0, 0.5, 0.0, 0.75, 0.5, -1.0, -1.0, -0.75, -0.5, -0.5, 1.0, -1.0, 0.0, -0.25, 1.0, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, 0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 0.75, 0.25, 0.0, 1.0, -0.25, 0.25, 0.75, -1.0, 0.0, 0.75, -0.75, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    const array12 = new Float32Array([0.5, 1.0, 0.0, -1.0, 0.75, -1.0, 0.0, 0.5, 0.5, 0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.0, -0.5, 0.25, 0.25, -0.5, 0.0, -0.5, 0.0, -0.5, 0.0, 0.25, -0.25, -0.5, 0.5, -0.5, -0.75, 0.25, -0.5, -1.0, -1.0, 1.0, 1.0, 0.0, 0.75, -0.5, -0.75, -0.5, -0.25, 0.75, 0.0, -0.5, -0.5, -0.25, -0.75, 1.0, -0.25, 0.5, 0.0, -1.0, -0.5, 0.5, 1.0, 0.5, 0.25, -0.75, -0.75, -1.0, -0.75, 0.5, 1.0, -0.5, -1.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.5, -0.5, 0.5, -0.5, 0.5, -0.75, 1.0, 0.75, -0.75, 0.75, 0.25, -0.25, -0.75, 0.0, -0.75, -0.5, -0.25, 0.75, -0.25, -0.75, -0.25, 0.75, 0.0, -0.75, -0.5, 0.5, 0.75, ]);
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    buffer000.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.queue.writeTexture({ texture: texture701 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device70.queue.writeTexture({ texture: texture702 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    buffer300.destroy()
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeTexture({ texture: texture702 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device40.destroy();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.destroy();
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device90.destroy();
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device30.destroy();
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device100.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array13 = new Float32Array([1.0, -0.25, 0.5, -0.5, 1.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.5, -0.5, -0.5, 1.0, -0.75, -0.75, -0.5, 1.0, 1.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.5, 0.0, -1.0, -0.5, -0.5, -0.25, -1.0, 1.0, 1.0, -0.75, 0.5, -0.75, 0.25, 0.25, 0.5, 0.5, -0.25, -0.5, 0.0, -0.5, -0.75, 1.0, 0.25, -1.0, 0.25, -0.5, -0.25, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 0.25, -0.5, 0.25, 0.75, 0.25, -0.25, -0.75, -0.75, -0.75, 1.0, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 1.0, -0.75, 0.5, -0.5, 0.75, 0.5, 0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 1.0, 0.0, 0.5, 1.0, 0.25, -0.25, -1.0, 0.5, ]);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device130.destroy();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    device100.destroy();
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    device00.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer800.destroy()
    const array14 = new Float32Array([-0.5, 0.75, 0.25, -0.25, 0.25, -1.0, 0.0, -1.0, -0.75, 0.25, 0.5, -0.25, 0.0, 0.5, 0.25, 0.0, 1.0, 0.25, 0.75, 0.25, -0.5, -1.0, 0.25, -0.25, 0.5, 1.0, -0.25, 1.0, 0.75, 0.0, -0.25, 1.0, -0.75, 0.5, -0.25, 0.25, -1.0, -0.75, -0.25, -0.5, -0.5, 0.25, 1.0, 0.75, -0.75, -0.25, 0.5, 0.0, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, 0.25, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, -1.0, 0.25, -0.25, -0.75, 0.75, -1.0, 0.25, 0.25, 0.5, -0.75, 0.5, -0.25, -0.25, -0.25, -0.5, -0.5, -1.0, 1.0, 1.0, 0.5, 0.75, 0.0, -0.5, 0.75, -1.0, -0.75, 0.5, -0.75, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, -1.0, 0.25, 0.25, -0.5, 0.75, ]);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array15 = new Float32Array([-0.5, 0.25, 0.0, -0.75, -0.25, -0.25, -0.75, -0.25, 0.5, -0.5, -0.25, -0.5, 0.75, -0.25, -0.5, 0.75, 1.0, 0.75, -0.75, -0.25, 1.0, 0.0, 1.0, -0.75, -0.75, 1.0, -1.0, 0.25, 0.75, 1.0, 0.5, -0.5, -1.0, -0.25, 0.5, 0.0, -1.0, 0.0, 0.0, 0.5, 0.5, 0.0, -1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, 0.5, 0.75, 0.25, 0.75, 0.5, -0.5, 0.5, -0.5, 0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 0.0, -0.5, 1.0, 0.0, 0.0, -0.75, 0.0, -0.25, 0.5, 0.0, -0.25, 0.25, 1.0, -0.25, 0.0, -0.5, -1.0, 1.0, -1.0, -1.0, 0.25, 0.75, 1.0, -0.5, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 0.5, 0.0, 0.0, ]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    
    render_bundle_encoder1200.popDebugGroup();
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder1201.insertDebugMarker("marker");
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    buffer801.destroy()
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.destroy();
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    device120.queue.writeTexture({ texture: texture1201 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    const render_pipeline1203 = device120.createRenderPipeline({
        label: "render_pipeline1203",
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
    
    
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1401,
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
            module: shader_module1401,
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
    device140.queue.writeBuffer(buffer1401, 0, array13, 0, array13.length);
    const render_pipeline1401 = device140.createRenderPipeline({
        label: "render_pipeline1401",
        vertex: {
            module: shader_module1401,
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
            module: shader_module1401,
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
    
    buffer801.destroy()
    render_bundle_encoder1201.insertDebugMarker("marker");
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    
    
    
    
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.queue.writeTexture({ texture: texture1401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    
    
    
    render_bundle_encoder1201.insertDebugMarker("marker");
    render_bundle_encoder1200.setPipeline(render_pipeline1202);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
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
    render_bundle_encoder800.setPipeline(render_pipeline800);
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1402 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1402",
        colorFormats: ["bgra8unorm"]
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
    const texture1402 = device140.createTexture({
        label: "texture1402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_bundle_encoder1402.setPipeline(render_pipeline1400);
    render_bundle_encoder1401.setPipeline(render_pipeline1401);
    
    device140.queue.writeTexture({ texture: texture1401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1403 = device140.createTexture({
        label: "texture1403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    render_bundle_encoder1201.setPipeline(render_pipeline1201);
    
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    
    
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    
    render_bundle_encoder1401.insertDebugMarker("marker");
    
    render_bundle_encoder1400.setPipeline(render_pipeline1401);
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device140.queue.writeTexture({ texture: texture1400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline1204 = device120.createRenderPipeline({
        label: "render_pipeline1204",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    render_bundle_encoder1200.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    device80.queue.writeTexture({ texture: texture801 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    const render_pipeline1402 = device140.createRenderPipeline({
        label: "render_pipeline1402",
        vertex: {
            module: shader_module1401,
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
            module: shader_module1401,
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
    
    render_bundle_encoder1202.setPipeline(render_pipeline1203);
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer804,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1201]
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1200 = device120.createBindGroup({
        label: "bind_group1200",
        layout: render_pipeline1201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1201,
                },
            },
        ],
    });

    render_bundle_encoder1201.setBindGroup(0, bind_group1200);
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1403 = device140.createBuffer({
        label: "buffer1403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1400 = device140.createBindGroup({
        label: "bind_group1400",
        layout: render_pipeline1401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1403,
                },
            },
        ],
    });

    render_bundle_encoder1400.setBindGroup(0, bind_group1400);
    
    
    device120.queue.writeTexture({ texture: texture1202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    device140.destroy();
    device80.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device120.queue.submit([]);
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    device30.queue.writeBuffer(buffer301, 0, array13, 0, array13.length);
    const pipeline_layout1202 = device120.createPipelineLayout({ 
        label: "pipeline_layout1202",
        bindGroupLayouts: [bind_group_layout1201]
    });
    
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device110.queue.writeBuffer(buffer1100, 0, array1, 0, array1.length);
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1100.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1201.insertDebugMarker("marker");
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    buffer1200.destroy()
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    const compute_pipeline1400 = device140.createComputePipeline({
        label: "compute_pipeline1400",
        layout: pipeline_layout1400,
        compute: {
            module: shader_module1402,
            entryPoint: "main"
        }
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    device120.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture1204 = device120.createTexture({
        label: "texture1204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    device110.queue.writeBuffer(buffer1101, 0, array14, 0, array14.length);
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device160.destroy();
    
    
    device140.queue.writeTexture({ texture: texture1402 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1400.destroy()
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
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device140.queue.writeTexture({ texture: texture1400 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.destroy();
    const array16 = new Float32Array([-0.5, -1.0, 0.5, 1.0, -0.5, 1.0, 0.25, 0.75, 0.0, 0.0, 0.75, 0.5, -0.75, -0.5, 0.5, 0.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.25, -0.25, -0.75, -0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -1.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.75, 0.5, 0.75, -0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, 0.75, -0.25, -0.75, -0.25, -0.75, 0.75, 0.75, -0.75, -0.75, 0.75, 1.0, 0.25, -0.75, 0.75, -0.5, -0.75, 0.0, 0.75, 0.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 0.25, -0.5, -0.75, 0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 0.75, -1.0, 0.0, 0.5, 0.25, -0.5, 0.0, 0.75, ]);
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device140.queue.writeBuffer(buffer1403, 0, array3, 0, array3.length);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder800.setVertexBuffer(0, buffer800);
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer802.destroy()
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device150.destroy();
    const array17 = new Float32Array([0.75, 0.25, -0.5, 0.75, 0.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.5, -0.25, 0.75, -0.75, 1.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.0, -0.5, -1.0, -1.0, -1.0, 0.5, 0.0, 0.75, 0.0, 0.5, -1.0, -0.25, 1.0, -0.5, -0.25, 0.25, -0.5, 0.5, 0.75, 0.25, 0.25, 1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -0.75, 1.0, 0.75, 1.0, 0.75, 0.25, -0.75, -1.0, -0.75, 0.75, 0.25, 0.75, 0.75, 0.75, 0.0, 0.5, 1.0, 0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.75, 0.25, -0.25, 1.0, 0.75, -0.5, 0.75, 0.25, -1.0, -0.75, 0.5, 0.25, -1.0, 0.25, 0.25, -1.0, 0.5, -0.25, -0.25, 0.75, 0.0, 0.75, 0.5, 0.25, -0.5, -0.5, 1.0, -1.0, ]);
    const array18 = new Float32Array([0.75, 0.0, 0.25, -0.25, -0.5, -0.75, 0.25, 0.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.0, -1.0, 0.75, 0.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.0, -0.25, 0.0, 0.25, -0.25, 0.5, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, -0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -0.75, 0.0, 0.5, 0.0, 0.75, -1.0, -0.75, -1.0, 0.75, 0.0, -0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, -1.0, 0.75, -1.0, 0.5, 1.0, 1.0, 1.0, -0.75, 0.5, -1.0, -0.5, -0.5, -0.5, 0.0, 0.5, -0.5, 0.25, -0.75, 1.0, -1.0, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.0, 0.5, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.25, ]);
    
    
    device80.queue.writeBuffer(buffer804, 0, array1, 0, array1.length);
    
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.destroy();
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    const array19 = new Float32Array([0.5, -0.25, 0.0, -0.25, -1.0, 0.75, 0.0, -0.25, 0.75, -0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.25, -0.25, 0.25, 0.75, 0.5, 0.5, 0.75, -1.0, 0.0, 0.0, 0.75, 0.0, 0.0, 1.0, 1.0, 0.0, -1.0, 0.25, -1.0, -0.25, 0.5, -0.75, 0.75, -1.0, -0.5, 0.25, 0.0, 0.0, 0.75, -0.25, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 0.0, 0.5, -0.75, -0.75, -1.0, 0.75, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, -0.25, -0.5, 0.0, -1.0, 1.0, 0.75, 1.0, 0.5, 0.5, -1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.75, -0.25, 0.0, 0.0, 1.0, 0.5, -0.5, -0.5, -0.75, 0.25, -0.75, -0.75, 0.75, 0.5, 0.0, ]);
    buffer804.destroy()
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    device140.queue.writeBuffer(buffer1403, 0, array9, 0, array9.length);
    device140.queue.submit([]);
}