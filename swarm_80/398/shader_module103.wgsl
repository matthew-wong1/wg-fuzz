struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> Struct_1 {
    return arg_0.a;
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: i32) -> vec4<i32> {
    global0 = array<u32, 11>();
    global1 = !(!any(vec4<bool>(true, all(vec2<bool>(arg_1.c.a.x, arg_1.c.a.x)), true, arg_1.c.a.x)));
    var var_0 = arg_1.c.a.x;
    var_0 = true;
    var var_1 = Struct_2(arg_1.c.a);
    return vec4<i32>(-1i) * -u_input.d;
}

fn func_3(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = true && (false != any(vec4<bool>(true, all(vec3<bool>(true, false, true)), 0i >= u_input.d.x, u_input.a >= 1i)));
    var var_1 = -(-vec4<i32>(-2147483647i, u_input.d.x, arg_0.x, min(23931i, u_input.d.x)) >> (abs(~vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], 0u) | (vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 33309u) ^ vec4<u32>(1u, 4294967295u, 82634u, global0[_wgslsmith_index_u32(4294967295u, 11u)]))) % vec4<u32>(32u)));
    let var_2 = Struct_4(Struct_2(!select(select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, false), true), !vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, var_0, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-586f + _wgslsmith_f_op_f32(911f + _wgslsmith_div_f32(409f, -1356f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(401f)) - _wgslsmith_f_op_f32(1309f + 541f)))), ~19561u, ~(~(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(20932u, 11u)]) << (max(u_input.c, vec2<u32>(global0[_wgslsmith_index_u32(0u, 11u)], u_input.b)) % vec2<u32>(32u)))));
    var var_3 = false;
    return vec2<i32>(-_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d.yxx), ~u_input.d.yxx), -(~0i));
}

fn func_4(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_5(Struct_1(-1199f, firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(~12263u, 11u)], 18469u, 46215u ^ u_input.c.x, _wgslsmith_mod_u32(7337u, 2897u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-(~(-1i)), arg_0.x), vec2<i32>(arg_0.x, firstLeadingBit(~u_input.a))), Struct_2(vec3<bool>(any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, false, true)))));
    var var_1 = ~(-arg_0.x);
    var var_2 = var_0.a;
    let var_3 = -350f;
    var var_4 = var_0;
    return !var_4.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(func_2(-2013f, Struct_5(func_1(Struct_5(Struct_1(-547f, vec4<u32>(0u, 0u, u_input.c.x, 1u)), u_input.d.xy, Struct_2(vec3<bool>(true, true, false))), 599f), vec2<i32>(u_input.d.x, 2147483647i), Struct_2(vec3<bool>(true, true, false))), -1i)));
    var_0 = true;
    var_0 = !all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, _wgslsmith_f_op_f32(round(187f)) >= _wgslsmith_f_op_f32(-415f * 1481f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1376f + -1792f))), 521f));
    var_0 = (_wgslsmith_sub_u32(~u_input.c.x, 1u) << (_wgslsmith_mod_u32(abs(91823u) & u_input.b, ~func_1(Struct_5(Struct_1(var_1.x, vec4<u32>(61342u, global0[_wgslsmith_index_u32(22151u, 11u)], u_input.b, u_input.b)), vec2<i32>(-25599i, -2147483647i), Struct_2(vec3<bool>(false, false, false))), 697f).b.x) % 32u)) > (_wgslsmith_clamp_u32(~reverseBits(1u), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(26461u, 30107u, 46188u, u_input.c.x), vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63007u, 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], u_input.b)), 11u)], u_input.c.x) & 103001u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit((~vec3<u32>(10500u, 33964u, global0[_wgslsmith_index_u32(1u, 11u)]) | min(vec3<u32>(1u, 0u, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(6669u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 0u))) & ~(~vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(21892u, 11u)], u_input.c.x))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))))));
}

