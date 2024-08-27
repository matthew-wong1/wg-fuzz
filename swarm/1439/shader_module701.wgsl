struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(vec3<bool>(true, true, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(329f))))), Struct_1(false, ~_wgslsmith_mod_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), reverseBits(u_input.d.x), ~(vec3<u32>(u_input.a, 1u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -3079f), var_1.b);
    var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-499f, var_1.a)))), Struct_1(true, ~var_1.b.d.x, ~var_1.b.c, _wgslsmith_clamp_vec3_u32(var_1.b.d, ~vec3<u32>(1u, 0u, u_input.a), vec3<u32>(var_1.b.b, min(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(52163u, 29334u, u_input.a, u_input.a), vec4<u32>(83124u, var_1.b.b, var_1.b.d.x, var_1.b.b))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_1.a), var_1.b);
    return ~(~(-u_input.c.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    var var_0 = !vec2<bool>(arg_1.x, true);
    let var_1 = ~(vec2<i32>(~_wgslsmith_dot_vec4_i32(arg_3, arg_3), u_input.b.x) | ~vec2<i32>(func_3(), 1i));
    var_0 = !(!vec2<bool>(any(select(vec3<bool>(var_0.x, arg_1.x, false), vec3<bool>(false, true, var_0.x), vec3<bool>(arg_1.x, false, arg_0.a.x))), true));
    var_0 = !select(vec2<bool>(all(arg_0.a.xz), all(vec3<bool>(arg_1.x, true, var_0.x))), !(!select(arg_1.yz, arg_1.yz, vec2<bool>(var_0.x, arg_0.a.x))), (u_input.a & u_input.a) <= reverseBits(abs(4294967295u)));
    let var_2 = true;
    return max(~u_input.a, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, u_input.a, 14787u)) ^ (vec3<u32>(45439u, 1u, u_input.a) >> (~vec3<u32>(1u, 5195u, 67326u) % vec3<u32>(32u))), ~vec3<u32>(1u, u_input.a, u_input.a) ^ ~min(vec3<u32>(u_input.a, u_input.a, 100350u), vec3<u32>(24965u, 0u, u_input.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(538f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1427f)))) + -133f)));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-844f)))) - _wgslsmith_f_op_f32(trunc(1489f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) + _wgslsmith_div_f32(-233f, 2323f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(1379f, _wgslsmith_f_op_f32(-873f - 1000f)), _wgslsmith_f_op_f32(floor(945f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -253f))), _wgslsmith_f_op_f32(f32(-1f) * -202f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-845f)))))));
    var_0 = 1000f;
    return -1481f;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1459f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(449f, 1450f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + _wgslsmith_f_op_f32(min(-1000f, -655f)))))));
    let var_1 = ~(~(~reverseBits(countOneBits(vec2<u32>(u_input.a, u_input.a)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-571f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.b & vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), Struct_1(false, u_input.a, u_input.d.x, vec3<u32>(1u, 0u, 35973u)), func_2(Struct_3(vec3<bool>(true, arg_0, false)), vec3<bool>(false, arg_0, false), 1i, vec4<i32>(-2147483647i, u_input.c.x, u_input.b.x, u_input.c.x)), 0i)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)))));
    var var_3 = max(_wgslsmith_mult_vec3_i32(~u_input.b, firstTrailingBit(select(u_input.b, vec3<i32>(u_input.d.x, u_input.b.x, -11216i), vec3<bool>(arg_0, arg_0, arg_0)) | -u_input.d)), vec3<i32>(firstLeadingBit(-u_input.b.x), select(u_input.c.x, u_input.c.x << (var_1.x % 32u), true), u_input.b.x) << (vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 0u), abs(28125u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 0u, 4294967295u), vec3<u32>(var_1.x, 0u, u_input.a)), var_1.x) % vec3<u32>(32u)));
    var_3 = countOneBits(u_input.d);
    return ~(~countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, var_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(87683u, var_1.x, 0u, u_input.a)), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(u_input.d.x, 1i) != 0i, _wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(~4294967295u, u_input.a | 0u)), 2147483647i & _wgslsmith_mod_i32(u_input.c.x, 1i), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 31226u, 4302u), func_1(false)), vec3<u32>(u_input.a, u_input.a, 50165u)));
    let var_1 = select((-abs(vec4<i32>(u_input.d.x, var_0.c, var_0.c, 8176i)) ^ vec4<i32>(-11898i, 54606i & var_0.c, var_0.c, 2147483647i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 36409u, 14045u, ~101279u), firstTrailingBit(~vec4<u32>(42796u, 31120u, u_input.a, 7473u))) % vec4<u32>(32u)), min(-vec4<i32>(var_0.c, u_input.c.x, var_0.c, 29509i) & -firstTrailingBit(vec4<i32>(u_input.b.x, var_0.c, u_input.d.x, u_input.d.x)), ~(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c.x))), true);
    let var_2 = Struct_3(select(!vec3<bool>(true || var_0.a, all(vec3<bool>(true, true, true)), false), select(vec3<bool>(true, var_0.a && false, var_1.x >= 59467i), !select(vec3<bool>(false, false, false), vec3<bool>(var_0.a, var_0.a, true), var_0.a), !select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, false, false), u_input.a >= var_0.d.x), var_0.a)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(min(var_1.xzy, vec3<i32>(u_input.d.x, var_1.x, -10364i)), var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(4294967295u, var_0.b, 4294967295u)), firstTrailingBit(0i))))), -308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1608f))) + vec3<f32>(_wgslsmith_f_op_f32(func_4(var_1.xzz, Struct_1(true, var_0.b, ~(-28859i), vec3<u32>(var_0.d.x, var_0.d.x, u_input.a)), _wgslsmith_div_u32(reverseBits(0u), ~8033u), ~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(906f))))), _wgslsmith_f_op_f32(sign(-108f))));
    var var_4 = !(var_3.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2022f + -1000f)))));
    var var_5 = firstTrailingBit(max(func_1(!var_2.a.x).xz, ~var_0.d.yz));
    var_4 = !var_0.a;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.x, var_0.b);
}

