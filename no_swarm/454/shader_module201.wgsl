struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    return Struct_4(1141f);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    let var_0 = vec3<i32>(arg_0.x, -(~arg_0.x), ~21644i) >> (vec3<u32>(_wgslsmith_mult_u32(select(~3990u, arg_1 >> (15933u % 32u), true), 0u), 4294967295u, 1u) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f), -163f);
    let var_2 = func_2(vec4<bool>(!((arg_1 >= arg_1) & (4294967295u < arg_1)), -23595i > arg_0.x, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)))).a;
    var var_3 = Struct_5(u_input.a, u_input.b.x, vec2<f32>(1f, 1f));
    return true;
}

fn func_1() -> u32 {
    var var_0 = func_2(select(vec4<bool>(false, true, (u_input.c.x > 32518u) && true, true), !vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec2<bool>(false, true)), true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(sign(1715f)) < -1178f, true, (-10645i << (u_input.c.x % 32u)) == min(-2147483647i, u_input.d))));
    var_0 = Struct_4(var_0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, var_0.a, -990f, -652f)) * vec4<f32>(var_0.a, var_0.a, -382f, -1040f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-945f, 610f, 264f, 1171f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, 370f, var_0.a, var_0.a))))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), -1000f, _wgslsmith_div_f32(var_0.a, var_0.a), -895f)))), ((696f < _wgslsmith_f_op_f32(var_0.a - -1000f)) != any(vec3<bool>(true, true, true))) && !func_3(_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, u_input.d)), u_input.a)));
    var_0 = Struct_4(1000f);
    var_0 = func_2(vec4<bool>(true, true, true, true));
    return _wgslsmith_add_u32(1u & firstLeadingBit(u_input.c.x), u_input.c.x ^ 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(countOneBits(~(4294967295u & u_input.a) | 1u), 0u, u_input.a, ~1u);
    var var_1 = ~countOneBits(func_1());
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-823f - 811f) + _wgslsmith_f_op_f32(f32(-1f) * -242f)) - 851f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -779f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-185f, -468f)) + _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -560f)))), -1661f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-658f, 1178f, 790f, -229f), vec4<f32>(-514f, 157f, 157f, 1000f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(313f, -1205f, -404f, 213f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1677f, 784f, 829f, 278f) * vec4<f32>(379f, 1510f, -1203f, -430f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, -549f, 1000f, 1200f)))))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(1012f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))))));
    var var_4 = Struct_5(4294967295u, 9889i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x))), -874f));
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.x - var_2.x) + -1990f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~33893u, 0u, ~var_4.a | var_4.a));
}

