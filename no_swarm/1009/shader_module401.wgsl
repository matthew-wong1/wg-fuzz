struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<f32>(871f, 199f), vec4<u32>(5891u, 4294967295u, 1u, 55741u), vec3<f32>(-1438f, 454f, 378f)), Struct_2(vec2<f32>(-1505f, -773f), vec4<u32>(43065u, 38940u, 0u, 4294967295u), vec3<f32>(1084f, -1003f, -1116f)), Struct_2(vec2<f32>(-345f, 844f), vec4<u32>(1u, 4294967295u, 58952u, 46803u), vec3<f32>(-586f, -208f, 1134f)), Struct_2(vec2<f32>(-178f, -1593f), vec4<u32>(29674u, 71370u, 4294967295u, 30811u), vec3<f32>(-988f, 351f, -1432f)), Struct_2(vec2<f32>(-593f, -1604f), vec4<u32>(1u, 1u, 4294967295u, 55059u), vec3<f32>(-467f, 495f, -1000f)), Struct_2(vec2<f32>(705f, -945f), vec4<u32>(38089u, 41409u, 18833u, 50249u), vec3<f32>(-425f, -400f, 1139f)), Struct_2(vec2<f32>(-368f, 284f), vec4<u32>(30983u, 1u, 1u, 6152u), vec3<f32>(838f, -188f, 452f)), Struct_2(vec2<f32>(-1222f, -1075f), vec4<u32>(1u, 36097u, 4294967295u, 12853u), vec3<f32>(-147f, -213f, -915f)), Struct_2(vec2<f32>(-441f, 475f), vec4<u32>(0u, 71685u, 1u, 0u), vec3<f32>(-1708f, 301f, 814f)), Struct_2(vec2<f32>(-343f, -943f), vec4<u32>(4294967295u, 29447u, 1u, 4294967295u), vec3<f32>(789f, -762f, -634f)), Struct_2(vec2<f32>(-1295f, 543f), vec4<u32>(1u, 11811u, 4294967295u, 1u), vec3<f32>(1321f, -288f, -647f)), Struct_2(vec2<f32>(663f, -709f), vec4<u32>(4294967295u, 94417u, 8496u, 39360u), vec3<f32>(1038f, 233f, -1819f)), Struct_2(vec2<f32>(-1147f, -591f), vec4<u32>(75409u, 4294967295u, 4294967295u, 15450u), vec3<f32>(854f, -1000f, -843f)));

var<private> global1: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_2, 13>();
    global1 = array<i32, 1>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1977f - 1419f), _wgslsmith_f_op_f32(-421f - -724f))) - -503f))));
    let var_1 = ~vec2<u32>(u_input.a.x & 1u, 4294967295u);
    let var_2 = global0[_wgslsmith_index_u32(0u, 13u)];
    return StorageBuffer(vec2<i32>(i32(-1i) * -1i, min(1i, ~global1[_wgslsmith_index_u32(1700u, 1u)])), 38450u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1771f - -484f) - _wgslsmith_f_op_f32(max(-476f, 627f))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(1f));
    global1 = array<i32, 1>();
    let var_2 = Struct_1(-2147483647i, true, global1[_wgslsmith_index_u32(~42737u, 1u)], 0i);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = func_1();
}

