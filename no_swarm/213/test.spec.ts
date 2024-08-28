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
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.25, -0.5, -0.75, 0.25, -0.25, 0.5, 0.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.0, -0.75, -0.5, 0.5, 0.25, -1.0, 0.5, 0.75, 1.0, -1.0, 1.0, 0.75, 0.5, -0.5, -0.25, 0.0, 0.0, 0.25, -0.25, 0.25, 0.5, 0.5, -0.75, -0.5, 1.0, 0.0, 0.25, 0.0, -1.0, 0.25, 0.25, 0.5, 0.5, -0.5, -0.25, 1.0, 0.0, -0.75, -0.75, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 0.75, 0.75, -0.5, 0.75, -1.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, 1.0, 0.75, -1.0, 0.0, -0.75, 1.0, 0.0, 0.0, 0.5, 0.75, -0.5, 1.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.5, 0.5, 0.25, -0.75, 1.0, 0.0, -1.0, 0.75, 0.25, 0.25, 1.0, -1.0, 0.5, 0.25, -0.25, 0.0, 0.25, -0.25, -0.5, -1.0, 0.5, -0.5, 1.0, -0.25, 0.75, 1.0, -1.0, -0.5, -1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -0.75, 0.75, -0.25, 0.0, 0.5, 0.25, 0.5, 1.0, -0.25, 0.25, -0.75, 1.0, -1.0, -1.0, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, -0.5, -0.25, -0.5, 0.25, -1.0, -1.0, -0.5, 0.25, 1.0, 0.0, -0.5, -0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.5, -0.75, 0.25, 0.25, 0.75, 0.25, -0.5, 0.75, -0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.5, ]);
    
    
    
    const array2 = new Float32Array([0.75, -0.75, -0.5, 0.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -1.0, 0.25, -0.5, -0.75, 0.75, -0.5, -0.75, 1.0, -0.5, -0.75, -0.25, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -0.5, 0.25, 1.0, 1.0, -0.5, 0.25, 0.25, -0.5, -0.5, 0.25, 1.0, -0.75, 0.5, -0.5, 0.75, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, 0.5, 1.0, 1.0, 0.25, -1.0, 0.75, 0.25, 0.25, 0.5, 0.75, -0.75, -0.25, 0.25, 1.0, -1.0, 0.25, 0.5, 0.75, 0.25, 0.0, -1.0, -0.5, 0.25, -1.0, 1.0, 0.5, 0.25, 0.75, 0.25, 0.5, 0.5, -0.75, 0.25, 1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -1.0, -0.5, -1.0, -0.25, -0.25, 0.0, 0.5, 0.25, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([1.0, 0.5, -1.0, -1.0, -1.0, -0.25, 0.75, -0.75, 0.25, 0.25, -0.75, 0.75, 0.75, 0.25, 1.0, -0.75, 0.0, 1.0, -0.25, -0.25, 0.75, -0.25, 0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.75, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, -0.75, 1.0, -1.0, -0.5, -0.75, -0.25, -0.75, 0.5, -0.5, -0.75, -0.25, 0.25, 0.0, -0.5, 0.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.0, -1.0, 1.0, 0.5, 0.5, 0.5, -0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -0.25, -1.0, 0.75, 0.0, 0.0, -0.25, -0.75, -0.5, 0.75, -0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -0.75, -0.25, 1.0, 0.75, 0.5, -0.5, 1.0, 0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -1.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array4 = new Float32Array([0.25, 0.25, -0.75, 0.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.5, 0.0, -1.0, 0.0, -0.5, 0.25, -1.0, 0.0, 1.0, -1.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.5, 1.0, 0.5, 0.5, 0.25, 1.0, -1.0, -1.0, 0.0, -0.75, -0.5, -1.0, -0.5, 0.0, -0.75, 1.0, 0.5, 0.0, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, -0.25, -0.25, -0.75, -0.5, 1.0, -1.0, -1.0, -0.75, -0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 1.0, 0.0, -0.25, 1.0, 0.5, 0.25, 1.0, -0.25, -0.25, -0.75, 1.0, 1.0, 0.75, 1.0, 0.75, 0.25, -0.5, -0.75, 0.75, 0.75, -0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.25, 0.25, 0.75, 0.5, -0.5, 0.75, -0.75, -0.5, -0.75, 0.5, 0.25, 0.0, ]);
    const array5 = new Float32Array([1.0, -0.5, 0.5, 0.5, -0.25, -0.75, 0.5, 0.5, 1.0, -0.75, -1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.75, 0.75, 0.25, 0.25, 0.5, 0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.75, 0.25, -1.0, 1.0, -0.5, 1.0, 0.25, 1.0, -0.5, 1.0, 0.75, -0.5, 0.75, 0.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.25, 1.0, 1.0, -0.5, 0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.25, 1.0, 0.75, -1.0, -0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.75, -0.5, 1.0, -0.25, -1.0, 0.5, -1.0, 1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, -0.5, 1.0, 0.5, 1.0, ]);
    device00.pushErrorScope("out-of-memory");
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
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder001.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer001 = command_encoder001.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.popDebugGroup()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array6 = new Float32Array([-0.25, 0.5, 1.0, -1.0, -0.75, 1.0, -0.25, 0.25, -0.25, -0.25, 0.25, 0.5, 0.5, 0.0, -0.5, -0.5, -0.25, 0.75, -0.75, 0.5, 0.75, -1.0, -0.5, -1.0, 0.5, 0.0, -0.75, -0.5, 1.0, 0.0, -0.25, 0.75, -0.25, 0.25, 0.25, 0.25, 0.0, -0.75, -0.5, -0.25, 0.0, 0.25, -1.0, -0.25, 0.5, 0.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.25, -0.5, 1.0, 0.75, 0.0, 0.0, -0.25, -0.75, 0.0, -0.75, 0.25, -0.5, -0.25, -0.25, -0.75, -0.5, 1.0, 0.25, -0.75, 0.0, 0.75, -0.25, 0.75, -0.25, 0.25, -0.5, -1.0, 0.5, 1.0, 0.5, 0.25, -0.75, -0.75, -0.5, 0.5, 0.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, 0.0, ]);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const array7 = new Float32Array([-1.0, -0.75, -0.25, -0.75, -0.75, 0.75, -0.25, -0.25, -0.75, 0.0, 0.75, 0.5, -0.25, 0.5, -0.25, 0.75, -0.5, -0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.25, -0.25, 0.5, 0.0, -1.0, -1.0, -1.0, -0.5, 0.0, -0.5, 0.25, 0.25, -0.25, 1.0, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, -1.0, 0.75, -0.25, 0.0, -0.5, 0.25, 0.5, -0.75, -1.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.25, -1.0, 0.75, -0.25, 0.75, -1.0, -0.25, 0.75, 1.0, 0.25, -1.0, -1.0, -0.25, 0.25, 0.5, 0.0, 0.5, 0.75, 0.75, 0.75, 0.0, 0.5, -0.75, -0.75, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, -0.25, -0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    query001.destroy()
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.popDebugGroup()
    
    query001.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    query001.destroy()
    
    device10.destroy();
    
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    
    query001.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer004 = command_encoder004.finish();
    
    const array8 = new Float32Array([1.0, -1.0, -0.75, -0.5, -0.5, 1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 0.0, -0.5, -0.5, 0.0, -1.0, 0.5, 0.25, -1.0, 0.5, -0.75, -0.5, 1.0, 0.25, 0.0, 0.75, 0.0, 0.5, 0.5, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, -0.5, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, -1.0, -1.0, 0.25, 1.0, -0.75, 1.0, 0.25, 1.0, -0.75, 0.25, -0.75, -1.0, -0.5, -0.25, -0.5, 0.5, 0.0, -0.5, -0.75, 1.0, 0.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 1.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.75, 1.0, 1.0, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.75, 1.0, -0.25, 1.0, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const array9 = new Float32Array([0.25, 0.5, 0.5, -0.25, 0.5, -0.25, 1.0, 1.0, 0.0, 1.0, 0.25, 0.0, -0.75, 1.0, 0.0, -0.75, 0.25, 0.5, -0.25, 0.75, -0.25, 0.25, 1.0, -0.25, 0.0, 0.75, -0.75, -0.5, 0.5, -0.75, 0.75, -1.0, -0.75, -0.75, -1.0, -0.25, 1.0, 0.5, -0.25, -0.25, 0.25, 0.25, -1.0, 0.75, 1.0, -0.25, 0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 0.5, -0.5, -0.5, 1.0, -1.0, 0.0, 0.5, -0.5, 1.0, 0.0, 0.0, 0.0, -0.5, 0.5, 0.25, -0.25, 1.0, -0.25, 0.5, -0.5, -0.25, -0.5, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 1.0, -0.75, -0.75, 0.5, 0.25, -0.5, 1.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    render_bundle_encoder001.setPipeline(render_pipeline002);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    query001.destroy()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device20.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder005.pushDebugGroup("mygroupmarker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    device50.destroy();
    buffer000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    query400.destroy()
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
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
    query400.destroy()
    
    query002.destroy()
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder002.setPipeline(render_pipeline003);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    query001.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer301.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
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
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    
    buffer300.destroy()
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query003
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0050.setPipeline(render_pipeline001);
    render_pass_encoder0060.beginOcclusionQuery(0)
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder0060.setPipeline(render_pipeline006);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    buffer001.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
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
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    query000.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
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
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture000.destroy();
    
    query002.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group002);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    query400.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const array10 = new Float32Array([1.0, 0.0, -0.25, 1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.75, 1.0, 0.5, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, -0.5, 0.0, 0.0, 0.5, 0.0, 0.5, 1.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, -0.75, 0.0, 0.75, 0.0, -0.75, -0.25, -0.5, -0.25, 0.75, -0.75, 0.75, -1.0, 0.75, 0.25, 0.75, -0.25, 1.0, 0.75, 0.75, 0.0, -0.75, 0.5, -0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -0.25, -0.75, 0.5, 0.0, 0.75, -1.0, 1.0, 1.0, 1.0, -0.75, -0.5, -1.0, -0.75, -0.25, -0.5, -0.75, 0.0, 0.0, 0.75, -0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.0, 0.5, -1.0, 1.0, ]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
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
    texture002.destroy();
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer008.destroy()
    device30.destroy();
    render_pass_encoder0060.setStencilReference(1);
    
    
    
    buffer002.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.destroy();
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.endOcclusionQuery()
    texture001.destroy();
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    
    buffer006.destroy()
    
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0060.beginOcclusionQuery(0)
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0050.popDebugGroup();
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    
    compute_pass_encoder0070.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture003.destroy();
    device00.pushErrorScope("out-of-memory");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group004);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer007.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    buffer005.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.endOcclusionQuery()
    const array11 = new Float32Array([-1.0, 1.0, 0.0, -1.0, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, 1.0, 0.25, 0.5, 1.0, 0.0, 0.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.0, 1.0, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, -0.5, -0.5, 0.25, 1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.25, -1.0, -0.5, -0.5, 0.0, 0.25, 0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 0.5, -0.5, 0.25, -0.5, 0.0, 0.75, -0.25, 0.25, 1.0, 0.75, 0.5, 0.75, -0.75, 0.5, 0.5, 0.75, -0.75, 0.75, -0.75, -0.5, -0.5, -0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, -0.25, -1.0, 1.0, -0.5, 0.0, -0.75, 0.75, 1.0, -1.0, 0.25, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 1.0, 0.25, -0.5, 0.5, ]);
    
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder0070.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0050.setStencilReference(1);
    query002.destroy()
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_pass_encoder0050.setStencilReference(1);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.submit([command_buffer004, ]);
    texture004.destroy();
    render_pass_encoder0060.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder0070.insertDebugMarker("marker")
    
    query700.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const array12 = new Float32Array([0.25, 1.0, -0.5, -0.25, -0.25, 0.75, 0.25, -1.0, -0.5, -0.5, 0.0, -0.25, 0.25, 0.5, 0.0, 1.0, -0.25, 0.75, -0.5, -0.5, -0.25, -0.25, -0.5, -0.75, 0.5, -0.25, 0.5, -1.0, -0.25, 0.5, 1.0, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.5, 1.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.0, -0.5, 0.75, 0.25, 0.25, -1.0, 1.0, 1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.75, 1.0, 0.25, 1.0, -0.5, 0.75, 0.75, 0.25, 0.75, 0.0, 1.0, 0.5, -0.75, 1.0, 1.0, 0.75, 0.0, 0.25, 0.25, -1.0, 0.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.75, -0.5, 0.25, 1.0, -0.25, 0.25, -0.25, 0.0, 0.5, 1.0, -1.0, -0.75, ]);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_pass_encoder0060.beginOcclusionQuery(0)
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0060.setStencilReference(1);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    device70.destroy();
    
    render_pass_encoder0050.popDebugGroup();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0030.popDebugGroup()
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout0022,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout0026,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    query006.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout0023,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0070.setPipeline(compute_pipeline001);
    query001.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout0026,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout0025,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    compute_pass_encoder0020.setPipeline(compute_pipeline005);
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0060.setStencilReference(1);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    texture800.destroy();
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout006]
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout0026,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    device80.pushErrorScope("validation");
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query007.destroy()
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout0021,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout0024,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.popDebugGroup();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0070.setBindGroup(0, bind_group006);
    const uint32_0070 = new Uint32Array(3);

    uint32_0070[0] = 100;
    uint32_0070[1] = 1;
    uint32_0070[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0070, 0, uint32_0070.length);

    compute_pass_encoder0070.dispatchWorkgroupsIndirect(buffer0015, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer008 = command_encoder008.finish();
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0030.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0060.endOcclusionQuery()
    compute_pass_encoder0070.end();
    const command_buffer007 = command_encoder007.finish();
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
}