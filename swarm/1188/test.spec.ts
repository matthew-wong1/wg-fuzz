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
    const array0 = new Float32Array([0.5, -0.75, 0.0, -0.75, 0.75, 0.75, -0.75, -0.25, 1.0, -0.25, 0.0, 0.75, 0.5, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.75, 1.0, -1.0, -0.5, 0.5, -1.0, -0.5, 0.75, -1.0, 1.0, 0.75, -0.75, -0.75, -1.0, 0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 1.0, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, 1.0, 0.25, -0.75, -0.25, -0.25, -1.0, 0.5, -1.0, -1.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 1.0, -0.5, 0.25, -1.0, -0.75, 0.25, 1.0, 0.25, 0.75, 0.5, -0.5, 0.0, -0.75, 0.75, -0.75, 0.0, 0.25, 0.25, 1.0, 0.0, 0.0, -0.75, -0.25, 1.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.25, -1.0, -1.0, 0.75, 1.0, -0.25, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("validation");
    
    const array1 = new Float32Array([-0.75, -0.75, 1.0, 0.75, 0.0, -0.75, 0.25, 0.0, 0.0, 0.25, 0.5, 1.0, 0.5, -0.25, 0.25, 0.5, -0.25, 1.0, -0.25, -0.5, -0.75, 0.5, 0.25, 1.0, -1.0, -0.75, 1.0, 1.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 1.0, -1.0, 0.0, 0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.5, -1.0, -0.75, -0.5, 0.0, -1.0, -0.75, 0.0, 0.25, -0.75, 0.75, -1.0, -0.25, -0.5, 0.75, -0.5, -0.75, -0.5, 0.75, -1.0, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, -1.0, 0.25, 0.25, -0.25, 0.75, 0.75, 0.75, 1.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 1.0, -1.0, 0.75, 0.25, 0.25, ]);
    
    const array2 = new Float32Array([0.25, 1.0, -0.75, -0.25, -1.0, -1.0, 1.0, -0.5, 0.0, 0.75, 1.0, 0.75, 0.25, 0.25, 0.75, 0.0, 0.25, 0.25, 1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.0, -0.5, -0.75, -0.75, 0.25, 0.5, -0.25, 0.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.5, -1.0, -0.25, 0.0, 0.5, -0.25, 1.0, 0.0, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, -1.0, -1.0, 0.25, -0.75, 1.0, 0.25, 0.75, 0.0, 0.0, -0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -1.0, -1.0, -0.75, 1.0, 0.25, 1.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.25, 0.5, -1.0, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, 1.0, -0.25, -0.75, -1.0, -0.75, 0.5, -0.5, -0.75, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([-0.75, -0.5, -0.25, 0.0, -1.0, 1.0, 0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 0.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.75, 1.0, -1.0, 0.0, 0.75, 0.5, 0.25, -1.0, 0.0, 0.75, 0.75, 0.75, -0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.5, 0.25, 0.25, 0.75, -1.0, 0.5, -1.0, -0.5, 0.75, -0.75, 0.25, 0.0, -0.25, -1.0, -1.0, 0.25, -0.75, -0.5, 1.0, 0.25, 0.0, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, 0.5, 0.0, 0.75, 0.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.5, -0.75, 1.0, -1.0, -1.0, 0.75, 0.5, -0.75, 0.75, -0.5, -1.0, 0.5, 0.25, 0.0, -1.0, 0.5, -0.75, 0.75, -0.75, -0.25, -0.75, -0.25, 0.0, -1.0, -0.75, 1.0, -0.5, -0.75, ]);
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array4 = new Float32Array([-0.25, 0.75, -0.75, -0.75, 0.5, 0.25, -0.5, 1.0, 1.0, -0.25, 0.25, 0.0, 0.25, -0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 1.0, 1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.25, -0.75, -0.75, 0.25, 0.0, 0.0, 0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 0.25, -0.75, 0.25, -1.0, 0.25, 1.0, -0.25, -1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 0.25, 1.0, -1.0, -1.0, 0.0, -0.25, -0.75, -1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 1.0, 1.0, -0.75, -1.0, -1.0, 0.75, 0.0, -0.5, 0.0, 1.0, -0.5, 0.5, 0.0, 0.75, -0.5, -0.25, -0.25, -0.25, -0.5, 0.0, -0.25, 0.5, 0.5, 1.0, 0.0, -0.5, 0.0, -0.5, 0.75, -0.25, ]);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("validation");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    device20.pushErrorScope("out-of-memory");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device30.destroy();
    const array5 = new Float32Array([0.25, -0.25, 0.25, -1.0, 0.0, -1.0, -1.0, -1.0, 1.0, 0.75, -0.25, 1.0, 1.0, -0.75, -0.5, 0.0, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.75, 0.5, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, -0.5, -0.75, 0.0, -0.5, -0.5, -0.25, 0.75, -0.5, -1.0, -0.75, 0.5, 0.25, -0.5, -0.25, 0.75, 0.75, -1.0, -0.5, -0.25, 0.5, 0.75, 0.5, 0.75, 0.25, 0.0, 0.75, -0.25, -0.75, 1.0, 0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.0, 0.0, 0.25, 0.0, 0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.25, -0.5, -0.25, 0.25, 0.75, 0.25, -0.25, -1.0, 0.75, -0.5, -0.5, -0.75, -0.5, 0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -0.25, -1.0, ]);
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.75, 0.0, 0.75, -1.0, 0.25, -1.0, 0.5, 0.0, 0.75, 0.25, -1.0, 0.75, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, -0.5, 0.75, 0.0, -1.0, 0.0, -0.25, -1.0, 0.0, -1.0, -0.25, -0.5, 0.0, 1.0, -0.25, -0.5, -0.5, 1.0, 1.0, 0.5, 0.0, -0.5, 0.0, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, 0.75, 1.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.75, 0.75, -1.0, -0.5, 0.5, -0.75, 0.0, -1.0, 0.75, -0.25, -0.5, 1.0, 1.0, -0.25, -0.5, 0.5, 0.75, 0.0, 1.0, -0.5, 0.25, 0.25, 0.25, 0.0, -1.0, 1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.25, 0.25, 1.0, 0.25, 1.0, -0.5, 0.75, 0.25, 0.5, 0.5, -0.75, -0.5, 1.0, 0.25, -1.0, ]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder2000.popDebugGroup()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    
    const array7 = new Float32Array([0.0, -1.0, -0.75, -0.25, 1.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 0.5, -0.75, -0.25, -0.5, 0.5, 0.25, 0.75, 0.25, 0.75, 0.5, -0.25, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, 1.0, -1.0, 0.25, 0.5, 0.75, -0.25, 0.0, -0.25, 0.75, -1.0, -0.75, 0.5, 0.5, 1.0, -0.75, -0.25, 1.0, 0.25, 0.75, -0.5, 0.0, -0.5, -1.0, 0.25, 0.25, -0.5, 0.0, 0.5, -0.75, 0.5, -0.75, 0.5, 0.5, -0.75, 0.0, 0.0, 0.25, 0.0, -1.0, 1.0, 0.25, -0.25, 0.75, 0.75, 0.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.75, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, -0.75, -0.75, -0.75, 0.25, 0.0, 0.5, -0.75, -0.5, -0.5, 0.5, ]);
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    device20.pushErrorScope("out-of-memory");
    
    
    
    
    const array8 = new Float32Array([0.5, -0.75, -0.5, -0.25, 0.75, -1.0, 0.25, -0.25, 0.0, 1.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.5, 0.5, -1.0, -0.75, 0.25, 0.5, -1.0, -0.75, -1.0, 1.0, 1.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -0.5, -0.75, 0.25, -0.5, 0.0, 0.5, -0.25, 0.0, 1.0, -0.25, 0.25, 0.0, 0.75, 0.25, 0.25, -0.5, -1.0, 1.0, 1.0, 0.5, 0.0, 0.0, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, -0.25, -0.75, -0.25, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 1.0, 0.0, -0.75, -0.25, 0.0, 1.0, -0.5, 0.75, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, 1.0, 0.5, -0.75, 0.25, 1.0, 0.75, -1.0, ]);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const array9 = new Float32Array([-0.25, 0.0, 0.5, -1.0, -1.0, 0.0, -0.5, 0.25, -0.75, 1.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, 0.75, 0.25, 0.25, -1.0, 0.0, 0.25, 0.75, -0.75, 0.5, 0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.0, 0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.5, -0.25, 1.0, 1.0, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.5, 0.5, -1.0, 0.25, 1.0, 1.0, 0.25, -0.25, -0.75, -0.5, -0.25, 0.0, 0.75, -0.5, -0.5, -1.0, 0.0, -0.5, -0.5, 1.0, -0.5, -1.0, -1.0, 1.0, 1.0, -0.75, 0.75, 1.0, -0.25, 0.25, 0.0, 0.25, -1.0, 0.5, -0.25, -1.0, -0.75, -0.25, 1.0, -1.0, 1.0, 0.25, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    device20.pushErrorScope("validation");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device50.queue.submit([]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    device40.pushErrorScope("out-of-memory");
    
    const command_buffer400 = command_encoder400.finish();
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    device50.destroy();
    device10.queue.submit([command_buffer100, ]);
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.popDebugGroup()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder402.pushDebugGroup("mygroupmarker")
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
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
    const array10 = new Float32Array([0.25, 0.75, 1.0, 1.0, -0.5, -0.75, 0.75, 0.0, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, 0.5, -0.75, -1.0, 1.0, -0.75, 0.75, -1.0, -0.25, 0.25, 0.0, -0.5, 0.25, -0.75, -1.0, 0.25, 0.25, -0.75, -0.5, -0.75, -0.75, 0.5, -1.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.0, -1.0, 0.0, 1.0, -0.5, -0.25, -0.25, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, -0.25, 0.75, -0.5, -1.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.0, -0.25, 1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.0, 0.75, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, -0.5, -0.5, -0.5, 0.5, -0.5, 1.0, 1.0, -0.25, 0.75, -0.25, -1.0, 0.25, 1.0, 1.0, -0.5, 0.75, -1.0, 0.25, 0.25, 1.0, 1.0, ]);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const array11 = new Float32Array([-0.75, -0.75, 1.0, -0.5, 0.75, -0.25, -0.75, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, 0.0, 0.5, 1.0, 1.0, -0.25, 0.75, -0.75, 0.75, 0.25, -1.0, 0.0, 0.0, -0.5, 0.75, -1.0, -1.0, 0.25, 1.0, -1.0, 1.0, 1.0, -0.5, -0.25, 0.5, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.5, -0.5, 1.0, -0.75, -0.75, -1.0, -0.5, 0.5, 0.0, 0.75, -1.0, 0.75, -0.25, -0.25, 0.0, 0.25, -1.0, 0.5, -0.25, 0.5, -0.25, -0.5, -0.25, -1.0, -0.75, -0.25, -0.75, -0.5, -0.75, -0.75, 0.5, -0.75, 1.0, -0.25, -1.0, -0.5, -1.0, 1.0, -1.0, 1.0, 0.5, 0.5, -0.75, 0.25, -0.5, 1.0, -1.0, -0.5, -0.75, 0.25, 1.0, 1.0, -0.75, ]);
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const array12 = new Float32Array([0.25, 0.5, -1.0, 0.25, -0.5, 0.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.5, -0.75, 0.25, 1.0, 0.0, -1.0, -0.75, 0.0, 0.75, 0.5, 0.75, -1.0, -0.25, 0.75, 1.0, -0.25, -0.5, -0.75, -0.25, 0.25, -0.5, 0.5, 0.75, -0.75, 0.25, 0.75, 0.0, 0.5, 1.0, 0.75, 0.25, 1.0, -1.0, 0.25, 0.25, 0.75, -0.5, -0.75, 0.75, 0.25, -0.75, -0.75, -1.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.75, 0.75, -0.25, 1.0, 0.25, 0.0, -0.25, -0.25, 0.75, -0.75, -0.25, -0.75, 0.5, -0.25, 0.25, -0.75, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, 1.0, -0.25, 0.25, -1.0, 0.75, -0.25, 1.0, 0.5, 0.5, 0.0, 0.25, 1.0, -0.25, 0.75, -1.0, -0.5, 0.0, -1.0, 1.0, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    compute_pass_encoder2021.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    compute_pass_encoder2020.popDebugGroup()
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    compute_pass_encoder4010.popDebugGroup()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    compute_pass_encoder2021.pushDebugGroup("group_marker")
    const command_buffer203 = command_encoder203.finish();
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
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    compute_pass_encoder2021.popDebugGroup()
    device40.destroy();
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    compute_pass_encoder2021.insertDebugMarker("marker")
    const command_buffer201 = command_encoder201.finish();
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder2000.popDebugGroup()
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const array13 = new Float32Array([0.25, -0.25, 0.0, 0.25, 0.75, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, 0.5, 0.5, -0.75, -1.0, -0.25, 0.0, 0.5, -1.0, -0.5, 0.25, 1.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, 1.0, 0.5, 0.0, -0.75, 0.75, 0.75, 0.75, 0.5, 1.0, -0.25, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, 0.5, -1.0, -1.0, 0.5, 1.0, -0.25, 0.5, -0.75, 0.25, 1.0, -0.5, 0.75, -0.75, 0.0, 0.0, 1.0, 0.75, 0.0, 1.0, 0.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, -1.0, -1.0, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.25, -0.25, 0.5, 0.0, 0.0, -0.5, 0.25, -0.25, 0.0, -1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.75, ]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_buffer200 = command_encoder200.finish();
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    command_encoder205.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
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
    
    compute_pass_encoder2020.popDebugGroup()
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    
    
    
    
    
    
    
    
    
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const array14 = new Float32Array([-0.25, -0.75, -0.75, 0.25, 0.5, 1.0, 0.25, -0.75, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.75, 1.0, 0.25, -0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, 0.0, 0.0, -0.25, -0.5, 1.0, 0.25, -0.5, 0.25, 0.75, 0.25, -0.5, -0.75, -1.0, 0.0, -0.75, 0.0, -1.0, -0.5, -0.5, -1.0, 1.0, 0.5, -1.0, 0.0, -0.5, -0.75, -0.75, 0.75, 0.25, 0.5, 0.25, 0.25, 0.25, 1.0, 0.25, -0.25, -0.5, 0.75, 0.25, 0.75, -0.75, 0.25, 0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, 0.5, 0.5, 0.5, 1.0, -1.0, 0.5, 0.0, -0.75, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.5, -0.25, -0.75, -0.25, 0.75, 0.25, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device50.pushErrorScope("internal");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer206 = command_encoder206.finish();
    
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    device20.destroy();
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    
    
    
    
    
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    device40.destroy();
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const array15 = new Float32Array([0.5, 1.0, -1.0, -0.5, 0.75, 1.0, 0.75, -0.75, 0.5, -0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -0.5, -1.0, -0.75, 0.25, 0.0, 0.25, -1.0, 1.0, 0.5, 0.5, -0.25, 1.0, 0.25, -0.75, 0.25, 0.25, 1.0, 1.0, 1.0, -0.5, -0.25, -0.5, -1.0, -0.25, -0.75, 0.0, -0.25, 0.5, -0.75, 1.0, 0.25, 0.5, -0.5, -0.75, 1.0, 1.0, 0.0, 1.0, 0.0, 1.0, -0.5, 0.0, 0.75, -0.75, 0.5, -0.5, -0.5, 0.5, 0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 0.75, 0.0, -0.25, 0.75, 0.5, -0.25, 1.0, -0.5, 0.5, 0.0, 1.0, 1.0, -1.0, 0.75, 0.75, -1.0, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, -0.75, 0.75, -0.25, -1.0, -0.75, -0.5, 1.0, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.pushErrorScope("internal");
    
    const array16 = new Float32Array([-0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, 1.0, -0.5, 0.5, -0.5, 0.5, -0.75, 0.5, 0.25, -0.5, 0.5, 0.25, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, 0.0, 0.25, -0.5, 0.25, 0.0, 0.75, 0.25, 0.25, 0.25, -0.5, 0.5, 0.75, 0.5, 0.75, -0.5, 1.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 1.0, -0.5, -0.75, -0.5, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, 0.0, 0.0, 0.75, -0.5, 0.75, -1.0, 0.25, -0.25, -0.5, -0.75, 1.0, 0.0, -0.75, 0.5, -1.0, -0.25, 0.0, 0.5, -0.75, -0.5, -0.75, 0.25, -0.75, 0.0, -0.5, -1.0, 0.5, 1.0, 0.5, -1.0, -0.5, ]);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    device30.pushErrorScope("internal");
    
    
    device60.pushErrorScope("internal");
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array17 = new Float32Array([-0.25, 1.0, -0.25, -0.75, -0.25, 0.25, -0.5, -0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.25, 0.25, -0.5, -0.75, -0.5, -0.5, -1.0, -1.0, -0.25, -1.0, -1.0, 0.25, 1.0, -0.75, 1.0, -0.5, -0.75, 0.25, -1.0, 0.75, 0.25, -1.0, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, -0.25, -0.75, 0.25, 0.25, -0.5, -0.5, 1.0, -0.25, 0.5, 0.25, 0.0, -0.75, -1.0, 0.0, 1.0, 1.0, 0.75, -1.0, -0.5, -1.0, 0.75, 0.0, -1.0, 1.0, -1.0, 0.0, 0.25, 1.0, 0.0, 0.0, -0.75, 0.25, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, -0.5, -0.5, -1.0, 0.25, 0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.75, -0.75, 0.0, -0.5, 0.25, 1.0, 0.25, -0.75, -1.0, -1.0, 0.25, ]);
    
    
    
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder4020.popDebugGroup()
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
    
    
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    device90.destroy();
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device30.pushErrorScope("validation");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    device70.destroy();
    command_encoder600.pushDebugGroup("mygroupmarker")
    device60.pushErrorScope("internal");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    device60.pushErrorScope("validation");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device100.queue.submit([]);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    const command_buffer602 = command_encoder602.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    device60.pushErrorScope("out-of-memory");
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    device100.pushErrorScope("out-of-memory");
    compute_pass_encoder0010.popDebugGroup()
    
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const array18 = new Float32Array([0.0, -0.25, -0.75, 1.0, 0.75, 0.25, -1.0, 1.0, 0.75, 0.0, 0.25, -0.25, 0.5, -0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 1.0, -0.5, -0.25, 0.5, 0.75, 0.5, 0.75, -0.5, -0.75, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, -0.5, -0.75, 1.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.5, -0.5, 0.0, 0.75, 0.0, 0.25, 0.5, 0.75, -1.0, 0.5, 0.25, -1.0, -0.25, 0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.25, -0.25, -0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 0.75, -0.75, 0.75, 0.5, 1.0, 0.0, 0.25, 0.75, 0.25, -0.25, -0.75, -0.25, -1.0, 0.25, 0.75, -0.5, -0.25, -1.0, -1.0, 0.25, 1.0, -1.0, -0.75, 0.5, -0.5, ]);
    device110.pushErrorScope("internal");
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    device100.pushErrorScope("out-of-memory");
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
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
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    
    
    
    compute_pass_encoder6000.popDebugGroup()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    device70.destroy();
    compute_pass_encoder6000.insertDebugMarker("marker")
    device60.pushErrorScope("internal");
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    device40.pushErrorScope("out-of-memory");
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
    device80.destroy();
    
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_buffer900 = command_encoder900.finish();
    device60.queue.submit([command_buffer602, ]);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([]);
    device110.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([]);
    compute_pass_encoder6010.popDebugGroup()
}