struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(1u, 4294967295u, 1u, 0u, 63083u, 4294967295u, 4294967295u, 0u, 52363u, 6135u, 38856u, 15451u, 2370u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) - -1657f), _wgslsmith_f_op_f32(round(-952f)), u_input.c > (5183i >> ((global0[_wgslsmith_index_u32(1u, 13u)] ^ u_input.e.x) % 32u)))), 1000f, _wgslsmith_f_op_f32(ceil(1f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.b.yx), arg_0, vec4<bool>(true, true, true, true), vec4<bool>(var_0.x < _wgslsmith_f_op_f32(var_0.x - var_0.x), all(vec2<bool>(false, true)) && false, all(vec2<bool>(false, true)), true)));
    global0 = array<u32, 13>();
    var var_2 = !var_1.a.c;
    let var_3 = Struct_4(false);
    return max(~(0u >> (_wgslsmith_sub_u32(1u, ~4294967295u) % 32u)), ~0u);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(abs(u_input.e.x), 62408u), func_3(~(max(vec4<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 0u, u_input.d.x, global0[_wgslsmith_index_u32(120332u, 13u)]), vec4<u32>(0u, 40425u, 26434u, 55201u)) | ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], 30314u, 65579u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31948u, 13u)], 13u)]))), abs(1u), ~u_input.a.x << (select(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), u_input.e.x), all(vec2<bool>(true, true))) % 32u));
    var var_1 = Struct_4(true);
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(arg_1.x - arg_1.x);
    global0 = array<u32, 13>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1476f)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = ~reverseBits(firstTrailingBit(vec4<i32>(min(u_input.c, 3385i), firstTrailingBit(u_input.c), u_input.c >> (u_input.d.x % 32u), ~u_input.c)));
    global0 = array<u32, 13>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, 1145f, 327f), vec4<f32>(-1140f, 477f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 990f, arg_0)) - vec4<f32>(1000f, arg_0, arg_0, arg_0))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-1469f - -800f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f + 138f) - _wgslsmith_f_op_f32(948f * arg_0))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -2289f), _wgslsmith_f_op_f32(func_2(846f, vec2<f32>(776f, 1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -467f, arg_0, arg_0)))), true)))));
    let var_2 = -1i << (0u % 32u);
    var_0 = ~arg_1;
    return StorageBuffer(~0i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-1821f, vec4<i32>(37791i, (u_input.c | (i32(-1i) * -11360i)) & ~u_input.c, u_input.c, u_input.c));
}

