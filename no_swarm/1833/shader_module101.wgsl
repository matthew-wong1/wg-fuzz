struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    let var_0 = !(!vec2<bool>(!(arg_0.e > 1i), (0u == arg_0.a.x) || (-2415f > arg_1.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)));
    var var_2 = max(-(arg_0.c << (38977u % 32u)), arg_0.e);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x)))), arg_1.x);
    return abs(_wgslsmith_clamp_u32(94481u, 0u, arg_0.d));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = arg_0.b.b;
    var_0 = arg_0.b.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-245f, -241f), _wgslsmith_f_op_f32(307f + 1000f))), 1f, _wgslsmith_f_op_f32(ceil(-1049f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-253f, 874f, 1064f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-260f, -1237f, 1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, 402f, -1776f))))), false));
    var var_2 = u_input.b;
    let var_3 = 13741u >> (u_input.c.x % 32u);
    return abs(func_2(arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 1017f)))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = Struct_2(0u, arg_2.b, var_0.c & vec3<u32>(_wgslsmith_sub_u32(4294967295u, ~29032u), 54951u, arg_1.x), any(!var_0.b.b));
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = arg_2;
    return var_1.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_4(abs(func_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ u_input.c, select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true)), 67453i, _wgslsmith_mult_u32(u_input.d.x, 32563u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -4790i), vec2<i32>(1i, 0i))), vec4<f32>(_wgslsmith_f_op_f32(step(1000f, 584f)), -2357f, _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(ceil(-514f))))), vec4<u32>(u_input.c.x, _wgslsmith_div_u32(~u_input.a, func_3(Struct_2(u_input.c.x, Struct_1(vec3<u32>(0u, u_input.b.x, 17435u), vec2<bool>(arg_0, true), 1i, u_input.d.x, 833i), vec3<u32>(4294967295u, u_input.d.x, 15913u), false), all(vec4<bool>(arg_0, false, false, arg_0)))), u_input.d.x, ~countOneBits(~u_input.b.x)), Struct_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x >> (7278u % 32u), 15807u), _wgslsmith_mult_u32(u_input.c.x, ~1u)), Struct_1(u_input.c, vec2<bool>(true, true), -1i, 0u, select(1i, ~(-5662i), false)), reverseBits(~select(u_input.d, u_input.b.xyy, arg_0)), false | any(vec4<bool>(arg_0, false, false, true))));
    let var_1 = Struct_2(select(~var_0.a.x, abs(~55015u), arg_0 != arg_0), func_4(u_input.d.x, u_input.b, Struct_2(~u_input.c.x, func_4(~var_0.d, _wgslsmith_div_vec4_u32(u_input.b, u_input.b), Struct_2(0u, var_0, u_input.d, true)), var_0.a, arg_0)), _wgslsmith_sub_vec3_u32(firstLeadingBit(select(_wgslsmith_sub_vec3_u32(u_input.b.xwy, vec3<u32>(16740u, var_0.d, u_input.a)), ~u_input.d, all(vec3<bool>(true, arg_0, arg_0)))), ~vec3<u32>(0u >> (var_0.d % 32u), u_input.b.x, max(u_input.c.x, var_0.d))), true);
    let var_2 = var_0.b.x;
    var var_3 = -1576f;
    var_3 = _wgslsmith_f_op_f32(select(-1081f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1879f, _wgslsmith_f_op_f32(floor(-285f)))))), !var_0.b.x));
    return Struct_1(func_4(~(31066u >> (var_1.a % 32u)) | ~var_0.d, vec4<u32>(_wgslsmith_clamp_u32(4294967295u << (var_0.a.x % 32u), func_3(Struct_2(var_0.d, var_0, var_1.b.a, true), true), 4294967295u), var_0.a.x, u_input.b.x, ~(~var_1.c.x)), Struct_2(func_4(u_input.a >> (u_input.b.x % 32u), vec4<u32>(39141u, u_input.b.x, var_1.c.x, var_1.c.x), Struct_2(u_input.b.x, Struct_1(u_input.b.yxx, vec2<bool>(true, var_1.b.b.x), 1i, 1u, var_0.e), vec3<u32>(4294967295u, 1u, 4294967295u), true)).a.x, var_0, ~vec3<u32>(var_1.c.x, var_0.d, 4294967295u), !var_0.b.x)).a, !var_0.b, ~(~0i), ~abs(u_input.c.x), 1i);
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = !select(!(!vec3<bool>(arg_0.b.x, false, true)), vec3<bool>(arg_0.b.x, true, false), vec3<bool>(false, !(!arg_0.b.x), func_4(1920u, u_input.b, Struct_2(arg_0.a.x, Struct_1(vec3<u32>(u_input.b.x, 4294967295u, 59076u), arg_0.b, 2147483647i, arg_0.d, arg_0.c), vec3<u32>(54792u, 0u, u_input.c.x), arg_0.b.x)).a.x >= u_input.b.x));
    let var_1 = arg_0.a.zx;
    let var_2 = _wgslsmith_f_op_f32(1282f * _wgslsmith_f_op_f32(min(-520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1665f)), 824f, arg_0.b.x))))));
    let var_3 = arg_0;
    var var_4 = Struct_2(arg_0.d, Struct_1(var_3.a, vec2<bool>(all(select(vec4<bool>(true, false, var_0.x, arg_0.b.x), vec4<bool>(var_3.b.x, arg_0.b.x, false, var_0.x), false)), true), arg_0.e, func_4(~(~1u), ~select(vec4<u32>(u_input.a, arg_0.d, 11369u, 1u), vec4<u32>(0u, u_input.c.x, 1u, arg_0.a.x), vec4<bool>(var_3.b.x, true, var_0.x, arg_0.b.x)), Struct_2(max(var_3.a.x, arg_0.a.x), func_4(var_3.a.x, u_input.b, Struct_2(var_3.a.x, arg_0, arg_0.a, false)), vec3<u32>(var_1.x, 50239u, 63642u), all(vec3<bool>(false, var_3.b.x, arg_0.b.x)))).a.x, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-5079i, var_3.c), vec2<i32>(arg_0.c, arg_0.e)), 2147483647i))), ~vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, countOneBits(0u)), 0u, _wgslsmith_clamp_u32(12357u, 5348u, firstTrailingBit(4294967295u))), func_4(~(~1u), ~_wgslsmith_clamp_vec4_u32(~u_input.b, ~vec4<u32>(var_1.x, 81442u, var_1.x, 1u), ~u_input.b), Struct_2(1u, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d, var_1.x, 47407u), vec3<u32>(58763u, 36093u, var_3.d)), var_3.b, _wgslsmith_mult_i32(arg_0.e, arg_0.e), max(23301u, arg_0.a.x), _wgslsmith_mult_i32(-2147483647i, var_3.c)), ~select(arg_0.a, vec3<u32>(109819u, u_input.a, 14194u), vec3<bool>(false, true, true)), true)).b.x);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(2096f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f * 933f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-712f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1701f + -1556f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1134f)) * 1f)), true)));
    let var_2 = vec3<bool>(!any(vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), true, all(func_5(func_1(any(vec4<bool>(true, true, false, true))))));
    let var_3 = ~u_input.c.yz;
    var var_4 = _wgslsmith_mult_i32(~(-1i), 12915i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(1i, min(1i, -(~(-21027i)))), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_3.x), vec2<u32>(1u, 1u)), ~0u), ~func_1(true).a.xz);
}

