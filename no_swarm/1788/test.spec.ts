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
    
    const array0 = new Float32Array([0.5, 0.25, -0.5, -0.25, -1.0, 0.5, -0.75, 0.5, 0.75, 0.0, -0.75, -1.0, -0.5, 1.0, -0.5, 0.75, 0.75, -0.75, 0.75, -0.75, 0.75, 1.0, -0.75, 1.0, 1.0, 0.75, 0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 0.75, -1.0, 0.75, 0.75, 0.75, -0.25, 0.75, -0.5, 0.5, -1.0, 0.0, 1.0, -0.25, -0.5, 1.0, -0.5, -0.5, -0.5, 0.5, 0.5, 1.0, 1.0, 0.5, 0.75, 0.0, -1.0, 1.0, -0.5, -0.75, 0.5, -0.5, 0.25, 1.0, -1.0, -0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.75, 0.0, 1.0, -0.75, 0.5, 0.75, 0.5, 0.0, 0.75, 0.0, -0.75, 0.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.0, -0.25, -0.25, -0.75, -0.25, -1.0, -0.75, -0.5, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    device00.pushErrorScope("internal");
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, 1.0, -0.25, -0.5, 0.25, -0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 1.0, 0.0, 0.75, -0.25, 0.25, -0.25, -0.75, 0.75, 0.5, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, -1.0, -0.75, 0.25, -0.25, 0.0, 0.0, 0.25, -0.25, 0.75, 0.75, 0.25, 0.0, -0.25, -0.25, -0.5, -0.5, 0.75, 0.0, 0.0, -1.0, -0.25, 0.0, 0.25, -0.5, -0.25, 0.0, -0.5, 0.25, -0.25, 1.0, -0.25, 0.25, 0.75, 0.0, -0.75, 0.75, -0.25, 0.25, 0.0, 1.0, 0.25, -0.25, -0.75, 0.0, -1.0, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -0.5, -1.0, -0.5, -1.0, 0.5, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, -1.0, -1.0, 1.0, -0.5, -0.75, 0.0, 0.75, -0.25, -1.0, -1.0, ]);
    
    
    
    
    
    
    
    const array2 = new Float32Array([-0.5, 0.0, -0.25, 0.0, -1.0, 0.25, -0.25, -1.0, -0.25, -0.5, 1.0, -0.5, -1.0, 0.25, -0.5, 0.75, -0.25, 0.5, 0.25, 0.25, -0.75, -0.75, 0.25, 0.75, -1.0, 0.75, -1.0, -0.75, -0.75, -0.25, -0.75, -0.75, 0.5, 0.25, 1.0, -0.25, -0.75, 0.5, -0.75, -0.75, -0.5, -0.75, 0.5, -0.5, -0.5, 0.25, 0.25, -0.75, 1.0, -1.0, -1.0, 0.0, -0.75, 0.0, -0.25, -0.25, 0.75, -0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.25, -1.0, -0.25, 0.5, 1.0, 0.25, -0.5, 0.25, -0.25, -0.75, 1.0, -1.0, 0.0, -0.75, -0.25, 0.0, -0.75, -0.75, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, -0.25, -0.25, -1.0, 0.75, 0.25, 0.5, ]);
    
    const array3 = new Float32Array([0.25, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 0.5, -0.75, -1.0, -1.0, 0.0, 0.75, -0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -0.5, -0.75, 0.5, 1.0, 1.0, 0.5, 0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 0.75, 0.5, 0.0, 0.25, 0.75, 0.5, 0.5, 0.5, 1.0, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, -0.75, 0.5, 1.0, 0.75, 1.0, -1.0, -1.0, 0.25, -0.25, -0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.75, 0.75, -1.0, -0.25, -0.5, 0.5, 1.0, -0.75, 1.0, 0.75, -0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 0.5, 0.25, -1.0, -0.75, -0.5, -0.75, -0.75, -0.25, 1.0, 0.25, -0.75, 0.75, 0.5, 0.25, -0.75, ]);
    
    
    const array4 = new Float32Array([1.0, 0.25, -1.0, -1.0, 0.5, 1.0, 0.25, -0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.5, 0.0, 0.5, 1.0, 1.0, 0.25, 0.75, -0.75, 0.5, -0.25, 1.0, -1.0, 0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.5, -0.5, 0.75, 1.0, -1.0, 0.5, -0.25, -0.5, -0.25, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, -0.75, 1.0, 0.0, -0.75, -0.75, 0.0, -0.5, -0.75, 0.0, 0.0, 0.25, -1.0, 1.0, 0.0, -0.75, -0.5, 0.25, 0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.25, -0.75, -0.5, 0.5, 1.0, 0.75, 0.5, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -0.25, 0.25, 0.25, -0.75, -0.75, 1.0, 0.0, ]);
    const array5 = new Float32Array([-0.75, 0.0, 0.25, 0.5, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, 1.0, 0.5, 0.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.75, 0.5, -0.25, -1.0, 0.75, 0.25, -0.75, 1.0, 0.75, -1.0, 0.75, 0.25, -0.5, -0.25, -1.0, 0.75, 0.5, 0.5, 0.5, -0.25, 1.0, -1.0, 0.75, -0.25, -0.75, -0.5, 1.0, 0.5, 0.25, 0.25, 0.5, 0.75, 0.0, 0.0, 0.75, -0.25, 0.75, -0.5, 0.75, 0.5, 0.25, -0.75, -1.0, -1.0, -0.25, 0.5, -0.25, 0.75, -0.25, -1.0, -1.0, 0.0, -0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 0.75, 0.0, 0.75, 0.5, -0.25, 0.75, -1.0, 0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.75, 0.0, 1.0, -0.5, 0.0, -0.25, -0.25, -0.5, -1.0, -0.75, 0.0, ]);
    
    const array6 = new Float32Array([1.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.0, -0.25, 0.25, 1.0, 1.0, 0.25, 1.0, -0.5, -0.5, -0.5, -0.75, 0.0, 1.0, -1.0, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, -1.0, -1.0, -0.25, -0.25, 0.75, 0.0, 0.5, 0.25, 0.75, -1.0, 0.5, -0.25, 0.75, -0.75, -0.5, 0.0, -1.0, -1.0, -0.75, 0.5, -1.0, 0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 1.0, -1.0, 0.0, 0.0, 1.0, 0.5, 0.5, 1.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, -1.0, 0.75, 0.5, -0.25, -0.5, -0.25, -1.0, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, -1.0, -1.0, 0.75, 0.25, 0.25, -0.75, 1.0, 0.25, -0.75, 0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([0.5, -0.25, 0.5, -0.25, 0.75, 0.25, -0.5, 0.5, -1.0, 0.0, 0.75, -1.0, -0.75, 0.75, -0.25, -0.25, 0.0, 0.0, -0.5, -1.0, -0.25, -0.75, 0.75, 1.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.5, -0.5, 0.5, -0.75, -0.5, 1.0, -0.75, -0.75, -1.0, 0.0, -0.25, 0.25, -0.5, 0.25, 1.0, 1.0, 0.5, -1.0, 0.5, 0.5, -1.0, -0.5, 1.0, -0.5, 1.0, 0.5, 0.25, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, 0.75, -0.25, 0.0, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, -0.25, -0.5, -0.5, 0.25, -1.0, -1.0, 1.0, 0.5, 0.0, 0.0, -0.5, 0.0, -0.25, 0.5, 1.0, 0.25, 0.75, 0.75, 0.0, 0.0, 0.0, 1.0, 0.25, 0.25, 0.0, 0.25, 0.75, -0.5, 0.5, ]);
    const array8 = new Float32Array([0.25, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.5, 0.5, 0.5, -1.0, 0.25, -1.0, -1.0, 1.0, -1.0, -0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 0.5, 0.75, 0.75, -1.0, -0.75, 0.25, 0.0, 0.0, 0.75, -1.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.25, -0.5, 0.25, -1.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.0, 0.0, 0.0, 0.25, -1.0, -0.75, -0.75, 0.0, -0.5, 0.25, 1.0, -0.75, 1.0, -1.0, -1.0, -0.5, -0.75, -0.5, 0.75, 0.0, 1.0, 0.0, 1.0, -0.75, -0.75, 0.5, 0.5, 0.75, 0.0, 0.5, 0.0, 0.75, -0.75, -1.0, 0.75, -0.25, 0.75, -0.25, 0.5, -1.0, ]);
    const array9 = new Float32Array([0.0, 0.5, -1.0, 0.5, 0.75, 0.75, 0.0, 1.0, -0.75, 1.0, -0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 0.25, 0.25, 0.25, 1.0, -0.75, 1.0, 0.5, -0.75, 0.5, 0.0, -0.5, -0.75, 1.0, 0.25, -1.0, 1.0, -1.0, 0.25, 0.25, -0.5, 0.5, 0.25, -0.5, 0.5, 0.5, 0.25, 0.5, -0.5, -0.25, -0.25, 0.25, -0.5, -0.75, 0.75, 1.0, -0.75, 1.0, -0.75, -0.25, -0.5, 0.25, -1.0, 0.75, -0.75, 1.0, -0.75, -0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.25, 0.25, -0.25, -0.5, -0.25, -0.75, -1.0, 0.25, 0.5, 0.25, -0.25, -1.0, 0.75, 0.5, -0.75, -0.25, 0.25, -0.75, 0.0, 0.75, -1.0, -0.5, 0.75, -0.5, 0.25, 0.5, -0.25, 0.0, 0.5, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.pushErrorScope("validation");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer300.destroy()
    
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array10 = new Float32Array([-1.0, -0.5, -0.5, 0.5, -0.5, 0.75, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.5, 0.0, -1.0, -0.5, 0.5, -1.0, 0.0, -1.0, -0.5, -0.5, 0.5, -0.25, -0.5, 0.0, -0.5, 1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -1.0, 0.25, -1.0, -0.75, -0.75, 0.5, -0.5, -0.75, -1.0, 0.5, 0.25, -0.75, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, -0.5, -0.75, 0.5, -0.75, 0.25, -0.5, -0.75, -0.25, 0.25, 1.0, -0.5, -0.5, 0.5, 1.0, 0.25, 0.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.75, 0.0, 0.25, -1.0, 1.0, -0.75, -0.75, 0.5, 1.0, 0.0, 0.75, -0.25, -1.0, 0.25, 0.75, 0.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.5, -1.0, -1.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device30.pushErrorScope("out-of-memory");
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder100.popDebugGroup();
    const array11 = new Float32Array([0.5, 1.0, -1.0, 0.5, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, 0.75, 0.0, -0.25, -0.75, -0.75, 0.5, 0.0, 0.0, -0.75, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, 0.25, 0.5, 0.0, 0.5, -0.75, 1.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -0.75, 0.75, 0.5, -0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -0.25, 0.0, 0.5, -0.25, -0.25, -1.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.75, -0.5, 1.0, 0.25, 0.75, 0.5, -0.25, -1.0, -1.0, 0.75, 0.0, -0.75, -1.0, -0.25, 0.0, 0.5, 1.0, 0.0, 0.25, -0.75, -0.75, 0.0, -0.75, 1.0, -0.5, 1.0, -0.5, 0.75, 0.5, 0.5, 0.5, -0.5, -1.0, -1.0, 0.0, ]);
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    device10.pushErrorScope("validation");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder101.popDebugGroup();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array12 = new Float32Array([0.25, -0.25, 0.0, -0.75, 0.5, -0.25, -1.0, -1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -1.0, -0.5, 0.75, -0.25, -0.25, 0.5, -0.75, -0.5, -0.5, -0.75, 0.0, 0.5, -0.25, -0.5, -0.25, 0.25, 0.75, 0.25, -0.25, -0.5, 0.0, -1.0, -1.0, 0.75, 1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -1.0, -1.0, -0.5, 0.25, 0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, 0.75, -0.75, -0.25, 0.5, -0.25, 0.75, 1.0, -0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -0.75, 0.5, -0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.5, -0.75, -0.75, -0.25, -1.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 0.25, 1.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.25, 1.0, -1.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    query300.destroy()
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device30.queue.writeBuffer(buffer302, 0, array12, 0, array12.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    buffer101.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    buffer302.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    query201.destroy()
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture200.destroy();
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    
    query300.destroy()
    command_encoder101.popDebugGroup()
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query300.destroy()
    
    
    device10.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    buffer301.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array13 = new Float32Array([0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 0.75, -0.25, -0.5, -0.25, -0.25, 0.25, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, -0.5, -1.0, -0.5, -1.0, -1.0, 0.0, 0.25, 0.0, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.75, 0.75, 1.0, -1.0, -1.0, 0.75, 1.0, 0.5, 0.0, -0.75, -0.75, -0.5, 1.0, 0.75, 1.0, 0.5, 0.0, 0.5, -0.75, 1.0, 0.75, -0.75, -0.25, 0.5, 0.25, 1.0, 0.25, -0.5, -1.0, -0.25, -0.75, -0.75, -0.5, 0.5, -0.25, -0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -1.0, -0.75, 0.0, 0.5, -0.5, 0.25, 1.0, -0.5, 0.75, -0.5, -0.75, -1.0, -1.0, 0.75, 0.0, -0.75, 0.75, -1.0, 0.5, 0.25, 1.0, -1.0, 0.0, 0.75, 0.5, ]);
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const array14 = new Float32Array([-1.0, 1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 0.75, 1.0, -0.75, 0.75, 0.0, -0.25, 0.75, 1.0, 1.0, 1.0, 0.5, -1.0, 0.5, -1.0, 0.25, -0.5, 0.25, 1.0, 0.75, 1.0, -0.75, 0.75, -0.5, -1.0, 1.0, 0.0, -0.75, 0.25, -0.75, -0.5, -1.0, 1.0, 0.5, -1.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.0, 1.0, 0.25, 0.5, 0.0, 1.0, 1.0, -0.75, 1.0, 0.0, 0.75, -0.25, 0.5, 1.0, -1.0, -0.75, -0.5, 1.0, -0.5, 0.5, 0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.75, -1.0, 0.75, -0.5, 0.75, -0.75, -0.5, 0.5, 0.0, 1.0, 1.0, 0.5, 0.5, 0.75, 0.75, -0.25, -0.25, 0.0, 0.75, -0.75, 0.0, 0.5, 0.5, -0.25, 0.5, -0.5, 0.0, -1.0, ]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2010.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setPipeline(render_pipeline202);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.pushErrorScope("internal");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    buffer201.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture202.destroy();
    device30.pushErrorScope("internal");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_buffer201 = command_encoder201.finish();
    device20.queue.writeTexture({ texture: texture201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    render_pass_encoder2020.executeBundles([])
    compute_pass_encoder3001.setPipeline(compute_pipeline300);
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    texture300.destroy();
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_buffer202 = command_encoder202.finish();
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    query301.destroy()
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer200, 0, array13, 0, array13.length);
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.popDebugGroup();
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    render_pass_encoder2020.setPipeline(render_pipeline204);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3001.setBindGroup(0, bind_group300);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    buffer303.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array13, 0, array13.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer305,
        0
    )
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline202);
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    compute_pass_encoder2000.setPipeline(compute_pipeline204);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    
    
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    device30.queue.writeBuffer(buffer305, 0, array14, 0, array14.length);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    render_pass_encoder2030.setVertexBuffer(0, buffer203);
    buffer205.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    query202.destroy()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    texture201.destroy();
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer306, 0);
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3010.setPipeline(render_pipeline302);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder2000.setPipeline(render_pipeline204);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.drawIndirect(buffer203, 0);
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    compute_pass_encoder3001.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setStencilReference(1);
    query203.destroy()
    render_pass_encoder2020.popDebugGroup();
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.writeBuffer(buffer306, 0, array12, 0, array12.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    buffer204.destroy()
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3001.insertDebugMarker("marker")
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group204);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    texture300.destroy();
    texture301.destroy();
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeBuffer(buffer2010, 0, array6, 0, array6.length);
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder2040.setPipeline(render_pipeline208);
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout306,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const array15 = new Float32Array([-0.25, -0.5, -1.0, 0.0, 0.0, 1.0, 0.5, -0.5, -0.25, -0.75, 0.5, 0.75, -0.5, 0.0, -0.25, 0.75, -0.25, 1.0, -0.25, -0.25, 1.0, -0.25, 0.25, 1.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.25, 0.25, 1.0, 0.5, -1.0, 0.75, -0.75, -0.75, -1.0, -1.0, -1.0, -0.75, 0.5, -0.5, 1.0, -0.5, 1.0, 1.0, 0.0, -0.25, -0.25, 0.5, 0.25, 0.25, 0.25, 0.0, -0.25, 0.25, 0.25, -0.75, -0.75, 1.0, -0.5, 0.75, 0.25, 0.75, 0.75, 0.75, 0.5, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -0.5, 0.75, 0.5, -0.75, 0.75, 0.0, 0.25, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.75, -1.0, 0.75, 0.75, 1.0, 0.5, 0.0, -0.25, ]);
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    
    buffer209.destroy()
    
    render_pass_encoder2020.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query203
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setPipeline(render_pipeline203);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group206);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2030.drawIndirect(buffer206, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2017, 0);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder3011.setPipeline(render_pipeline303);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder2000.setVertexBuffer(0, buffer2011);
    render_pass_encoder2001.setVertexBuffer(0, buffer2015);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3011.setBindGroup(0, bind_group301);
    render_pass_encoder3011.setVertexBuffer(0, buffer306);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3011.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2020.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2030.popDebugGroup();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    render_pass_encoder2040.setVertexBuffer(0, buffer202);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2040.draw(3);
    compute_pass_encoder3001.end();
    render_pass_encoder3011.end();
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder2001.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3011, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2000.end();
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2019, "uint16");
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.popDebugGroup();
    command_encoder200.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder3011.draw(3);
    render_pass_encoder2000.draw(3);
    const command_buffer200 = command_encoder200.finish();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3014, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3014, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3010.setVertexBuffer(0, buffer308);
    render_pass_encoder2000.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3015, 0);
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder3011.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder3011.drawIndirect(buffer3012, 0);
    render_pass_encoder2000.end();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder3011.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder3010.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder3011.drawIndirect(buffer306, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.end();
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder2001.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3018, 0);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder2001.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3010, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.end();
    compute_pass_encoder3001.popDebugGroup()
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3011.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder3010.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3011.drawIndirect(buffer306, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3001.setBindGroup(0, bind_group306);
    device30.queue.submit([command_buffer301, ]);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3023, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder3011.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.end();
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
}