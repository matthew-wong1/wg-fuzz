struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<u32>;

var<private> global2: f32 = 2971f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> f32 {
    global1 = max(abs(~vec2<u32>(36288u, 5215u)), vec2<u32>(global1.x, u_input.c));
    var var_0 = any(vec2<bool>(true || !(-2147483647i == u_input.d), false));
    return -725f;
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = -(~select(-vec3<i32>(836i, u_input.b, 12887i), countOneBits(vec3<i32>(u_input.b, u_input.b, 33928i)) << (~vec3<u32>(64640u, global1.x, 18738u) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    global1 = countOneBits(~(~min(vec2<u32>(0u, global1.x), vec2<u32>(4051u, global1.x)) << (max(vec2<u32>(45536u, 4294967295u), ~vec2<u32>(3412u, global1.x)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1743f)) * _wgslsmith_f_op_f32(select(106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), select(!any(vec3<bool>(false, false, false)), true, false))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(323f))) + _wgslsmith_f_op_f32(ceil(-1422f))) - 1269f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-196f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 1369f)) - -304f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1724f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-603f, 2067f) * -2137f)), _wgslsmith_f_op_f32(min(1220f, _wgslsmith_f_op_f32(f32(-1f) * -146f))))));
    var var_1 = func_1(var_0.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, u_input.c, global1.x), vec3<u32>(1u, 27577u, u_input.a)) << (abs(vec3<u32>(u_input.c, 4294967295u, u_input.c)) % vec3<u32>(32u)))));
}

