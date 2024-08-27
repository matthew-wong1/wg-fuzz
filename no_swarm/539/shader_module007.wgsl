struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> u32 {
    return 14704u;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2.b.a, arg_2.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(abs(27460u)), 18104u, arg_2.c, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.c.x, u_input.c), arg_2.e.xy), vec2<u32>(u_input.c, u_input.d.x))), abs(vec4<u32>(1u, 37981u, func_2(), u_input.c))));
    let var_1 = abs(75745u);
    return Struct_4(Struct_1(~arg_2.b.a, _wgslsmith_f_op_vec4_f32(-arg_2.b.b), abs(vec2<u32>(var_1, u_input.c)), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.d, 20830i, -15025i, -1424i), vec4<i32>(arg_2.b.d, u_input.b.x, 61463i, arg_2.b.d)), _wgslsmith_div_i32(u_input.b.x, u_input.a)), u_input.a)), abs(13i), Struct_3(vec3<u32>(~firstLeadingBit(arg_2.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_2.b.c.x), vec2<u32>(0u, 24878u)), 49211u), arg_2.b, var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d - vec3<f32>(arg_3, arg_2.b.b.x, arg_2.d.x)))), vec3<u32>(_wgslsmith_div_u32(92946u, 1u), _wgslsmith_clamp_u32(0u, ~4294967295u, ~25212u), _wgslsmith_dot_vec3_u32(arg_2.e, vec3<u32>(arg_2.b.a.x, 56128u, var_0.x)))), arg_2);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(~arg_2, vec3<u32>(u_input.d.x, arg_2.x, 22900u));
    let var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(-arg_1.b.x)), all(arg_1.c.yy), Struct_3(var_0, arg_0.a, u_input.d.x | ~var_0.x, arg_0.c.d, vec3<u32>(30658u, 1u ^ min(u_input.c, 4294967295u), abs(~1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, arg_0.a.b.x) + arg_0.c.d.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), arg_0.c.d.x))).d.b;
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.d.yz * vec2<f32>(var_1.b.x, 285f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.b.yw, var_1.b.zw, vec2<bool>(true, arg_1.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1606f, var_1.b.x) - vec2<f32>(-336f, -1683f)))) * arg_1.a.yy), false, arg_0.c, _wgslsmith_f_op_f32(min(589f, 1021f)));
    var var_3 = arg_0;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(min(var_3.d.b.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.b.x, var_2.d.b.b.x, var_1.b.x, 848f), vec4<f32>(arg_1.a.x, arg_0.c.d.x, arg_0.a.b.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c.b.b)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.b.b.x)) - _wgslsmith_f_op_f32(-var_3.c.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.a.b.x))))), 2015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f * arg_1.b.x) * -1201f) - _wgslsmith_f_op_f32(arg_1.a.x + 1000f))), arg_1.c, arg_1.c.xy);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1238f)) + 1257f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f * -421f))), -547f, _wgslsmith_f_op_f32(ceil(-690f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(293f)), _wgslsmith_f_op_f32(f32(-1f) * -1102f), -2272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-692f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(312f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 989f, _wgslsmith_f_op_f32(sign(1832f))) + vec4<f32>(-313f, _wgslsmith_f_op_f32(213f + -387f), -1225f, _wgslsmith_div_f32(-1163f, 1264f)))), vec3<bool>(true, true, true), vec2<bool>(true, false));
    var var_1 = ~(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -27926i) | (-vec4<i32>(1i, -8789i, u_input.b.x, -2335i) ^ vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))) << (~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, u_input.c, 22343u), ~u_input.d.x), u_input.d.x, u_input.d.x, ~4294967295u) % vec4<u32>(32u));
    var var_2 = Struct_1(vec4<u32>(u_input.c, 4294967295u, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(25673u, u_input.d.x, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 42936u, 69669u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.d.x, u_input.c)), ~vec3<u32>(u_input.c, 1u, 1u))), _wgslsmith_mult_u32(func_3(func_1(vec2<f32>(-1455f, -1162f), true, Struct_3(vec3<u32>(u_input.d.x, 4294967295u, u_input.c), Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 2385u), vec4<f32>(420f, var_0.a.x, -882f, 1434f), vec2<u32>(u_input.d.x, u_input.c), u_input.b.x), 0u, vec3<f32>(var_0.b.x, var_0.a.x, var_0.b.x), vec3<u32>(u_input.c, u_input.c, 79048u)), var_0.a.x), var_0, vec3<u32>(u_input.c, u_input.d.x, 4294967295u)), 0u)), _wgslsmith_f_op_vec4_f32(-var_0.a), vec2<u32>(firstTrailingBit(u_input.c << (abs(u_input.c) % 32u)), u_input.d.x), -u_input.b.x);
    var var_3 = Struct_1(vec4<u32>(~1u, u_input.d.x, 4294967295u, ~39537u & min(var_2.c.x, 4294967295u)) | vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, 45698u), var_2.a.wz), _wgslsmith_mult_u32(u_input.c, u_input.c)), ~var_2.c.x, ~u_input.d.x, _wgslsmith_mult_u32(1u, 0u)), _wgslsmith_f_op_vec4_f32(exp2(var_0.a)), vec2<u32>(var_2.c.x, select(_wgslsmith_add_u32(1u, ~64410u), ~(~4468u), -666i > _wgslsmith_add_i32(-43442i, var_1.x))), _wgslsmith_mod_i32(61961i, var_2.d));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yxx, select((vec3<u32>(u_input.d.x, 11158u, var_3.c.x) | var_2.a.zzz) ^ (firstLeadingBit(vec3<u32>(u_input.d.x, 4294967295u, 33243u)) & vec3<u32>(0u, 27617u, 0u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 21827u, 7920u) | var_2.a.yzx, var_2.a.www >> (vec3<u32>(0u, 7742u, var_3.a.x) % vec3<u32>(32u))), any(var_4.c.zx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_3.b.x, var_3.b.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_2.b.x, -573f, -484f)), select(select(vec4<bool>(true, true, var_0.c.x, var_4.c.x), vec4<bool>(false, var_4.d.x, var_4.d.x, var_0.d.x), false), select(vec4<bool>(false, var_4.c.x, var_4.c.x, true), vec4<bool>(var_0.d.x, false, false, var_4.c.x), vec4<bool>(false, false, var_4.c.x, false)), select(vec4<bool>(var_0.c.x, true, false, var_0.d.x), vec4<bool>(var_4.c.x, false, var_0.d.x, var_0.d.x), var_0.d.x))))), var_3.b);
}

