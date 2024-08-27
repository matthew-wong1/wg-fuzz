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
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array0 = new Float32Array([0.5, 0.75, 0.5, 0.75, 0.25, -0.75, 0.75, -0.25, -1.0, 0.0, 0.25, 0.25, -0.25, 0.25, 0.75, 1.0, 1.0, -0.75, -0.25, -0.75, -0.5, -0.25, 0.5, 0.75, -0.25, 0.0, 0.0, 0.25, -0.25, 0.5, 1.0, 0.25, -1.0, 0.0, -0.75, -0.5, 0.25, -0.75, 0.5, 0.5, 0.0, 0.5, -0.5, 1.0, 1.0, -1.0, -0.25, -0.5, 1.0, -0.5, -0.25, 0.0, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, 1.0, 0.75, 0.75, 0.25, -0.25, 0.25, 0.25, -1.0, 1.0, 0.5, 1.0, 0.5, -0.25, -1.0, 0.75, 0.0, 1.0, 0.75, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, 0.25, -1.0, -0.75, 0.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, 1.0, 1.0, -0.5, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    buffer200.destroy()
    device20.pushErrorScope("out-of-memory");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer201.destroy()
    const array1 = new Float32Array([0.75, 1.0, -1.0, 1.0, -0.25, 0.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.25, -0.25, -1.0, -1.0, 0.5, -0.75, 0.0, -1.0, -0.75, 0.0, -0.25, 1.0, 1.0, 0.25, 0.75, 0.0, 0.75, 0.75, -1.0, 0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -0.25, -1.0, -0.25, 0.0, -0.75, 0.5, -0.5, -0.25, -0.25, -0.75, -0.25, -0.5, 0.0, -0.75, 0.0, 1.0, 0.75, 0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 0.5, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, 0.75, 0.75, 0.5, -0.75, -1.0, -0.75, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 0.0, 0.5, 0.0, 0.5, 0.25, -0.75, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, 0.0, 0.25, ]);
    const array2 = new Float32Array([0.5, -0.5, -0.25, 1.0, 0.75, 0.5, -1.0, -1.0, -0.25, 0.0, 0.5, 0.25, 0.5, -0.5, 0.75, 1.0, 0.75, 1.0, 0.0, -0.5, -0.25, 0.25, 0.75, 0.5, 1.0, 0.5, 1.0, 0.25, -0.5, 0.0, 0.0, -0.5, 0.5, 0.5, 0.75, -0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.75, 1.0, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -0.75, 0.75, 0.0, 1.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.75, 0.0, -0.25, -0.25, 0.5, -1.0, 0.25, 0.75, -0.75, -1.0, 0.25, 1.0, -0.75, 0.5, -1.0, -1.0, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, -0.5, 0.25, 1.0, -0.75, 0.25, -1.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, -0.75, 0.5, -0.5, -1.0, 0.25, -0.5, 0.0, ]);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    
    
    const array3 = new Float32Array([0.0, -0.5, -1.0, 0.25, -0.5, -0.5, 0.75, 0.75, 1.0, 0.5, 0.25, -0.75, 0.25, -0.75, 0.0, 0.0, 0.5, 0.75, 0.5, -0.25, 1.0, -0.75, -0.5, 0.5, 0.75, 0.5, -0.25, -1.0, -0.25, 0.75, -0.25, 0.0, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, 0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 1.0, 0.25, -0.5, 0.0, -0.75, 0.0, -0.25, 0.25, -0.75, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, 0.5, -0.75, 0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.5, -0.75, -0.75, -0.5, 0.75, -0.5, 0.0, -1.0, -0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.25, 0.75, 1.0, 0.0, -0.25, 0.5, -1.0, 0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, ]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer202.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const array4 = new Float32Array([0.25, -0.75, -0.75, 0.0, -1.0, -0.5, -0.25, 1.0, -0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.75, -0.25, 0.75, -0.25, 0.25, -1.0, 0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 0.0, 0.5, 0.75, 0.75, 0.25, 0.75, -0.25, 1.0, -0.25, 0.75, 0.25, -0.75, 0.25, 1.0, -0.5, -0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 1.0, 1.0, -0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 0.5, 0.5, -0.25, 0.75, -0.5, -0.25, 1.0, 0.0, 1.0, 0.0, -0.5, -0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -0.75, 0.75, 0.5, 0.5, -0.75, -0.75, -1.0, 0.75, 0.5, 0.75, 0.5, 0.0, 0.5, -0.5, ]);
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    
    const array5 = new Float32Array([0.0, 0.5, 0.0, -1.0, -0.5, -1.0, 0.0, -1.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.5, 0.25, 1.0, 0.5, -0.75, 0.25, 0.25, 1.0, 0.25, -0.75, 0.0, 0.5, -0.75, -0.25, -0.5, 0.5, 0.75, -0.5, 1.0, -0.75, -0.75, -1.0, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, 1.0, 0.75, -0.75, 0.5, 0.75, 0.5, -0.75, 0.25, -0.75, 0.0, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -0.5, 1.0, 1.0, 0.25, 0.75, 1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 1.0, 0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 1.0, 0.5, -0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.5, -0.5, -0.75, 0.75, 0.5, -0.5, 0.75, -0.25, -0.25, -0.75, 0.25, -0.5, ]);
    device20.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    
    
    
    
    
    
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const array6 = new Float32Array([-0.25, -1.0, -0.75, 0.0, 0.0, 0.0, -0.75, 1.0, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, 0.75, 0.75, 0.25, 0.5, -0.25, -0.5, -1.0, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, 0.5, 0.5, 0.25, 0.5, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, 0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.25, -0.5, 1.0, -0.5, -0.75, -0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, 1.0, 0.75, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.75, 0.75, 0.5, -0.5, 0.5, 1.0, 0.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.5, -0.25, 0.25, 0.5, 1.0, 1.0, -0.5, -0.75, -0.75, 0.75, 0.25, 0.5, -0.75, 1.0, ]);
    
    
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const array7 = new Float32Array([0.5, -0.25, 0.0, -0.75, 0.75, -0.75, 0.75, 0.75, -0.25, 0.25, -0.5, 0.75, -1.0, 0.5, -0.25, -0.75, 0.0, -0.5, 0.25, -0.25, -0.5, 0.75, -0.25, 0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, 1.0, 1.0, 0.75, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, -0.75, -0.25, 0.5, 0.25, 0.75, -0.5, -0.75, 0.25, 0.75, 0.0, -0.5, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 0.75, 0.5, 0.0, -0.5, 0.25, -0.75, 0.25, 0.25, -0.5, -1.0, -1.0, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, -0.25, 0.25, -0.5, -0.5, 0.5, 0.0, -0.75, 0.25, 0.75, -0.75, -0.5, -0.25, 0.75, -0.75, -0.5, 0.0, 0.25, -0.25, 0.25, ]);
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    
    
    
    
    const texture_view2015 = texture201.createView({ label: "texture_view2015" });
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
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    
    
    
    const array8 = new Float32Array([0.75, 0.0, -0.5, 0.0, 0.5, -0.5, -1.0, -0.75, -0.25, 0.25, 1.0, -0.5, -0.25, -0.25, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, 0.25, 0.0, 0.75, 0.0, 0.75, 0.5, -0.75, -1.0, 0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 0.0, -0.75, -0.75, -1.0, 0.75, 0.5, -0.25, 0.25, 0.25, -0.25, -0.75, 1.0, -1.0, 1.0, 0.75, 0.25, -1.0, 1.0, -0.5, 1.0, 0.25, 1.0, -1.0, 0.5, -0.5, -0.25, 0.5, -0.5, 1.0, -1.0, 0.0, 0.25, 0.75, 0.25, 0.75, 1.0, -0.5, 0.0, -0.5, -0.75, 0.5, 0.25, -0.25, 0.5, 0.25, -0.25, 0.75, -1.0, -1.0, -0.25, -0.75, 0.0, 1.0, -0.5, 0.5, 0.5, 0.75, 0.75, 1.0, -0.75, -0.75, 1.0, ]);
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    
    
    device20.destroy();
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array9 = new Float32Array([0.75, 0.0, 0.25, 0.0, 0.5, 0.0, 0.0, 0.75, 0.75, -0.5, 0.0, 0.25, -0.75, 0.5, 0.5, -1.0, 0.0, -0.5, 0.75, 0.25, -1.0, 1.0, 1.0, 0.5, 0.75, 0.75, 0.5, -0.5, -0.5, 1.0, 0.25, 0.25, -0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 0.0, 0.25, 0.0, -1.0, -0.75, -1.0, 0.25, -0.5, -1.0, 0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.0, -1.0, 0.25, 0.75, -1.0, -0.75, 0.25, 0.75, 0.75, -0.75, -0.25, 0.0, 0.75, 0.5, -0.75, -1.0, -0.5, -0.25, 0.25, -0.5, -0.5, -0.75, 0.75, -1.0, -0.75, 0.25, 0.25, 0.5, 0.75, -0.25, -1.0, 0.0, 0.75, -0.75, 1.0, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, -0.25, 0.75, 0.25, ]);
    
    const array10 = new Float32Array([-0.75, 0.75, -1.0, -0.75, -0.25, 0.5, 0.0, -0.5, -0.75, -0.5, 0.25, 0.75, -1.0, -0.75, 0.25, 0.5, 0.0, -0.25, 0.5, -0.75, 0.25, 1.0, 1.0, -0.75, 0.5, -0.75, -0.75, -1.0, -0.5, -1.0, -1.0, 0.75, 1.0, 0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.25, -0.5, 1.0, -1.0, -0.25, -0.25, -0.5, -1.0, -1.0, 0.25, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 0.5, -1.0, 0.0, -0.5, 0.0, 0.0, 0.75, 1.0, -0.75, -0.75, 0.5, 0.25, 1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.25, -1.0, -1.0, -0.5, 0.25, 1.0, -1.0, 0.0, -0.5, 0.75, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, -0.25, 0.25, 0.25, ]);
    const array11 = new Float32Array([-0.5, 0.75, -0.75, -1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.5, 1.0, -1.0, 0.75, -0.75, 0.75, -0.75, 0.5, 0.0, -1.0, 0.75, -0.75, 0.5, -1.0, -0.25, 0.5, 0.25, -0.25, 0.75, -1.0, 0.0, -1.0, -0.75, -0.5, 0.0, 0.25, -0.25, 0.25, -1.0, -0.5, 0.25, 0.25, 0.25, -1.0, 0.5, 0.75, -1.0, -0.5, -0.5, 0.75, 0.5, -0.25, 0.5, -0.25, -0.75, 0.75, -0.25, 0.75, -0.75, -0.25, 0.75, -1.0, 0.25, 0.25, -0.75, 0.5, -0.5, 0.5, 0.0, -1.0, -1.0, -0.5, -0.25, -0.25, 0.25, 1.0, 0.0, -0.5, 0.0, -0.5, 0.0, 0.0, 0.5, 0.75, 0.0, 0.75, -0.75, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.25, 0.75, -0.25, -0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([0.75, -0.25, 0.5, 0.0, -1.0, -0.5, 0.75, 0.75, -0.75, -0.25, 0.75, 0.25, 0.0, 0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, -1.0, -0.5, 0.5, 0.0, 0.75, -0.75, 0.75, 1.0, 1.0, -0.5, 0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 0.5, -0.5, -0.5, -1.0, 0.5, 0.75, 0.5, -1.0, -1.0, 0.75, 0.75, -0.75, 0.0, 0.75, 0.0, -0.75, -0.5, 0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.25, 0.5, -0.25, 0.0, -1.0, 0.5, 0.75, 1.0, 0.75, 0.25, -0.5, 0.5, -0.25, 0.0, 0.5, -1.0, 0.0, -0.5, 0.75, -0.75, -0.75, 0.5, 0.5, -0.75, 0.5, 0.75, -1.0, 0.25, -0.25, -1.0, -0.25, 0.75, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, -1.0, 0.5, -0.25, ]);
    const array13 = new Float32Array([0.0, 0.75, 0.5, 0.75, -0.5, 0.75, -0.25, -1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.25, -0.25, 0.25, 0.75, 0.0, -0.75, -1.0, 0.0, 0.0, -0.75, 1.0, 1.0, -1.0, 0.75, 1.0, -1.0, -0.75, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.5, 0.5, 1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.25, 0.5, -0.5, -0.25, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, 0.5, 0.5, -0.75, 0.75, 1.0, 1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 1.0, 0.75, 1.0, 0.0, 0.75, -0.75, 0.75, -0.25, -0.5, -1.0, -0.5, -0.75, -1.0, -0.75, -0.25, 0.25, 0.25, 1.0, -0.5, 0.5, 1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -0.5, -0.5, 0.25, 0.5, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array14 = new Float32Array([-1.0, 1.0, 1.0, 0.75, 0.5, 0.0, 0.0, 0.75, 1.0, 0.25, 0.75, 0.0, -0.75, 0.25, 0.75, -0.25, 0.25, 0.75, 0.5, 0.75, -0.25, 0.25, -1.0, 0.0, 0.75, -0.5, 0.5, 1.0, -1.0, -1.0, 0.0, 0.0, 0.0, -1.0, 0.75, 1.0, 0.0, -0.5, -0.25, 0.75, 0.0, 0.0, -1.0, 0.0, -0.25, 1.0, -0.25, 0.75, 0.5, -0.75, -1.0, 0.5, -0.5, -0.5, -0.25, 1.0, -0.25, -0.75, -0.25, 0.0, -0.75, -1.0, 0.25, 0.25, 0.75, -1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 0.0, 0.25, 0.5, 0.5, 0.25, 0.0, -0.75, 1.0, -0.5, 0.25, 0.25, 0.0, -0.5, -1.0, 0.5, -1.0, 1.0, -0.25, 1.0, -0.25, 0.0, 1.0, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, -1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array15 = new Float32Array([0.5, -1.0, 1.0, 0.5, -0.5, 0.75, 0.0, -0.5, 0.0, -0.75, -0.25, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.75, 0.75, -1.0, -0.25, 0.75, 1.0, 0.0, 1.0, 1.0, 0.75, -0.25, 0.75, 0.5, 0.25, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, -0.5, 0.25, 0.25, -1.0, 0.0, -0.25, 0.25, -0.5, -1.0, -1.0, 0.25, 0.75, -1.0, 0.75, -0.25, -0.5, -0.5, -0.5, -0.5, -0.75, -0.5, -1.0, 1.0, -0.25, 0.25, -1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, 0.0, 0.5, -0.75, 1.0, 0.75, 0.75, -0.75, 1.0, 0.25, -1.0, -0.75, 0.75, -0.75, 1.0, 0.75, 0.25, 0.25, 0.5, -0.5, -1.0, -1.0, 0.25, 0.75, ]);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device40.destroy();
    
    
    
    
    
    const array16 = new Float32Array([-1.0, 0.0, 0.75, -0.25, 1.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.5, -1.0, -0.25, -1.0, -0.75, 0.25, -1.0, 1.0, -0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.5, -1.0, -0.75, -0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 1.0, 1.0, 0.25, -0.25, 0.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.25, -0.25, -1.0, 1.0, 1.0, -0.25, 0.75, -0.75, 0.0, -0.25, -0.25, 0.75, -0.75, -0.75, -0.25, 0.25, -0.75, 0.0, 1.0, -0.5, -1.0, -0.5, 0.0, 1.0, 0.25, 0.5, 0.5, 0.0, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, -0.75, -1.0, -1.0, -0.5, -0.75, ]);
    
    const array17 = new Float32Array([-0.5, 1.0, 1.0, 0.0, -1.0, -0.25, -0.75, 1.0, -1.0, 0.5, -0.5, -1.0, -0.5, -0.25, 1.0, -0.75, 0.5, -0.25, 1.0, -0.75, 0.0, 0.0, -0.75, 0.5, 0.5, 0.0, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, -1.0, 0.5, 0.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.25, -0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 0.5, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, -1.0, -0.5, 0.25, 0.0, -1.0, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, 0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 0.5, 0.5, -0.25, -0.5, 0.0, -1.0, -1.0, 0.5, 0.25, -1.0, 0.0, 0.75, -0.5, 1.0, 1.0, 0.75, 0.75, -0.75, 0.75, 0.5, 0.0, 0.0, 0.0, 0.0, 0.75, 0.5, 0.0, 1.0, ]);
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    device30.destroy();
    
    
    
    const array18 = new Float32Array([0.5, 0.5, 1.0, -0.5, 0.5, -0.25, 0.25, 0.5, -0.25, -0.25, 0.0, 0.5, 0.25, -0.5, -0.5, -0.75, 1.0, 0.0, -0.5, -0.5, 0.0, -1.0, 0.5, 0.5, 1.0, 0.5, 1.0, -0.25, 0.25, -0.75, 0.5, 0.0, 1.0, 0.0, 0.75, 0.25, -0.25, 0.75, 0.5, -0.25, -1.0, 0.0, -0.25, -0.5, -0.25, -0.5, 0.5, -0.5, 0.75, 1.0, 0.75, 0.25, 0.5, 0.25, -0.75, -0.5, -0.5, 0.5, -0.25, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.0, 0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 0.0, 0.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.75, -0.25, -0.75, -0.75, -1.0, 0.75, 1.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.5, -0.25, 0.0, 0.5, ]);
    
    
    const array19 = new Float32Array([-0.75, 0.5, 0.0, 0.5, 0.75, -0.25, -0.5, -1.0, -0.75, 1.0, 0.75, 0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -1.0, -0.5, -0.75, -0.25, 1.0, -1.0, 0.25, 0.0, 0.0, 0.5, 0.75, 0.75, -0.25, 0.0, -0.25, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.25, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, 0.5, -0.5, -1.0, 0.25, 0.25, 1.0, -0.75, -0.75, -0.25, 1.0, -0.25, 0.75, -1.0, -1.0, -0.25, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, 1.0, 0.0, 0.0, 0.25, -0.5, -1.0, -0.75, -1.0, -1.0, 1.0, -0.5, -0.5, 0.25, -1.0, 0.0, -0.5, 0.5, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.5, 0.25, 1.0, -0.75, -0.25, -0.25, -0.5, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array20 = new Float32Array([0.25, -0.75, -0.5, 0.0, 1.0, 1.0, -0.25, 1.0, 0.5, 1.0, 0.5, 0.0, 0.75, 0.75, 0.25, -0.5, 0.25, 0.25, 0.0, 0.25, 0.75, -1.0, 0.25, 0.25, 0.75, 0.25, 0.25, 1.0, 1.0, 0.5, -0.5, 0.5, 0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.75, -0.25, 0.25, 0.5, 1.0, 0.25, 0.25, 1.0, 0.5, 1.0, 0.25, 0.25, -0.5, 0.25, -0.25, 0.5, 0.75, 0.0, 0.5, -0.5, -1.0, -0.25, 0.5, -1.0, -1.0, 0.25, 1.0, 0.0, -0.75, 0.25, -0.5, 0.25, 0.5, 0.75, 0.0, -0.75, -0.75, 0.75, 0.75, 1.0, -0.5, 0.5, -0.75, 0.75, 0.25, 0.25, 0.25, -0.75, 0.25, 1.0, 0.5, -0.5, 0.0, 0.0, 0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 1.0, 1.0, ]);
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array17, 0, array17.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    
    const array21 = new Float32Array([0.5, -0.5, 0.75, 0.5, 0.25, 0.5, -0.25, 0.25, 0.25, -0.75, 0.75, 0.5, 0.0, 0.75, -0.25, 0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 0.25, -0.25, -0.5, 0.25, 1.0, -0.5, 0.25, -0.25, 0.75, 0.0, -0.25, 0.75, 0.75, 0.0, -0.25, 0.75, 0.0, -0.5, 1.0, -0.25, -0.25, -0.75, -0.75, 0.25, -0.75, -0.75, 0.0, -0.75, -0.25, 0.75, 0.5, 0.0, -0.75, -0.5, -0.75, 0.75, 0.75, -0.75, 0.0, 1.0, -0.25, -0.75, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -0.75, -0.25, -0.5, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, -0.75, -0.75, 0.0, 1.0, 0.25, 0.0, -0.75, -0.5, -0.5, -0.5, 0.0, 0.25, 1.0, 1.0, 0.0, 0.5, ]);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device50.queue.writeBuffer(buffer500, 0, array20, 0, array20.length);
    device50.queue.writeBuffer(buffer500, 0, array17, 0, array17.length);
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array17, 0, array17.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeBuffer(buffer500, 0, array19, 0, array19.length);
    device50.queue.writeBuffer(buffer500, 0, array17, 0, array17.length);
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
    device70.pushErrorScope("validation");
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
    buffer700.destroy()
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array18, 0, array18.length);
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device50.queue.writeBuffer(buffer500, 0, array13, 0, array13.length);
    
    
    device50.queue.writeBuffer(buffer500, 0, array11, 0, array11.length);
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    const array22 = new Float32Array([-0.25, 0.25, 0.5, -0.75, 0.5, 1.0, 1.0, 0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -0.75, -0.5, 0.75, 0.0, 0.0, 0.25, -0.5, -1.0, -0.25, -0.25, -0.5, 1.0, -0.5, -0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.0, 0.25, -0.75, -1.0, 0.75, 0.5, 0.5, 0.25, 1.0, 0.5, 0.75, -0.75, -0.25, 0.5, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, -1.0, -0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 0.0, -1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.5, 1.0, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.5, -0.75, -1.0, -1.0, -1.0, 0.5, -0.5, -0.5, 0.5, -0.75, -1.0, 0.0, 1.0, 0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 1.0, 1.0, 0.0, -0.25, -1.0, 0.5, ]);
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.queue.writeBuffer(buffer500, 0, array17, 0, array17.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    device60.destroy();
    device50.destroy();
    
    
    
    
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device70.queue.writeBuffer(buffer701, 0, array16, 0, array16.length);
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer701, 0, array13, 0, array13.length);
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device70.queue.writeBuffer(buffer701, 0, array5, 0, array5.length);
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    device70.queue.writeBuffer(buffer701, 0, array21, 0, array21.length);
    
    device70.queue.writeBuffer(buffer701, 0, array11, 0, array11.length);
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    {
        await buffer701.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer701.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer701.unmap();
        console.log(new Float32Array(data));
    }
    device70.queue.writeBuffer(buffer701, 0, array9, 0, array9.length);
    
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    
    
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    
    
    const array23 = new Float32Array([0.5, -0.75, -0.75, -1.0, -0.75, -0.5, 0.25, 0.0, 0.0, 0.0, 0.75, 0.25, -0.25, 0.5, -1.0, 0.25, 0.5, 0.0, -0.25, 0.75, 0.0, 0.25, -0.25, -0.5, 1.0, -0.5, -0.25, -0.5, 0.25, -0.75, 0.5, 0.0, -0.25, -0.75, -0.5, -0.75, -0.5, -0.75, -0.5, 0.5, -0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 1.0, 0.25, -0.25, 0.0, 1.0, -1.0, 1.0, 0.75, 0.5, 0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 0.0, 0.5, 0.25, 0.5, 0.5, -1.0, 1.0, 0.5, -0.75, 0.25, 0.25, -0.5, -1.0, 1.0, 1.0, -0.5, 0.0, 1.0, 0.75, -0.75, -0.75, 0.75, -1.0, 0.5, -1.0, -0.5, -0.75, -0.25, 0.25, -0.5, 0.25, 0.75, 0.75, -0.5, ]);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    
    buffer701.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.destroy();
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    
    
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view7040 = texture704.createView({ label: "texture_view7040" });
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer900.destroy()
    
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture706 = device70.createTexture({
        label: "texture706",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    buffer702.destroy()
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const texture707 = device70.createTexture({
        label: "texture707",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    
    
    device110.destroy();
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array24 = new Float32Array([-0.75, 0.75, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, -1.0, -1.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.5, 0.0, -1.0, 0.75, 0.0, -0.25, 1.0, -0.25, -1.0, 0.0, -0.25, 1.0, 1.0, -0.75, -0.5, 0.25, 0.5, 0.75, 0.0, 0.25, -1.0, -1.0, -0.25, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, 0.25, -0.25, -0.25, 1.0, -0.25, 1.0, -0.25, 1.0, 0.75, 1.0, 0.25, 1.0, 0.5, -0.25, -0.75, 0.25, 0.25, -1.0, 0.5, 0.5, 0.5, 1.0, -0.5, -0.25, -1.0, 1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.75, -0.75, 0.75, 0.75, -0.25, -0.25, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, 0.0, -1.0, 0.0, 0.25, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, -0.5, -0.75, -0.25, ]);
    
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    
    const bind_group_layout707 = device70.createBindGroupLayout({ 
        label: "bind_group_layout707",
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
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view7070 = texture707.createView({ label: "texture_view7070" });
    
    
    
    const bind_group_layout708 = device70.createBindGroupLayout({ 
        label: "bind_group_layout708",
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
    
    const texture_view7071 = texture707.createView({ label: "texture_view7071" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view7004 = texture700.createView({ label: "texture_view7004" });
    
    
    
    
    const texture_view7012 = texture701.createView({ label: "texture_view7012" });
    
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const texture_view7013 = texture701.createView({ label: "texture_view7013" });
    const bind_group_layout709 = device70.createBindGroupLayout({ 
        label: "bind_group_layout709",
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
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view7031 = texture703.createView({ label: "texture_view7031" });
    
    device90.pushErrorScope("internal");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.destroy();
    device70.pushErrorScope("validation");
    
    
    
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    
    
    
    
    
    device90.destroy();
    
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const texture_view7041 = texture704.createView({ label: "texture_view7041" });
    const texture_view7032 = texture703.createView({ label: "texture_view7032" });
    const texture_view7005 = texture700.createView({ label: "texture_view7005" });
    
    buffer703.destroy()
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const texture_view7014 = texture701.createView({ label: "texture_view7014" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array25 = new Float32Array([1.0, -0.75, -0.5, 0.75, 0.5, -0.25, -0.25, 0.5, 0.75, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.5, 1.0, 0.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, -0.75, 0.0, 1.0, 0.5, -0.25, 0.5, 0.0, -1.0, 0.75, 0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 1.0, 0.0, -1.0, -0.25, 0.75, 1.0, 0.0, -0.25, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, 0.75, 0.75, -1.0, -0.75, -1.0, 0.5, -0.5, 0.25, 0.25, -1.0, 0.0, -0.25, 0.25, -0.25, -0.75, -0.25, 0.0, 0.5, -0.75, 0.75, 0.5, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, -1.0, -0.75, 1.0, 0.0, 0.25, -1.0, 0.5, -0.75, 0.0, 1.0, -1.0, -0.25, 0.0, 0.0, ]);
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}