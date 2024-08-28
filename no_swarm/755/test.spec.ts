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
    const array0 = new Float32Array([0.0, -0.25, -1.0, 0.5, 1.0, -0.25, 0.0, 0.25, -0.75, 0.75, -0.75, 0.0, 0.5, -1.0, -1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.75, -0.75, 0.25, -0.25, -0.75, 0.5, -1.0, 0.5, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, 0.25, 1.0, 1.0, 1.0, -0.75, 0.0, 0.0, -1.0, 0.75, -1.0, 0.0, 0.25, -0.75, -0.75, -1.0, -0.5, -0.5, -1.0, -0.75, 0.25, -0.75, 0.75, -0.75, -0.5, -0.5, 0.75, -0.75, -0.25, -0.5, -0.5, 0.5, 0.5, -0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -1.0, -0.75, -0.75, 0.75, -1.0, 1.0, -1.0, -1.0, -0.75, -0.75, 0.5, 0.25, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, 0.25, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.75, -0.75, -0.25, 0.25, 0.75, 0.5, 0.0, -0.75, -0.5, 0.75, -0.75, 0.5, -0.25, -0.5, -0.5, -1.0, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.25, 0.75, 0.0, 0.25, 1.0, -0.5, -1.0, 0.5, 0.5, -0.75, 0.25, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.5, 0.0, -0.25, 0.5, 0.75, -0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 0.25, -1.0, -1.0, -1.0, 0.0, -0.75, 0.5, 0.75, 0.5, -0.5, 0.75, 0.75, 0.5, 0.25, -0.25, 0.25, 0.75, 0.25, -0.75, -0.5, -0.25, 0.25, 0.5, 0.0, -0.25, 1.0, -0.5, 0.75, 0.25, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -0.5, 1.0, -0.5, -0.25, -0.5, 0.0, 0.5, 0.5, 0.0, -0.5, -0.25, -0.75, -0.25, -0.5, 0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.destroy();
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array2 = new Float32Array([0.75, 0.5, 0.0, 0.0, -0.75, -0.75, -0.25, -0.75, 0.5, 1.0, -0.75, -0.75, 0.0, -0.75, -1.0, 0.0, -0.25, -0.25, 0.25, 0.0, 0.75, 1.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.25, 0.75, 0.25, -0.5, -0.75, -0.75, -0.25, -0.5, 0.5, 1.0, -0.25, -1.0, 0.5, -1.0, -0.25, 0.0, 0.25, -1.0, 0.25, 0.25, 0.0, 1.0, 1.0, 0.0, -0.25, 0.0, 0.5, 0.0, -1.0, -0.25, -1.0, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 0.0, 0.0, -0.5, -0.25, -0.25, -0.25, -0.75, -0.75, 1.0, -0.25, -0.75, -0.75, 0.5, -0.5, 1.0, -1.0, 1.0, -0.5, -1.0, 0.25, -1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const array3 = new Float32Array([-0.5, 0.5, 0.25, 0.0, -0.25, -0.25, -0.25, -0.5, 0.25, 0.0, 0.75, -0.75, 0.25, 0.75, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, 1.0, 0.25, -0.5, 0.0, 0.25, 0.0, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, -0.5, -0.25, -0.75, 0.5, -0.75, 0.25, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, 1.0, 0.5, -1.0, -1.0, 0.0, 0.0, 0.5, 0.75, 0.5, -0.75, -1.0, -0.5, 0.0, -0.25, 1.0, 0.25, -0.5, -1.0, 0.75, 0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 0.5, -1.0, 0.0, -1.0, 0.25, 0.0, 0.25, 0.0, 0.75, 0.5, -0.75, 0.5, -0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.75, -1.0, 0.5, 0.75, 0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 1.0, -1.0, ]);
    device00.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.pushErrorScope("validation");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array4 = new Float32Array([0.75, -0.25, 0.0, 1.0, 0.0, -0.25, 1.0, -0.75, -0.75, 0.75, -0.5, 1.0, -0.5, 0.25, 0.75, -0.75, 0.25, -0.25, 0.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.5, 0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.25, 0.5, 0.5, 0.5, -1.0, -0.25, -0.25, -0.5, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, -0.75, -1.0, -0.25, -0.25, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, 1.0, 0.0, -0.75, -0.25, 0.5, -0.75, 1.0, -0.25, -1.0, 0.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -1.0, 0.75, 0.25, -0.5, 0.25, 1.0, -0.25, 0.5, 0.25, -0.5, -0.75, -0.25, 0.25, -1.0, 0.5, 0.75, -1.0, -0.5, -0.5, -1.0, -1.0, 0.75, 1.0, 0.75, 1.0, -0.5, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.destroy();
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    buffer500.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-0.25, 0.25, -1.0, -0.75, 0.5, 0.75, 0.75, 0.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.5, -0.75, 0.25, 0.25, -0.75, -0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -0.25, -0.25, 0.25, -0.75, 0.0, 0.25, 0.0, 0.75, 0.25, -1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 1.0, 0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 0.5, -0.25, -0.5, 1.0, 0.75, -0.5, -1.0, 0.5, 0.75, 1.0, 1.0, -1.0, -1.0, -0.25, -0.5, 0.75, -0.75, -0.25, 0.0, 1.0, 1.0, -0.25, 0.0, 0.0, 0.75, 1.0, 0.5, -1.0, 0.75, -1.0, 0.25, -0.75, -0.25, 0.75, -1.0, 0.0, 1.0, 0.0, 0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 0.75, -0.75, -1.0, -0.75, ]);
    device50.destroy();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query300.destroy()
    render_bundle_encoder301.popDebugGroup();
    
    query300.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array6 = new Float32Array([-1.0, 0.25, -0.25, 0.25, -0.25, 0.5, 0.25, -0.25, 0.0, -0.5, -1.0, -0.5, 1.0, 0.0, 0.75, -0.5, -1.0, -1.0, -1.0, -0.5, 0.0, 0.75, -1.0, 0.0, 1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, -1.0, -1.0, -0.25, -1.0, -1.0, 0.25, -0.75, 1.0, -0.75, 0.5, -0.75, -0.75, 0.25, 0.5, 0.0, 1.0, -0.75, 0.5, 0.25, -0.25, 0.75, -1.0, 0.25, 0.75, 0.25, 0.0, -1.0, 0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -1.0, -0.25, -0.25, -0.25, 0.75, -0.5, 0.0, -0.75, 0.75, 0.25, 0.0, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.25, 0.75, 0.0, -0.75, -0.75, 1.0, -0.5, 1.0, 0.5, 0.75, 0.75, 1.0, ]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.pushErrorScope("validation");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.25, 1.0, -1.0, -0.75, 0.25, 0.75, 0.0, 0.25, -0.75, 0.5, -1.0, -0.75, -0.5, 0.0, -1.0, -1.0, 0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 0.5, -1.0, -0.75, -0.5, 0.75, -0.75, -0.25, -0.5, 0.75, 0.75, -0.75, -0.25, -0.5, 0.5, -0.25, 1.0, -0.75, 0.75, 0.0, 1.0, -1.0, -0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, -0.25, 0.25, 0.25, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, -1.0, 0.5, 0.5, 0.75, -0.75, -0.75, 1.0, 1.0, -1.0, -0.5, 0.0, -1.0, 0.25, 0.0, 0.25, 0.0, 0.5, -0.25, 1.0, 0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 0.75, 0.0, 0.5, 0.25, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.0, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder300.popDebugGroup();
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.75, -0.25, -0.5, 0.25, 0.5, -0.25, -0.5, -0.5, -1.0, 0.25, 0.5, 0.5, 0.5, 1.0, -1.0, 1.0, -0.5, 0.75, 0.75, 0.75, -0.5, 0.5, 1.0, 0.25, 0.75, -0.75, 0.75, -0.25, 0.0, 0.25, -0.5, -0.75, 0.25, 0.25, 0.25, -1.0, 0.25, -0.75, -0.25, -0.25, -0.75, 0.0, -0.75, 0.75, 0.75, 1.0, 0.25, 0.75, -0.75, -0.75, 0.25, -0.5, 0.75, -0.75, 1.0, -0.75, -1.0, -0.5, 0.5, -0.5, 1.0, 1.0, 0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, 1.0, -0.5, 0.25, -0.75, 0.5, -0.75, 0.75, 0.75, -1.0, -1.0, -1.0, -1.0, 1.0, -1.0, -0.25, -0.25, 1.0, -0.25, -0.5, 0.0, -0.75, 0.0, -1.0, 0.5, -1.0, -0.25, 0.75, -0.5, 0.75, 0.25, -0.25, ]);
    
    query300.destroy()
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query301.destroy()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    query300.destroy()
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer301 = command_encoder301.finish();
    query300.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer300.destroy()
    const command_buffer600 = command_encoder600.finish();
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture300.destroy();
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer600.destroy()
    
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
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
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
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    query600.destroy()
    
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device70.destroy();
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder301.popDebugGroup();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
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
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    texture601.destroy();
    
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
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline304);
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
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    buffer303.destroy()
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    query601.destroy()
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    compute_pass_encoder3020.setPipeline(compute_pipeline3029);
    command_encoder300.popDebugGroup()
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline3029.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    query600.destroy()
    query602.destroy()
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline302);
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    query300.destroy()
    
    render_bundle_encoder601.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    query602.destroy()
    buffer601.destroy()
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query602
    });
    const command_buffer300 = command_encoder300.finish();
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout305]
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout308,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6020.pushDebugGroup("group_marker");
    
    render_pass_encoder6020.popDebugGroup();
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    query300.destroy()
    render_bundle_encoder602.setPipeline(render_pipeline600);
    query600.destroy()
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    buffer602.destroy()
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout309,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group303);
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    
    device30.queue.submit([command_buffer301, ]);
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder6010.executeBundles([])
    
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    query601.destroy()
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout304]
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_bundle_encoder600.popDebugGroup();
    buffer308.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: query601
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout303]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder6010.setStencilReference(1);
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
    buffer306.destroy()
    query600.destroy()
    render_pass_encoder6030.setStencilReference(1);
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout305]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query600.destroy()
    buffer304.destroy()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query601.destroy()
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6020.executeBundles([])
    
    render_pass_encoder6030.insertDebugMarker("marker");
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout308,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query600.destroy()
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.insertDebugMarker("marker");
    query301.destroy()
    render_pass_encoder6030.executeBundles([])
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
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout306,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer309.destroy()
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout306,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setPipeline(render_pipeline600);
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder302.popDebugGroup();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const compute_pipeline3079 = device30.createComputePipeline({
        label: "compute_pipeline3079",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder6020.executeBundles([])
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const compute_pipeline3080 = device30.createComputePipeline({
        label: "compute_pipeline3080",
        layout: pipeline_layout309,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3081 = device30.createComputePipeline({
        label: "compute_pipeline3081",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline3082 = device30.createComputePipeline({
        label: "compute_pipeline3082",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const compute_pipeline3083 = device30.createComputePipeline({
        label: "compute_pipeline3083",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3084 = device30.createComputePipeline({
        label: "compute_pipeline3084",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer305.destroy()
    const compute_pipeline3085 = device30.createComputePipeline({
        label: "compute_pipeline3085",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    const compute_pipeline3086 = device30.createComputePipeline({
        label: "compute_pipeline3086",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6020.setPipeline(render_pipeline601);
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group601);
    render_pass_encoder6030.setVertexBuffer(0, buffer600);
    render_pass_encoder6010.setPipeline(render_pipeline601);
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder6030.draw(3);
    render_pass_encoder6030.end();
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6011,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group602);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder6010.setVertexBuffer(0, buffer600);
    compute_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder6010.drawIndirect(buffer602, 0);
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group603);
    render_pass_encoder6010.end();
    device60.queue.submit([command_buffer603, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder6020.setVertexBuffer(0, buffer600);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder6020.draw(3);
    render_pass_encoder6020.end();
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer601, command_buffer602, ]);
}