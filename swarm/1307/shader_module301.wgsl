struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    global0 = Struct_1(!select(vec2<bool>(any(vec3<bool>(false, false, arg_3.a.x)), arg_3.a.x), !vec2<bool>(false, global0.c), !select(vec2<bool>(false, true), vec2<bool>(false, global0.c), vec2<bool>(global0.c, false))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f - _wgslsmith_div_f32(global0.d.x, global0.d.x)))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_3.d))), arg_0);
    var var_0 = arg_3;
    var var_1 = !vec3<bool>(~_wgslsmith_mod_u32(arg_2, u_input.a) < arg_1, false, true);
    global0 = arg_3;
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~(~0u), 45300u, ~43107u), ~countOneBits(~vec3<u32>(arg_2, 27931u, arg_1) << ((vec3<u32>(62818u, 2563u, 4294967295u) | vec3<u32>(0u, arg_1, 4294967295u)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -824f), global0.b, !global0.c)))), 1561f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(!select(!vec2<bool>(true, arg_1.a.x), !vec2<bool>(arg_3.a.x, false), select(arg_1.a, vec2<bool>(arg_3.a.x, global0.a.x), true)), arg_1.d.x, !(!select(global0.c, any(arg_1.a), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.x, arg_3.b)), 56472i);
    let var_1 = arg_1;
    var var_2 = Struct_1(select(select(vec2<bool>(true & var_0.c, u_input.a > u_input.a), select(!global0.a, vec2<bool>(true, arg_1.a.x), var_1.a.x), var_1.a), select(!var_1.a, select(!arg_1.a, !vec2<bool>(true, var_1.a.x), var_0.a), !any(var_1.a)), !(arg_2.x >= 74781i)), _wgslsmith_f_op_f32(select(1832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), true)), !global0.c, vec2<f32>(arg_0.x, global0.b), _wgslsmith_sub_i32(countOneBits(51100i), -global0.e) & ~reverseBits(~arg_1.e));
    var_2 = Struct_1(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), 240f))), arg_1.a.x, vec2<f32>(-787f, _wgslsmith_f_op_f32(step(228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))))), -countOneBits(-60302i));
    return -38286i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -768f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * -1800f)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(global0.d.x + global0.b), global0.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d + vec2<f32>(2521f, global0.b))))), global0.e);
    var var_1 = var_0;
    let var_2 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2062f, var_0.d.x, 223f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-567f, -1542f, var_1.a.x)), 2906f, _wgslsmith_f_op_f32(min(-379f, _wgslsmith_f_op_f32(-global0.b))))), var_0, vec4<i32>(max(_wgslsmith_sub_i32(-61873i, -1i), -29388i | global0.e) ^ global0.e, _wgslsmith_dot_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(global0.e, u_input.b))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 65539i), vec2<i32>(-11096i, var_0.e)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.e ^ -4918i, -1i), ~min(-19563i, 2147483647i), ~abs(var_1.e)), var_1.e), Struct_1(select(!var_0.a, select(select(var_1.a, var_0.a, true), select(global0.a, vec2<bool>(false, global0.c), var_0.a.x), vec2<bool>(global0.a.x, true)), select(true, false, true)), _wgslsmith_f_op_f32(var_1.d.x * -426f), all(select(vec4<bool>(var_1.c, false, true, true), vec4<bool>(true, false, var_1.c, false), vec4<bool>(global0.c, false, true, global0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(5220i, 4294967295u, 61086u, Struct_1(global0.a, -172f, global0.c, vec2<f32>(898f, -500f), global0.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, -583f) * var_0.d)) + _wgslsmith_f_op_vec2_f32(select(var_0.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b, global0.b), global0.d)), var_0.c))), var_1.e));
    let var_3 = countOneBits(~4294967295u);
    let var_4 = _wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -399f))), _wgslsmith_div_f32(var_0.b, 938f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, var_1.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.d.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -594f) - var_0.d))), !(!vec2<bool>(false, global0.a.x)))));
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1352f)), _wgslsmith_f_op_f32(f32(-1f) * -1121f))), 4294967295u == ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b, -2090f)), var_0.d.x)) - var_4.x), any(vec4<bool>(var_0.a.x, true, var_1.d.x > _wgslsmith_f_op_f32(1343f * global0.d.x), !any(var_1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, 1000f), global0.d, global0.a)) - _wgslsmith_f_op_vec2_f32(-global0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)))) * _wgslsmith_f_op_vec2_f32(-var_4)), _wgslsmith_div_i32(~_wgslsmith_sub_i32(-1i | u_input.b, -var_0.e), _wgslsmith_div_i32(-13993i, 1i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = 25794u;
    var var_1 = Struct_1(vec2<bool>(true, global0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), -695f))), _wgslsmith_f_op_f32(-arg_0.b))), !(!(!arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-arg_1.d), 9631i);
    var var_2 = !select(vec4<bool>(true, true, false, all(!vec4<bool>(false, arg_0.a.x, true, false))), vec4<bool>(select(!arg_1.c, false, select(arg_0.a.x, true, var_1.c)), var_1.d.x <= _wgslsmith_f_op_f32(-180f * 609f), func_2().c, false), vec4<bool>(true, true, true, true));
    var var_3 = arg_1.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-311f * -1474f), _wgslsmith_f_op_f32(-248f - -776f), arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1041f))))));
    return u_input.b;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -13243i, u_input.b), vec4<i32>(u_input.b, global0.e, 12232i, global0.e)) | ~vec4<i32>(64977i, u_input.b, global0.e, 0i)), firstLeadingBit(vec4<i32>(global0.e, ~13090i, min(-10438i, u_input.b), firstTrailingBit(-2147483647i)))), 0i, -(u_input.b | -_wgslsmith_add_i32(global0.e, 1i)), -1i);
    global0 = Struct_1(select(vec2<bool>(global0.a.x, true), global0.a, global0.a), 1191f, true && global0.c, global0.d, 2147483647i);
    var_0 = vec4<i32>(14277i, -(~1i), -24667i, 1i) | vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(30924i, global0.e), var_0.zw), vec2<i32>(43614i, 2147483647i)), _wgslsmith_clamp_i32(func_5(func_2(), Struct_1(global0.a, global0.d.x, true, vec2<f32>(-1516f, global0.d.x), -247i), func_2().e), 38295i, _wgslsmith_div_i32(~36568i, global0.e)), global0.e, _wgslsmith_mod_i32(abs(global0.e ^ 8076i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.zwy, var_0.yyx), var_0.zyw)));
    var_0 = ~abs(-(vec4<i32>(u_input.b, 3385i, u_input.b, global0.e) << (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))));
    var var_1 = !(!vec2<bool>(false, !any(vec2<bool>(global0.a.x, true))));
    return Struct_1(vec2<bool>(true, select(any(!vec3<bool>(global0.a.x, false, global0.a.x)), var_1.x, true)), _wgslsmith_f_op_f32(select(-1890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1561f - global0.d.x)), -877f), all(select(select(vec4<bool>(var_1.x, var_1.x, false, global0.c), vec4<bool>(true, var_1.x, global0.c, false), vec4<bool>(false, global0.c, var_1.x, var_1.x)), vec4<bool>(var_1.x, var_1.x, true, true), true)))), global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.d.x * global0.d.x), _wgslsmith_f_op_f32(-global0.b)))), abs(_wgslsmith_sub_i32(-2147483647i, global0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, global0.d.x, global0.c, global0.d, u_input.b);
    var var_0 = !(!(!select(vec4<bool>(global0.c, global0.a.x, false, true), vec4<bool>(global0.c, false, false, global0.c), false)));
    var var_1 = func_1();
    var var_2 = func_1().a;
    var var_3 = Struct_1(vec2<bool>(u_input.a == ~_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.b, global0.d.x), global0.d.x, true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(-12614i, 4294967295u, 36182u, Struct_1(vec2<bool>(var_2.x, var_2.x), var_1.b, false, var_1.d, global0.e))).x * _wgslsmith_f_op_f32(sign(var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-476f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1753f, -1052f, var_1.a.x)) - 1755f))), any(var_0.zyw), _wgslsmith_f_op_vec2_f32(func_3(u_input.b, ~u_input.a, 1u, Struct_1(func_2().a, -1063f, _wgslsmith_f_op_f32(-var_1.b) == _wgslsmith_f_op_f32(-var_1.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -273f), global0.b), u_input.b))), -28142i);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1533f, 434f, 817f, 1084f), vec4<f32>(var_1.d.x, var_1.b, var_3.d.x, -661f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2038f, 161f, var_1.d.x, var_1.d.x), vec4<f32>(var_4.b, 319f, var_1.b, 949f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, var_4.d.x, _wgslsmith_div_f32(618f, var_1.d.x), global0.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.d.x, -528f, -737f, var_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, global0.b, -1041f, 787f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(366f, var_1.d.x, global0.d.x, 832f) * vec4<f32>(var_4.b, 1452f, var_3.b, 1405f))))), 66061i);
}

