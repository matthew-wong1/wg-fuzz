struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1980f))) + _wgslsmith_f_op_f32(floor(-411f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -620f)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2476f), 685f, arg_0.b.c.x & false)) * -1359f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1637f))), _wgslsmith_f_op_f32(-1022f - -1073f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(335f)), _wgslsmith_f_op_f32(round(1462f)), arg_1.d)) - -2741f))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(arg_1.a.x, arg_3.b.a.x, 0u), ~vec3<u32>(36809u, 1u, arg_2.x), arg_0.b.c.x), countOneBits(abs(arg_2))), u_input.a, arg_2), arg_1.b, arg_1.c, all(arg_1.c));
    return -371i;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(min(_wgslsmith_mod_i32(2147483647i, arg_0.b), abs(~u_input.c)), -reverseBits(func_3(Struct_2(arg_0.b, Struct_1(u_input.a, 1i, vec4<bool>(false, arg_0.d, true, false), true)), Struct_1(vec3<u32>(0u, arg_0.a.x, arg_0.a.x), 1875i, arg_0.c, false), u_input.a, Struct_2(u_input.c, Struct_1(vec3<u32>(6328u, 1u, u_input.d), 23603i, arg_0.c, false)))), -6135i));
    let var_1 = select(arg_0.c, !select(!arg_0.c, arg_0.c, any(vec2<bool>(false, false))), vec4<bool>(true, arg_0.c.x, 1i == u_input.b.x, true));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f), -949f);
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, firstTrailingBit(~0u), u_input.d, _wgslsmith_div_u32(arg_0.a.x | u_input.a.x, arg_0.a.x)), vec4<u32>(u_input.d, ~_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(u_input.d, arg_0.a.x, 4294967295u)), u_input.d | 87129u, 74319u)) >> (_wgslsmith_mult_vec4_u32(abs(min(vec4<u32>(u_input.d, 1u, 0u, arg_0.a.x), vec4<u32>(u_input.a.x, 1122u, u_input.d, arg_0.a.x)) ^ (vec4<u32>(4294967295u, arg_0.a.x, 0u, 4294967295u) >> (vec4<u32>(0u, u_input.d, 39382u, 109535u) % vec4<u32>(32u)))), firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, arg_0.a.x), vec4<u32>(arg_0.a.x, 100691u, u_input.d, 1u)))) % vec4<u32>(32u));
    var var_3 = ~min(vec4<u32>(arg_0.a.x, arg_0.a.x, ~arg_0.a.x, ~4599u), var_2);
    return -1125f;
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f + 118f)) - 1f)), abs(_wgslsmith_mod_u32(~u_input.d, 4294967295u)) < firstLeadingBit(_wgslsmith_div_u32(~u_input.d, u_input.a.x))));
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-541f)) - _wgslsmith_f_op_f32(f32(-1f) * -386f)), 1376f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, 1989f)) + vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a, 2147483647i, vec4<bool>(true, true, true, false), true))), _wgslsmith_f_op_f32(f32(-1f) * -903f)))));
    var var_1 = all(!(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), true)));
    let var_2 = Struct_2(u_input.b.x, Struct_1(firstLeadingBit(~countOneBits(vec3<u32>(5135u, u_input.d, u_input.d))), 2147483647i, vec4<bool>(true, true, !all(vec3<bool>(false, true, false)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true))), var_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 760f) + -471f)));
    var var_3 = Struct_1(~vec3<u32>(35783u, ~(~36826u), 33792u), ~(-1i), var_2.b.c, true);
    return var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2063f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -613f), 713f, 0u <= u_input.d)) - _wgslsmith_f_op_f32(f32(-1f) * -633f))));
    global0 = 215f;
    var var_0 = Struct_1(select(vec3<u32>(~countOneBits(u_input.a.x), u_input.a.x, u_input.a.x), ~u_input.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), u_input.b.x < u_input.b.x), vec3<bool>(true, false, true))), u_input.c, vec4<bool>(true, true, true, true), func_1());
    let var_1 = Struct_2(-2147483647i, Struct_1(u_input.a, reverseBits(~max(21150i, -17095i)), var_0.c, select(true, all(var_0.c.zww), var_0.d)));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4128u, var_1.b.a.x, 1u, 63671u) ^ vec4<u32>(u_input.d, 45070u, 38200u, u_input.d), vec4<u32>(u_input.d, var_1.b.a.x, 59750u, var_1.b.a.x)), ~1u, _wgslsmith_div_u32(u_input.d, ~var_0.a.x)), ~u_input.a.x | var_1.b.a.x), 1u | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, var_1.b.a.x, u_input.a.x), ~var_0.a), var_0.a));
    var_0 = var_1.b;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1352f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f) - _wgslsmith_f_op_f32(f32(-1f) * -628f)), _wgslsmith_f_op_f32(f32(-1f) * -519f))))));
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(~(~u_input.a), select(_wgslsmith_sub_vec3_u32(~u_input.a, abs(var_0.a)), ~select(var_0.a, var_1.b.a, true), vec3<bool>(var_0.b >= var_1.a, all(var_1.b.c.zzx), var_1.b.d))), -max((var_1.a << (35179u % 32u)) >> (abs(4294967295u) % 32u), ~u_input.b.x >> (abs(1u) % 32u)), !(!vec4<bool>(var_0.b >= var_1.b.b, !var_1.b.c.x, true, all(var_0.c.zzw))), select(true, !select(true, var_0.d && var_1.b.c.x, !var_1.b.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(615f)), -159f)) == -1168f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.a.x, var_2.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f + -496f) + 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 1085f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, -417f)) + _wgslsmith_div_vec2_f32(vec2<f32>(2182f, -472f), vec2<f32>(-868f, 869f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 331f) + vec2<f32>(674f, -1779f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, -883f)), !var_0.d)), all(vec3<bool>(var_0.c.x, var_1.b.d, true))))));
}

