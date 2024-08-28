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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([0.75, 0.0, 0.5, -0.75, -0.75, 0.5, 0.5, 0.75, 0.25, -0.5, 1.0, 1.0, -0.75, -0.75, -0.5, 0.5, -1.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.5, 0.5, 0.5, 0.5, 0.5, 0.25, -0.25, 0.0, 0.75, 0.75, -0.25, 1.0, -0.25, 1.0, 0.75, -1.0, 0.75, 0.5, -0.25, -0.25, -0.75, -1.0, 0.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.5, 1.0, -1.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.5, 0.5, -0.25, 1.0, 0.5, 0.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.0, -0.25, -0.25, -0.75, 1.0, 0.5, -0.5, 0.25, 0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -0.25, -0.75, 0.25, -0.75, 0.25, 1.0, -1.0, -0.75, 0.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.25, 0.75, 0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device20.destroy();
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    const array1 = new Float32Array([0.5, 1.0, 1.0, 0.5, 1.0, -0.75, 0.25, 0.0, -0.25, 0.25, -0.5, 0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, 0.0, 0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, 0.0, 0.75, 0.5, 0.0, -1.0, 0.75, 1.0, -0.5, -0.25, -1.0, 0.5, -1.0, -0.75, -1.0, 0.75, 1.0, -0.25, 0.0, 1.0, 1.0, -0.75, 0.5, 0.5, 0.75, -0.25, 0.0, -0.75, 0.25, 1.0, -0.25, -0.75, 0.75, 0.5, -0.25, -0.25, 0.0, -1.0, 0.25, 0.5, -0.75, -0.75, 0.5, -0.25, 0.25, 1.0, 0.5, 0.75, 0.75, 0.25, 0.0, -0.75, 0.75, 1.0, -0.5, 0.0, 1.0, 0.75, 0.25, 0.0, 0.0, -0.75, -1.0, -0.25, -0.75, 0.25, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    buffer002.destroy()
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    const array2 = new Float32Array([0.0, -0.75, 0.0, 0.5, 0.5, 0.5, 0.75, -1.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 0.0, -0.25, 0.75, 0.75, 1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.5, 1.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.75, -0.75, 0.5, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, -0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -0.25, 0.75, -1.0, 0.25, -0.75, -0.25, -0.25, -1.0, -0.25, 0.0, 1.0, 1.0, -1.0, 1.0, -0.75, -0.75, -0.25, -0.25, 0.75, -1.0, 1.0, -0.75, 0.0, 0.75, -0.5, -1.0, 1.0, -0.25, -1.0, -0.5, 0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    device00.destroy();
    
    
    const array3 = new Float32Array([-1.0, 0.75, 0.75, -1.0, -1.0, 0.0, -1.0, -1.0, -1.0, 0.75, -0.25, 0.75, 0.0, -0.75, -0.75, 0.25, -0.25, -1.0, -0.25, 0.75, -0.25, -0.75, -0.25, 0.5, -0.25, -0.5, -0.5, -0.75, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, 1.0, -0.5, -0.25, -1.0, -1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.5, -0.25, 1.0, -0.75, -0.75, 0.25, -1.0, 1.0, 1.0, 0.5, 0.5, 1.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.0, -0.25, 0.75, -0.75, 1.0, 0.0, -1.0, 0.25, 0.25, -0.5, -0.25, 1.0, 0.5, 0.0, 1.0, -1.0, -1.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.75, -0.25, -0.5, 0.5, -0.5, -1.0, -0.75, 1.0, -1.0, -1.0, -0.5, ]);
    device40.pushErrorScope("internal");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device80.pushErrorScope("out-of-memory");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.pushErrorScope("validation");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer402.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer400.destroy()
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    device60.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    device90.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer700.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    device100.pushErrorScope("validation");
    buffer401.destroy()
    device50.destroy();
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    buffer701.destroy()
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    buffer403.destroy()
    
    
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    buffer702.destroy()
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    const array4 = new Float32Array([0.5, 0.5, -1.0, 0.75, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, -0.75, -1.0, 0.0, -0.25, -0.5, -0.25, 0.5, 0.75, 0.5, -1.0, -0.5, -1.0, 0.5, 1.0, -0.5, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, -0.5, -1.0, 0.25, -0.5, -0.5, -1.0, 0.75, -0.25, -0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.5, 0.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, -1.0, -0.25, 0.0, -0.5, 1.0, -0.75, 0.5, -0.5, -0.75, -0.75, -0.75, -0.25, -0.75, 0.0, -0.25, 0.5, 0.0, -0.25, -1.0, 0.0, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, 1.0, -0.75, 0.75, 0.25, 0.75, -0.5, 0.5, ]);
    
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    
    device110.pushErrorScope("out-of-memory");
    
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    
    const array5 = new Float32Array([-0.75, -0.5, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 0.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.25, -0.5, -0.5, -0.75, -0.25, 1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.5, 1.0, -0.25, 0.5, -0.25, -1.0, 0.75, 0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 0.0, -0.75, -0.25, -0.75, -0.5, 0.5, 0.5, -0.5, 0.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 0.25, 0.25, -0.25, 0.0, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.25, 1.0, -1.0, 0.75, 0.5, 0.25, -0.75, 0.75, -0.25, 0.25, 0.0, 0.75, -0.5, -0.5, -0.75, -0.25, -0.5, 0.75, 0.75, -1.0, -1.0, 0.25, -0.5, 0.25, -0.5, -1.0, ]);
    
    buffer1100.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    buffer404.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([0.75, 0.75, -1.0, 0.75, 1.0, 0.25, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, -1.0, 0.75, 0.25, -0.25, 0.75, -0.5, 0.0, 0.25, 0.75, -1.0, 1.0, -0.5, 0.25, -0.75, 0.0, -0.75, -0.25, -0.25, -0.75, -0.25, -0.75, -0.5, 0.75, 0.75, 0.25, -1.0, 0.5, 1.0, -1.0, -1.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.75, -1.0, 0.0, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 0.25, 0.0, 0.75, -0.5, 1.0, 0.0, -1.0, 0.25, -0.5, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, 0.25, 1.0, -1.0, 0.5, 1.0, 0.5, 1.0, -0.5, 0.0, -0.5, -0.75, 0.25, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, 0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 0.5, 0.5, 1.0, 0.75, ]);
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const array7 = new Float32Array([1.0, 0.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.5, -1.0, 0.25, 1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, -0.25, 0.5, -0.25, 0.5, 0.75, -0.25, 1.0, -0.75, -1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -1.0, 0.25, -0.5, 1.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.5, -0.5, 0.5, 0.25, -0.5, 1.0, -0.25, -0.5, -0.5, 0.0, 0.5, -0.75, -0.5, -0.5, 1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.25, -0.75, -0.75, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 0.25, 0.75, 1.0, -0.5, -0.25, 1.0, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, 0.0, -1.0, 0.5, ]);
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    buffer405.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    
    
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device80.queue.writeBuffer(buffer802, 0, array2, 0, array2.length);
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    
    buffer802.destroy()
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer1101.destroy()
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    buffer801.destroy()
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    
    
    
    
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer1103 = device110.createBuffer({
        label: "buffer1103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device120.destroy();
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    
    
    
    
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    
    
    
    
    
    
    
    
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const array8 = new Float32Array([-1.0, -1.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.75, 0.5, 0.75, 0.0, 0.25, 1.0, -1.0, -0.5, 0.75, -0.25, 0.0, -0.25, -1.0, 0.25, 0.0, 0.0, 0.25, -0.25, 0.25, -1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.75, -1.0, 0.25, 0.25, 0.5, -0.5, -0.5, -0.5, 1.0, -0.5, 1.0, 0.5, 0.75, -0.25, 0.0, -1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 0.75, -0.25, 0.5, 1.0, 0.75, 0.25, -0.5, 0.75, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, 0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.0, 0.25, 0.75, 0.0, -1.0, -1.0, 0.25, -0.5, 0.0, 0.5, -1.0, -0.75, -0.75, 0.25, -0.25, -0.75, -0.5, -0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.75, 0.25, -0.5, ]);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    buffer1000.destroy()
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    buffer803.destroy()
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    buffer600.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    
    
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer800.destroy()
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    
    
    
    
    
    
    
    
    
    device150.pushErrorScope("internal");
    
    
    
    
    
    
    buffer704.destroy()
    
    
    
    
    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    
    
    
    const array9 = new Float32Array([-1.0, -0.25, 0.75, 0.25, -0.25, 0.25, 1.0, 1.0, 0.75, -0.5, 0.75, 0.25, -1.0, -0.75, -0.25, -1.0, -0.25, -0.5, 0.75, -0.5, 0.25, 0.25, -0.75, 0.0, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, -1.0, 0.25, 0.0, 1.0, 0.5, 0.25, -0.25, 0.25, 1.0, 1.0, 0.25, -0.75, -1.0, 0.75, 0.75, 0.25, 1.0, -0.5, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, -0.25, 0.25, -1.0, -0.75, -0.75, 0.5, -0.25, 0.5, -0.25, 0.0, 0.75, -0.25, 0.25, -0.5, -0.5, 0.5, -1.0, -0.75, -0.25, -0.25, 0.0, -0.75, 0.0, 1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 0.75, -0.75, -1.0, -1.0, -1.0, -0.75, -1.0, 0.75, -0.75, -0.25, 1.0, -0.25, 0.5, -0.25, -0.25, 0.75, -0.75, ]);
    
    
    
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
}