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
    
    
    const array0 = new Float32Array([-0.25, 0.75, 0.0, 0.75, 0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.25, -1.0, 0.0, 0.5, 0.25, -0.5, -0.25, -0.25, 0.25, -0.75, 1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.25, 0.0, -0.5, 0.0, 0.75, -0.5, 0.25, 0.75, 0.75, 1.0, 0.25, 0.25, -0.75, -0.75, 0.0, 1.0, 0.0, -0.75, 0.25, -0.25, 0.75, 0.75, -0.75, -1.0, -0.5, -0.5, 0.0, -0.25, 0.75, 0.0, 0.75, 0.5, -1.0, -0.25, -0.25, 1.0, 0.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.25, 0.0, -0.75, -0.5, 0.5, 0.25, -0.25, -1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.5, 0.75, -0.25, -1.0, -0.75, 0.5, 0.0, -0.75, 0.0, 0.75, -0.5, 0.25, -0.25, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, 0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 0.5, 1.0, -1.0, 0.75, -0.5, 0.5, -1.0, 1.0, 1.0, 0.25, -0.5, 0.0, 0.0, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, -0.25, 1.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.75, -0.75, 1.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.0, -0.5, 0.75, -0.75, -1.0, -0.5, -0.75, 0.75, 0.25, -1.0, 0.0, -0.5, -0.25, 0.25, -0.75, -1.0, 1.0, 0.75, -0.25, -0.75, -0.25, 0.75, -0.75, -0.75, 1.0, 0.5, -1.0, 1.0, 0.0, -0.75, -0.75, 1.0, -0.75, 0.0, -0.25, -0.5, -1.0, 0.0, -0.5, -0.5, 0.0, -0.25, 0.5, 0.0, -0.75, 0.5, 0.0, -0.5, -1.0, 1.0, -0.25, 0.0, -1.0, -1.0, -0.25, 1.0, 0.25, 0.25, 0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const array2 = new Float32Array([0.25, -0.25, -0.25, 0.75, 1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 0.25, -0.75, 0.25, 0.0, -0.25, 0.25, 0.5, 0.0, -0.5, 1.0, 0.5, 0.25, 0.25, 0.5, -1.0, -1.0, 0.75, -0.25, 0.5, 0.5, -0.25, 0.0, -1.0, 0.25, 0.75, 0.75, -0.5, -0.75, -1.0, 0.25, -0.25, -0.25, -0.5, -0.25, -0.75, 0.25, -1.0, 1.0, -0.25, 0.25, 0.75, -1.0, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, 0.75, 0.0, 1.0, -0.25, -1.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.75, -0.25, -0.75, -0.75, -0.25, -1.0, -0.5, -0.25, 0.0, 0.0, 0.5, 1.0, 0.75, 0.5, -0.75, -0.75, 1.0, -0.75, -0.75, -0.75, -0.75, -0.5, 0.25, 0.75, -0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    device10.pushErrorScope("out-of-memory");
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array3 = new Float32Array([-0.25, -0.75, 1.0, -0.5, 0.5, 0.5, -0.5, -0.75, 0.75, 0.5, -0.75, -0.25, 0.0, -0.5, 0.0, -1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.5, 0.5, 0.5, -0.75, 0.25, 0.0, 0.5, -0.5, 0.75, 0.75, 0.5, 1.0, 1.0, -0.25, -0.5, -0.5, 0.75, 1.0, -1.0, -0.75, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, -0.5, -1.0, 1.0, -0.75, 0.75, 0.75, 0.25, 1.0, 0.75, -1.0, 0.75, 0.5, -0.5, -1.0, -0.75, 0.25, 0.75, 0.5, 0.25, -0.75, 0.0, 0.5, 0.75, 0.5, -1.0, 0.25, -0.25, 0.0, 0.25, -0.5, -1.0, -0.75, 0.0, 0.5, 1.0, 0.75, 1.0, -0.5, -0.75, 0.25, -0.25, -0.25, 0.0, -0.25, 0.0, 0.75, 1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([-0.5, 0.0, 0.75, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, 1.0, -1.0, 0.75, 0.25, -1.0, -0.25, 0.5, 1.0, 0.75, 0.0, -1.0, 0.0, 1.0, 0.25, -0.5, -0.5, -0.75, 0.25, 0.25, 0.0, -0.75, 1.0, 0.5, 0.25, 0.5, 0.75, -1.0, -0.75, 0.25, -0.75, -0.5, -0.75, 0.5, 0.5, 1.0, -0.25, 0.75, 0.5, 0.0, 0.75, 0.5, 1.0, -1.0, -1.0, 0.0, 0.5, -0.5, -1.0, 0.5, -1.0, 0.25, -0.25, 0.25, 1.0, -0.5, 1.0, 0.75, -0.75, 0.5, 0.25, 0.75, 0.75, 0.75, -1.0, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.5, 0.0, -0.75, -1.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.0, 0.75, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
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
    const array5 = new Float32Array([-0.25, -1.0, 0.25, -0.25, -0.25, -0.25, 0.75, -0.5, 1.0, -0.25, -0.5, -0.25, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, 0.25, 0.75, -1.0, -0.25, -1.0, -1.0, -1.0, 0.0, 0.5, 1.0, -0.5, -1.0, 0.75, 0.5, -0.25, 0.75, -0.25, -1.0, -0.75, 1.0, -0.25, -0.5, 0.25, 0.75, -0.75, 0.0, 1.0, -0.75, -0.25, 0.0, -1.0, 0.5, -0.5, 0.25, 0.25, -0.25, -0.5, -0.75, -1.0, 0.75, 0.75, -0.25, 0.75, 0.25, 0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.5, 0.25, -0.75, 0.0, -0.25, -1.0, 0.25, 0.25, -1.0, 0.25, 0.0, 0.75, 0.0, -0.75, -0.25, 0.0, -0.25, 0.25, 0.25, -1.0, -0.25, -0.25, 0.5, -0.25, -1.0, 0.25, -0.5, 0.75, -0.5, -0.25, ]);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.pushErrorScope("validation");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    device10.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder300.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.5, -0.5, 0.0, -1.0, -1.0, -0.75, 0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.75, 0.25, 1.0, 0.5, 0.25, -0.75, 0.75, -0.25, 0.25, -0.75, 0.25, 0.75, 0.0, 0.75, -1.0, -0.5, 1.0, 0.5, 0.25, 0.5, 0.25, 0.0, -0.25, 0.0, -0.5, -0.5, -0.75, -0.25, -0.75, -0.25, 0.5, 0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.75, -0.5, -0.25, 0.75, -0.25, -0.5, -0.5, -0.25, -0.25, -0.25, 1.0, -0.25, -1.0, 1.0, 0.0, -0.25, -1.0, -1.0, -0.5, -0.75, -0.75, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.75, -1.0, 0.75, 1.0, 0.0, 0.0, 0.25, -1.0, -0.25, 0.0, -0.25, -0.25, 0.25, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 1.0, ]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder300.popDebugGroup()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    device20.pushErrorScope("internal");
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
    const array7 = new Float32Array([-0.5, -0.25, -0.5, -0.75, 0.0, -0.75, -0.75, -1.0, 0.25, -0.5, 1.0, -0.25, -1.0, -0.5, -0.5, 0.0, 1.0, 0.0, 0.5, -1.0, 1.0, 0.0, 0.25, -0.25, -0.5, -1.0, 0.75, 0.25, -1.0, -0.5, 0.0, 1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 1.0, -0.5, 0.0, -1.0, -1.0, 0.5, -1.0, 0.5, 0.5, -0.5, -0.75, -0.5, 1.0, -0.25, 0.75, 0.25, 0.0, -0.75, 0.25, -1.0, 0.5, 0.25, 0.75, 0.75, 0.75, 0.75, 0.5, 0.5, 0.5, 1.0, 1.0, 0.25, -0.25, -0.25, 0.25, -1.0, 0.5, 1.0, -0.25, 0.75, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 0.5, 0.0, 0.25, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.5, 1.0, 0.75, -1.0, ]);
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder302.popDebugGroup()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array8 = new Float32Array([1.0, -0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.5, 0.75, -1.0, -0.75, 0.5, 0.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.5, 0.25, 0.5, -0.5, 0.5, -0.5, 0.75, 1.0, 0.5, 1.0, -0.75, 0.0, 1.0, -0.25, 0.25, 0.5, -0.5, 1.0, 0.5, 0.75, 0.25, -1.0, 0.25, -0.5, 0.5, -0.75, 0.25, -1.0, 0.25, 0.25, 0.25, 0.5, -0.75, 0.25, 0.25, -1.0, 1.0, 0.0, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, 0.5, -0.75, -0.25, -0.25, 1.0, 0.0, 0.5, 0.75, -0.75, 0.5, -1.0, -0.5, 0.5, -0.75, 0.5, -0.5, -0.75, 0.0, 0.75, -0.5, -0.5, -1.0, -0.5, 0.5, -0.25, -0.75, -0.25, 1.0, -0.75, 0.25, 0.5, 0.5, 0.5, 0.5, -0.5, ]);
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    compute_pass_encoder3030.insertDebugMarker("marker")
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.insertDebugMarker("marker")
    device40.destroy();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    compute_pass_encoder2000.popDebugGroup()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder202.pushDebugGroup("mygroupmarker")
    const array9 = new Float32Array([0.0, -0.75, -1.0, 0.25, 0.75, 0.5, -0.25, -1.0, 0.25, -0.25, -0.75, -0.25, 0.5, 0.5, -0.5, 0.75, 0.0, 1.0, 0.0, -0.5, -0.25, 0.25, -0.25, -0.25, -0.5, -1.0, -1.0, 0.0, -1.0, -0.5, 0.0, -0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.0, 0.25, -0.25, -1.0, 0.0, -0.75, 0.25, -0.5, 0.25, -0.75, 0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 0.5, 0.25, -0.25, -0.5, 1.0, -1.0, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, -0.5, -0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.75, 0.5, 1.0, 0.75, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, -0.75, 0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 1.0, 0.0, 0.5, 0.0, -0.25, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    command_encoder202.popDebugGroup()
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder2010.popDebugGroup()
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    compute_pass_encoder3030.popDebugGroup()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const array10 = new Float32Array([1.0, 0.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 0.0, -0.75, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 1.0, 1.0, 0.0, 0.75, -0.25, -1.0, -0.25, 0.75, -0.5, -0.25, 0.5, -0.75, -0.75, 0.5, 1.0, -0.5, 1.0, -1.0, 0.75, -0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.25, -0.25, -0.5, 0.75, 0.25, 0.0, 0.5, 0.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.5, -0.25, -1.0, -0.75, 0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 0.0, 0.25, -0.25, -1.0, -0.5, -0.5, -0.25, -0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 0.0, 0.5, -1.0, -0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 0.75, 1.0, ]);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    compute_pass_encoder2010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const array11 = new Float32Array([0.5, 0.75, -1.0, -1.0, -0.25, 0.0, -0.25, -0.25, -0.75, 1.0, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.5, 0.5, 0.25, 0.0, -0.25, -0.75, 0.75, 0.75, -0.25, 1.0, 0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 1.0, 1.0, -0.5, 0.25, -0.25, 0.25, -0.5, -0.5, 0.25, 0.0, -0.5, -0.25, 0.25, -0.5, -0.25, -0.75, 0.5, -0.25, 0.25, -0.25, 0.0, 0.5, 0.5, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 1.0, 0.0, -0.5, 1.0, 0.5, 0.0, -1.0, 0.25, 0.5, 0.5, 0.75, 0.25, 0.75, -1.0, -0.75, 1.0, -0.75, -1.0, -1.0, -0.25, 0.5, 1.0, 1.0, 0.0, -0.25, 0.75, 0.25, 0.25, 1.0, -0.5, -0.5, -0.75, -0.75, 0.5, 0.75, ]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    compute_pass_encoder3030.popDebugGroup()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    compute_pass_encoder3030.popDebugGroup()
    device20.pushErrorScope("out-of-memory");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    device60.pushErrorScope("out-of-memory");
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    compute_pass_encoder3020.popDebugGroup()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
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
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    compute_pass_encoder3030.insertDebugMarker("marker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    
    
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    
    command_encoder701.popDebugGroup()
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    
    
    
    
    command_encoder600.popDebugGroup()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    
    
    
    
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder304.popDebugGroup()
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    compute_pass_encoder3030.popDebugGroup()
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    
    compute_pass_encoder2030.popDebugGroup()
    
    const array12 = new Float32Array([0.25, 0.25, 0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.5, -0.5, -0.5, 0.25, 0.25, -1.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.75, -0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 0.75, 0.75, 0.5, 0.5, 0.75, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, 0.5, 0.5, -0.5, 0.25, 0.25, -1.0, 0.75, 1.0, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 0.75, 0.0, -0.5, -0.5, 0.5, -0.75, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, -0.25, 0.0, 0.5, -0.5, 0.25, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, -0.25, 0.5, -0.5, 0.25, 0.0, 0.25, -0.25, -0.75, -0.5, 1.0, 0.5, -0.25, 1.0, 0.25, 0.0, 1.0, -0.5, ]);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    compute_pass_encoder7000.popDebugGroup()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    
    
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    command_encoder600.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}