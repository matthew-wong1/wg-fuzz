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
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    
    const array0 = new Float32Array([1.0, -0.25, 1.0, -0.5, -0.25, 0.25, 0.25, 0.25, 0.5, 0.75, -0.25, 0.75, -0.25, 1.0, 0.5, 0.5, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, 0.0, -0.25, -0.25, 1.0, 0.0, 0.0, -0.25, -0.25, -0.25, 0.75, -0.25, -0.25, -0.5, 0.5, -1.0, -1.0, 0.0, 1.0, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -1.0, -0.5, -0.5, -0.75, 0.25, 0.5, 1.0, -1.0, 0.75, -0.25, -1.0, 0.0, -1.0, -0.75, 0.5, -0.25, 1.0, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, -0.75, -0.75, 0.0, -0.25, -0.25, -0.25, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, -0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.0, -0.75, -0.25, 0.5, 0.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.75, ]);
    
    
    const array1 = new Float32Array([0.0, -0.25, 0.5, 0.0, -0.25, 1.0, 0.75, -0.75, 0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 1.0, 0.5, 0.25, 0.75, -0.75, 0.75, 0.75, -1.0, 0.25, 1.0, -0.75, 0.5, 1.0, -0.75, -0.25, 0.5, 0.25, 0.5, 1.0, -0.25, 0.0, 0.25, -0.25, 0.5, 0.75, 0.0, 0.0, 0.0, -0.5, -0.5, 1.0, 1.0, 0.75, 0.25, 0.5, 0.0, 0.0, 1.0, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, -0.5, -0.75, -0.25, -0.75, -0.25, 0.5, 0.0, -0.5, -0.25, -0.5, 0.0, -0.75, 1.0, 0.25, -0.5, 0.25, 0.25, -0.75, 0.25, 1.0, 0.75, 0.0, -1.0, 0.75, -0.75, -1.0, -0.25, -1.0, 0.75, -0.5, 0.0, 0.0, -1.0, 1.0, -0.25, 1.0, 0.0, -0.5, 0.5, 0.75, -1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array2 = new Float32Array([-1.0, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.0, -1.0, 1.0, 1.0, 0.5, -0.5, 0.25, 0.0, -1.0, -0.75, 0.25, -1.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.25, 0.25, 0.25, -0.25, 0.5, -0.5, 1.0, -1.0, 1.0, -0.25, -0.5, 0.75, 0.75, 0.5, 0.75, 0.5, -0.75, 0.5, 1.0, -0.75, 0.0, 0.5, 0.5, 0.75, -0.5, 0.5, -0.75, 1.0, 1.0, -0.5, 0.25, 0.5, -0.5, 0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.0, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 0.5, 0.5, 0.0, 0.0, 1.0, 0.0, 0.75, 0.0, -0.5, -0.5, 1.0, -1.0, -0.25, 0.75, 0.25, -1.0, 1.0, 1.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -0.5, 0.75, 0.5, 1.0, -0.75, ]);
    device10.destroy();
    
    
    const array3 = new Float32Array([-0.5, -0.5, -1.0, 0.0, -0.25, -1.0, 0.75, -0.5, 0.75, 0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 1.0, -0.75, -0.5, 0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, 1.0, -1.0, -0.5, 0.0, -0.5, -0.75, -0.25, -0.5, 0.5, -0.5, 1.0, -0.5, 1.0, -0.5, -0.25, -0.25, -0.25, 0.25, 1.0, 0.75, -0.75, 0.75, 0.5, 0.0, -1.0, -1.0, 1.0, -0.5, -0.25, -0.75, 0.25, 0.25, -1.0, 0.5, 0.75, -0.25, -1.0, -1.0, -0.75, -1.0, 0.5, 0.75, 0.25, 0.25, -0.75, -0.5, 0.5, -0.5, 0.5, -1.0, -0.75, 0.5, -1.0, 0.5, 0.0, -1.0, 0.0, 0.5, 0.25, 0.25, 0.5, 0.0, 0.0, 0.75, -0.75, 0.25, 0.5, -1.0, -0.75, 1.0, -0.75, -0.75, 0.25, -0.25, 0.75, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array4 = new Float32Array([-0.75, -1.0, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, -0.75, -1.0, 1.0, 0.25, 0.75, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, 0.75, -1.0, 0.5, -0.75, 0.25, 0.5, -0.5, 0.75, 1.0, 0.25, -0.75, 0.0, -0.75, 0.5, 0.5, -0.25, 0.75, -0.75, -0.5, 0.0, 0.0, -0.25, 0.0, 0.5, -0.75, 1.0, 0.0, 1.0, 0.75, 0.75, -0.25, -1.0, 0.75, 0.75, 0.0, 0.25, 0.75, -0.75, -1.0, 1.0, -0.5, -0.25, -0.5, 0.75, 0.25, -0.25, 0.75, 0.75, 0.0, -0.5, -1.0, -1.0, -0.5, 0.75, 0.0, 0.5, -1.0, -0.25, 0.75, -0.75, 0.25, -0.25, -1.0, 1.0, -1.0, -0.75, 0.75, 0.5, -1.0, 1.0, -0.5, -0.5, -0.75, 0.0, ]);
    const array5 = new Float32Array([-0.5, 0.75, -0.75, -0.75, 0.0, 0.5, 0.75, 0.25, 0.25, 1.0, 1.0, 0.5, 0.5, 0.75, 0.25, -0.5, 0.25, 0.5, 0.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.25, -1.0, -0.25, 0.0, 1.0, 0.5, -0.75, 0.0, -0.75, 1.0, 1.0, 0.75, -0.25, -0.25, 0.75, -0.25, -0.25, 0.75, 1.0, 0.5, -0.75, -0.5, -0.75, -0.5, 0.0, 0.75, -1.0, -1.0, -0.25, 0.5, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.25, 0.0, -0.75, 0.75, 0.5, -1.0, -1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, -1.0, 0.5, -0.75, 0.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -0.75, -1.0, 0.25, 0.5, -0.25, 0.0, 0.0, -0.25, -0.5, -0.5, ]);
    const array6 = new Float32Array([-0.75, 0.25, 0.0, 0.25, 0.0, 0.5, -0.5, 0.75, 0.75, -1.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.25, -0.25, 0.75, 1.0, -0.25, 0.25, 1.0, 0.0, 1.0, -0.75, 0.5, 0.0, -0.75, 0.25, 0.5, 0.5, 1.0, -0.5, 0.75, -0.75, 0.75, 0.25, -0.5, -0.5, 0.0, -0.75, -0.25, 0.5, -0.25, -1.0, 1.0, 0.25, -0.75, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, 1.0, 1.0, 1.0, -0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 0.0, 0.75, -0.75, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, -1.0, -1.0, -0.75, -1.0, -1.0, -0.75, -0.5, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, 0.0, 0.0, 0.0, 0.25, -0.25, -1.0, -0.5, 1.0, 1.0, ]);
    
    
    
    
    const array7 = new Float32Array([0.25, -1.0, -0.75, 0.25, -0.25, 0.75, 0.5, -1.0, 0.75, 1.0, 0.5, 1.0, -1.0, -0.25, 0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, -0.75, -1.0, 1.0, -0.75, -0.75, 0.0, -0.75, 0.25, 0.25, 0.0, 1.0, 0.5, -0.5, -0.5, 0.25, 0.0, 0.75, -0.5, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.75, 0.5, 0.5, 0.75, -0.25, 0.5, -1.0, 0.0, 1.0, 0.5, 0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 0.75, 0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -0.25, -0.25, 0.0, 1.0, 1.0, -0.75, 1.0, -0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 1.0, 0.25, -0.5, -0.5, -1.0, 1.0, -0.25, -0.25, -0.5, 0.0, 0.5, -0.25, -1.0, 0.25, -1.0, 0.25, 0.25, -0.75, ]);
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array8 = new Float32Array([0.0, 0.0, 1.0, 0.5, 0.75, -0.5, -0.75, -0.75, -0.25, 0.5, 0.75, 0.25, 0.0, -1.0, 0.0, 1.0, -0.75, -0.5, 0.5, 0.75, -1.0, 1.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 1.0, 1.0, -0.75, -1.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, -0.5, -0.75, -0.25, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.5, 0.25, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, 0.75, 0.25, 0.25, -0.75, -0.75, -0.5, -0.5, -0.25, 0.5, 0.5, -1.0, 0.75, 0.5, -0.5, -0.75, -1.0, -0.75, 0.25, 0.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, -0.25, 0.25, -0.75, 0.0, 0.75, 0.75, -0.25, -0.25, 0.0, 0.5, -0.5, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.popDebugGroup()
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("out-of-memory");
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
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
    const array9 = new Float32Array([0.0, 0.75, 0.75, -0.5, -0.5, 0.0, 0.75, -1.0, 0.0, 0.25, 0.0, -1.0, 1.0, 1.0, -0.75, -1.0, 1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -0.75, -0.75, -0.25, 0.5, -0.5, -0.75, 0.25, 0.5, 1.0, -0.5, -0.25, 0.25, -0.75, 0.5, -0.25, -0.25, -0.25, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, 0.5, -0.5, 0.0, 0.0, -0.5, -0.25, 0.25, -0.25, 0.0, 0.75, -1.0, -0.25, 1.0, -0.25, 0.0, 0.75, -1.0, 0.25, -1.0, 0.5, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, -1.0, 0.0, 0.25, -0.75, 1.0, 0.0, -0.75, -0.5, 1.0, -0.5, -0.5, -0.75, 0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -0.5, 0.25, 0.5, ]);
    render_bundle_encoder200.popDebugGroup();
    
    device20.pushErrorScope("validation");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array10 = new Float32Array([0.5, 0.0, 0.75, 0.25, -0.5, -0.5, 1.0, 0.0, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, 1.0, 1.0, -0.5, -0.75, 0.0, -1.0, 0.75, -0.75, -0.5, -1.0, 0.25, 1.0, -1.0, 0.0, -0.75, -0.25, -0.25, -0.75, -0.25, -0.5, 0.75, -0.75, -0.25, 1.0, -0.25, 0.5, 0.0, 1.0, 0.25, 0.0, 1.0, 0.75, -1.0, -0.75, 0.0, -0.25, -0.5, -0.5, -0.25, 0.5, -0.75, 0.75, -0.75, -0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 0.25, 0.5, -0.75, -1.0, -0.5, -0.75, 0.75, -0.25, -1.0, 1.0, -0.25, -0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 0.75, 0.25, -0.25, -0.25, -0.5, -0.5, -0.75, 0.0, -1.0, 0.75, -0.5, 1.0, ]);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder200.popDebugGroup();
    device30.pushErrorScope("out-of-memory");
    
    
    command_encoder202.insertDebugMarker("mymarker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array11 = new Float32Array([0.25, 1.0, 1.0, -0.25, 0.75, 0.5, -1.0, -0.5, 0.5, -1.0, -1.0, -0.25, 0.0, -1.0, 0.5, 0.25, 0.75, -0.75, 1.0, -0.75, 0.5, -0.75, -0.75, 0.5, -0.5, 1.0, 0.75, -0.75, -0.5, -1.0, 0.5, -1.0, 0.5, 0.5, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 0.75, 0.0, -1.0, 0.75, -0.75, 0.5, 0.5, -0.5, 0.5, 0.0, 0.75, 1.0, 1.0, -1.0, -0.5, 0.0, -1.0, 0.5, 0.75, 0.75, 0.25, 0.25, 0.0, -0.25, -0.75, -0.25, 1.0, -0.5, 0.25, -0.25, 0.0, 0.25, 1.0, -1.0, -1.0, -1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 1.0, -0.25, -1.0, -0.75, 0.5, -1.0, -0.25, -0.5, -1.0, -0.5, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, -0.25, -0.75, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device50.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder300.insertDebugMarker("mymarker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    buffer201.destroy()
    buffer203.destroy()
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
    
    
    buffer300.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.popDebugGroup();
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder202.popDebugGroup();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    const command_buffer301 = command_encoder301.finish();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder202.pushDebugGroup("mygroupmarker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer202.destroy()
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer204.destroy()
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    
    buffer301.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    compute_pass_encoder2000.popDebugGroup()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline203);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer209, 0);
    
    const array12 = new Float32Array([0.0, -0.75, -1.0, -1.0, 0.5, -1.0, 0.5, 0.25, -1.0, -0.25, -0.25, -1.0, 0.0, 0.75, -0.75, 0.0, 1.0, -1.0, -0.25, -0.75, -1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.25, -1.0, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, 0.25, -0.5, 0.5, 0.75, 0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.25, 0.0, -0.75, 1.0, 0.0, 0.0, -0.75, -0.75, 0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.0, -0.25, -0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -0.75, 1.0, 0.75, -1.0, 0.5, 0.25, 0.75, 0.75, 0.75, 0.5, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, -1.0, 0.0, 0.0, 1.0, -0.5, 0.5, -0.25, 0.25, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array12, 0, array12.length);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer209, 0, array4, 0, array4.length);
    
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer209.destroy()
    texture200.destroy();
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device30.queue.writeBuffer(buffer302, 0, array12, 0, array12.length);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    
    compute_pass_encoder2000.end();
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    command_encoder303.insertDebugMarker("mymarker");
    
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    device20.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2001.setPipeline(compute_pipeline205);
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    buffer208.destroy()
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    buffer2010.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group203);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer207.destroy()
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
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
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
    texture201.destroy();
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer302, 0, array12, 0, array12.length);
    
    buffer2011.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_bundle_encoder302.popDebugGroup();
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    buffer302.destroy()
    
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group205);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    buffer2015.destroy()
    device30.pushErrorScope("validation");
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.popDebugGroup()
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer2016.destroy()
    query304.destroy()
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    buffer2012.destroy()
    device30.queue.submit([command_buffer301, ]);
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder203.insertDebugMarker("mymarker");
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    buffer205.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query304.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    query306.destroy()
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2001.end();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2020.end();
    command_encoder200.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    const command_buffer200 = command_encoder200.finish();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    command_encoder202.popDebugGroup()
    compute_pass_encoder3020.end();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3000.end();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    const command_buffer300 = command_encoder300.finish();
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2010.end();
    const command_buffer302 = command_encoder302.finish();
    const command_buffer201 = command_encoder201.finish();
}