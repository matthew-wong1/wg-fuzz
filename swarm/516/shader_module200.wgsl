struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    let var_0 = vec3<bool>(!any(select(select(vec3<bool>(false, true, arg_3.b.a), vec3<bool>(arg_1, arg_3.a.a, arg_3.b.a), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), arg_1)), true & all(vec4<bool>(all(vec2<bool>(arg_1, false)), all(vec3<bool>(false, arg_3.a.a, false)), false, all(vec2<bool>(true, arg_3.b.a)))), arg_1);
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(5715u, u_input.a.x, arg_3.a.c, 23753u), vec4<bool>(true, arg_1, true, true))), ~u_input.a), _wgslsmith_div_u32(arg_3.b.c, (arg_3.b.c ^ arg_0) ^ 1u), 1u), arg_3.a.e.x, !vec3<bool>(false, _wgslsmith_add_u32(arg_3.b.c, 0u) >= (1u >> (arg_0 % 32u)), true), vec2<bool>(var_0.x || select(var_0.x && true, any(var_0), false || arg_3.a.a), true), _wgslsmith_clamp_i32(2147483647i, -2147483647i, _wgslsmith_mod_i32(min(arg_2.a, -arg_2.a), -arg_3.c.x)));
    var_1 = Struct_2(~((vec3<u32>(1477u, 1u, u_input.a.x) ^ select(var_1.a, u_input.a.yyy, vec3<bool>(var_1.c.x, true, true))) << (u_input.a.zwx % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(641f)), _wgslsmith_f_op_f32(max(arg_3.b.d, arg_3.b.e.x)))) * var_1.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(157f + var_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-275f, arg_3.b.d) + _wgslsmith_f_op_f32(f32(-1f) * -464f)))), select(var_0, select(vec3<bool>(arg_3.a.a, any(var_0.xx), false), vec3<bool>(any(vec3<bool>(var_1.c.x, arg_3.a.a, true)), arg_1, !arg_1), true), var_0), var_0.zy, ~abs(reverseBits(~var_1.e)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b.d * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.e.x)))))));
    var var_3 = arg_3.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1030f));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1833f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(~30583u, true, Struct_5(arg_0.x), Struct_4(Struct_1(true, vec3<i32>(-20677i, 30063i, arg_0.x), u_input.a.x, -1597f, vec4<f32>(-1489f, -1000f, 256f, -985f)), Struct_1(false, arg_0.wwy, 32821u, -439f, vec4<f32>(825f, -1381f, 1201f, -771f)), vec3<i32>(arg_0.x, 40381i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 1i)))), -486f)))));
    return u_input.a.x;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~(92442u & arg_0.x), 19604u), _wgslsmith_clamp_u32(func_2(vec4<i32>(0i, -22135i >> (u_input.a.x % 32u), ~(-53287i), 1i)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.zw, vec2<u32>(arg_0.x, arg_0.x)), 4294967295u, ~u_input.a.x), ~select(arg_0.zwy, u_input.a.zyz, vec3<bool>(false, false, false))), func_2(~(vec4<i32>(1244i, -2147483647i, 32056i, 1i) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u) % vec4<u32>(32u))))));
    let var_1 = Struct_1(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))) & any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))), _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1242i, 35717i), vec2<i32>(730i, 2147483647i)), _wgslsmith_clamp_i32(9772i, -1i, -14090i), 1i), vec3<i32>(~_wgslsmith_sub_i32(1i, 16687i), _wgslsmith_div_i32(~1i, select(-8538i, 58806i, true)), -29460i)), _wgslsmith_dot_vec3_u32(vec3<u32>(19761u, 4294967295u, _wgslsmith_add_u32(1u, ~42029u)), reverseBits(u_input.a.wxw)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(215f * 1464f), -332f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1535f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1029f + -493f))), _wgslsmith_f_op_f32(select(-604f, _wgslsmith_f_op_f32(ceil(-169f)), all(vec2<bool>(true, false)))), _wgslsmith_div_f32(371f, _wgslsmith_f_op_f32(925f + 707f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(116f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_div_f32(-177f, 302f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, 1462f, 1881f, -487f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -1124f, 799f, 259f)))))))));
    var var_2 = Struct_5(-2147483647i);
    var var_3 = reverseBits(~(vec2<u32>(46082u, 0u) ^ abs(arg_0.zw >> (u_input.a.yx % vec2<u32>(32u)))));
    var var_4 = max(arg_0.x, ~reverseBits(~_wgslsmith_div_u32(0u, 4294967295u)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -205f)));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(-58047i, -22169i) << (func_1(vec4<u32>(u_input.a.x, u_input.a.x, 7392u, u_input.a.x)) % 32u)), 1127i), firstLeadingBit(-8289i), -2433i);
    var var_2 = select(select(vec2<bool>(all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(928f - 534f) != _wgslsmith_f_op_f32(trunc(-227f))), !vec2<bool>(true, var_0 < 712f), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<bool>(true, true), true);
    var_1 = reverseBits(vec3<i32>(~_wgslsmith_mult_i32(var_1.x, abs(var_1.x)), 24187i, var_1.x));
    let var_3 = u_input.a.x;
    let var_4 = min(vec4<i32>(_wgslsmith_sub_i32(~(-44047i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 26457i), vec4<i32>(var_1.x, var_1.x, 6421i, var_1.x))), var_1.x, _wgslsmith_add_i32(var_1.x, var_1.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, u_input.a.x, var_3), vec3<u32>(u_input.a.x, 39371u, u_input.a.x)) % 32u), var_1.x), _wgslsmith_clamp_vec4_i32((vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) | vec4<i32>(var_1.x, 38956i, -1i, var_1.x)) | (vec4<i32>(var_1.x, 822i, var_1.x, -33033i) & vec4<i32>(var_1.x, var_1.x, var_1.x, -1i)), vec4<i32>(-2147483647i, 2147483647i, abs(var_1.x), firstLeadingBit(var_1.x)), vec4<i32>(var_1.x, var_1.x, _wgslsmith_div_i32(var_1.x, var_1.x), firstLeadingBit(var_1.x)))) ^ ~vec4<i32>(_wgslsmith_div_i32(var_1.x, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, -57133i, 2147483647i), vec4<i32>(-48735i, var_1.x, 0i, -42773i)) ^ min(20128i, var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 0i), var_1.xy ^ var_1.zy), abs(select(-1i, var_1.x, var_2.x)));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1204f, var_0) * vec2<f32>(1279f, 399f)))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(-1593f)), -120f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yyz, 364f, var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(692f + var_5.x), _wgslsmith_f_op_f32(var_0 + 1627f), _wgslsmith_f_op_f32(func_3(4294967295u, true, Struct_5(var_4.x), Struct_4(Struct_1(var_2.x, var_4.wxx, 54162u, 760f, vec4<f32>(541f, -1214f, -1000f, var_0)), Struct_1(var_2.x, var_4.www, var_3, 389f, vec4<f32>(var_5.x, var_5.x, var_5.x, -586f)), vec3<i32>(-1i, var_4.x, 1i), var_4))), var_5.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, 619f, -393f, var_5.x) + vec4<f32>(var_0, -835f, var_5.x, 465f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(40784u, any(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), Struct_5(1i), Struct_4(Struct_1(var_2.x, var_4.xyx, u_input.a.x, var_5.x, vec4<f32>(619f, var_5.x, 542f, var_0)), Struct_1(var_2.x, var_4.zwx, u_input.a.x, -537f, vec4<f32>(var_5.x, var_0, 1779f, var_0)), var_4.www, vec4<i32>(var_1.x, -59276i, var_4.x, 0i)))), var_5.x)));
}

