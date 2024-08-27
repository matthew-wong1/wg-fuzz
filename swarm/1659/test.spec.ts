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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const array0 = new Float32Array([1.0, -0.25, 0.5, -1.0, -0.25, -0.25, 0.75, -1.0, -0.75, 0.25, -1.0, -1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.25, -0.75, 0.5, 0.5, 0.0, -0.75, -0.75, 1.0, 0.75, 0.0, 1.0, -1.0, 0.0, 0.5, 0.0, -1.0, -0.25, 0.5, 0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 0.75, -1.0, -0.75, -0.75, 0.5, 0.0, -0.25, 0.75, -1.0, -0.75, -0.25, 0.75, -0.5, 0.75, -0.75, 0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 0.5, 1.0, 0.25, -0.5, -0.5, -0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.0, -0.75, 1.0, 0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, 1.0, 0.5, -0.75, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 0.0, 0.0, 1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    device20.pushErrorScope("out-of-memory");
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer200.destroy()
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    device40.pushErrorScope("validation");
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    buffer300.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    device50.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder400.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device20.pushErrorScope("out-of-memory");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder400.insertDebugMarker("mymarker");
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder400.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    buffer401.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    
    
    device20.destroy();
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder401.clearBuffer(buffer401);
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    command_encoder400.popDebugGroup()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array1 = new Float32Array([-1.0, 0.25, 1.0, -0.5, -0.5, 1.0, 0.0, 0.25, 0.0, 1.0, 0.75, 0.5, 0.0, -0.25, -0.75, 0.75, 0.0, -1.0, 1.0, 0.75, 1.0, -0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -1.0, -0.75, 0.75, 0.25, -0.5, -0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 1.0, 0.75, 0.5, -0.75, 1.0, -0.5, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, -0.25, 1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 1.0, 1.0, 0.25, -0.25, -0.75, -0.5, 0.25, -1.0, -0.25, 0.25, 0.75, -0.75, -0.25, -0.25, 0.5, -1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.25, -0.25, 0.0, 1.0, 1.0, 0.0, -0.5, 0.5, -0.25, 0.75, -0.25, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0, -0.75, 0.0, ]);
    
    
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder400.popDebugGroup()
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const array2 = new Float32Array([1.0, 0.5, 0.75, 0.25, 1.0, -0.25, -0.75, 0.0, 0.25, 0.5, 0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 1.0, -0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, 0.5, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, -0.75, 0.75, 0.25, 0.25, 0.5, -0.75, -0.5, -1.0, 1.0, 1.0, -0.75, 0.5, 1.0, 0.0, -1.0, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, -0.5, 0.75, 0.5, -1.0, -0.5, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, -1.0, -0.75, 0.5, -0.25, 0.0, 0.75, 0.25, 0.25, -0.75, 0.75, 1.0, 0.0, -0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.75, -0.25, -0.5, 0.5, 0.0, 0.25, -0.25, 0.75, 0.5, -0.75, ]);
    
    const array3 = new Float32Array([0.75, 1.0, 0.25, 0.75, -0.75, 1.0, -0.25, 0.5, 0.25, 0.5, 0.25, -0.5, -0.25, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, -0.25, -0.75, 0.25, 0.75, 0.25, 0.25, 0.25, 1.0, 0.75, -1.0, 0.75, 0.25, 1.0, 0.5, 0.0, -0.75, -0.75, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.75, 0.0, 0.25, 0.25, -1.0, -0.75, 0.5, 0.25, 0.75, 0.25, -0.75, 0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 0.5, -1.0, -0.25, -0.75, -0.75, 0.0, -0.5, -0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 1.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.5, 0.75, 0.75, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder400.clearBuffer(buffer403);
    device50.destroy();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    buffer400.destroy()
    
    
    
    command_encoder400.copyBufferToBuffer(
        buffer401,
        0,
        buffer403,
        0,
        400
    );
    buffer404.destroy()
    
    
    
    command_encoder400.insertDebugMarker("mymarker");
    device80.pushErrorScope("internal");
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    
    
    buffer402.destroy()
    device60.destroy();
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const array4 = new Float32Array([1.0, 0.75, -0.25, -1.0, -0.75, 0.25, -0.75, 0.5, 1.0, 0.0, -1.0, 0.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, 0.75, -0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -0.5, 0.25, 0.0, -0.75, 0.0, 0.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 0.5, -0.75, -0.75, 0.0, 0.0, 1.0, 0.25, -0.5, 0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -1.0, 0.75, 0.5, -0.5, -1.0, 0.5, -0.25, 0.75, -0.5, 0.75, -0.5, 0.0, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, 1.0, 0.25, 0.75, -0.5, 0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.5, 0.25, 0.25, -1.0, 1.0, 0.0, -1.0, 0.25, -0.75, -1.0, 0.25, 0.75, ]);
    
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    command_encoder400.clearBuffer(buffer401);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder400.pushDebugGroup("mygroupmarker")
    buffer403.destroy()
    command_encoder404.insertDebugMarker("mymarker");
    
    
    
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    command_encoder403.popDebugGroup()
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    device70.pushErrorScope("validation");
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder403.clearBuffer(buffer404);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.popDebugGroup()
    command_encoder400.clearBuffer(buffer400);
    
    command_encoder400.clearBuffer(buffer403);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    device40.pushErrorScope("internal");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder401.insertDebugMarker("mymarker");
    
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer404,
        0,
        400
    );
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.popDebugGroup()
    
    command_encoder403.copyBufferToBuffer(
        buffer401,
        0,
        buffer402,
        0,
        400
    );
    command_encoder404.pushDebugGroup("mygroupmarker")
    
    
    
    
    buffer800.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder402.clearBuffer(buffer404);
    command_encoder403.clearBuffer(buffer404);
    command_encoder404.popDebugGroup()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder402.pushDebugGroup("mygroupmarker")
    buffer700.destroy()
    
    
    buffer701.destroy()
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    
    
    
    
    
    
    
    device80.destroy();
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    command_encoder400.popDebugGroup()
    command_encoder403.clearBuffer(buffer403);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer403,
        0,
        400
    );
    device70.pushErrorScope("out-of-memory");
    
    
    
    command_encoder403.insertDebugMarker("mymarker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    command_encoder700.insertDebugMarker("mymarker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    command_encoder404.pushDebugGroup("mygroupmarker")
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    buffer401.destroy()
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    
    
    command_encoder404.insertDebugMarker("mymarker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    command_encoder000.insertDebugMarker("mymarker");
    
    const array5 = new Float32Array([-0.25, 0.0, -0.75, -0.75, -0.25, -0.25, -0.5, -0.25, 0.25, 0.25, 0.0, -0.75, -0.5, -0.25, 0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.0, 0.25, -1.0, 0.5, 0.0, -0.25, -0.5, 0.5, -0.25, 0.75, 0.0, -0.5, -0.5, 0.5, 0.0, -0.75, -0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 0.25, 0.0, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.5, -0.75, -0.25, 0.75, 1.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.5, 1.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.25, -0.25, -0.5, 0.25, -0.25, -0.75, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 0.75, 1.0, -1.0, -1.0, -0.75, -1.0, 0.5, -1.0, 0.75, 0.0, 0.25, -0.25, ]);
    
    
    device60.destroy();
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.popDebugGroup()
    
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    var shader_module4011_code = "";
    try {
        shader_module4011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4011 = await device40.createShaderModule({ label: "shader_module4011", code: shader_module4011_code })
    command_encoder700.insertDebugMarker("mymarker");
    command_encoder404.popDebugGroup()
    
    command_encoder403.clearBuffer(buffer402);
    
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder400.popDebugGroup()
    
    
    
    
    
    
    
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    device10.destroy();
    
    command_encoder405.insertDebugMarker("mymarker");
    command_encoder404.clearBuffer(buffer401);
    
    
    command_encoder403.popDebugGroup()
    
    command_encoder701.insertDebugMarker("mymarker");
    
    command_encoder402.insertDebugMarker("mymarker");
    
    
    
    
    command_encoder401.insertDebugMarker("mymarker");
    
    command_encoder405.pushDebugGroup("mygroupmarker")
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    
    command_encoder700.clearBuffer(buffer700);
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder402.popDebugGroup()
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder402.insertDebugMarker("mymarker");
    command_encoder403.insertDebugMarker("mymarker");
    
    command_encoder402.clearBuffer(buffer401);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module4012_code = "";
    try {
        shader_module4012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4012 = await device40.createShaderModule({ label: "shader_module4012", code: shader_module4012_code })
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    command_encoder402.insertDebugMarker("mymarker");
    device60.destroy();
    
    command_encoder402.copyBufferToBuffer(
        buffer403,
        0,
        buffer405,
        0,
        400
    );
    
    command_encoder400.copyBufferToBuffer(
        buffer400,
        0,
        buffer404,
        0,
        400
    );
    command_encoder403.clearBuffer(buffer404);
    buffer405.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder702.pushDebugGroup("mygroupmarker")
    command_encoder405.popDebugGroup()
    
    
    command_encoder403.insertDebugMarker("mymarker");
    
    
    command_encoder402.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
    command_encoder701.insertDebugMarker("mymarker");
    
    
    command_encoder402.clearBuffer(buffer401);
    
    command_encoder402.insertDebugMarker("mymarker");
    
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const array6 = new Float32Array([-0.5, -0.75, 1.0, 1.0, 0.75, -0.25, 0.75, 0.0, 0.5, -0.75, 1.0, 0.75, -1.0, 1.0, 0.25, -0.25, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, 0.0, -0.5, 0.75, -0.75, 0.0, 0.0, -1.0, 0.25, -0.25, 0.75, 0.25, 0.0, -0.5, -0.25, -0.5, -0.25, 0.75, -0.25, 0.25, -0.75, 0.75, -0.25, 0.0, -0.75, 0.75, -1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 0.25, -1.0, 0.0, -0.75, 0.25, -0.5, 0.0, -1.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, 0.0, -0.75, 0.0, -1.0, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, 0.5, -0.75, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 0.5, -0.25, -0.25, -0.5, -0.75, 0.25, 0.0, -1.0, -0.25, 1.0, 0.5, -0.25, -0.75, -0.25, ]);
    command_encoder404.pushDebugGroup("mygroupmarker")
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    command_encoder404.clearBuffer(buffer405);
    
    
    
    
    command_encoder405.clearBuffer(buffer405);
    
    
    
    command_encoder701.clearBuffer(buffer701);
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    command_encoder704.clearBuffer(buffer700);
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    command_encoder404.insertDebugMarker("mymarker");
    
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array7 = new Float32Array([-0.5, 0.0, 0.0, 0.25, -0.25, -0.75, -0.5, -0.25, -0.5, 0.5, -0.75, 0.25, -1.0, 0.0, 0.75, -0.25, -0.75, 0.25, 0.75, 0.75, 0.25, 1.0, 1.0, -0.5, 0.25, -1.0, -0.5, -0.5, 1.0, -0.75, -1.0, -0.5, -0.25, -1.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -0.75, -1.0, 0.5, 0.0, 0.0, -1.0, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, 0.25, -0.25, 0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -0.75, -1.0, -1.0, -0.75, 0.0, -0.75, -0.75, -1.0, -0.25, -0.75, -0.25, 0.75, -0.5, -1.0, -0.5, 0.5, 0.0, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.0, 0.5, 0.75, 0.5, 1.0, 0.0, 0.25, ]);
    command_encoder703.pushDebugGroup("mygroupmarker")
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer405,
        0,
        400
    );
    buffer600.destroy()
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    command_encoder404.popDebugGroup()
    
    const array8 = new Float32Array([0.5, -0.25, -1.0, 0.0, 1.0, 0.25, 1.0, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 0.5, 1.0, -0.25, 1.0, 1.0, -1.0, 1.0, 0.5, -0.75, 1.0, 0.75, 0.25, 0.0, 0.75, -0.5, 0.0, -0.5, -0.75, -1.0, -0.5, 0.5, -0.75, 0.5, 0.5, -1.0, -0.75, 0.75, -0.5, 0.25, 0.25, -0.5, 1.0, -1.0, -0.5, -0.25, -0.75, 0.5, 0.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.75, 0.75, 0.75, 1.0, 0.75, -0.75, -1.0, -0.5, 0.5, -0.5, -0.75, -0.25, 0.5, 0.0, 0.0, -0.25, -0.5, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, -0.25, 0.0, 0.75, -0.75, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, -0.5, 0.75, -1.0, 0.75, 1.0, -0.25, ]);
    
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    command_encoder403.clearBuffer(buffer404);
    command_encoder700.insertDebugMarker("mymarker");
    command_encoder404.insertDebugMarker("mymarker");
    command_encoder700.popDebugGroup()
    command_encoder200.popDebugGroup()
    command_encoder701.popDebugGroup()
    command_encoder703.popDebugGroup()
    device40.queue.submit([]);
    command_encoder702.popDebugGroup()
}