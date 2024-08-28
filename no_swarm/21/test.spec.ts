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
    const array0 = new Float32Array([0.0, -0.25, 0.25, 0.0, 1.0, 0.5, -0.25, 0.5, 0.75, -0.5, 0.5, 0.75, 0.5, 0.5, -0.5, 1.0, -0.75, 1.0, 0.5, 0.75, 0.5, -1.0, 0.0, -1.0, 0.5, -0.5, 0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.25, 0.75, 0.0, 0.75, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, -0.25, -1.0, 0.0, 0.75, -1.0, 0.0, -1.0, -0.5, 0.25, -0.75, 0.75, 0.0, -0.25, 1.0, 0.5, -0.25, -0.25, 0.25, -0.75, 0.25, 0.75, 0.25, 0.0, -1.0, -0.75, -0.5, 0.75, -0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 0.0, -1.0, -0.75, -0.25, -1.0, 1.0, -0.5, 0.5, 0.25, -0.25, -0.75, 0.75, -0.75, 0.5, 1.0, -0.25, -0.5, ]);
    const array1 = new Float32Array([-0.75, -0.5, -0.5, 1.0, -0.75, -1.0, -0.25, 0.5, 0.0, -0.25, 0.75, -1.0, 0.0, -0.5, -0.5, 0.5, 0.25, 1.0, 0.5, 0.75, 1.0, -0.25, 0.25, 0.0, 0.5, 0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.5, -0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 0.75, -1.0, -0.25, -0.25, -1.0, -1.0, -0.5, -0.25, -0.5, -0.5, 1.0, 1.0, -0.75, 0.75, 0.75, 1.0, -1.0, -0.75, -0.5, 0.5, -0.75, 0.0, 0.0, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -0.5, 0.5, 0.0, 0.75, 0.0, 0.0, 0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 0.5, -0.5, -0.25, 0.25, 0.25, 1.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.25, 0.0, -1.0, 0.0, 0.25, 0.5, 0.0, 1.0, ]);
    
    const array2 = new Float32Array([-0.75, 0.75, 0.25, 0.0, 0.75, -1.0, 1.0, 0.0, -0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 0.25, -0.25, -0.75, -0.5, 0.5, 1.0, 0.0, 0.0, 0.75, 0.0, -1.0, 0.75, 0.5, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.75, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, -0.75, -0.5, -0.25, 1.0, -0.5, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.25, 1.0, -0.75, 0.0, 0.5, 0.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.75, 1.0, -1.0, -1.0, 0.0, 0.5, 0.5, -1.0, -1.0, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, 1.0, -0.75, -0.25, -0.5, -1.0, 0.0, ]);
    
    const array3 = new Float32Array([1.0, 0.0, 0.5, 0.5, 0.0, -0.5, 0.25, -0.25, 0.75, 0.75, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, 0.75, -1.0, -1.0, 1.0, 0.25, 0.75, 0.25, 0.5, -0.25, -0.75, -0.5, -1.0, 0.75, 0.75, -0.25, -0.5, 0.5, 0.0, 0.5, -1.0, -1.0, -0.5, -0.75, -0.5, -1.0, 0.25, -0.5, -0.25, 0.75, -0.25, -0.5, -0.75, 0.5, -0.25, 1.0, 0.25, -1.0, 0.0, 0.0, 0.0, 0.25, 0.5, 1.0, -0.5, 0.75, 0.75, 0.5, 1.0, 0.25, -1.0, 0.75, -0.25, 0.25, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, -0.75, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.0, 0.0, 0.75, ]);
    
    const array4 = new Float32Array([-0.25, -0.75, 0.0, -1.0, -0.75, 0.5, 0.25, 0.75, 0.5, 0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.25, 0.25, -0.75, 0.0, 0.75, -0.75, 0.0, 0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 0.75, 0.5, 1.0, 0.25, 1.0, 0.5, -0.25, 0.75, 1.0, -0.75, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, -1.0, 0.5, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, 1.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.5, 0.5, -0.75, -0.25, 0.75, -0.25, 0.0, -1.0, 0.25, 0.0, 1.0, -0.25, -1.0, -1.0, 0.0, -1.0, 0.0, 1.0, -0.75, -0.25, 0.5, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, -0.5, 0.75, 0.75, 0.25, 0.5, 1.0, 0.5, 1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    const array5 = new Float32Array([1.0, -1.0, -0.75, 0.0, -0.5, -0.5, -0.5, 0.25, -0.75, 0.25, 1.0, -0.25, 1.0, 0.75, -0.75, -0.5, 0.75, -0.25, -0.75, -0.25, 0.5, 0.0, -0.25, 1.0, 0.5, -1.0, 0.75, 0.0, -0.25, -0.75, 1.0, -0.25, -1.0, -0.75, -0.5, -0.5, -1.0, 0.5, -0.75, -1.0, -1.0, 0.0, -0.25, 0.25, 0.5, -0.25, 0.0, 0.5, -0.5, 0.25, 0.25, 0.0, 0.5, 0.5, -0.5, 0.25, -0.75, 0.0, -0.5, 0.5, 1.0, 0.5, -1.0, -0.75, 1.0, -1.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.75, 1.0, 0.5, -0.75, -0.5, -0.5, -0.25, 0.5, 0.75, -0.25, 0.0, -1.0, -0.75, -1.0, -1.0, 0.75, 0.5, 0.5, 1.0, -0.75, 0.0, 0.75, 1.0, -0.75, 0.25, 0.25, 0.5, 0.25, -0.5, ]);
    const array6 = new Float32Array([0.5, 1.0, -1.0, -0.25, 0.75, 0.75, -0.5, 0.0, -0.25, 0.5, -1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, -0.25, -0.75, -0.25, 1.0, -0.75, -1.0, 0.0, 0.0, -0.5, 1.0, -0.75, 0.0, 0.25, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.25, 0.25, -0.5, 0.75, -0.5, 1.0, -0.75, -0.5, 1.0, -1.0, -0.75, 0.75, 0.25, -0.75, -0.5, -0.75, -0.5, 0.0, 0.25, -0.75, -1.0, -0.25, 0.5, 0.75, 1.0, 0.75, 0.75, -0.75, 0.75, -0.25, -1.0, -0.75, -0.5, -0.75, -0.5, 1.0, -0.75, 0.5, 0.5, -0.75, -0.75, -1.0, 1.0, -1.0, -0.25, 0.0, 0.25, 1.0, -0.5, -0.75, 0.75, -0.25, 0.25, -1.0, -0.75, -0.5, -0.5, 0.5, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([-0.75, -0.25, 1.0, -0.5, 0.75, -0.25, 0.5, 1.0, -0.25, 0.5, 0.25, -0.75, 0.25, -0.75, -0.25, -0.5, -0.25, 0.25, -0.75, -0.5, 0.5, 0.0, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.25, 0.25, 0.75, -0.25, -0.5, 1.0, 0.25, -1.0, 0.0, 0.75, 1.0, 0.75, -0.5, 1.0, -0.25, 0.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.75, -0.5, 0.0, -0.25, 1.0, 0.25, -0.75, -0.25, -0.25, -0.25, -0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.25, -0.5, -1.0, 0.25, -1.0, -0.5, 0.0, 0.5, -0.75, -0.25, -0.25, 1.0, -0.75, 0.0, 0.0, 1.0, 0.25, -0.25, 0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 0.0, 0.25, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([0.75, 1.0, -1.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.25, 0.0, 0.0, 0.0, 0.0, -1.0, -1.0, 1.0, -0.5, 0.0, 1.0, 0.75, 0.5, 0.0, -0.25, 0.5, 0.5, 0.5, -0.75, -0.75, -0.25, 0.25, -0.75, 0.75, 0.75, 1.0, -0.75, 1.0, -1.0, 0.25, -0.75, -0.75, 0.25, 0.5, 1.0, 0.75, 0.25, -0.5, -0.5, 0.25, 0.75, 0.75, 0.5, -0.5, 1.0, -0.5, -0.75, 0.0, 0.5, 0.5, 0.0, -0.25, -0.75, 0.5, -0.75, -0.75, -0.75, 1.0, -0.75, 0.0, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.25, 1.0, 0.75, -1.0, 1.0, -0.75, 0.5, 0.75, 0.0, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([0.25, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 1.0, -0.25, 0.25, 0.0, 0.75, -0.75, 0.25, 1.0, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 0.75, 0.75, 0.75, 0.0, 1.0, 0.25, -0.5, -0.75, -0.75, 0.25, 0.25, 1.0, 0.75, 0.0, -1.0, 0.0, 0.25, -1.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 0.25, -0.5, -0.25, -1.0, 0.0, -0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 1.0, -0.25, 0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 0.5, 0.5, -0.75, 0.0, -0.5, 1.0, 1.0, -0.5, 0.0, -0.75, 0.5, 0.0, 1.0, -0.25, 0.75, 0.0, -1.0, -0.5, ]);
    const array10 = new Float32Array([-0.25, -0.5, 0.5, -0.25, 0.75, 0.25, 0.0, 1.0, 0.25, 0.25, 0.75, 0.25, 1.0, -1.0, 0.25, -1.0, 0.75, 0.75, -0.5, 0.5, 0.5, 1.0, 0.0, 1.0, -0.25, -1.0, 0.0, -0.25, 0.5, 0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 0.75, -1.0, 0.25, -0.5, -0.75, 0.5, 0.75, 0.25, 0.5, -0.25, 0.0, 0.5, 0.0, -0.25, -0.25, -0.5, 0.5, -0.75, -0.25, -1.0, 0.0, -0.75, 0.25, -1.0, -1.0, 0.25, 0.75, 0.75, 0.0, -0.25, 0.25, 0.0, -0.25, -0.25, 0.0, 1.0, 0.25, -0.75, -0.5, -0.5, -0.5, -0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 1.0, -0.75, -0.5, 0.25, 0.5, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.destroy();
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    device10.pushErrorScope("validation");
    command_encoder300.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    query100.destroy()
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    query100.destroy()
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer300.destroy()
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    buffer301.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.pushErrorScope("validation");
    render_pass_encoder1000.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    query103.destroy()
    render_pass_encoder1010.executeBundles([])
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setStencilReference(1);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
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
    render_pass_encoder3010.setPipeline(render_pipeline301);
    query104.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    query103.destroy()
    render_pass_encoder1010.executeBundles([])
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder3010.beginOcclusionQuery(0)
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1020.setStencilReference(1);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
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
        occlusionQuerySet: query104
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
        occlusionQuerySet: query104
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.popDebugGroup()
    texture301.destroy();
    render_pass_encoder1000.setStencilReference(1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1040.setStencilReference(1);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.executeBundles([])
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1000.setStencilReference(1);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    render_pass_encoder1040.popDebugGroup();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query102.destroy()
    query103.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([])
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1010.executeBundles([])
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    const command_buffer302 = command_encoder302.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1010.setStencilReference(1);
    
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture302.destroy();
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query105.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query106.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    buffer306.destroy()
    query102.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder3010.beginOcclusionQuery(0)
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    texture101.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    query103.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.queue.submit([command_buffer302, ]);
    
    render_bundle_encoder301.popDebugGroup();
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    device50.destroy();
    query105.destroy()
    query303.destroy()
    buffer302.destroy()
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    buffer307.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    buffer304.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.pushErrorScope("validation");
    render_pass_encoder1040.setStencilReference(1);
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    query106.destroy()
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    render_pass_encoder1050.setStencilReference(1);
    query104.destroy()
    device20.pushErrorScope("internal");
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    texture102.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
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
        occlusionQuerySet: query302
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    render_pass_encoder1020.executeBundles([])
    query103.destroy()
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query303.destroy()
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    query302.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.executeBundles([])
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setStencilReference(1);
    query100.destroy()
    query103.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.popDebugGroup();
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
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
        occlusionQuerySet: query303
    });
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder3030.setPipeline(render_pipeline303);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group303);
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1030.executeBundles([])
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query104.destroy()
    render_pass_encoder3040.setPipeline(render_pipeline304);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    texture200.destroy();
    render_pass_encoder1000.executeBundles([])
    query300.destroy()
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    buffer3010.destroy()
    
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    texture201.destroy();
    render_pass_encoder1030.setStencilReference(1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query105.destroy()
    
    render_pass_encoder1040.executeBundles([])
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3030.popDebugGroup();
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3010.setVertexBuffer(0, buffer302);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    
    render_pass_encoder3010.draw(3);
    
    query304.destroy()
    render_bundle_encoder300.popDebugGroup();
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    query104.destroy()
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1030.setStencilReference(1);
    query104.destroy()
    render_pass_encoder1030.setStencilReference(1);
    
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group305);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    query107.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    render_pass_encoder3030.setVertexBuffer(0, buffer302);
    render_pass_encoder3010.end();
    render_pass_encoder3040.setVertexBuffer(0, buffer302);
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1010.setPipeline(render_pipeline100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.setPipeline(render_pipeline100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group102);
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder3040.draw(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder3040.end();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    render_pass_encoder3030.draw(3);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3030.end();
    const command_buffer301 = command_encoder301.finish();
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([command_buffer301, ]);
}