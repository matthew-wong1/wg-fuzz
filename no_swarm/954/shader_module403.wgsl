struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: Struct_4;

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-1867f, -137f, 1304f, 444f), vec4<f32>(-1000f, 533f, 1483f, -2616f), vec4<f32>(1779f, 1037f, -293f, -882f), vec4<f32>(-590f, -334f, -517f, -1000f), vec4<f32>(-243f, -1286f, -1760f, -466f), vec4<f32>(989f, 1000f, 2196f, 154f), vec4<f32>(907f, -1681f, 367f, 2150f), vec4<f32>(-1292f, -644f, -1329f, 245f), vec4<f32>(681f, 1303f, 2334f, 290f), vec4<f32>(-1385f, -497f, 103f, 530f), vec4<f32>(305f, -205f, 770f, -210f), vec4<f32>(1100f, -1033f, -298f, 465f), vec4<f32>(1406f, -986f, 1075f, -1441f), vec4<f32>(-123f, -1827f, 1000f, -1043f), vec4<f32>(-2075f, 273f, 207f, -1094f), vec4<f32>(1000f, 1401f, 517f, 1560f), vec4<f32>(-1290f, -540f, 271f, 855f), vec4<f32>(-205f, 1650f, -1000f, -1353f), vec4<f32>(1439f, -947f, -753f, -568f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 21>();
    var var_0 = Struct_4(false, _wgslsmith_f_op_vec3_f32(-global1.b));
    var var_1 = 53907i;
    global0 = array<Struct_2, 21>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(385f, 1000f, 1568f) - _wgslsmith_f_op_vec3_f32(floor(global1.b))))), _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~u_input.a, min(~50131u, ~u_input.a) << (u_input.e.x % 32u)));
}

