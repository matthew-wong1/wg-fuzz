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
    const array0 = new Float32Array([-0.5, 0.5, 0.0, 0.0, 0.75, 0.75, 0.75, 1.0, -0.5, 0.5, 1.0, 0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 0.25, -0.25, 1.0, 0.75, 0.25, -1.0, 0.5, 0.0, -0.75, -0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -0.5, 0.75, 0.25, -0.25, -0.25, -1.0, -1.0, -0.75, -0.25, 0.75, 0.5, 1.0, -0.25, 0.75, 0.75, 0.75, 0.25, -0.5, 0.5, -0.5, 1.0, -0.5, -1.0, -0.5, 0.75, 1.0, 0.25, 0.0, 0.75, -0.25, -0.75, -1.0, 1.0, 0.25, -0.25, 0.5, 1.0, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, -0.25, 0.0, -1.0, -0.25, -1.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.0, -1.0, 1.0, 0.0, ]);
    
    
    
    
    
    const array1 = new Float32Array([1.0, 0.5, -0.75, 1.0, 0.5, 1.0, -1.0, -0.5, -1.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.25, -1.0, 1.0, 0.5, -0.5, 1.0, 0.5, 0.75, 0.0, -0.75, -0.25, -0.75, -1.0, -1.0, 0.5, -1.0, -0.25, 1.0, -0.75, -0.25, 0.5, 0.5, 0.75, 1.0, 0.5, -0.75, 0.5, 1.0, 0.5, 0.25, 0.75, -0.25, -1.0, 0.25, 1.0, -0.5, 0.75, 0.75, -1.0, 0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, -1.0, -0.25, -1.0, -0.75, -0.75, 0.0, 0.75, 0.0, 0.25, 0.0, -0.25, -1.0, -0.5, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, -0.25, 0.75, 0.75, -0.25, -0.5, 0.5, -0.5, 1.0, 0.5, -0.5, -0.25, 1.0, 1.0, 0.25, 1.0, 0.25, -0.25, -0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([0.5, -0.25, 0.0, 0.0, 0.0, 0.0, 0.75, 0.5, 0.5, 1.0, -0.75, 0.75, 0.0, -1.0, 0.0, 0.5, 0.0, 0.25, -1.0, 1.0, 0.25, -0.75, -0.75, 1.0, 0.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -1.0, -0.25, 0.25, -0.75, 1.0, 0.75, 0.5, 0.0, 1.0, -0.75, -0.75, 0.75, 0.0, 0.75, 0.0, -1.0, -0.75, -0.75, 0.5, 0.5, 0.0, -0.25, 0.5, 0.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.0, -0.75, 1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.0, 0.0, -1.0, -0.25, 1.0, -0.75, 0.0, 0.75, -0.75, -0.5, 0.0, -0.75, 0.0, -0.25, -1.0, 0.0, 0.75, 0.0, 0.0, -1.0, 0.0, 1.0, 0.25, -0.75, -1.0, 0.0, 0.5, 0.75, -0.75, -0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("internal");
    device00.queue.submit([]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const array3 = new Float32Array([-0.75, -0.5, -1.0, -0.25, 0.5, -0.75, 0.25, -0.75, 1.0, -1.0, 0.75, -0.25, 0.75, 0.5, -0.25, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, -1.0, 1.0, -0.5, -0.25, 0.25, 1.0, 1.0, -0.5, -0.75, 1.0, 0.0, 0.0, 0.0, 0.25, -1.0, 0.5, -0.5, -1.0, 1.0, -1.0, -0.25, -0.75, -0.75, 0.5, -0.5, 0.25, -0.75, -0.75, -0.75, 0.25, 0.75, 1.0, 0.5, 1.0, 0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.5, 0.75, -0.5, 0.5, 1.0, 0.25, -0.75, -1.0, -0.75, 0.25, 0.25, 0.75, 0.5, -1.0, 0.75, -0.5, -0.5, 0.75, 0.75, 0.0, 0.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.5, 0.0, -1.0, 0.25, -1.0, -1.0, 0.5, -0.25, 0.0, ]);
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const array4 = new Float32Array([-0.25, -0.25, -0.5, -0.5, -0.5, 1.0, -0.75, -0.75, 0.0, -0.75, -0.25, -0.75, -0.25, 0.25, 0.25, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, 0.75, 1.0, -0.75, 1.0, 0.0, 0.75, 0.75, -0.75, 0.25, 0.5, -0.75, 0.0, 1.0, 0.25, -0.25, -0.25, -1.0, 0.5, 0.75, -0.75, -0.75, -0.25, 0.25, -1.0, -0.75, -1.0, -0.25, 0.0, 0.0, 0.25, -0.75, 1.0, -0.75, 0.75, -0.5, -0.75, 0.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.75, -0.75, -0.75, 1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.75, 0.75, -0.25, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, -0.75, -0.5, 0.75, -1.0, -0.5, 1.0, -1.0, 0.0, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.75, -0.5, 0.25, 0.25, 0.75, ]);
    device00.pushErrorScope("internal");
    
    
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query200.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    
    device10.queue.submit([]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device40.pushErrorScope("out-of-memory");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query101.destroy()
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const command_buffer100 = command_encoder100.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    device40.pushErrorScope("validation");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device30.destroy();
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.insertDebugMarker("marker")
    device40.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    
    query001.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    query001.destroy()
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query001.destroy()
    const array5 = new Float32Array([0.0, 0.25, 0.75, 1.0, 0.5, -1.0, 0.5, 0.5, 0.75, 0.75, -0.25, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -0.25, 0.75, -0.75, 0.5, -0.75, -0.25, 1.0, -1.0, -0.5, -0.5, 0.0, 1.0, 0.0, 0.5, 0.5, 0.5, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.5, -0.75, -0.5, 0.25, 0.25, 0.75, -1.0, 1.0, 1.0, -1.0, -0.75, -1.0, 0.5, -0.75, 0.25, -0.75, 0.75, 1.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 0.5, -1.0, 0.25, -0.5, -0.25, -1.0, -0.25, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, -1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, -1.0, 0.0, -0.5, -1.0, 0.0, 0.25, 0.5, -0.25, 1.0, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query100.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    query001.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    query600.destroy()
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    device60.pushErrorScope("internal");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    compute_pass_encoder6000.popDebugGroup()
    query103.destroy()
    
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer000 = command_encoder000.finish();
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device70.destroy();
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder6010.insertDebugMarker("marker")
    query100.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    compute_pass_encoder4010.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
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
    
    compute_pass_encoder1010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    query101.destroy()
    query002.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    device10.pushErrorScope("out-of-memory");
    command_encoder102.insertDebugMarker("mymarker");
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    command_encoder602.insertDebugMarker("mymarker");
    
    query100.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    device10.pushErrorScope("out-of-memory");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    device00.pushErrorScope("internal");
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    
    query105.destroy()
    command_encoder603.insertDebugMarker("mymarker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    query103.destroy()
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    compute_pass_encoder6000.popDebugGroup()
    
    query102.destroy()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder602.insertDebugMarker("mymarker");
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder603.insertDebugMarker("mymarker");
    query001.destroy()
    const array6 = new Float32Array([-0.75, 0.25, -0.5, 0.25, 0.75, 0.25, 0.75, -0.5, 0.5, 0.5, -0.25, -1.0, 1.0, 0.0, 0.0, 0.0, 0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -0.75, -1.0, 1.0, 0.5, 0.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, 0.5, -0.5, -0.75, 0.5, 1.0, -1.0, -1.0, 0.5, 0.75, -1.0, -1.0, -0.75, 0.25, -0.75, 0.0, 0.75, -0.75, -0.75, 0.75, 0.0, 0.5, -0.5, -0.5, -0.5, 0.5, 0.0, 1.0, 0.0, 0.25, -0.25, -0.75, -0.75, -0.25, 0.75, 0.75, 1.0, 0.5, 0.5, 0.0, -0.5, 0.75, -0.75, -0.75, -0.25, 0.75, -1.0, 0.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.25, 0.0, 0.75, 0.0, 0.25, -0.5, 0.0, 0.5, 0.25, 0.5, -0.5, 0.0, 0.75, ]);
    query102.destroy()
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    command_encoder003.insertDebugMarker("mymarker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer300 = command_encoder300.finish();
    device10.pushErrorScope("validation");
    compute_pass_encoder6010.insertDebugMarker("marker")
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    
    
    
    query105.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    command_encoder606.insertDebugMarker("mymarker");
    
    query001.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const array7 = new Float32Array([0.25, 0.5, -1.0, 0.75, -0.75, 1.0, 0.75, -0.5, -0.75, 0.5, 0.5, 0.0, -0.75, -0.25, 0.25, 0.0, -1.0, 0.75, 0.0, 0.5, -0.75, -0.5, 0.0, -1.0, -0.75, 1.0, 0.5, 1.0, -0.25, 0.0, 1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.0, -0.75, 0.0, -0.75, 0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 0.0, -0.25, -0.25, -0.25, -1.0, 1.0, -0.75, 0.0, -0.75, 0.0, 0.75, 0.25, -0.75, 0.75, 0.75, -0.5, 1.0, 1.0, 0.75, -0.5, -0.5, 1.0, -0.75, -0.5, 0.5, 0.5, 0.75, -1.0, -1.0, -0.5, 0.75, 0.75, 0.5, 0.0, 0.5, -1.0, 0.25, 0.75, 0.0, 0.0, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, 0.0, ]);
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query001.destroy()
    query600.destroy()
    const command_buffer605 = command_encoder605.finish();
    
    
    query102.destroy()
    const compute_pass_encoder6060 = command_encoder606.beginComputePass({ label: "compute_pass_encoder6060" });
    const command_buffer604 = command_encoder604.finish();
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    query601.destroy()
    
    
    
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder6060.pushDebugGroup("group_marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder0040.popDebugGroup()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    const command_buffer700 = command_encoder700.finish();
    query102.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    query105.destroy()
    
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    query000.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    device80.pushErrorScope("validation");
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6060.popDebugGroup()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder603.insertDebugMarker("mymarker");
    
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.submit([command_buffer000, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    query103.destroy()
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    
    
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query601.destroy()
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    command_encoder105.insertDebugMarker("mymarker");
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    query107.destroy()
    query103.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const command_encoder607 = device60.createCommandEncoder({ label: "command_encoder607" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder0020.popDebugGroup()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    command_encoder101.insertDebugMarker("mymarker");
    query500.destroy()
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    query100.destroy()
    command_encoder800.insertDebugMarker("mymarker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_buffer501 = command_encoder501.finish();
    query800.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const command_encoder608 = device60.createCommandEncoder({ label: "command_encoder608" });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const command_buffer801 = command_encoder801.finish();
    
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    query109.destroy()
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    query600.destroy()
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    query107.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const array8 = new Float32Array([-0.5, 0.75, 1.0, 0.0, 0.75, 0.25, 0.0, -1.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -1.0, 0.5, -0.25, 0.25, 1.0, 1.0, -0.5, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, 0.5, 1.0, 0.5, -0.25, -0.25, 0.0, -0.5, 0.5, -1.0, -0.5, -0.5, -0.25, 0.5, 0.75, -0.5, 0.75, -0.5, 0.0, -1.0, 1.0, 0.25, 0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 0.0, -0.25, -1.0, 0.25, -0.25, -0.25, -0.25, 0.5, -1.0, -0.75, -0.75, 0.25, -0.25, 0.5, -1.0, 0.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.5, 0.75, 0.5, -0.75, -0.75, 0.25, 0.25, -1.0, 0.25, -1.0, -0.25, 0.75, 0.5, -0.5, 0.0, 0.5, 0.5, -0.5, -1.0, 0.0, 0.25, ]);
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    compute_pass_encoder6000.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    query101.destroy()
    compute_pass_encoder4000.popDebugGroup()
    const compute_pass_encoder6080 = command_encoder608.beginComputePass({ label: "compute_pass_encoder6080" });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    compute_pass_encoder6020.insertDebugMarker("marker")
    const command_encoder609 = device60.createCommandEncoder({ label: "command_encoder609" });
    query603.destroy()
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    compute_pass_encoder6060.insertDebugMarker("marker")
    compute_pass_encoder6080.pushDebugGroup("group_marker")
    compute_pass_encoder6060.insertDebugMarker("marker")
    const query1012 = device10.createQuerySet({
        label: "query1012",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    query108.destroy()
    query109.destroy()
    command_encoder105.insertDebugMarker("mymarker");
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    const command_buffer609 = command_encoder609.finish();
    device80.queue.submit([command_buffer801, ]);
    const command_buffer607 = command_encoder607.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer104 = command_encoder104.finish();
    device60.queue.submit([command_buffer601, command_buffer604, command_buffer605, command_buffer607, command_buffer609, ]);
    compute_pass_encoder6080.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    const command_buffer606 = command_encoder606.finish();
    device60.queue.submit([command_buffer606, command_buffer607, ]);
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    const command_buffer002 = command_encoder002.finish();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer001 = command_encoder001.finish();
    device80.queue.submit([]);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
    device60.queue.submit([command_buffer600, command_buffer604, ]);
    device60.queue.submit([]);
    const command_buffer800 = command_encoder800.finish();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder6030.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.popDebugGroup()
    device50.queue.submit([]);
    device80.queue.submit([]);
    device00.queue.submit([]);
    device60.queue.submit([command_buffer604, command_buffer609, ]);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device60.queue.submit([command_buffer606, ]);
    compute_pass_encoder1010.popDebugGroup()
    device70.queue.submit([]);
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([]);
    device80.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device60.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    device60.queue.submit([command_buffer602, ]);
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([command_buffer002, ]);
    const command_buffer608 = command_encoder608.finish();
    device60.queue.submit([command_buffer608, ]);
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder6080.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder6080.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder6060.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder8000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder6000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([]);
    device60.queue.submit([command_buffer606, command_buffer608, ]);
    device60.queue.submit([command_buffer600, command_buffer604, ]);
    compute_pass_encoder6020.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0020.popDebugGroup()
    device50.queue.submit([]);
    device50.queue.submit([]);
    device60.queue.submit([command_buffer606, command_buffer608, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer602, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device10.queue.submit([command_buffer100, ]);
    device80.queue.submit([]);
    device60.queue.submit([command_buffer606, ]);
    compute_pass_encoder0020.popDebugGroup()
    device80.queue.submit([command_buffer800, command_buffer801, ]);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    compute_pass_encoder6060.popDebugGroup()
    device00.queue.submit([]);
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device60.queue.submit([command_buffer600, command_buffer605, ]);
    compute_pass_encoder0010.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    compute_pass_encoder0010.popDebugGroup()
    device60.queue.submit([command_buffer601, command_buffer602, command_buffer607, ]);
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder6030.popDebugGroup()
    device30.queue.submit([]);
    device80.queue.submit([]);
    const command_buffer603 = command_encoder603.finish();
    device60.queue.submit([command_buffer604, command_buffer605, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device60.queue.submit([command_buffer603, command_buffer605, command_buffer606, ]);
    device80.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device60.queue.submit([command_buffer601, command_buffer604, command_buffer608, ]);
    device10.queue.submit([command_buffer103, ]);
    device60.queue.submit([command_buffer600, command_buffer601, command_buffer603, ]);
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder6020.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0040.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    compute_pass_encoder6080.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    device60.queue.submit([command_buffer607, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder6060.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device60.queue.submit([command_buffer608, ]);
    compute_pass_encoder1020.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    device60.queue.submit([command_buffer605, command_buffer608, ]);
    device60.queue.submit([command_buffer607, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([]);
    device60.queue.submit([command_buffer608, ]);
    compute_pass_encoder6020.popDebugGroup()
    device60.queue.submit([command_buffer601, command_buffer608, ]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    device60.queue.submit([command_buffer602, command_buffer605, ]);
    compute_pass_encoder6080.popDebugGroup()
    device60.queue.submit([command_buffer604, command_buffer609, ]);
    compute_pass_encoder0030.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder4000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder0040.popDebugGroup()
    device60.queue.submit([command_buffer601, command_buffer602, command_buffer606, ]);
    device60.queue.submit([command_buffer606, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    device60.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder6030.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder6020.popDebugGroup()
    device60.queue.submit([command_buffer603, command_buffer606, ]);
    device10.queue.submit([command_buffer103, ]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder1020.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder6080.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
}