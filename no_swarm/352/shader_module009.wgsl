struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    return vec3<u32>(~min(_wgslsmith_add_u32(0u, 1u), 0u), 4294967295u, _wgslsmith_div_u32(firstLeadingBit(~(~15790u)), 26038u));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~(~0u), ~firstLeadingBit(0u), 18557u), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(922f, -200f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -943f), vec2<f32>(467f, 2095f), vec2<bool>(false, false)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1779f), vec3<f32>(-243f, -1088f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-571f + 1000f)))), var_0.x, 48858i, (var_0.x << (~(~var_0.x) % 32u)) | _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec2_u32(var_0.yx, var_0.zz) >> (var_0.x % 32u)));
    var var_2 = var_0.x >= var_1.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.xz)))));
    let var_4 = 1i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, var_1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 1497f) - var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.b.x))))))), abs(_wgslsmith_mod_u32(var_1.e, select(_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_mod_u32(0u, var_1.e), false))), 55372i, func_3(_wgslsmith_f_op_vec2_f32(var_3 - _wgslsmith_f_op_vec2_f32(-var_3))).x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~abs(~(~vec2<u32>(arg_0.e, 39917u) >> (max(vec2<u32>(0u, arg_0.c), vec2<u32>(13387u, 5361u)) % vec2<u32>(32u))));
    var var_1 = var_0.x;
    var_1 = arg_0.e << (func_3(arg_0.b.zz).x % 32u);
    var_1 = 0u;
    var_1 = ~var_0.x;
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1756f, -133f, false)), _wgslsmith_f_op_f32(-533f * arg_0.a))), _wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.b.x))), 0u, _wgslsmith_add_i32(_wgslsmith_add_i32(~firstTrailingBit(43267i), u_input.c), ~(firstTrailingBit(u_input.b.x) & arg_0.d)), ~_wgslsmith_div_u32(~(~62827u), 1u));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = func_4(func_2());
    var_1 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(-arg_0), true)), func_2().b, _wgslsmith_div_u32(8358u, 1u), var_1.d, firstTrailingBit(_wgslsmith_clamp_u32(var_1.c, var_1.c, 6449u)))));
    var var_2 = true;
    let var_3 = any(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))) | !(countOneBits(var_1.c) != countOneBits(_wgslsmith_clamp_u32(var_1.e, 1u, 1u)));
    return func_4(func_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2437f, -113f)))), vec3<f32>(328f, _wgslsmith_f_op_f32(-1313f * var_1.b.x), var_1.a), 0u >> (var_1.e % 32u), 38177i, 0u >> (1u % 32u))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2.d > 0i;
    let var_1 = u_input.b.yzw;
    let var_2 = arg_2;
    let var_3 = select((-_wgslsmith_clamp_i32(var_2.d, -6478i, 0i) ^ _wgslsmith_clamp_i32(2147483647i, -7417i, i32(-1i) * -46218i)) != var_2.d, var_0, true);
    var var_4 = _wgslsmith_f_op_vec2_f32(arg_1.b.yy + vec2<f32>(1329f, _wgslsmith_f_op_f32(-1161f + -1000f)));
    return func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f)))))));
}

fn func_6(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = select(!all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false), all(vec3<bool>(false, false, false)))), true, !(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))) | any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b, arg_0.e, abs(min(-1i, _wgslsmith_sub_i32(30578i, -u_input.d))), reverseBits(~26128u));
    var var_2 = var_1;
    var_2 = Struct_1(_wgslsmith_f_op_f32(var_2.a * var_1.b.x), vec3<f32>(-100f, _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * var_2.a) + -138f))), _wgslsmith_f_op_f32(-1169f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f + var_2.b.x)))), firstLeadingBit(~_wgslsmith_dot_vec3_u32(~vec3<u32>(55858u, var_2.c, var_1.e), ~vec3<u32>(62427u, var_1.e, 0u))), 1i, ~_wgslsmith_add_u32(var_2.e, var_2.e));
    let var_3 = var_1.b.zx;
    return firstLeadingBit(vec2<u32>(func_5(56838i & var_2.d, Struct_1(var_3.x, vec3<f32>(423f, 123f, 1537f), var_1.e, u_input.a.x, 0u), var_1, _wgslsmith_div_vec2_f32(vec2<f32>(321f, 492f), var_1.b.xy)).e, 1u)) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(88050u, _wgslsmith_sub_u32(var_2.c, 71970u)), ~(max(vec2<u32>(0u, var_1.e), vec2<u32>(var_1.e, 1u)) | vec2<u32>(arg_0.c, arg_0.c)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 28349u) ^ vec2<u32>(var_2.e, 13974u), vec2<u32>(1u, var_1.e) ^ vec2<u32>(1u, 903u), ~vec2<u32>(4294967295u, var_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(114895u, 5103u)), 16038u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), vec4<u32>(~13390u, ~21495u, ~0u, ~4294967295u))), 1u);
    var_0 = func_6(func_5(u_input.d, func_1(-1055f), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-782f, -358f)) + _wgslsmith_f_op_f32(f32(-1f) * -168f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, -557f)), _wgslsmith_div_vec2_f32(vec2<f32>(1401f, 1054f), vec2<f32>(-928f, 882f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1434f, -434f) - vec2<f32>(1313f, -131f))))));
    var_0 = ~(~(~(~(~vec2<u32>(7128u, 42435u)))));
    let var_1 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(f32(-1f) * -1797f), true)) * _wgslsmith_f_op_f32(f32(-1f) * -602f)))));
    var_0 = ~_wgslsmith_clamp_vec2_u32(func_6(var_1) << (~vec2<u32>(var_0.x, var_1.e) % vec2<u32>(32u)), func_3(vec2<f32>(_wgslsmith_f_op_f32(1764f - var_1.b.x), 270f)).yx, ~(~(~vec2<u32>(72275u, 4294967295u))));
    let var_2 = reverseBits(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, var_1.e, 56837u), ~var_1.e, ~var_1.e, var_0.x), ~abs(vec4<u32>(1u, var_1.e, 1u, 4294967295u)))));
    var var_3 = false;
    let var_4 = Struct_1(var_1.b.x, var_1.b, _wgslsmith_div_u32(var_1.c, ~_wgslsmith_clamp_u32(var_0.x >> (0u % 32u), 4294967295u, func_6(var_1).x)), select(~(~1i), func_2().d, false), var_0.x);
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2 >> ((~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.e, 1u, 15901u, 27923u), var_2) & countOneBits(vec4<u32>(var_1.e, var_1.e, var_0.x, 0u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(var_1.b.x * -1467f)))));
}

