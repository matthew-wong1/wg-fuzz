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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query200.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query402.destroy()
    query101.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query404.destroy()
    query101.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    query401.destroy()
    query404.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query404.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    
    query400.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    query401.destroy()
    query404.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    query101.destroy()
    query402.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query000.destroy()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    query200.destroy()
    query403.destroy()
    
    query401.destroy()
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    query406.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query400.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    query500.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query001.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    query406.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    query203.destroy()
    query400.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    query406.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    query406.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    query405.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query204.destroy()
    query101.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    query100.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    query205.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    query202.destroy()
    
    query003.destroy()
    query100.destroy()
    query100.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query000.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query101.destroy()
    query302.destroy()
    query204.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    query203.destroy()
    
    query302.destroy()
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    query600.destroy()
    
    query101.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query204.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query301.destroy()
    
    query206.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    query302.destroy()
    query207.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query404.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query501.destroy()
    query001.destroy()
    query401.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    query600.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    query303.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    query205.destroy()
    query205.destroy()
    query404.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder202.insertDebugMarker("marker");
    query405.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    query003.destroy()
    query502.destroy()
    
    query402.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query001.destroy()
    query203.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    query503.destroy()
    query100.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query200.destroy()
    query206.destroy()
    query503.destroy()
    query404.destroy()
    query300.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    query500.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    query001.destroy()
    query100.destroy()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    query207.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    query302.destroy()
    query208.destroy()
    query101.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    query202.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query203.destroy()
    query200.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query200.destroy()
    query207.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    query405.destroy()
    query206.destroy()
    query501.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query000.destroy()
    query404.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    query402.destroy()
    query406.destroy()
    query202.destroy()
    query401.destroy()
    query208.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query202.destroy()
    query000.destroy()
    query401.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query101.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query700.destroy()
    query206.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    query004.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query206.destroy()
    query302.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    query204.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query401.destroy()
    query206.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    query405.destroy()
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    query101.destroy()
    query406.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query100.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query100.destroy()
    query200.destroy()
    query204.destroy()
    query205.destroy()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    query004.destroy()
    query402.destroy()
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    query006.destroy()
    query208.destroy()
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    query500.destroy()
    query504.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    query207.destroy()
    query002.destroy()
    query700.destroy()
    query002.destroy()
    query400.destroy()
    query801.destroy()
    query201.destroy()
    query400.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query003.destroy()
    query402.destroy()
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    query501.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    query501.destroy()
    
    render_bundle_encoder601.insertDebugMarker("marker");
    query101.destroy()
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    query401.destroy()
    query206.destroy()
    query406.destroy()
    query204.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query200.destroy()
    query004.destroy()
    query400.destroy()
    
    query801.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query603.destroy()
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    query304.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    query500.destroy()
    query304.destroy()
    query005.destroy()
    query302.destroy()
    query800.destroy()
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder801.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    query100.destroy()
    query601.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query002.destroy()
    query700.destroy()
    query101.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query207.destroy()
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    query002.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
}