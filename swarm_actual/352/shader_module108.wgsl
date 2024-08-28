struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = u_input.a;
    let var_1 = u_input.b.x;
    var_0 = u_input.a;
    let var_2 = arg_0.d;
    var_0 = u_input.a;
    return max(vec3<u32>(29942u, var_2.a, ~(4294967295u | u_input.b.x)), vec3<u32>(4294967295u, 1u, arg_0.c.a));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_div_u32(36293u, u_input.b.x));
    var var_1 = vec2<bool>(arg_1, all(vec2<bool>(arg_1, arg_1)));
    return select(vec2<bool>(false, true), select(select(vec2<bool>(false || var_1.x, any(vec2<bool>(var_1.x, false))), select(vec2<bool>(arg_1, false), !vec2<bool>(true, var_1.x), false), vec2<bool>(true, true)), !select(select(vec2<bool>(arg_1, var_1.x), vec2<bool>(arg_1, true), false), vec2<bool>(var_1.x, arg_1), arg_1), select(vec2<bool>(true, true), vec2<bool>(true || arg_1, u_input.b.x < 45404u), select(!vec2<bool>(false, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(true, false), vec2<bool>(false, var_1.x)), 2147483647i == arg_2.x))), select(!select(select(vec2<bool>(true, arg_1), vec2<bool>(false, var_1.x), true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(arg_1, var_1.x)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, false), vec2<bool>(arg_1, var_1.x), arg_1)), true), any(vec3<bool>(arg_1, arg_1, !var_1.x))));
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(func_2(Struct_2(vec2<f32>(arg_0.a.x, 617f), arg_0.b, Struct_1(0u), Struct_1(arg_0.e.a), Struct_1(2150u))), vec3<u32>(_wgslsmith_mod_u32(arg_0.c.a, 14092u), ~6438u, abs(44754u))));
    var_0 = ~(~_wgslsmith_div_u32(4294967295u, ~u_input.b.x));
    var var_1 = arg_0.e;
    var var_2 = arg_0.a.x;
    var_0 = var_1.a;
    return ~(~select(u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 54428u), countOneBits(u_input.b)), select(func_3(0u, true, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b << (vec2<u32>(9784u, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, u_input.b.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(26822u, 0u), func_1(Struct_2(vec2<f32>(258f, -908f), Struct_1(u_input.b.x), Struct_1(0u), Struct_1(u_input.b.x), Struct_1(4294967295u)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-102f, 974f), vec2<f32>(-1444f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, 1537f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-626f, -968f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2056f, -897f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-699f, 481f), vec2<f32>(1296f, -332f), true)))), Struct_1(firstLeadingBit(~3222u << (min(38094u, 0u) % 32u))), Struct_1(~max(0u, ~u_input.b.x)), Struct_1(~307u), Struct_1(countOneBits(func_1(Struct_2(vec2<f32>(-1000f, 1037f), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u))).x)));
    var var_2 = ~(_wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), u_input.a) ^ reverseBits(vec4<i32>(-2147483647i, 59709i, u_input.c, -1i) & ~vec4<i32>(u_input.c, -2147483647i, u_input.a.x, u_input.c)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 654f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, 1000f))), false))), Struct_1(~(~57777u)), Struct_1(abs(~(var_1.e.a ^ 4294967295u))), Struct_1(u_input.b.x << (~4294967295u % 32u)), Struct_1(19976u));
    var var_4 = 480f;
    var_2 = u_input.a;
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(254f, var_3.a.x, -631f, 456f) * vec4<f32>(-173f, var_3.a.x, 485f, 120f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, var_1.a.x, var_3.a.x, 1321f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1167f, var_1.a.x, 1000f, -1467f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 909f, 1936f, var_3.a.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(-628f, -222f, 1178f, var_3.a.x), vec4<f32>(var_3.a.x, var_3.a.x, 357f, 1128f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(151f, -1118f, var_3.a.x, -1019f) - vec4<f32>(628f, 356f, 591f, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1641f, -680f, var_1.a.x, var_3.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(55855u, var_2.x, vec3<u32>(~(var_1.c.a >> (select(var_3.e.a, 4294967295u, true) % 32u)), ~var_1.c.a, ~var_3.d.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x * var_5.x) * _wgslsmith_f_op_f32(var_3.a.x + var_3.a.x)), -473f)));
}

