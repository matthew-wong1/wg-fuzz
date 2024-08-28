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
    const array0 = new Float32Array([0.75, 0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 0.5, 0.0, 0.0, -0.75, 0.25, 1.0, -1.0, 1.0, 0.5, -0.75, 1.0, 0.5, 0.25, 0.0, 1.0, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, 1.0, 0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.25, 0.75, 0.0, -0.5, -0.25, 0.5, -1.0, -0.25, 1.0, 0.75, -0.75, -0.5, 0.25, 0.5, -0.25, 1.0, -1.0, 0.0, 0.0, 0.0, -1.0, -0.75, 0.0, 0.75, 1.0, 0.5, 0.5, -0.75, 1.0, -0.5, 0.25, -0.5, 0.0, 0.5, -1.0, -1.0, -0.75, 0.5, -0.5, 0.25, -1.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.25, -0.75, -0.25, 0.0, 1.0, -1.0, -1.0, 0.5, 0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.25, ]);
    
    const array1 = new Float32Array([0.0, 0.25, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, 1.0, -0.5, -0.25, -1.0, -0.75, 0.5, -0.25, -0.25, 0.5, 0.5, -0.75, 0.5, -0.75, -0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 0.5, -1.0, 0.0, -1.0, 1.0, 0.25, 0.5, -0.75, 0.5, -1.0, 1.0, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, -1.0, -0.75, 0.5, -1.0, 0.75, 0.75, 0.5, 0.75, 0.75, 1.0, 0.75, 1.0, 0.5, 0.25, -0.25, -1.0, 0.5, 0.5, -0.5, 0.75, 0.0, -0.25, 0.0, 0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, 0.25, 0.5, -0.75, -0.75, -0.25, -0.25, -1.0, 0.25, 0.0, 0.75, 0.75, 1.0, 1.0, -0.5, -0.5, 0.75, 0.25, 0.0, 1.0, 0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-1.0, 0.5, -0.5, 1.0, -0.75, 0.5, -0.25, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.5, -0.25, 0.75, 1.0, 0.5, 0.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0.0, -0.25, -1.0, 0.25, 0.75, -0.75, -0.25, -0.5, 0.0, 0.25, 1.0, 0.25, 0.25, -1.0, 0.5, 0.75, -0.75, -0.5, 0.75, -0.75, 0.75, -0.5, 0.75, -0.5, 1.0, -1.0, 0.0, -1.0, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, 1.0, 0.75, -0.25, 0.0, -1.0, -0.25, 0.0, -1.0, 1.0, 0.5, -1.0, 0.5, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, -0.75, -0.75, -1.0, -0.5, 0.25, -1.0, 0.0, -0.75, 0.25, -0.5, 1.0, 0.5, 0.25, 0.0, 0.25, -0.75, 0.5, 0.75, -0.75, -0.5, 0.5, -0.25, 1.0, ]);
    
    
    const array3 = new Float32Array([0.25, 0.75, 0.0, 0.75, -0.25, 1.0, 0.0, -1.0, -0.25, 1.0, 0.5, 0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.0, -0.25, 0.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.5, 0.0, -0.75, -1.0, -0.25, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 0.75, -0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, -0.75, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, 0.5, -0.5, 0.25, -1.0, -0.25, -0.25, -0.25, 1.0, 0.75, -0.25, 1.0, -0.75, 1.0, 0.75, -0.5, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, -1.0, -0.75, 0.0, 0.5, -0.5, -0.75, 0.5, -0.5, 1.0, 0.0, -0.75, -0.75, -0.5, -1.0, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([0.0, 0.0, -0.25, 0.25, -0.75, 0.25, 0.25, 0.0, 0.5, -0.75, -0.75, 0.25, -0.25, -1.0, 0.25, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, 0.5, 0.5, -0.75, -0.25, -1.0, 0.75, 0.5, -1.0, -1.0, 1.0, 0.25, -0.5, 0.5, -0.5, 0.0, 0.5, 0.25, 0.75, -0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 1.0, -0.75, -0.75, 0.5, 1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, 1.0, -0.5, -1.0, -0.25, -0.5, 0.0, -1.0, -0.5, 0.5, -0.25, 0.75, 0.5, -0.75, 0.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.5, -1.0, 0.5, 1.0, 1.0, 0.75, 0.25, -0.5, -0.25, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const array5 = new Float32Array([-0.5, 1.0, -0.5, -1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, 0.75, 0.75, -0.75, -0.5, -0.75, 1.0, -0.75, -0.75, 0.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.5, -0.25, 0.25, 0.0, 0.75, 0.75, 1.0, -0.75, 0.0, -0.75, 0.5, -0.25, -0.75, 0.0, 0.5, -1.0, -0.25, -1.0, -0.75, 0.75, -1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -1.0, -0.75, 0.25, -1.0, -0.75, -1.0, -0.75, -1.0, -0.5, 1.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.75, -0.75, -0.75, 1.0, -0.75, 0.5, 0.75, 0.75, -0.25, -0.25, -1.0, -0.75, -1.0, 0.75, -0.25, 0.5, 1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.25, 0.5, 1.0, -0.75, 0.5, -0.5, 0.75, 0.5, -1.0, 0.25, 0.0, 1.0, -0.25, ]);
    
    
    
    const array6 = new Float32Array([-1.0, -0.75, 0.25, -0.25, 1.0, 0.75, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 0.5, 0.0, -1.0, 0.75, 0.5, -1.0, 0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 1.0, -0.25, -0.5, -1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, -0.5, 0.25, 0.25, -1.0, -1.0, -0.5, 0.75, -0.75, -0.25, -1.0, -0.5, 0.75, -0.75, 1.0, 0.5, -0.75, -0.5, 0.5, 0.5, 0.5, 1.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -0.5, 1.0, 0.5, -0.25, -0.25, 0.25, -0.75, 0.75, 0.5, 0.0, 0.25, -1.0, 0.5, -0.75, -0.25, -1.0, 0.25, -0.75, 0.75, 0.0, 1.0, -0.25, 0.25, 0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.5, 0.5, -0.25, ]);
    const array7 = new Float32Array([-0.75, 0.0, 0.75, -1.0, 0.0, -0.5, -0.75, -1.0, -0.75, -0.25, 0.25, 0.5, 0.0, 0.25, -1.0, -0.25, 0.25, 0.0, 1.0, -0.25, -0.25, 0.75, -0.25, 0.75, 0.25, 0.75, -0.5, 0.0, 0.0, -1.0, 1.0, -0.75, -0.25, -0.75, 0.25, -0.75, 0.75, -0.25, 0.25, -0.25, -0.5, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, 0.75, 0.75, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, 1.0, -0.25, -0.5, 0.0, -0.75, -0.25, 0.5, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, -0.5, -0.25, 0.25, -1.0, -1.0, -1.0, 0.75, -1.0, -0.25, 0.75, 0.0, -0.5, -0.25, 0.25, 0.0, -0.75, -0.5, -0.25, 0.5, -0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.0, 0.5, 1.0, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    device30.pushErrorScope("out-of-memory");
    texture300.destroy();
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array8 = new Float32Array([0.75, 0.5, 0.25, 0.0, -1.0, -0.75, -0.25, 0.75, -0.25, 1.0, 0.5, -0.75, 0.75, 0.0, 0.25, 0.5, -0.75, -1.0, -0.75, 1.0, -1.0, -0.25, 1.0, 0.75, 0.75, -0.5, -1.0, 0.75, 0.75, -0.5, 0.5, 0.5, -1.0, -0.5, 0.75, -1.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.75, -1.0, 1.0, 0.25, -0.25, -1.0, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 0.25, 0.25, -0.5, 0.25, 0.5, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.75, 0.25, -0.75, 0.25, -0.5, 0.25, 0.75, 0.5, 0.25, 0.75, 0.25, 0.0, 1.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, 0.75, -1.0, 0.0, -0.25, 0.0, -0.75, 1.0, 0.0, 0.5, 0.5, -1.0, 1.0, -0.75, -0.25, 1.0, -0.25, -0.25, ]);
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device20.pushErrorScope("internal");
    buffer300.destroy()
    query300.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    
    const array9 = new Float32Array([-1.0, 0.0, -1.0, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -1.0, 0.25, 0.5, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, -0.75, 0.0, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.0, -0.75, 0.0, 0.75, 1.0, 0.5, 1.0, 1.0, -0.25, 0.75, 0.5, 1.0, 1.0, -0.75, -1.0, 0.0, 0.25, -0.5, 0.25, -1.0, -1.0, 0.75, 0.75, 1.0, 0.5, 0.5, -1.0, -0.25, 0.0, 1.0, 0.5, 0.25, -0.5, -0.5, 0.25, -0.25, -0.5, 1.0, 0.75, -0.75, -1.0, 0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.0, -0.75, -0.25, -0.5, ]);
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture200.destroy();
    buffer201.destroy()
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    texture201.destroy();
    device30.pushErrorScope("out-of-memory");
    
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
        occlusionQuerySet: query200
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder2000.insertDebugMarker("marker");
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder300.insertDebugMarker("mymarker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
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
        occlusionQuerySet: query200
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer202.destroy()
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    texture301.destroy();
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
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
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2000.popDebugGroup();
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    device40.pushErrorScope("validation");
    command_encoder300.popDebugGroup()
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.executeBundles([])
    
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    texture302.destroy();
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    
    
    render_pass_encoder2010.executeBundles([])
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const array10 = new Float32Array([0.25, -1.0, 0.5, 0.5, 0.0, -0.5, -0.5, -1.0, -0.25, -1.0, -0.5, -0.75, 0.75, 0.75, -0.75, -0.5, 0.75, 0.25, -1.0, -0.25, -0.75, 0.25, -0.5, 0.25, 0.75, -0.25, -0.75, 0.0, 0.0, -1.0, -0.75, -0.25, 0.5, -0.5, 0.75, 0.25, 0.25, -0.25, -1.0, -0.75, -0.75, 1.0, -1.0, -0.75, 0.25, -0.75, -0.5, -0.25, 0.25, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 0.5, -0.5, -0.25, -1.0, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, 0.25, -0.25, -0.5, 0.0, 0.25, 0.75, -0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.5, -0.25, -0.5, 0.75, -0.75, -0.75, 0.0, 0.25, 0.75, -0.75, -1.0, -0.75, -0.5, -0.75, -1.0, 0.25, 0.0, -0.5, 1.0, ]);
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    buffer203.destroy()
    render_pass_encoder2010.executeBundles([])
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder2000.setStencilReference(1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2000.setStencilReference(1);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.copyBufferToBuffer(
        buffer303,
        0,
        buffer302,
        0,
        400
    );
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    buffer400.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer401.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2000.setStencilReference(1);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer303.destroy()
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    render_pass_encoder2000.setPipeline(render_pipeline201);
    
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const command_buffer500 = command_encoder500.finish();
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2010.insertDebugMarker("marker");
    query300.destroy()
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setStencilReference(1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    
    
    query200.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    texture202.destroy();
    render_bundle_encoder300.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("internal");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.clearBuffer(buffer304);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer302, 0, array10, 0, array10.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder302.clearBuffer(buffer302);
    compute_pass_encoder3010.insertDebugMarker("marker")
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder2000.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_buffer302 = command_encoder302.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    texture203.destroy();
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
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
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    texture303.destroy();
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2010.executeBundles([])
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    buffer304.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.setPipeline(render_pipeline304);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device60.pushErrorScope("validation");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture500.destroy();
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
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
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.popDebugGroup();
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
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
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([0.5, -0.75, -0.25, 0.25, 0.75, 0.0, -0.75, -0.75, -0.5, -0.25, 0.0, -0.75, -0.5, 0.25, -0.5, -0.5, 0.25, -0.25, 0.0, 0.75, 0.5, -1.0, 0.5, -0.25, -0.75, 0.0, -0.25, 0.75, -0.25, -1.0, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, -1.0, -0.25, 0.75, 0.25, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, 0.75, 0.0, 0.0, -1.0, 1.0, 0.5, -0.25, -0.5, -0.25, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, 0.25, 1.0, 0.75, -1.0, -0.5, -0.75, 0.75, -0.25, 0.5, -0.25, 0.75, -0.75, 0.25, -0.5, -0.5, -0.75, -0.25, 0.25, -1.0, 1.0, -0.5, -1.0, 0.0, 0.0, -0.25, -0.5, 1.0, -1.0, 1.0, -1.0, 0.5, 0.25, -0.5, -0.25, -1.0, -0.5, -0.75, ]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    device30.pushErrorScope("validation");
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    render_pass_encoder2010.setStencilReference(1);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder3000.popDebugGroup()
    
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder501.insertDebugMarker("marker");
    query500.destroy()
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    query301.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    buffer501.destroy()
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    query200.destroy()
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    device50.queue.submit([command_buffer500, ]);
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    device30.queue.submit([command_buffer302, ]);
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
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout204]
    });
    query201.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer501 = command_encoder501.finish();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder2010.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    device50.queue.submit([command_buffer501, ]);
}