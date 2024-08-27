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
    const array0 = new Float32Array([-0.25, -0.25, -1.0, 0.25, -0.75, -0.25, -1.0, 0.75, -0.5, -0.75, 0.5, -0.5, 0.25, -0.25, 0.0, 0.25, -0.75, -0.25, -0.75, 0.5, 0.5, -0.5, -0.75, -0.5, -1.0, -1.0, 1.0, 0.75, -0.25, -0.75, -0.25, -0.5, 0.0, 1.0, -0.5, 0.75, 0.25, -0.5, -0.25, -0.25, -0.75, -0.5, 0.0, 0.75, -0.75, 0.25, 1.0, 0.0, -0.25, 1.0, -1.0, 0.75, 0.5, 0.75, 0.0, 1.0, 0.75, -0.5, 0.0, -0.5, -0.5, 1.0, 0.75, -1.0, -0.25, 0.25, -1.0, 0.25, 0.25, 0.0, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 0.0, -0.75, -0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 0.0, -0.5, 0.75, -0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 1.0, -0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.5, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, -0.5, 0.75, 0.5, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, 0.5, -0.25, 1.0, 0.25, 0.5, -1.0, 0.5, 0.25, -0.25, -0.5, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, -0.75, 1.0, -0.5, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, 0.0, -1.0, -0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 1.0, 0.75, 0.0, 0.75, -0.5, 0.5, 0.25, 1.0, -0.5, 0.0, -0.25, -1.0, 1.0, 0.0, -0.5, -1.0, 0.25, 0.0, 0.25, -0.75, 0.0, 0.25, -1.0, 0.75, 1.0, -0.75, 0.25, 0.25, 0.5, 0.25, 0.0, 0.25, -1.0, -0.75, 0.75, 0.25, 0.75, 1.0, -0.5, 0.75, -0.25, 1.0, -1.0, 0.25, -0.75, -0.25, 0.25, 0.0, 0.0, 0.25, ]);
    const array2 = new Float32Array([0.25, 1.0, -1.0, 1.0, -0.75, -0.25, 0.5, -1.0, -1.0, 0.5, 0.75, -0.25, -0.25, 0.5, -0.75, -1.0, 0.25, 0.5, 1.0, -0.75, 1.0, -1.0, -1.0, 0.75, 0.0, 0.75, -0.5, 0.75, 0.0, 0.5, 1.0, 0.25, 0.5, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, -0.5, -1.0, 0.25, -0.25, 0.25, 0.0, 0.75, -0.5, -1.0, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 1.0, -0.75, -0.25, 1.0, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, 1.0, -1.0, -0.5, -0.25, 0.25, -1.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.25, -0.25, 0.0, 1.0, 1.0, 0.75, -1.0, 0.0, -0.75, -1.0, -0.5, 1.0, 1.0, 1.0, -0.75, 0.5, 0.5, -0.5, 1.0, 0.75, -1.0, 0.75, ]);
    
    const array3 = new Float32Array([-0.5, -0.5, -0.75, 1.0, 0.75, -1.0, 0.25, 0.25, -0.5, 0.5, -0.75, 0.75, 0.25, 1.0, 0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, 1.0, -0.5, 0.0, 1.0, -0.75, 0.25, -0.75, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, 1.0, 0.0, 0.25, -0.75, -0.5, 0.25, 0.25, -1.0, 1.0, -1.0, 0.0, -1.0, 0.25, 0.5, -0.25, 0.75, 1.0, 1.0, 0.75, 0.5, -0.75, 0.0, 1.0, -0.5, -0.25, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, 0.5, -0.5, -0.75, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, -1.0, -0.5, 1.0, -0.5, 0.5, 0.25, -0.25, 0.5, -0.25, 1.0, -0.75, 0.75, 0.5, -0.75, 0.25, -0.25, -0.5, -1.0, -0.25, 0.5, 0.5, -0.25, -0.75, 0.75, -1.0, 0.0, ]);
    
    
    
    const array4 = new Float32Array([0.25, 0.0, -0.75, -0.75, 0.5, -0.5, 1.0, -0.5, 0.0, -0.75, -0.75, 0.0, -0.5, 0.5, -0.5, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.25, 0.5, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, -0.25, 0.5, 0.75, 0.5, 0.75, 0.25, 0.75, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, 0.5, -1.0, 1.0, 0.0, -0.5, -1.0, 0.25, -0.25, -0.5, 0.0, 0.25, 0.25, -1.0, -0.25, -0.75, -0.75, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, -0.75, -0.25, 1.0, -0.75, 0.5, -1.0, -0.25, 0.25, -0.75, -0.25, 0.75, 0.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.0, 0.25, 0.5, 0.5, 0.5, -0.25, -0.25, 0.25, -1.0, 0.25, -1.0, -0.25, 0.0, -0.25, 0.75, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    buffer000.destroy()
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture000.destroy();
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    device00.destroy();
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device30.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.pushErrorScope("validation");
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
    const array5 = new Float32Array([0.5, 0.75, -0.5, -0.75, 0.5, -0.25, 0.75, 0.5, -0.75, -0.75, -0.25, 1.0, 0.75, -1.0, 0.5, 1.0, -0.75, -0.25, -0.75, -1.0, 0.5, 0.25, -0.75, 0.25, 0.75, 0.25, 0.0, 0.0, 0.0, -0.75, -0.5, -1.0, -0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 0.75, -0.75, -1.0, 0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 0.75, -0.25, 0.0, 0.5, 1.0, 0.0, 0.25, -0.75, 0.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.0, 0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 0.25, -0.5, 0.0, -0.75, -0.75, 1.0, -0.25, -0.25, 0.25, -0.75, 0.75, 0.25, 0.25, -0.25, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, -0.75, -0.75, 0.75, -0.5, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.25, -0.5, -0.25, 0.5, 0.0, 0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 1.0, 0.75, 0.25, -0.75, 0.5, 0.25, -0.25, -0.25, 0.25, 0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, 1.0, -0.25, -0.25, 1.0, -1.0, -0.75, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.75, 0.5, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, 0.0, 0.25, 0.0, 0.0, -0.5, -0.5, 0.0, 0.25, -1.0, 0.75, -1.0, -0.25, -0.5, 0.25, -0.75, -1.0, -1.0, 1.0, 1.0, -1.0, 0.25, 0.5, 1.0, 0.0, 1.0, 1.0, -0.25, 0.75, -1.0, -0.25, 0.75, -0.25, 0.5, -1.0, -0.75, 0.75, -0.25, -1.0, 0.5, 1.0, 0.25, 0.0, ]);
    device20.destroy();
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    
    const array7 = new Float32Array([0.5, 0.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, 1.0, -0.5, -0.25, -1.0, -0.25, 1.0, 0.5, 0.5, -0.75, 0.0, -1.0, -1.0, -0.25, -0.5, 0.25, -0.25, -0.5, -0.75, 0.75, 1.0, 1.0, 0.25, 0.0, -1.0, -1.0, -0.25, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, 0.75, 0.75, 0.0, 0.5, -0.75, 0.0, -0.75, -1.0, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.0, 0.25, -0.25, 0.0, 0.25, 0.0, -0.25, 0.75, 0.5, 0.75, -0.5, 1.0, -0.25, 0.25, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, 0.0, -1.0, -0.5, 0.75, 0.5, 0.25, 1.0, 0.25, 0.75, 0.75, -0.75, -0.25, 0.0, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.25, 0.75, ]);
    device30.queue.writeTexture({ texture: texture305 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture301.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const array8 = new Float32Array([-0.25, 0.5, -0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -0.25, 0.0, -0.75, -0.75, 0.5, -0.75, 0.5, -1.0, 0.75, -1.0, 0.5, 1.0, -1.0, 1.0, 0.75, -0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, -0.75, 1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.5, -0.75, -1.0, -0.25, 0.0, 1.0, -1.0, 0.25, -1.0, -0.5, 0.25, 0.0, -1.0, 0.75, 1.0, 0.75, -0.25, -0.5, 1.0, 0.0, -0.5, -1.0, 0.5, -1.0, 0.0, -1.0, -0.5, -0.25, 1.0, -0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.5, 1.0, 0.25, 0.75, -1.0, 0.0, -1.0, 0.25, -0.25, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, ]);
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer300.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture303.destroy();
    buffer301.destroy()
    texture101.destroy();
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer302.destroy()
    
    
    device30.pushErrorScope("internal");
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture304 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    buffer100.destroy()
    
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture305 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("validation");
    device40.destroy();
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    texture305.destroy();
    texture304.destroy();
    
    
    texture307.destroy();
    
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    
    
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const array9 = new Float32Array([-0.5, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, -0.75, 0.5, 0.75, 0.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.0, -1.0, -1.0, -1.0, 0.75, -0.75, -1.0, -0.75, 0.75, -0.5, -0.25, 0.0, -0.25, -0.25, -0.25, 0.75, 0.5, 1.0, -1.0, -0.25, -0.25, -0.25, 1.0, -0.25, -0.25, 0.5, 1.0, 1.0, -1.0, 0.5, 0.25, -0.5, 1.0, 0.75, 0.5, 1.0, 0.5, -0.5, 0.0, 0.5, 0.75, -0.5, 0.75, -0.25, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, -0.75, 1.0, 0.25, -0.5, 0.25, 0.5, 0.0, 0.0, -0.75, -0.5, -0.25, -0.5, -0.75, -1.0, -0.5, -0.75, 0.0, 0.0, 0.75, 1.0, -1.0, 0.0, 0.0, -0.25, 0.25, 1.0, 1.0, ]);
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
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture308.destroy();
    const texture_view3025 = texture302.createView({ label: "texture_view3025" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
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
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    
    
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
    
    buffer304.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture_view3061 = texture306.createView({ label: "texture_view3061" });
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    
    
    
    
    device20.destroy();
    buffer305.destroy()
    
    device20.destroy();
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    
    const texture_view3026 = texture302.createView({ label: "texture_view3026" });
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const texture_view3062 = texture306.createView({ label: "texture_view3062" });
    buffer103.destroy()
    
    texture306.destroy();
    texture302.destroy();
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    buffer101.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const texture_view3063 = texture306.createView({ label: "texture_view3063" });
    buffer102.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer303.destroy()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    device30.queue.writeTexture({ texture: texture304 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    buffer105.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    texture309.destroy();
    
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer306.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    buffer303.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    device50.destroy();
    
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer107.destroy()
    
    
    buffer104.destroy()
    
    texture100.destroy();
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture3010 = device30.createTexture({
        label: "texture3010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture100.destroy();
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
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view30100 = texture3010.createView({ label: "texture_view30100" });
    
    
    
    
    buffer106.destroy()
    const array10 = new Float32Array([1.0, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 0.5, 0.75, 1.0, 0.5, 0.75, -0.5, -0.75, 0.25, 0.25, 0.25, -0.75, -0.5, -1.0, 0.75, 0.75, 0.0, 0.75, 0.0, 0.5, 0.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, 1.0, -0.75, -0.5, 0.75, 0.25, -0.25, 0.0, 0.5, 1.0, -0.75, 0.75, -1.0, 0.25, 0.25, 1.0, -0.25, -0.75, 0.25, 1.0, 0.75, -0.75, -0.5, 0.25, -0.5, 0.75, -1.0, 0.25, 0.0, 0.25, 0.25, 1.0, 0.0, 0.75, -0.25, 0.75, -0.5, 1.0, 0.75, -0.25, 1.0, 0.25, -0.25, 0.0, 0.25, -0.5, 0.75, -1.0, -0.25, 0.0, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, 0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, ]);
    const texture3011 = device30.createTexture({
        label: "texture3011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    
    device30.queue.writeTexture({ texture: texture3011 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.pushErrorScope("out-of-memory");
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    buffer600.destroy()
    buffer1010.destroy()
    
    
    
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    device60.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture3011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
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
    
    device30.queue.writeTexture({ texture: texture304 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer601.destroy()
    texture3010.destroy();
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.destroy();
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    device30.queue.writeTexture({ texture: texture308 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer106.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view30101 = texture3010.createView({ label: "texture_view30101" });
    
    
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    device30.queue.writeTexture({ texture: texture3011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    {
        await buffer307.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer307.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer307.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeTexture({ texture: texture306 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    buffer108.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    device80.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    buffer602.destroy()
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
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    buffer307.destroy()
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer800.destroy()
    texture600.destroy();
    
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer302.destroy()
    
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    buffer304.destroy()
    device30.queue.writeTexture({ texture: texture3011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}