struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> vec2<f32> {
    var var_0 = ~0u;
    var_0 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, 4294967295u, 11460u)) >> (firstLeadingBit(vec3<u32>(arg_3, 1u, 1u)) % vec3<u32>(32u))), max(abs(max(vec3<u32>(1u, 1u, 42027u), vec3<u32>(25630u, u_input.b, 1u))), firstLeadingBit(vec3<u32>(~u_input.b, abs(41838u), ~u_input.b))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), Struct_2(min(~(~arg_3), u_input.b), vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 87563u, 0u & u_input.b), u_input.b, abs(u_input.b) ^ ~65732u)), Struct_1(countOneBits(~(u_input.b & 1u)), u_input.a.xww, arg_0, arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0, 495f))))))), 8698i);
    var_0 = 40148u;
    var var_2 = var_1.b;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(-arg_0)), -1182f));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)), u_input.c ^ 41770i, Struct_4(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(arg_0.x, -1000f))), ~_wgslsmith_clamp_u32(4294967295u, 0u, arg_1))).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-528f, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 27266i, -49968i, u_input.c), vec4<i32>(u_input.a.x, 0i, u_input.c, u_input.c)), Struct_4(arg_0), arg_1 ^ 4294967295u)).x)) + _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = Struct_5(false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_div_f32(577f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, -1254f), vec2<f32>(246f, var_0), true)), vec2<f32>(arg_0.x, 731f)))))), _wgslsmith_f_op_f32(floor(var_0)));
    var var_2 = _wgslsmith_f_op_f32(810f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, 1000f)), _wgslsmith_f_op_f32(max(218f, -371f))) * -1041f) + var_1.b.x));
    var var_3 = -308f;
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -327f), var_1.b.x, var_1.a));
    return firstLeadingBit(42860i) <= countOneBits(~(~u_input.a.x));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    let var_0 = select(-vec3<i32>(2147483647i, ~(-22509i), -u_input.c ^ _wgslsmith_sub_i32(1i, 25588i)), max(~(~min(vec3<i32>(1i, u_input.a.x, 11385i), u_input.a.yxz)), -u_input.a.yzw), !select(all(vec2<bool>(true, arg_0)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-848f, -504f)), 0u), !arg_0));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1540f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)) - 1946f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(470f, _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(abs(660f)))))), _wgslsmith_f_op_f32(-999f * -1127f));
    let var_2 = Struct_5(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.b)) - var_1.b)) + var_1.b), _wgslsmith_f_op_f32(-var_1.c));
    let var_3 = ~vec3<u32>((~41558u | ~u_input.b) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(40138u, 24520u, 4294967295u)) | u_input.b) % 32u), ~(~0u), u_input.b);
    var var_4 = 2147483647i;
    return 807f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(530f + -508f), _wgslsmith_f_op_f32(func_5(!func_4(_wgslsmith_f_op_vec2_f32(func_3(490f, 2147483647i, Struct_4(vec2<f32>(-1226f, -964f)), u_input.b)), _wgslsmith_div_u32(u_input.b, 0u)), !vec2<bool>(any(vec3<bool>(false, false, true)), false)))));
    let var_1 = !vec4<bool>(true, !all(vec3<bool>(false, true, false)), !((arg_0 <= arg_0) | true), any(vec2<bool>(true, true)));
    let var_2 = !vec2<bool>(all(!select(vec3<bool>(true, var_1.x, var_1.x), var_1.ywz, var_1.x)), var_1.x);
    let var_3 = max(min(4294967295u, 1u | ~_wgslsmith_div_u32(u_input.b, 43556u)), u_input.b & _wgslsmith_add_u32(_wgslsmith_mult_u32(select(30756u, u_input.b, false), ~0u), ~_wgslsmith_mult_u32(17793u, u_input.b)));
    return Struct_1(var_3, min(select(u_input.a.wzx, vec3<i32>(u_input.a.x, u_input.c, u_input.a.x), vec3<bool>(var_1.x, true, var_2.x)) << (~firstTrailingBit(vec3<u32>(1u, 4294967295u, var_3)) % vec3<u32>(32u)), max(select(vec3<i32>(u_input.a.x, arg_0, -35200i), vec3<i32>(arg_0, -1i, u_input.a.x), var_1.wxx), select(vec3<i32>(1i, arg_0, -19798i), u_input.a.zxw, true)) ^ u_input.a.xww), _wgslsmith_f_op_f32(-1850f - -759f), ~(~u_input.c), -331f);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = func_2(~reverseBits(_wgslsmith_div_i32(~u_input.c, u_input.c ^ 2147483647i)));
    return Struct_2(~(~(~arg_0.x) >> (u_input.b % 32u)), ~(~(~vec4<u32>(35622u, 1u, 4294967295u, 65038u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_2(127u, ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.b, 8263u, 4294967295u, var_0) | vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), vec4<u32>(~8085u, 1u, _wgslsmith_mod_u32(u_input.b, 36054u), 1u)));
    var_1 = func_1(~(~(~(vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, 0u, 63067u)))));
    var_1 = Struct_2(abs(45900u), ~((min(vec4<u32>(u_input.b, 0u, 20829u, 29326u), var_1.b) & ~var_1.b) & vec4<u32>(var_0, var_0, _wgslsmith_add_u32(var_1.a, u_input.b), 4294967295u)));
    var_1 = Struct_2(max(_wgslsmith_add_u32(var_1.b.x, firstTrailingBit(select(var_1.b.x, 0u, false))), ~var_0), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_u32(_wgslsmith_add_u32(select(u_input.b, u_input.b, true), 1053u), max(885u, ~var_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1000f, 1234f, 1286f), vec4<f32>(1119f, -1184f, 2118f, 1362f), false)) * vec4<f32>(-1586f, -1057f, -750f, 1161f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(578f, 1528f, -1658f, 898f), vec4<f32>(-719f, 1000f, 2290f, -1028f), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, 530f, -567f, 440f)) * vec4<f32>(831f, -266f, 1191f, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(564f * 1337f), -1364f), _wgslsmith_f_op_f32(abs(-588f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -727f), vec2<f32>(730f, -843f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, -726f))))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1373f, 1142f), -994f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-353f - 264f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(106f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1167f, 850f, 1258f) * vec3<f32>(-812f, -445f, 205f)))))), vec4<u32>(_wgslsmith_dot_vec2_u32(~(~var_1.b.yz), ~(~vec2<u32>(4294967295u, u_input.b))), var_1.a, firstLeadingBit(~(~var_1.a)), 36051u));
}

