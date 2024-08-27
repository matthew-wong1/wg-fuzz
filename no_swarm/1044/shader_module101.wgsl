struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = -497f;
    var_0 = arg_1;
    var var_1 = select(vec2<bool>(!all(vec2<bool>(false, false)), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true))), !vec2<bool>(all(vec3<bool>(false, false, true)), !select(false, false, false)), false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(216f, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(arg_1 + -117f))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1663f, 349f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1)))))), 339f);
    var var_3 = u_input.d;
    return _wgslsmith_f_op_f32(sign(arg_1));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1021f * -1687f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f), 1661f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(103f, 576f)), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1087f, -397f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, 0i, var_0)), _wgslsmith_f_op_f32(min(720f, -235f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(643f + 1480f) * _wgslsmith_f_op_f32(floor(-664f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(791f, 1000f) - _wgslsmith_f_op_f32(-578f - 228f))))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(402f, var_1.x)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)), Struct_3(_wgslsmith_mod_u32(abs(1u), 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, var_1.x) * vec2<f32>(-522f, var_1.x))), var_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(326f, -227f)))), 1303f), -1003f);
    var var_3 = true;
    var var_4 = arg_0;
    return var_2.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_3 {
    return Struct_3(arg_0.a, arg_0.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = 9266u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-798f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f))))));
    var var_2 = func_4(Struct_3(~1u, func_2(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true))), -abs(vec4<i32>(-1701i, -1i, -56724i, 48053i)) | ~max(u_input.d, u_input.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(sign(-457f)), 467f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.x, arg_1.b.b, 685f) * vec3<f32>(1689f, -1514f, var_1)) * vec3<f32>(arg_1.b.b, arg_1.b.b, arg_1.b.a.x))), vec3<f32>(821f, 635f, _wgslsmith_f_op_f32(trunc(-1117f))), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(false, true, false))))));
    var_2 = Struct_3(firstTrailingBit(4294967295u) >> (~(~firstLeadingBit(arg_2)) % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-277f, _wgslsmith_f_op_f32(step(var_2.b.a.x, arg_1.b.a.x))))), arg_1.b.a.x));
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.b.xy);
    return var_2.b;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3.a.x, arg_3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-137f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(135f + _wgslsmith_f_op_f32(arg_1 + arg_1)), true)), _wgslsmith_f_op_f32(min(-1000f, 339f)))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), arg_1, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(473f, 409f)))))), _wgslsmith_f_op_f32(step(arg_3.b, _wgslsmith_f_op_f32(1000f - arg_3.b))), vec3<i32>(min(_wgslsmith_mult_i32(1i, arg_2.x), _wgslsmith_add_i32(arg_2.x, arg_0.x & arg_0.x)), _wgslsmith_dot_vec4_i32(abs(arg_2), vec4<i32>(0i, 8285i, arg_2.x, -2271i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 23949u, 4294967295u, 0u), vec4<u32>(10419u, 16820u, 4294967295u, 55395u), vec4<u32>(26242u, 0u, 57226u, 0u)) % vec4<u32>(32u))), firstTrailingBit(u_input.b.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), false, true), !all(vec2<bool>(true, false))), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), all(vec3<bool>(true, !all(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, true)))));
    var_0 = var_1.a.x;
    let var_2 = 4294967295u;
    let var_3 = var_1.a;
    return 1119f;
}

fn func_6(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(402f, -833f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x))))) + arg_0), arg_0.x), func_4(Struct_3(~(~1u), func_2(vec2<bool>(true, false))), (vec4<i32>(u_input.a.x, u_input.c, 10047i, -2147483647i) | u_input.d) << (abs(~vec4<u32>(24548u, 4294967295u, 23501u, 22370u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(683f, 738f, -574f), vec3<f32>(-1521f, arg_0.x, arg_0.x))))), func_1(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(17378u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 8623u, 4294967295u), true), ~vec3<u32>(55240u, 76294u, 56274u)), ~vec3<u32>(0u, 1u, 0u)), Struct_3(max(21673u, firstLeadingBit(0u)), func_4(func_4(Struct_3(59593u, Struct_1(arg_0, -544f)), vec4<i32>(-43626i, u_input.b.x, u_input.a.x, u_input.b.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), ~vec4<i32>(u_input.c, 31188i, -2903i, u_input.a.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -480f, 161f)))).b), ~firstLeadingBit(1u)), 2479f);
    var_0 = Struct_4(func_4(Struct_3(var_0.b.a, var_0.b.b), u_input.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1251f, var_0.d, -277f) - vec3<f32>(724f, arg_0.x, arg_0.x)))))).b, Struct_3(1u, var_0.a), var_0.a, -1123f);
    let var_1 = u_input.b.x >> ((4294967295u ^ ~(~firstTrailingBit(1u))) % 32u);
    return Struct_4(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x * var_0.d) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b - arg_0.x), 594f))), func_4(Struct_3(4294967295u, var_0.c), -_wgslsmith_clamp_vec4_i32(u_input.d, -vec4<i32>(25444i, 2147483647i, u_input.c, 9008i), u_input.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -1000f) + _wgslsmith_f_op_f32(arg_0.x + var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 153f) * _wgslsmith_f_op_f32(-798f - -991f)), arg_0.x)), var_0.a, var_0.b.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 361f, -373f), vec3<f32>(1180f, 1010f, 651f), true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(207f, 580f, -561f), vec3<f32>(1885f, -821f, 505f), false)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2321f, 384f, -1825f))))))))));
    var var_1 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(func_5(vec2<i32>(0i, u_input.a.x), _wgslsmith_f_op_f32(floor(var_0.x)), -vec4<i32>(1i, u_input.d.x, u_input.b.x, u_input.b.x), func_1(vec3<u32>(59426u, 1u, 4294967295u), Struct_3(9419u, Struct_1(vec2<f32>(var_0.x, -417f), var_0.x)), 12774u))))));
    let var_2 = var_0.x;
    var var_3 = -1000f;
    var var_4 = Struct_4(func_2(vec2<bool>(true, true)), var_1.b, func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true)), -362f);
    var var_5 = _wgslsmith_add_i32(u_input.b.x, 1i);
    var var_6 = !select(vec2<bool>(true, false), vec2<bool>(true, true), true);
    var var_7 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.d), var_4.b.b.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_4.d) * var_4.b.b.a))) * var_1.b.b.a)), var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~firstTrailingBit(1u), select(1u, var_1.b.a, !var_6.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a, var_4.b.a), vec2<u32>(1u, 59217u)), ~var_4.b.a)) & vec3<u32>(var_4.b.a, 0u, ~5440u), 12503u, 1u);
}

