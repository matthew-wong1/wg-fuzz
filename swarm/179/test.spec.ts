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
    
    const array0 = new Float32Array([0.25, 0.75, 0.0, -1.0, -0.5, 1.0, -0.25, -0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 0.0, 1.0, -0.5, -0.5, 0.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, -1.0, 0.0, 1.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.0, -0.25, -0.25, 0.25, 0.0, 0.0, -0.75, 0.75, -0.5, -1.0, 0.0, 0.0, -0.25, -1.0, -0.25, 0.75, 0.25, -0.75, 1.0, 0.75, 0.5, -1.0, -1.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, -0.25, -0.5, 1.0, -0.75, 0.0, -0.75, -0.25, 0.0, -0.5, 0.75, -0.5, -0.25, -0.75, -0.75, 0.5, -0.25, 0.75, -1.0, 1.0, 0.75, 0.5, 0.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.75, 0.75, 0.25, 1.0, -1.0, 1.0, -0.75, ]);
    
    
    
    const array1 = new Float32Array([0.75, -1.0, -0.25, 1.0, 0.25, -0.75, 0.75, 0.25, -0.75, 0.5, 0.0, -0.75, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 0.25, -0.25, 1.0, 1.0, 0.75, -1.0, 0.25, -0.25, -0.75, 0.25, -1.0, 0.5, 0.0, 1.0, 0.25, 0.0, 0.25, -0.5, -0.5, -0.5, -1.0, 0.5, -1.0, -0.25, -0.25, 0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.25, 1.0, -0.25, 1.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.25, -0.75, -1.0, -0.75, -0.5, -0.75, -0.25, -1.0, -0.75, 0.0, 0.75, 0.5, -0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -0.75, -1.0, -0.25, 0.0, -0.25, 1.0, 0.25, -1.0, -0.25, ]);
    
    const array2 = new Float32Array([-1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.0, -0.25, 0.0, 0.25, -0.75, 0.0, 1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 0.25, -0.75, 0.75, -1.0, 0.0, 0.0, 0.75, -1.0, 0.75, -0.5, 0.75, 0.25, 0.5, -0.5, -0.25, -1.0, 0.25, 1.0, 0.5, -0.75, 0.75, 0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -0.25, 0.5, 0.25, 0.0, 0.0, -1.0, 0.75, -0.25, 1.0, 0.0, -0.5, -0.75, 0.5, 0.5, 1.0, -0.25, 1.0, 0.25, -0.75, -0.5, 0.0, -0.5, 0.25, 0.25, -0.5, 0.25, -1.0, 0.75, -0.75, -0.25, 0.75, 0.25, -0.5, 0.75, -1.0, 0.75, 0.75, 0.25, -1.0, 0.25, -1.0, -0.25, -0.75, 1.0, -1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 0.25, -0.25, -1.0, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.0, 0.75, 0.0, -1.0, -1.0, -0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 0.25, 1.0, 0.25, 0.5, 0.75, 0.25, -0.5, 0.25, 0.75, -1.0, 0.25, 0.0, -0.75, 0.25, -0.75, -0.5, -0.25, -1.0, -0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -0.5, 1.0, 0.75, 0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.5, -0.75, 1.0, -1.0, 0.25, -1.0, -0.25, 0.75, 0.25, 0.25, -1.0, -1.0, 0.75, -0.5, 1.0, 1.0, 1.0, -0.5, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.75, 0.75, 0.5, -0.5, 0.0, -0.5, 0.75, 0.75, 0.25, -0.75, 0.25, -0.25, -0.5, -0.75, 0.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.5, 0.25, 0.5, 0.0, ]);
    const array4 = new Float32Array([0.25, -1.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.25, -0.5, -0.5, -0.5, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, -0.25, 1.0, 0.25, 0.5, 0.75, 0.25, -1.0, 0.5, 0.75, 0.5, -1.0, -0.5, 0.0, 1.0, -0.25, 1.0, 0.75, -0.75, -0.5, 0.0, -0.75, -0.25, 0.75, -0.75, -1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.0, 0.5, -0.25, 0.75, 0.5, -0.25, 0.25, -0.25, -0.75, 0.0, 0.75, -0.25, 0.0, -1.0, 0.75, -0.25, -0.5, 1.0, -0.75, 0.75, 1.0, -1.0, 0.25, 0.0, 0.0, 1.0, 0.5, 0.25, 0.75, 0.25, -1.0, -1.0, 0.25, 0.75, 0.0, 0.5, -0.75, -0.5, -0.25, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, -1.0, 0.5, 0.5, 0.75, 0.5, -1.0, 0.75, 1.0, ]);
    const array5 = new Float32Array([-0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 1.0, 0.0, -0.75, 0.75, -0.25, -0.5, -0.5, -0.25, 0.5, 0.5, 1.0, -0.75, -1.0, 1.0, -1.0, -0.5, 0.5, -0.75, -0.75, -0.75, -1.0, 0.5, 0.5, 0.5, -0.75, -0.75, -0.75, 0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 0.5, 1.0, -0.75, -1.0, 0.5, 0.25, -0.5, 0.0, -0.75, -0.5, 0.0, 0.75, -0.75, -0.75, -0.5, -0.25, -1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 0.25, 0.75, 0.25, 1.0, -1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 1.0, 1.0, -0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 0.25, -0.25, 0.0, 0.25, 1.0, 1.0, -0.5, 1.0, ]);
    
    const array6 = new Float32Array([0.0, -0.75, 1.0, 0.75, -0.5, -0.25, 0.5, -0.25, 0.0, -0.75, -1.0, -0.75, 0.0, 1.0, 1.0, -0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 1.0, 0.5, -0.25, -0.25, 0.0, 0.5, -1.0, 0.0, -0.25, 1.0, -0.5, 1.0, -0.5, 0.75, 1.0, -0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.75, 0.25, 0.75, 0.0, 1.0, 0.0, -0.75, -0.75, 0.5, -1.0, 0.5, 1.0, -0.75, 0.0, -1.0, 1.0, 0.5, 0.5, 1.0, -0.25, -1.0, -0.25, 0.75, 0.25, 0.25, -0.25, 0.25, 0.25, -0.5, -0.25, -0.75, -0.5, -1.0, 0.5, -0.25, -0.25, 0.75, 0.0, 0.25, 0.25, -0.5, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, 0.75, -0.75, -0.25, -0.75, 0.5, 0.0, 1.0, -0.5, 0.0, 1.0, -0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array7 = new Float32Array([1.0, -0.75, 0.0, 1.0, 1.0, 0.0, 1.0, -0.75, 0.25, -0.75, -0.25, -0.25, 0.0, 1.0, 0.25, -0.5, 0.0, 0.25, 0.25, -1.0, 0.25, -0.25, 0.25, -0.5, 1.0, -0.75, 0.25, 1.0, 1.0, 0.5, 0.25, 0.5, -0.5, 0.25, -0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 0.25, 0.75, 1.0, 0.25, -1.0, -0.75, -0.75, 1.0, -1.0, 0.0, 0.5, 0.0, -1.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 0.5, 0.0, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.5, 0.75, -0.75, -0.25, 0.25, -0.5, 0.5, -0.25, -0.5, -0.5, 0.0, 0.25, 1.0, -0.25, -1.0, -1.0, 1.0, 0.5, -0.5, -1.0, -0.75, -0.5, -0.75, -0.5, 1.0, 1.0, -0.25, 0.75, 1.0, ]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array8 = new Float32Array([-0.25, 0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.75, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.5, 0.25, -0.75, 0.0, -1.0, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, -1.0, 0.25, 0.25, -0.5, -1.0, -1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.25, -0.5, -0.25, 0.5, 0.25, -0.75, 0.5, 0.0, 1.0, -1.0, 0.75, -0.75, -0.25, 0.0, 1.0, 1.0, -1.0, 0.5, 0.5, 0.5, -1.0, -0.5, 1.0, -0.75, 1.0, 0.25, -0.25, -0.25, 0.5, -0.75, -0.75, 1.0, -0.75, -0.25, 1.0, -0.75, -1.0, -0.5, 0.0, -1.0, 0.0, -0.5, 0.25, -1.0, -1.0, -0.5, -0.75, 0.0, 0.25, -0.75, 0.25, 0.25, 0.25, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, -0.25, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.popDebugGroup()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0000.popDebugGroup()
    buffer000.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([1.0, 0.75, -0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -0.75, 0.5, -0.25, -0.25, -0.5, 0.75, 0.5, 0.75, -1.0, -1.0, 0.0, 0.0, 0.75, -1.0, -1.0, 0.0, 0.0, -0.75, -0.75, 1.0, 0.75, 0.25, 0.0, 1.0, -0.25, -0.25, -0.5, 0.0, -0.25, -0.25, 0.5, 0.25, 0.75, -0.75, 0.75, -0.5, 0.25, 0.25, -0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.0, 0.5, -0.25, -1.0, -0.25, -0.75, -0.75, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.25, 1.0, 0.0, 1.0, -1.0, 0.75, 0.5, -0.25, -0.75, -0.25, 0.75, -0.5, -1.0, 0.25, 0.0, 0.75, -0.25, -0.5, ]);
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const array10 = new Float32Array([0.5, -0.5, 0.5, -0.75, -0.75, 0.25, 0.0, 1.0, 0.0, 1.0, -0.25, -1.0, 0.0, 0.0, 0.0, 0.5, 0.75, -1.0, 1.0, -0.5, 0.75, -1.0, -1.0, 0.0, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, -0.5, 0.5, 1.0, 0.75, -0.25, -0.75, 0.25, 0.0, -0.5, 0.25, 0.5, 0.25, -0.5, -0.5, 1.0, 0.0, 0.75, 1.0, 0.5, -1.0, -0.5, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -0.25, 0.75, -0.25, 0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 1.0, 0.75, 0.75, 0.25, 0.25, 0.0, 1.0, -0.5, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.0, -0.75, 0.0, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, -0.25, 0.75, 0.5, 0.0, -0.75, 0.25, 1.0, -0.5, 0.0, ]);
    
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    
    const array11 = new Float32Array([0.0, -0.75, 0.0, -0.75, 0.0, 0.75, -1.0, 0.5, -1.0, 1.0, -1.0, -0.5, 0.25, -0.5, 0.0, -0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.25, 0.25, 1.0, 0.75, -0.75, -0.75, -1.0, -0.25, 0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.75, 0.0, 0.0, 0.5, 0.0, 0.25, 0.25, -0.75, 1.0, -0.5, 1.0, 0.25, 1.0, -0.25, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, 0.5, -1.0, 1.0, -0.5, 0.0, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, 1.0, 0.25, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, -0.75, 0.0, 0.75, 0.5, -1.0, -0.25, 0.5, -1.0, 0.25, -0.5, -0.25, 0.0, -0.5, -1.0, 0.0, 0.25, 1.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 0.25, -0.25, 0.75, ]);
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.pushErrorScope("validation");
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer001.destroy()
    compute_pass_encoder0010.popDebugGroup()
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture008 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture008 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture008 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array12 = new Float32Array([1.0, -0.25, 0.75, -0.25, 0.25, 1.0, -1.0, 0.0, 0.5, -1.0, -1.0, 0.75, -0.25, 0.75, -0.75, -0.75, -0.25, -1.0, -1.0, 1.0, 0.0, 1.0, 0.0, -0.5, -1.0, 0.25, -0.5, 1.0, 0.25, -0.75, -0.25, -1.0, -1.0, 1.0, -0.25, -0.5, 0.75, 0.0, 0.5, -0.25, -1.0, 0.5, -0.75, -1.0, -1.0, 0.5, 0.5, 0.25, 0.5, 0.0, 0.0, 0.25, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.25, 0.75, 0.25, -0.25, 0.25, -0.75, 0.5, -0.75, -1.0, 0.25, -1.0, 1.0, 0.5, 0.75, -0.25, 0.5, -0.25, 0.5, -0.75, -0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.25, 0.0, -0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.75, ]);
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.insertDebugMarker("mymarker");
    const command_buffer003 = command_encoder003.finish();
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeTexture({ texture: texture008 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    
    const array13 = new Float32Array([-0.25, -1.0, 1.0, 1.0, 0.25, -0.5, -0.75, -0.5, 0.0, -0.5, -0.25, 0.5, 0.0, -1.0, 0.0, -0.25, 1.0, 0.0, -1.0, -0.75, 0.0, 0.75, 1.0, -0.5, 0.25, 0.5, 0.25, -1.0, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, -1.0, 0.0, -0.75, -0.5, 0.25, -0.5, 0.0, -0.5, -0.5, 1.0, 0.75, 0.0, -0.5, -0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, -1.0, 1.0, 0.25, 1.0, -0.5, -0.25, 0.5, -0.5, 0.0, -1.0, -1.0, 1.0, -0.5, 1.0, 0.5, 0.25, 0.75, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 1.0, -0.75, -1.0, 0.0, -0.25, -0.5, 0.75, 1.0, 0.75, 0.25, 0.5, 0.75, -0.75, 1.0, 0.0, 0.75, 0.75, 0.0, -0.75, 0.25, ]);
    
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    device00.pushErrorScope("out-of-memory");
    
    
    device00.queue.writeTexture({ texture: texture008 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    device00.queue.writeTexture({ texture: texture008 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0000.popDebugGroup()
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    device00.queue.writeTexture({ texture: texture008 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder006.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture008 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.popDebugGroup()
    command_encoder006.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0040.popDebugGroup()
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder007.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeTexture({ texture: texture008 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const array14 = new Float32Array([-0.5, 0.0, -0.25, -0.75, 0.25, -1.0, 0.25, -1.0, -0.25, -0.5, 0.5, -0.25, 0.5, -0.25, 0.75, 0.0, 0.25, -0.75, -1.0, 1.0, -1.0, 0.5, 0.0, -0.75, 0.25, 0.5, 0.5, 0.5, -0.75, 0.5, -0.5, 0.5, -1.0, -1.0, 1.0, 0.0, 0.5, 0.0, 0.75, 0.5, 0.75, 0.0, 0.75, -1.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.0, 0.25, -0.75, -0.75, 1.0, -1.0, 0.0, -0.75, 1.0, -0.5, -1.0, -0.25, 1.0, 0.5, -1.0, 0.25, -0.75, 1.0, 0.75, -1.0, 0.25, 0.25, 1.0, 0.5, 1.0, 1.0, 0.75, 0.75, 1.0, -0.25, 0.25, 0.75, 1.0, -0.5, -0.5, 1.0, 0.25, 1.0, 0.5, -0.5, 0.5, -0.25, -1.0, 0.5, -0.75, -0.5, -0.25, -0.5, 0.25, 0.25, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.pushErrorScope("validation");
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device20.destroy();
    
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeTexture({ texture: texture008 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture0012 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture008 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeTexture({ texture: texture008 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture0012 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const command_buffer501 = command_encoder501.finish();
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture008 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture008 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture008 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device00.queue.writeTexture({ texture: texture0012 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture008 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.destroy();
    
    device00.queue.writeTexture({ texture: texture0012 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture0012 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture0012 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer500 = command_encoder500.finish();
    
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
}