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
    const array0 = new Float32Array([-1.0, 0.5, 1.0, 1.0, 0.75, 0.75, 1.0, -0.25, -1.0, -0.75, 0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 0.25, -0.25, 0.5, 0.5, -0.5, -0.5, 0.75, 0.25, 0.0, -0.75, -1.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.5, -0.5, 0.5, -1.0, -0.5, 0.5, 0.5, 0.75, -0.75, -1.0, 0.25, -1.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, -0.5, 0.25, 1.0, -1.0, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, -0.5, -0.5, 0.25, 1.0, -1.0, 0.5, 0.75, -0.5, 0.0, -0.75, 0.0, 0.0, 0.25, -0.5, -0.5, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.75, 1.0, -1.0, 0.75, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, -0.75, -1.0, -1.0, ]);
    const array1 = new Float32Array([-0.5, 0.0, -1.0, 0.5, -1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -0.5, 0.0, -0.25, 0.5, -1.0, -0.5, 0.25, 1.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.75, 1.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.0, -0.75, 0.5, 0.5, 0.75, -1.0, -0.75, 0.5, 0.75, 0.5, 0.0, -0.5, -1.0, 0.5, -1.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.5, -0.25, 0.75, 0.25, -1.0, 1.0, -0.75, -1.0, -1.0, -1.0, -0.75, -1.0, 0.75, -1.0, 0.75, -0.5, -0.5, -1.0, 1.0, 0.0, -1.0, 0.25, 0.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.25, -0.5, -1.0, 0.75, 0.5, 0.0, -0.5, 0.25, -0.25, 0.0, 1.0, ]);
    const array2 = new Float32Array([-1.0, -0.25, 0.5, 1.0, 0.5, 0.75, -0.75, -1.0, -0.5, 0.0, 0.25, 0.5, 0.5, 0.75, 0.5, -0.75, -0.75, 0.5, 0.0, 0.5, -1.0, 0.0, -1.0, 0.5, -0.75, 1.0, -0.75, 0.0, -0.5, -0.75, -0.25, -0.5, -1.0, 0.25, 0.75, 0.75, -0.75, 0.25, 1.0, 0.0, -0.75, -1.0, 0.75, 0.0, -0.5, 0.5, -1.0, -1.0, -0.75, -1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -1.0, -0.75, 0.75, 1.0, 0.0, -0.25, -0.25, 0.75, 0.0, 0.5, 0.25, 0.75, 0.5, 1.0, 0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 0.25, 0.0, -0.5, 0.0, 0.5, -0.5, 0.5, 0.75, -0.75, -0.5, 0.75, 1.0, 1.0, -0.5, 0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.0, -1.0, -0.25, -0.25, -1.0, ]);
    const array3 = new Float32Array([0.0, -0.5, -0.75, -0.75, 0.25, 0.25, -0.75, -0.75, 1.0, 0.75, 0.25, -1.0, 0.5, 0.5, 1.0, -1.0, -1.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.5, 0.75, 0.25, -0.5, 0.0, 0.75, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 0.75, 1.0, -0.25, -1.0, 0.0, 0.0, 0.5, 0.5, -0.75, -1.0, 1.0, 0.75, -1.0, -0.75, -0.75, 0.75, 0.25, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, 0.25, 1.0, -1.0, -0.75, -1.0, -0.5, -0.75, 1.0, -0.25, 0.75, -0.25, 0.0, 0.0, 0.5, 0.25, -1.0, -1.0, -1.0, 0.25, 0.25, 0.5, -0.25, -0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.75, 0.75, -0.25, 0.0, -0.5, 0.5, -1.0, 0.25, 1.0, 0.25, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.25, -0.25, 0.25, -0.75, -1.0, 0.25, 0.0, 0.25, 0.25, 1.0, 0.5, 0.0, 0.0, -0.5, -1.0, -0.5, 1.0, 0.0, 0.75, -0.75, -0.75, 0.0, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, -0.75, 0.0, 0.75, -0.5, -0.5, -0.5, 1.0, -1.0, 0.25, -0.5, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, -0.75, 0.75, -0.5, 0.75, 0.25, 0.0, -0.75, -0.75, 0.75, -1.0, 0.75, -0.25, 0.25, 0.25, -0.25, 0.0, -0.25, 1.0, 0.75, 0.0, 1.0, -1.0, -0.75, -0.75, 0.5, 0.25, -0.75, -0.25, -1.0, -1.0, -0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 0.5, 1.0, 0.25, 0.25, 1.0, 0.75, 0.5, -0.5, -1.0, -0.75, -0.25, -0.5, 0.25, -0.25, 0.75, -0.25, -0.75, 0.5, 0.5, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([0.25, -0.25, 1.0, 0.25, 0.25, 0.5, 1.0, -0.25, 0.5, 1.0, 1.0, 0.75, 1.0, 1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 1.0, 0.25, 1.0, 0.5, 1.0, 0.0, 0.5, 1.0, -1.0, -0.25, 0.5, 1.0, 1.0, -0.25, 0.25, -0.75, 0.25, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.5, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, -0.5, -0.25, 1.0, -0.75, -1.0, 0.0, 0.75, 0.75, -0.5, 0.5, 1.0, -0.5, 0.75, -1.0, -0.25, 1.0, 0.5, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -0.75, -0.75, -1.0, 0.0, -1.0, -1.0, 0.0, 0.75, -0.75, 0.75, 1.0, 0.5, 0.75, 1.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.75, -0.5, -1.0, 0.0, 0.5, 0.75, -1.0, -0.75, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([1.0, -1.0, 0.25, 0.5, -1.0, 1.0, 0.75, -0.25, 0.75, 0.0, 0.0, 1.0, -0.75, -1.0, 0.0, -0.5, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, 1.0, 0.75, 1.0, 0.0, -0.75, 1.0, -0.75, 0.0, 0.25, -0.25, -1.0, 0.75, 0.25, -0.75, -1.0, 0.0, -1.0, 0.75, -0.25, -0.75, 0.5, -1.0, 0.5, -0.5, 1.0, 0.25, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 0.25, 0.25, 0.0, -0.5, -1.0, 1.0, -0.5, -1.0, -1.0, -0.75, 0.5, 0.0, 1.0, 0.0, 0.5, 1.0, -0.75, 0.0, -1.0, 1.0, 0.75, -0.25, -0.5, 1.0, 0.75, -0.5, 0.0, 0.75, 0.5, 0.5, 0.5, -0.5, -0.5, 0.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device20.destroy();
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array7 = new Float32Array([0.0, -0.25, 0.75, 0.0, 0.25, 0.0, 0.0, 0.0, 1.0, 0.5, 0.0, 0.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.75, -1.0, 0.75, 0.0, -0.5, -1.0, 0.75, 0.5, 0.25, 1.0, -0.75, -0.75, 0.75, -0.5, 1.0, -0.75, 0.75, 0.75, -1.0, -0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 0.0, 0.5, -1.0, 0.0, 0.25, 0.25, -0.25, 1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, 0.25, 0.0, 0.25, 0.75, 1.0, 0.5, 1.0, 1.0, -0.5, -1.0, 0.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.0, 1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 1.0, 0.5, 0.0, -0.75, 1.0, 0.5, -0.5, 0.5, 0.0, 1.0, 0.25, 0.0, 1.0, ]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.pushErrorScope("validation");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer102.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([1.0, -0.5, 0.25, 0.0, 0.0, 0.5, -0.5, 0.25, -0.75, 0.5, 0.25, 0.0, -0.5, 0.5, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, -1.0, -0.25, -0.25, 0.25, -0.75, 1.0, 0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.25, 0.75, -0.25, 0.0, 0.25, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -0.5, -0.5, -0.25, 0.75, 0.0, 0.75, -0.25, -0.5, 0.75, 1.0, 0.5, -0.5, 0.0, 0.75, -0.5, -0.5, -0.5, -0.75, -0.75, -1.0, 1.0, -0.5, 0.5, -0.25, 0.25, 0.0, 0.0, 0.75, 1.0, 1.0, 0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 1.0, 0.0, 0.75, 1.0, -0.5, 1.0, -0.5, -0.5, -1.0, -0.75, 0.75, 0.75, -1.0, 0.75, 0.0, -0.5, 0.75, -0.5, 0.25, 0.5, ]);
    device10.pushErrorScope("out-of-memory");
    query100.destroy()
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
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
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer101.destroy()
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
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
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const array9 = new Float32Array([0.25, 0.0, -0.75, -1.0, 0.75, 0.5, 0.25, 0.25, -0.25, -1.0, -0.75, 0.25, -0.25, -0.5, -0.5, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, 0.75, 0.5, -0.5, 1.0, 0.5, -0.25, -0.25, -0.25, -0.25, -1.0, -0.5, -0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -0.5, 0.0, 0.75, 0.0, 0.0, 1.0, -0.25, 0.5, -0.5, -0.75, 0.25, 0.75, -0.25, 0.25, 0.5, 1.0, 1.0, -0.25, -0.25, 0.25, -0.75, 0.0, 0.5, -0.5, -0.25, 1.0, 0.75, 0.25, 0.0, 1.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.0, 0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 0.75, -0.25, 0.0, 1.0, -0.25, -1.0, ]);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query101.destroy()
    
    device50.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    compute_pass_encoder3000.popDebugGroup()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array10 = new Float32Array([0.0, 1.0, 0.75, -0.75, -0.5, -0.75, -0.25, 1.0, 1.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.0, -1.0, -0.25, 1.0, 1.0, -0.25, -0.25, 0.75, 0.75, 0.0, -0.5, -0.75, -0.75, -0.75, 0.75, 0.0, 0.25, 0.25, 0.0, -0.75, 0.25, 0.5, 0.75, 0.75, -0.75, -0.25, 0.25, -0.5, 0.5, 0.5, -0.5, 0.5, -0.25, -0.5, 0.5, -0.25, -0.75, -1.0, -1.0, 0.0, 0.0, 1.0, -0.25, -0.75, 0.75, 1.0, -1.0, 0.25, -0.75, 1.0, -0.5, -0.75, 0.75, 0.25, -0.5, -0.5, 0.25, 0.75, 1.0, -0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 0.5, 0.25, 1.0, 0.5, 0.0, -0.25, 0.25, 0.25, -0.25, ]);
    
    device40.destroy();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer101 = command_encoder101.finish();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder301.clearBuffer(buffer301);
    buffer300.destroy()
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer103.destroy()
    command_encoder302.insertDebugMarker("mymarker");
    
    buffer104.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder302.insertDebugMarker("mymarker");
    query101.destroy()
    device30.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query300.destroy()
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    texture300.destroy();
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder102.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer102 = command_encoder102.finish();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const array11 = new Float32Array([0.25, 0.0, -1.0, 1.0, -0.25, -0.25, -1.0, -0.5, 0.25, -1.0, -0.25, -0.5, -0.75, -0.75, 0.75, 0.5, 1.0, 0.5, 0.25, -0.5, 0.5, 0.5, 0.0, 1.0, -1.0, 0.75, -0.25, 0.25, -0.25, -0.25, -0.75, -0.75, 0.25, -0.5, -1.0, -0.75, 0.0, -0.75, 1.0, 0.75, 0.75, -0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -1.0, -0.5, 0.75, -0.5, -0.75, 0.25, -0.75, 0.75, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 0.5, 0.25, 0.0, -0.5, 0.5, -0.75, 0.75, -1.0, 1.0, -1.0, 0.5, 0.0, 0.0, -1.0, -0.5, 0.5, 0.25, 1.0, -0.5, 0.25, -1.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.75, ]);
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder303.insertDebugMarker("mymarker");
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    texture101.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer303 = command_encoder303.finish();
    buffer301.destroy()
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
    
    device30.queue.submit([command_buffer303, ]);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    command_encoder305.insertDebugMarker("mymarker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    command_encoder305.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    
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
    query300.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout304]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.pushErrorScope("out-of-memory");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    texture100.destroy();
    const command_buffer700 = command_encoder700.finish();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    query303.destroy()
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
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
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3050.insertDebugMarker("marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    const array12 = new Float32Array([0.75, 1.0, 0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -0.75, 0.25, -0.5, -0.5, -0.25, 0.25, 0.25, -1.0, 0.5, -0.25, -0.5, 0.5, 0.5, 1.0, -0.75, 0.5, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, 0.25, -0.5, -1.0, -0.5, 1.0, -1.0, -0.75, 0.75, 0.75, 1.0, -1.0, 0.25, 1.0, -0.5, 0.5, 0.5, 0.0, 0.0, -1.0, -0.75, 0.0, 0.75, -0.5, -0.5, 0.25, 1.0, 0.5, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, -1.0, 0.25, -0.75, 0.0, 0.25, -1.0, -0.25, 0.75, -0.75, 0.5, 1.0, -0.5, 0.5, 0.25, 0.25, -0.5, 0.5, -0.5, -1.0, -1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.5, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, -0.5, 0.0, ]);
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("out-of-memory");
    const array13 = new Float32Array([-1.0, 0.25, -0.5, 0.75, -0.75, 0.25, -0.75, 0.5, 0.75, 0.5, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -0.5, 0.5, -0.5, 0.75, -0.5, 1.0, -0.5, -0.75, -0.5, -0.25, 1.0, -0.75, -1.0, 0.5, 0.0, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, 0.0, -0.25, -0.25, 0.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -0.75, -0.75, -0.5, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.25, 0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, 0.0, -0.5, 0.5, 0.0, -1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, -0.5, 0.25, -0.5, -0.25, 0.0, ]);
    query301.destroy()
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3060.insertDebugMarker("marker")
    texture700.destroy();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query303.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture701.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer106.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    query300.destroy()
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    query302.destroy()
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    device10.queue.writeTexture({ texture: texture103 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    query702.destroy()
    query302.destroy()
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    texture103.destroy();
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture600.destroy();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout303]
    });
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    
    device10.pushErrorScope("out-of-memory");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    device80.pushErrorScope("out-of-memory");
    query302.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3010.popDebugGroup()
    query600.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device10.queue.writeBuffer(buffer107, 0, array10, 0, array10.length);
    
    
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    
    buffer105.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder307.insertDebugMarker("mymarker");
    device60.queue.writeBuffer(buffer600, 0, array10, 0, array10.length);
    query304.destroy()
    query600.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const array14 = new Float32Array([-1.0, -0.25, 1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 1.0, -0.25, 0.25, -1.0, -0.5, 0.25, 0.5, 0.75, 0.75, -1.0, -0.25, 0.25, 1.0, 0.5, 0.25, 0.0, -0.25, 0.5, 0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 0.0, 1.0, -0.75, 1.0, 0.5, -0.75, 1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, -0.25, 0.75, -1.0, 0.75, 0.5, 0.25, -1.0, -1.0, 0.75, 0.0, 0.25, -0.5, -0.25, 0.5, 0.25, 0.5, -1.0, 0.5, 0.5, -0.75, -0.25, -0.75, -0.25, 0.0, 0.0, 1.0, 0.25, 0.75, 0.75, -1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -0.75, 1.0, 0.75, 1.0, 0.25, 1.0, -0.75, -0.75, 0.0, ]);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer107, 0, array13, 0, array13.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer601, 0, array12, 0, array12.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device10.queue.writeBuffer(buffer107, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    query600.destroy()
    
    buffer302.destroy()
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    command_encoder104.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder104.clearBuffer(buffer107);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer108, 0, array6, 0, array6.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.pushErrorScope("internal");
    
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    compute_pass_encoder3050.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    command_encoder104.clearBuffer(buffer108);
    compute_pass_encoder3060.insertDebugMarker("marker")
    query701.destroy()
    query701.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query301.destroy()
    const command_buffer307 = command_encoder307.finish();
    render_bundle_encoder700.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    compute_pass_encoder6000.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder302.insertDebugMarker("marker");
    query102.destroy()
    query102.destroy()
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    query600.destroy()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device60.queue.writeBuffer(buffer601, 0, array14, 0, array14.length);
    
    buffer107.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder3000.popDebugGroup()
    
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
    query300.destroy()
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
    device70.pushErrorScope("out-of-memory");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    compute_pass_encoder3060.insertDebugMarker("marker")
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device30.queue.submit([command_buffer307, ]);
    compute_pass_encoder1030.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3050.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer105, ]);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder3010.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    device70.queue.submit([command_buffer700, ]);
}