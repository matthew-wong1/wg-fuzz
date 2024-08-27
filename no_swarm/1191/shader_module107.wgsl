struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.yy) - vec2<f32>(arg_0.a.x, -1000f)), _wgslsmith_f_op_f32(abs(arg_0.a.x)), u_input.a.xy);
    var var_1 = Struct_1(var_0.a, var_0.a.x, var_0.c | -countOneBits(-vec2<i32>(-1i, var_0.c.x)));
    var var_2 = 0u;
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = reverseBits(_wgslsmith_add_i32(u_input.e.x, -u_input.e.x));
    let var_1 = _wgslsmith_div_vec4_u32(u_input.d, abs(~select(u_input.d, vec4<u32>(6341u, 60728u, u_input.d.x, u_input.d.x), any(vec4<bool>(true, true, false, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-141f, 234f, 113f), _wgslsmith_f_op_vec3_f32(vec3<f32>(981f, -2040f, -908f) + vec3<f32>(-475f, 397f, -1190f)), vec3<bool>(false, true, true))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x)));
    var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(425f - _wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -120f)) + var_3.x)), _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(969f)) - -305f)))), var_3.x);
    return select(_wgslsmith_dot_vec2_u32(var_1.zx, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 1u), var_1.zz, u_input.d.zy)) | ~(~1u), 0u, true) >> (var_1.x % 32u);
}

fn func_1() -> i32 {
    let var_0 = any(!select(!func_2(Struct_2(vec3<f32>(1532f, -1031f, -762f))), vec3<bool>(u_input.e.x > u_input.a.x, 37927i > u_input.c.x, true), vec3<bool>(true, u_input.c.x <= u_input.a.x, false)));
    let var_1 = Struct_2(vec3<f32>(1f, _wgslsmith_f_op_f32(-1460f + _wgslsmith_f_op_f32(-1183f * -1178f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1765f, _wgslsmith_f_op_f32(-1289f + 1204f)), -1175f, (u_input.a.x > 2147483647i) || (4294967295u > u_input.d.x)))));
    let var_2 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(43337u, func_3(u_input.d.x) ^ u_input.d.x), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, 1u) | vec3<u32>(u_input.b.x, 1u, u_input.d.x), u_input.d.wyx))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f * -350f))) + _wgslsmith_f_op_vec2_f32(-var_1.a.yy)), -2981f, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yx, _wgslsmith_mod_vec2_i32(~u_input.a.zx, abs(u_input.c.zy)), _wgslsmith_sub_vec2_i32(min(u_input.a.yx, u_input.c.zz), ~vec2<i32>(19841i, 2147483647i))), u_input.a.xx));
    let var_4 = ~_wgslsmith_div_vec4_u32(u_input.d, u_input.d >> (~abs(u_input.d) % vec4<u32>(32u)));
    return ~var_3.c.x;
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-694f, 335f)) - _wgslsmith_f_op_f32(246f - -661f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -325f))))));
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 690f, var_0.a.x) - vec3<f32>(var_0.a.x, -1077f, 1580f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(trunc(1483f))), _wgslsmith_f_op_f32(floor(-840f)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = !all(select(!vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, !arg_1, true | arg_1), select(!vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, false, arg_1), arg_1 && arg_1)));
    var_3 = any(!select(func_2(Struct_2(vec3<f32>(1346f, -592f, var_1.a.x))), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, arg_1)), arg_1));
    return Struct_3(_wgslsmith_add_i32(-2147483647i, 0i), var_0, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-1013f, var_0.a.x), var_2))), 655f, _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.c.x, arg_0), ~u_input.a.zy), vec2<i32>(_wgslsmith_mult_i32(44579i, arg_0), -2147483647i >> (u_input.b.x % 32u)), u_input.e.zy)), var_0, Struct_1(var_0.a.yz, _wgslsmith_div_f32(var_0.a.x, var_1.a.x), _wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.a.x, arg_0)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-50279i, 0i), u_input.a.zy, u_input.c.yy), max(_wgslsmith_mod_vec2_i32(vec2<i32>(34349i, 2147483647i), u_input.e.yx), vec2<i32>(arg_0, 24530i)))));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = !select(func_2(func_4(2147483647i, all(vec3<bool>(false, false, false))).d).zx, vec2<bool>(true, true), true);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.d, u_input.d & u_input.d), 1u) | vec2<u32>(u_input.b.x, u_input.d.x), firstTrailingBit(_wgslsmith_sub_vec2_u32(firstTrailingBit(select(u_input.b.xy, u_input.b.xy, var_0.x)), ~abs(u_input.b.yx))));
    let var_2 = true;
    var var_3 = u_input.d << (_wgslsmith_clamp_vec4_u32(~u_input.d, ~u_input.d, ~firstLeadingBit(max(vec4<u32>(u_input.b.x, 33400u, 10564u, var_1), u_input.d))) % vec4<u32>(32u));
    let var_4 = func_4(arg_0.e.c.x, all(!func_2(arg_0.b))).d;
    return Struct_2(vec3<f32>(161f, var_4.a.x, var_4.a.x));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = vec4<bool>(!(false & all(vec3<bool>(false, true, true))), false || any(vec2<bool>(true, true)), true, true);
    var_1 = !(!(!vec4<bool>(true, all(vec4<bool>(false, false, true, true)), var_1.x & false, func_2(arg_0).x)));
    var_1 = !vec4<bool>(false, -962f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, arg_1.e.a.x)), !(abs(arg_2.x) > _wgslsmith_mod_u32(arg_2.x, 1u)), !(!(!var_1.x)));
    let var_2 = countOneBits(vec2<u32>(arg_2.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, u_input.d.x), _wgslsmith_add_u32(countOneBits(0u), ~44751u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(~func_1(), false), -8594i), Struct_3(select(-_wgslsmith_sub_i32(1i, u_input.e.x), u_input.a.x, true), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2091f, -898f, 1913f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -756f, 414f), vec3<f32>(-1221f, -914f, -342f))))), func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.a.x), vec4<i32>(u_input.e.x, -13116i, -62080i, 2814i)), ~u_input.e.x == -u_input.e.x).e, Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1747f, 2140f, 380f) - vec3<f32>(-772f, -303f, -1189f))))), func_4(~(-32167i), (u_input.c.x | u_input.e.x) > -228i).e), u_input.b.yy, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1845f + _wgslsmith_f_op_f32(max(-1024f, -1000f))), 1f), 1495f, firstLeadingBit((vec2<i32>(11734i, u_input.a.x) ^ vec2<i32>(u_input.e.x, u_input.a.x)) & select(vec2<i32>(u_input.a.x, u_input.e.x), vec2<i32>(0i, 2147483647i), false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, 459f, -129f, var_0.a.x) * vec4<f32>(var_0.a.x, -554f, 626f, -244f)))))))));
    var_0 = func_4(~u_input.a.x, (!all(vec4<bool>(false, false, false, true)) && true) | (_wgslsmith_f_op_f32(var_1.x * 336f) < 1745f)).d;
    let var_2 = select((false && func_2(Struct_2(var_1.zxy)).x) || any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), !(_wgslsmith_f_op_f32(-var_0.a.x) > _wgslsmith_f_op_f32(-var_0.a.x)) || true, true | all(vec3<bool>(15762u < u_input.d.x, all(vec3<bool>(true, true, true)), true)));
    var var_3 = ~vec3<i32>(0i, _wgslsmith_div_i32(-(u_input.a.x ^ u_input.a.x), ~2147483647i), func_1() & _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -1i), max(-40324i, -19420i)));
    let var_4 = Struct_3(-1i, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.wzx))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(1168f)), 688f, _wgslsmith_f_op_f32(305f * 1298f)))), Struct_1(var_1.wy, var_1.x, ~firstLeadingBit(var_3.xx)), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(499f * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(f32(-1f) * -239f), 1f)), func_4(min(var_3.x, -18950i), all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_2, var_2), select(false, true, var_2)))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x), u_input.b.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_4.c.a.x, 400f, 1867f)), _wgslsmith_div_vec4_f32(vec4<f32>(-275f, var_0.a.x, 560f, 487f), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_1.x))))))));
}

