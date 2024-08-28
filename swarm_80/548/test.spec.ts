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
    const array0 = new Float32Array([-1.0, 0.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.25, 0.5, 1.0, -0.75, 1.0, -0.75, 0.75, 0.75, 0.25, -0.75, 0.75, -0.75, -0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 0.75, 0.0, -1.0, 0.5, -0.5, -0.5, -0.25, -0.25, -1.0, 0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 0.75, -0.25, -0.5, 1.0, 0.25, -1.0, 0.25, 0.75, 0.75, -0.5, -0.5, 0.75, 0.25, 0.25, -0.75, 0.75, -0.5, -1.0, 0.0, 0.75, -0.5, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, -0.75, 0.25, 1.0, -0.25, -0.5, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, 0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, -1.0, -0.75, 0.5, -0.75, 1.0, -0.25, 0.5, -1.0, 0.75, -0.75, ]);
    
    
    const array1 = new Float32Array([-0.5, 0.5, 0.0, -0.5, 0.5, 0.0, -0.75, 0.0, 1.0, 1.0, 0.75, 0.0, -0.25, 0.75, 0.5, 0.5, -0.75, -0.5, 0.25, 1.0, 0.25, 0.0, 0.0, 0.0, 1.0, -0.5, 0.25, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, 0.75, 0.75, -0.5, 0.5, 0.25, 0.75, -0.5, 0.75, -0.5, 0.25, -0.75, -0.25, 0.5, -0.5, 1.0, 1.0, -0.25, 0.0, -0.75, 1.0, 0.25, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, 0.0, 0.5, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -0.5, 0.0, 0.75, 0.5, 0.0, -0.75, -1.0, -0.75, -0.75, -0.5, -0.75, 1.0, -0.25, 0.75, 0.5, -0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 1.0, -0.75, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, 0.5, 1.0, 0.0, 1.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.25, 0.5, 0.25, 1.0, -1.0, 0.5, 0.25, -0.25, 0.75, 0.5, -1.0, 0.75, -0.5, -0.5, 0.25, -0.5, 0.75, -0.25, -0.5, -0.5, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, 0.75, 0.75, -0.75, 0.5, 0.75, 0.25, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, 0.0, -0.5, 0.5, -1.0, -0.75, 0.75, -0.5, -0.75, -0.5, -0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 0.25, -0.5, 1.0, -0.5, -0.75, -0.75, 0.0, 0.0, -0.75, -0.5, -1.0, 0.25, 0.25, -1.0, -0.25, -0.5, 0.25, -0.5, -1.0, 0.25, 0.5, 0.5, 0.0, 0.5, 0.0, 0.25, 0.25, ]);
    
    const array3 = new Float32Array([-0.25, -0.25, -0.25, 0.0, 0.25, 0.25, -1.0, 0.25, -0.75, 1.0, 1.0, 0.5, 0.25, -0.25, -0.75, 0.75, 1.0, 1.0, 0.75, 1.0, -0.5, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, -0.25, -1.0, 0.25, -0.5, 0.0, -0.5, -0.5, 1.0, -1.0, 0.0, -0.75, -1.0, -0.75, 0.25, -0.75, -0.75, 0.5, 1.0, -0.25, 1.0, -0.5, -0.75, 0.0, 0.75, -0.75, -0.5, -1.0, 0.75, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.25, -0.75, 0.0, 0.25, -0.75, -0.25, 0.5, 1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -1.0, -0.5, -0.25, -0.25, 0.5, 0.25, 0.75, 0.75, -0.75, 1.0, 0.0, -0.5, 0.75, 0.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    
    device10.destroy();
    
    const array4 = new Float32Array([-0.75, 0.5, -1.0, 0.0, -1.0, -0.75, -1.0, 0.0, 0.0, -0.25, -0.75, -1.0, -1.0, 0.75, 1.0, 0.5, 0.0, -0.75, -0.5, -0.25, 0.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, 0.5, 0.75, -0.75, -0.75, 0.5, 1.0, 0.0, 0.5, 0.75, -0.5, 0.25, 0.0, 0.5, 0.25, -0.25, -0.75, 0.25, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.5, -0.25, 0.25, 1.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.25, -1.0, 0.0, 0.25, 0.5, -1.0, -0.25, 0.25, -1.0, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -0.25, 0.5, -0.5, -1.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, 1.0, 0.25, 0.75, -0.5, -0.5, -1.0, 0.25, 0.75, -1.0, -0.25, -0.25, 0.75, -1.0, -0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-1.0, 1.0, -0.75, -0.75, 0.75, 1.0, 1.0, 0.75, 0.5, 0.25, -0.5, 1.0, 1.0, 0.25, -1.0, 0.5, -1.0, -0.5, -0.75, -0.5, 0.5, -0.25, -0.25, -1.0, 0.25, -0.75, -0.5, 0.75, -0.5, 0.75, 0.25, -0.25, -0.75, -1.0, 0.0, 0.5, -0.75, 1.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -1.0, -0.25, -0.75, -1.0, -0.25, 0.25, 0.0, 0.25, 0.25, -0.25, -0.25, 0.75, -1.0, 0.75, -0.25, -0.75, 0.75, 0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 1.0, -0.25, 0.5, 0.25, 0.75, 0.25, 1.0, 0.0, -0.75, 0.0, -1.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.75, -0.75, -0.5, -1.0, -0.75, -1.0, -0.75, -0.75, 0.0, 0.0, -0.5, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.destroy();
    
    
    const array6 = new Float32Array([0.25, 0.25, -0.25, 0.0, -1.0, -0.5, 0.25, 0.0, -1.0, -0.5, 0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 0.0, 0.0, 0.0, -0.5, -1.0, 0.5, -0.5, -1.0, -0.25, -0.5, 0.5, 0.5, -0.5, -1.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.25, 0.25, -0.5, -0.75, -1.0, 0.75, 0.5, 0.5, -0.25, -0.25, 0.75, -1.0, -0.5, 0.5, -1.0, -0.5, 0.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.5, -0.75, 0.5, 0.5, 0.75, 0.5, 0.75, -1.0, -0.25, 0.0, 0.5, -0.5, -0.75, 0.0, 0.25, -0.25, 0.75, -0.75, 1.0, 0.0, -1.0, -1.0, 0.5, -0.5, -0.5, 1.0, 1.0, 0.5, 0.75, 0.5, -0.75, 0.75, 0.25, -0.75, -1.0, -0.25, 0.5, -0.5, 0.25, 0.5, -0.5, ]);
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    
    
    
    
    const array7 = new Float32Array([0.0, 0.0, 0.75, 0.25, -0.5, 1.0, -1.0, -1.0, 1.0, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.0, -0.25, -0.75, 0.75, 0.75, -0.25, 1.0, -0.25, 0.5, 0.0, 0.5, 0.25, 0.25, 0.75, 1.0, 0.75, -0.25, 1.0, -1.0, 0.5, -0.75, 0.5, 1.0, -1.0, -0.25, -0.5, 0.0, -0.5, 0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.5, 0.5, -1.0, 0.25, -1.0, -0.25, 1.0, 0.0, -0.5, 0.0, -0.75, 1.0, 0.25, -0.75, -0.25, -0.75, 1.0, -0.5, 0.0, -0.75, -1.0, -0.5, -1.0, 0.75, -0.5, -0.25, 0.0, 0.5, 0.25, -1.0, -0.5, 0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.5, 0.0, ]);
    buffer300.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.destroy();
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture400.destroy();
    
    const array8 = new Float32Array([-0.25, -0.25, -0.75, -1.0, 1.0, 1.0, -1.0, 0.5, -1.0, 0.75, -0.75, 0.75, -0.5, -1.0, 1.0, 0.25, 0.0, -0.75, -0.5, -0.75, -0.25, 0.0, 1.0, 0.25, 0.0, 0.25, -0.5, 0.0, 1.0, -1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.0, -0.5, -0.75, 0.75, -0.75, 0.0, 0.75, 1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -0.25, -0.5, -0.75, -0.5, 0.75, -0.75, -0.75, -1.0, -0.5, -0.75, -0.25, -0.75, -0.75, 0.0, 0.5, 0.25, 1.0, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 0.5, 0.0, -0.25, 1.0, -0.75, 0.0, 0.0, 1.0, -0.5, 0.75, 0.25, -0.25, 1.0, -0.25, 1.0, 1.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.25, 0.5, 0.25, -0.5, 0.0, -1.0, 0.75, 0.25, ]);
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device60.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const array9 = new Float32Array([0.25, -1.0, -0.75, 0.5, 0.75, -0.5, -0.5, 0.0, 0.0, 0.75, -0.75, -0.5, -0.5, 0.0, 0.0, 1.0, -0.25, 0.25, 0.0, 0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 0.25, -0.75, 0.75, 0.5, -0.5, 0.0, -0.25, 1.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.25, 0.25, 0.25, 1.0, -1.0, 0.0, 0.25, 0.75, 0.5, -0.25, 0.0, -1.0, 0.75, -0.75, 0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -0.75, -0.5, -0.25, -1.0, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, -0.75, 0.75, -0.75, -0.5, -0.75, -0.75, -0.25, 1.0, 1.0, 0.5, 1.0, 0.25, 0.5, 1.0, -0.25, -0.5, -0.75, -0.25, -0.75, 1.0, 0.25, -0.25, -1.0, -0.75, 1.0, ]);
    texture402.destroy();
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
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
    buffer400.destroy()
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
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
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    texture403.destroy();
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    buffer401.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    texture401.destroy();
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    texture404.destroy();
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    device40.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.pushErrorScope("internal");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer500.destroy()
    const array10 = new Float32Array([0.25, -1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, 0.5, 0.5, -0.5, -1.0, 0.0, -1.0, 0.5, -1.0, -0.5, -0.75, 0.75, -0.5, 0.75, 1.0, -1.0, -0.75, 0.75, -0.25, -1.0, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 0.0, -0.75, 0.5, 0.5, -0.5, 1.0, 0.0, 0.5, 1.0, -0.25, -0.5, 0.5, -1.0, 0.75, 0.0, 0.75, 0.75, 0.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.5, -0.75, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, -0.75, -0.25, 0.5, 0.25, -0.75, -0.25, 0.75, -0.5, -0.5, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, 0.25, 0.25, -0.75, 0.5, -1.0, 0.0, -0.75, 1.0, 0.75, 0.5, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.5, ]);
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device70.destroy();
    const array11 = new Float32Array([1.0, -0.25, 0.0, -0.5, 0.25, 0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -0.25, 0.75, -0.75, 0.25, -1.0, -1.0, 0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.25, 0.5, 1.0, 0.25, -0.5, -0.5, -0.25, 0.0, 0.75, 0.75, -1.0, -0.75, 0.75, -1.0, 0.5, 1.0, -0.5, 0.25, -0.75, -0.25, 0.25, 0.0, -0.75, -0.25, -1.0, -0.25, -0.25, 1.0, 0.0, 0.75, -0.25, -0.25, -1.0, -0.25, 0.5, -0.75, 0.75, -1.0, -1.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, -0.25, -0.25, 0.75, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, -1.0, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -0.75, -0.75, -0.5, -0.75, 0.25, 1.0, 1.0, -0.75, 0.75, 0.0, -0.75, -0.25, 0.25, ]);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    query501.destroy()
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const array12 = new Float32Array([-0.25, 1.0, 0.0, -0.5, -1.0, 1.0, 0.25, 1.0, 0.0, 0.75, -1.0, -1.0, 0.75, -1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, -1.0, -0.5, 0.25, -0.25, 1.0, 0.25, -0.25, 0.0, -0.5, 0.75, 0.5, -0.25, -0.5, 0.5, -0.5, -0.5, 0.25, 1.0, 0.5, 1.0, 1.0, -0.75, -0.5, -0.25, 0.5, -0.25, 1.0, -0.25, 0.75, -0.25, 0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, 0.0, -1.0, 0.0, -1.0, 0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -0.5, -0.25, 0.5, 0.75, -1.0, 0.75, 0.25, 0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.0, -1.0, 0.25, -0.75, -0.75, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    
    
    
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    texture501.destroy();
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    texture500.destroy();
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([-0.25, 0.0, 0.25, -0.75, -1.0, -0.75, 1.0, 1.0, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, 0.25, 1.0, -0.5, -0.5, -0.25, 0.25, -0.25, 0.75, -0.5, -0.5, 0.0, -0.5, 0.5, -0.75, -1.0, 0.5, -1.0, 0.0, 0.0, 0.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.75, 0.0, 0.0, 0.25, 0.75, -1.0, -0.75, -0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 1.0, 0.75, 0.5, -1.0, 0.25, -0.5, -0.75, -0.75, 0.0, -1.0, -0.25, 0.25, -0.25, 0.0, -0.75, -0.5, -0.25, -0.5, -1.0, 1.0, -1.0, 0.5, 0.0, -0.25, 0.75, 0.0, 0.25, 1.0, 0.5, -0.5, 0.25, 1.0, -0.25, -0.5, -0.25, -1.0, -0.75, -1.0, -0.5, -0.75, ]);
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array14 = new Float32Array([1.0, -0.75, 0.5, 0.0, -1.0, 0.0, 0.75, -1.0, -0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -0.25, -0.75, 0.75, 0.0, -0.5, -1.0, -1.0, 0.0, 0.25, -1.0, 0.75, 0.5, -0.25, 0.25, 0.0, -0.25, -0.25, -0.25, -0.75, 0.25, 0.75, 0.75, 1.0, 1.0, 0.5, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, 0.25, -0.25, -0.5, -0.5, 0.75, 0.25, 0.75, 0.0, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -0.75, -0.5, -0.5, -0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 0.25, 0.0, -0.75, 0.75, 0.75, -0.5, 0.25, -0.25, 0.0, -1.0, 0.5, 1.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.75, -0.75, -0.25, -0.75, 0.5, 0.5, -0.25, 1.0, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, -1.0, ]);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query502.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer503.destroy()
    const array15 = new Float32Array([0.0, -1.0, 0.75, 1.0, 0.0, 1.0, -0.25, -1.0, 0.5, -0.25, 1.0, 0.5, 0.0, -0.75, -0.75, -0.75, -1.0, -1.0, 0.25, 0.75, -1.0, -1.0, 1.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -1.0, 0.25, -0.75, -0.25, 0.5, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, -0.25, -0.5, 0.5, 0.0, 0.0, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.25, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, -1.0, -0.25, -1.0, 1.0, -1.0, 0.75, 0.0, -0.25, -1.0, 0.0, 0.5, -0.75, -1.0, -0.25, 0.5, 0.75, 0.25, -0.25, 0.0, 0.5, -0.25, 0.25, 0.75, 0.25, 0.25, 0.25, -0.75, -0.25, -0.25, -1.0, -0.25, 0.75, -1.0, -0.5, ]);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    texture800.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    texture801.destroy();
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    device80.pushErrorScope("validation");
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer502.destroy()
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const array16 = new Float32Array([-0.75, 0.0, 0.0, -1.0, 1.0, -0.5, 0.0, -0.5, 0.25, -0.5, -1.0, 0.5, 0.25, 0.0, -0.25, -0.75, -0.75, -0.75, -1.0, 1.0, -1.0, -0.5, 0.5, 0.25, 1.0, 0.5, 1.0, 0.75, 0.0, -0.75, -1.0, 1.0, 0.75, 0.0, -0.25, 0.5, 0.5, -0.75, -0.75, 0.5, 0.75, -0.5, -0.75, 0.75, -0.5, 1.0, 0.5, 0.25, 0.25, 1.0, 1.0, 0.0, -1.0, 0.0, -0.25, 1.0, 0.25, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, 1.0, -1.0, 0.0, -0.25, 0.25, -1.0, 0.0, 0.75, 0.0, -0.75, -0.5, 0.25, -0.25, -0.25, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, 0.5, -0.75, -0.75, -0.5, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, -0.5, 0.5, 0.0, ]);
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout509,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const array17 = new Float32Array([-1.0, 0.25, -1.0, -0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, -0.25, 0.5, -1.0, 0.75, 0.75, 0.0, -0.25, -0.75, -0.5, 1.0, -0.25, -0.75, 0.75, 0.0, 1.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.75, 0.25, 0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 0.75, 0.25, -0.25, 0.75, 0.25, 0.75, 0.5, -0.5, -0.75, 0.25, -0.75, -1.0, -0.5, -1.0, -1.0, -0.25, -0.5, -0.5, 0.0, -0.75, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, 0.75, 0.25, 0.0, 1.0, -0.25, 0.75, -0.75, -0.75, 0.75, 0.75, -0.5, -0.5, 1.0, -0.25, 0.5, 0.75, -0.75, -0.25, 0.5, 0.5, 0.25, 1.0, 0.0, 0.0, 0.0, 0.0, ]);
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    query500.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query502.destroy()
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout802]
    });
    
    
    device80.pushErrorScope("internal");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const array18 = new Float32Array([-0.25, 0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.0, -0.75, -0.5, -0.75, -0.75, -0.25, -1.0, 0.0, 0.25, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, -0.25, -0.5, -0.5, -0.5, -0.5, -1.0, -0.25, 1.0, -0.25, 0.0, 0.5, -1.0, 0.25, -1.0, 0.5, 0.0, 0.5, 0.0, 0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, 0.25, -0.75, 0.5, -1.0, -1.0, 1.0, -1.0, 0.25, 0.5, 1.0, 1.0, 0.25, -0.5, 1.0, -0.5, 0.75, -0.75, 0.5, -0.75, -0.75, 0.25, -0.75, 0.5, 0.5, 1.0, 1.0, 0.75, -0.75, 0.5, 1.0, 0.0, -0.75, -0.75, -0.25, ]);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("out-of-memory");
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device80.destroy();
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const array19 = new Float32Array([1.0, -0.25, 0.25, -0.5, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.0, 0.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, 0.25, 0.0, -0.25, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.25, 1.0, -0.25, 0.0, 0.75, -0.25, 0.0, -0.75, -0.5, 0.0, -1.0, 1.0, -0.25, -0.25, -0.5, -0.5, 0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 1.0, 0.5, -1.0, 0.25, 0.25, -0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 0.75, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, -0.5, -0.75, 0.75, 0.5, -1.0, 0.75, -0.75, 0.5, 0.25, 0.75, -1.0, 0.5, 0.5, -1.0, 0.0, 0.0, -0.25, 0.75, 1.0, -0.75, 0.0, 0.5, 1.0, 0.25, 0.0, 0.75, -1.0, ]);
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout902]
    });
    
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout902]
    });
    query1300.destroy()
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    
    device100.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    query1301.destroy()
    
    device120.pushErrorScope("validation");
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout902]
    });
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    query900.destroy()
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device90.pushErrorScope("out-of-memory");
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query1301.destroy()
    
    texture1201.destroy();
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    
    device90.destroy();
    
    
    const array20 = new Float32Array([-0.75, 0.75, -0.25, 0.25, -0.75, -0.5, -0.25, 0.75, -0.5, 0.25, 1.0, -1.0, 0.0, 0.5, -0.5, 0.25, -0.25, 0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 0.75, 0.75, -1.0, -0.5, -0.5, 0.75, -0.5, -0.75, 0.75, 1.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.0, -0.5, -0.5, 0.5, 1.0, -0.25, 1.0, -0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -1.0, 1.0, 0.25, 1.0, 0.5, -0.75, 0.25, -0.5, -0.75, 0.75, -0.5, -0.5, -1.0, -0.75, -0.75, -0.75, 0.0, -0.75, 0.75, -1.0, 0.5, -1.0, 0.25, 1.0, 1.0, 0.5, 0.25, 0.0, -0.75, 0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.0, 1.0, 1.0, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, 0.5, 0.25, 1.0, -0.75, 0.25, ]);
    
    
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query1303 = device130.createQuerySet({
        label: "query1303",
        type: "occlusion",
        count: 32,
    });
    
    
    device130.destroy();
    texture1200.destroy();
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device120.destroy();
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device150.destroy();
    
    
    
    
    
    const array21 = new Float32Array([0.0, -0.75, -0.5, 0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -0.25, 1.0, -1.0, -0.5, -0.25, -0.5, -1.0, 1.0, 0.0, 0.75, 0.25, -0.75, -1.0, -0.25, 1.0, -0.25, -1.0, 0.25, -0.75, 0.25, 0.75, 0.25, -0.25, 0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.75, -0.5, 0.75, -0.75, -0.25, -1.0, -1.0, 0.25, 1.0, -0.25, 0.5, -0.5, 0.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.5, -1.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.25, -0.25, 0.5, -0.25, 0.25, -0.75, 0.0, -0.5, -0.5, -0.5, -0.25, -1.0, -0.75, -0.5, -0.25, -0.5, -1.0, -1.0, -0.75, 0.5, 1.0, 0.25, -1.0, -0.25, -1.0, 0.0, -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, 0.25, ]);
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    device140.pushErrorScope("out-of-memory");
    
    
    
    
    
    
    
    
    
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1401]
    });
    
    
    
    
    
    
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1402 = device140.createPipelineLayout({ 
        label: "pipeline_layout1402",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    texture1401.destroy();
    
    
    
    const array22 = new Float32Array([-0.5, -0.75, 0.75, 0.5, 1.0, -0.5, -0.5, 0.0, -1.0, -0.75, -0.25, 0.0, -0.5, 0.25, -0.5, -1.0, 0.5, 1.0, -0.5, 0.75, -0.25, 0.5, -1.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, 0.5, 0.5, -0.25, -0.75, -0.25, 0.5, 0.5, -0.75, 0.0, 0.5, 1.0, 0.0, -0.75, 0.75, -0.75, 1.0, 0.25, 1.0, 1.0, -0.5, 1.0, 0.75, -0.25, 0.5, 0.75, -1.0, 1.0, 0.5, -0.5, -0.25, 0.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.5, -1.0, 0.0, -1.0, -0.75, 1.0, -0.75, 1.0, 0.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.25, -0.5, 0.5, -1.0, -0.25, 1.0, -0.75, -1.0, 0.0, 0.25, ]);
    
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const array23 = new Float32Array([0.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, -1.0, 0.25, 0.75, 0.75, 0.0, -0.75, 0.25, -0.75, -0.5, 0.5, -1.0, -0.5, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, -0.5, -1.0, -1.0, -1.0, -1.0, -1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.25, -0.25, -0.25, -0.75, 0.25, 0.5, -0.5, -1.0, 0.0, 0.75, -0.75, -0.25, 1.0, -1.0, 0.5, -0.25, -0.25, 1.0, 0.75, -0.25, 1.0, -0.75, -1.0, -0.25, 0.5, -0.5, 1.0, 1.0, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, -1.0, 0.0, 0.25, 0.5, 0.75, 0.75, -0.25, 0.75, 0.5, 0.0, 0.0, 0.25, -0.5, 0.75, 0.5, 1.0, -0.25, 0.75, -1.0, 0.5, -1.0, -1.0, 0.5, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}