struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: Struct_3 = Struct_3(0i, 37606u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 1744f) - _wgslsmith_f_op_f32(f32(-1f) * -146f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1863f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-904f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(531f))))))), Struct_1(!vec3<bool>(global2.b >= u_input.b.x, all(vec4<bool>(true, true, false, true)), false)));
    global0 = array<vec2<f32>, 28>();
    let var_1 = global2.b;
    var var_2 = global2.b | 4294967295u;
    var var_3 = global1[_wgslsmith_index_u32(1u, 32u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(762f, -1038f)) * var_3.a);
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = u_input.b.yzy;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(144f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2027f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1912f, -354f) - 878f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f)));
    global2 = Struct_3(2147483647i, arg_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-248f, -1939f), false)), var_1.x, Struct_1(select(vec3<bool>(true, false, any(vec4<bool>(false, true, false, false))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, select(true, false, true)))));
    global0 = array<vec2<f32>, 28>();
    return _wgslsmith_f_op_f32(max(1387f, -537f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    global0 = array<vec2<f32>, 28>();
    global1 = array<Struct_2, 32>();
    let var_0 = u_input.a.x;
    global1 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.c << ((vec4<u32>(7100u, 26407u, global2.b, u_input.b.x) ^ ~u_input.b) % vec4<u32>(32u)), vec4<i32>(-var_0, -1i, ~(i32(-1i) * -2147483647i), -10554i & _wgslsmith_dot_vec3_i32(vec3<i32>(-41802i, 2147483647i, u_input.a.x), u_input.c.yxx))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1254f + -162f) * _wgslsmith_f_op_f32(trunc(941f))) * _wgslsmith_f_op_f32(func_1(vec2<u32>(62280u, 12693u)))), _wgslsmith_f_op_f32(-982f - 316f), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, ~1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-462f)), _wgslsmith_f_op_f32(f32(-1f) * -701f))));
}

