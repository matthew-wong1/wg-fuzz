struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_i32(min(-(-44119i ^ _wgslsmith_mult_i32(u_input.a.x, -43790i)), u_input.c), arg_1);
    var var_1 = _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(~(-3132i) << (~u_input.b % 32u), u_input.a.x), -51641i));
    var var_2 = arg_2.yy;
    let var_3 = Struct_2(0i, u_input.d, Struct_1(vec4<i32>(min(-22041i << (u_input.b % 32u), arg_1), _wgslsmith_mult_i32(1i, var_0), _wgslsmith_clamp_i32(-4083i, -22757i, 0i) ^ _wgslsmith_sub_i32(arg_1, arg_0), arg_1), false), arg_0);
    var_1 = _wgslsmith_dot_vec2_i32(u_input.d.zz, ~max(vec2<i32>(0i, 2147483647i | u_input.d.x), var_3.b.yy));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3654f, -1751f, -1206f))))))));
}

fn func_2(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(f32(-1f) * -1236f)))), -1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1125f, 196f, arg_0.x)) - _wgslsmith_f_op_f32(select(108f, -1000f, arg_0.x))) + _wgslsmith_f_op_f32(-1f))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, -u_input.c, 1i), vec4<i32>(31534i, -22828i, -19969i, -18406i) | vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.d.x)), arg_0.x), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.c, u_input.a.x >> (u_input.b % 32u)), min(u_input.d.x, u_input.c)), u_input.b, true, vec3<u32>(110376u, max(~(~u_input.b), u_input.b), max(~u_input.b, 0u)));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1000f, 621f), vec3<f32>(var_0.x, 1000f, var_0.x))) - _wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, var_1.a.a.x ^ -2147483647i, vec4<bool>(arg_0.x, var_1.d, true, arg_0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1271f, 1647f, 883f)))))));
    let var_2 = Struct_4(Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-8784i, var_1.b, 1i), -u_input.c, select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), u_input.d.xz), var_1.a.b), var_1.b), select(!select(true, arg_0.x, var_1.a.b), true, true)), -56430i, select(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(~u_input.b, ~65098u)), countOneBits(_wgslsmith_sub_u32(28558u, u_input.b) | ~85384u), arg_0.x), !arg_0.x, var_1.e);
    return !vec2<bool>(var_1.d, (u_input.c <= 43615i) | (!arg_0.x & true));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = !select(select(!vec2<bool>(true, arg_0.c.b), !func_2(vec3<bool>(arg_0.c.b, false, true)), select(vec2<bool>(true, false), vec2<bool>(arg_0.c.b, false), vec2<bool>(false, arg_0.c.b))), func_2(!(!vec3<bool>(true, arg_0.c.b, false))), vec2<bool>(func_2(vec3<bool>(arg_0.c.b, true, false)).x, true));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-303f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-216f + 744f) * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(2147483647i, -47792i, vec4<bool>(var_0.x, true, arg_0.c.b, arg_0.c.b))).x, -490f))));
    let var_2 = Struct_4(arg_0.c, select(u_input.c, -(~abs(u_input.c)), true), 4294967295u, !(!arg_0.c.b), vec3<u32>(u_input.b, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 45159u, u_input.b), ~vec3<u32>(45309u, 45146u, u_input.b))), u_input.b));
    var_1 = _wgslsmith_f_op_f32(trunc(1018f));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(f32(-1f) * -106f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -653f), -469f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f + -1172f) * 907f));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f * -604f) - -3154f);
    var var_1 = 23630i;
    let var_2 = Struct_4(func_1(Struct_2(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(116i, u_input.c, u_input.c, u_input.d.x), u_input.a), select(u_input.d.x, 3512i, false)), u_input.a.yyz, Struct_1(u_input.a, any(vec2<bool>(false, false))), ~1i ^ u_input.a.x)), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~49813u, 47029u), reverseBits(~vec2<u32>(38889u, u_input.b))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(1u, u_input.b, 48409u)), vec3<u32>(u_input.b, u_input.b, 4294967295u) & vec3<u32>(4294967295u, u_input.b, u_input.b)), firstLeadingBit(u_input.b))), func_2(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).x, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(49502u, 4294967295u, u_input.b), vec3<u32>(u_input.b, 70146u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 3185u))) >> (max(~vec3<u32>(23130u, u_input.b, 0u) ^ ~vec3<u32>(u_input.b, u_input.b, u_input.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(77660u, u_input.b, 8047u), vec3<u32>(1u, u_input.b, u_input.b))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1149f, 829f, 1000f, -350f), vec4<f32>(-708f, 1000f, 521f, 1033f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(436f, 1232f, 1000f, 982f), vec4<f32>(-1892f, -421f, 260f, -224f)))));
}

