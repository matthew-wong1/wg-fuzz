struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_1(select(vec2<bool>(all(vec3<bool>(true, true, false)), arg_0.a.x), select(!(!arg_0.a), !(!arg_0.a), all(!vec3<bool>(true, arg_0.a.x, false))), vec2<bool>(any(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) < -u_input.a)), _wgslsmith_f_op_f32(177f - _wgslsmith_f_op_f32(-1382f - _wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b))))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(select(!var_0.a.x, arg_0.a.x, false), var_0.a.x), var_0.b));
    let var_2 = firstTrailingBit(u_input.a) >> ((~1u << (u_input.e.x % 32u)) % 32u);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(var_2 >> (_wgslsmith_clamp_u32(123251u | arg_1, max(48084u, u_input.e.x), _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(1u, arg_1, u_input.e.x, 1u))) % 32u), -1i), _wgslsmith_dot_vec2_i32(-countOneBits(countOneBits(vec2<i32>(u_input.c, var_2))), -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2, u_input.a), vec2<i32>(-2147483647i, -18730i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-18969i, var_2)))));
    let var_4 = max(vec3<u32>(u_input.e.x, ~(~4777u), arg_1), min(vec3<u32>(reverseBits(1u), ~u_input.e.x, _wgslsmith_add_u32(46607u, 11783u)), abs(u_input.e.xzy))) >> (vec3<u32>(~1u, _wgslsmith_mod_u32(arg_1, firstLeadingBit(u_input.e.x ^ 0u)), firstLeadingBit(~1u)) % vec3<u32>(32u));
    return u_input.b;
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(1f)) > _wgslsmith_f_op_f32(round(-585f));
    let var_1 = max(abs(_wgslsmith_mod_i32(firstLeadingBit(max(-1230i, u_input.d.x)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 1i), func_3(Struct_1(vec2<bool>(var_0, var_0), -1010f), 76953u)))), _wgslsmith_clamp_i32(u_input.a, 34903i, -16197i));
    var var_2 = Struct_1(vec2<bool>(all(vec3<bool>(var_0, true, true)), 1u != (419u << (u_input.e.x % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(547f + _wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(f32(-1f) * -177f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f * 1000f) - _wgslsmith_f_op_f32(-1000f - -591f)))))));
    var var_3 = (0i >= u_input.d.x) && var_0;
    var_3 = any(vec3<bool>(true, -267f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(-var_2.b)), true));
    return vec3<f32>(_wgslsmith_div_f32(315f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1075f - -1137f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b)))))), 1677f, -1462f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1608f))))))));
    var var_1 = true;
    let var_2 = select(true, arg_0.a.x, select(!any(select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), false)), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-arg_3.x)) != 732f, true));
    let var_3 = all(!select(select(select(vec4<bool>(var_2, false, arg_0.a.x, true), vec4<bool>(true, arg_0.a.x, var_2, true), false), select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(false, false, true, var_2), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true)), select(vec4<bool>(var_2, true, false, arg_0.a.x), vec4<bool>(arg_0.a.x, var_2, true, arg_0.a.x), var_2)), !(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, false)), vec4<bool>(false, var_2, any(vec3<bool>(false, arg_0.a.x, var_2)), false == arg_0.a.x)));
    var var_4 = Struct_2(Struct_1(!arg_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(1000f * -231f)))))));
    return Struct_2(var_4.a);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !(!all(select(select(vec2<bool>(arg_1.a.a.x, arg_0), vec2<bool>(true, true), vec2<bool>(false, true)), arg_1.a.a, !arg_1.a.a.x)));
    var var_1 = 412f;
    let var_2 = Struct_1(arg_1.a.a, _wgslsmith_f_op_vec3_f32(func_2()).x);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b));
    let var_3 = Struct_1(!vec2<bool>(true && !var_2.a.x, true), 1420f);
    return Struct_2(arg_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_5(!all(vec4<bool>(true, true, true, true)), func_4(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-723f, -141f)))), !arg_0.a)), _wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-961f, 293f, arg_0.b, 1609f), vec4<f32>(arg_0.b, 677f, -1457f, arg_0.b), arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.b, -396f, arg_0.b))))));
    var_0 = Struct_2(func_4(Struct_1(!vec2<bool>(arg_1.x, arg_0.a.x), 1576f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, arg_0.b) + vec2<f32>(arg_0.b, 722f)), vec2<f32>(158f, arg_0.b))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(1000f - var_0.a.b), any(vec3<bool>(var_0.a.a.x, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -995f) - func_5(true, Struct_2(Struct_1(arg_1, 654f))).a.b), arg_0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 1000f, var_0.a.b, var_0.a.b)))))).a);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-378f, -610f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1122f, 1587f), vec2<f32>(-143f, 998f))))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-339f, arg_0.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, arg_0.b)), vec2<f32>(453f, var_0.a.b), select(vec2<bool>(var_0.a.a.x, false), vec2<bool>(true, true), vec2<bool>(arg_1.x, arg_0.a.x)))), !var_0.a.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1234f, -829f))));
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()).zy));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = 4294967295u;
    var var_1 = func_4(Struct_1(arg_0.a, arg_0.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(391f, 395f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1183f, -1028f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1608f), _wgslsmith_f_op_f32(arg_3.b * 433f), 1f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2.a.b)))), func_1(arg_3, !arg_0.a).b, arg_0.b, -385f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, arg_2.a.b, -1000f, -915f))) * vec4<f32>(-1904f, -133f, arg_2.a.b, 1456f)))))).a;
    let var_2 = func_5(true, arg_2);
    let var_3 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(~0u, var_0), _wgslsmith_mult_u32(min(35638u, 66936u), 0u)) ^ var_0;
    var var_4 = 4294967295u;
    return vec2<bool>(!arg_3.a.x, false);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = firstTrailingBit(func_3(arg_0, _wgslsmith_clamp_u32(select(71752u, 0u, !arg_2.x), ~(~u_input.e.x), ~4294967295u)));
    let var_1 = Struct_1(!func_4(arg_0, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(550f, arg_0.b), vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b, arg_0.b, arg_0.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(678f, arg_0.b, arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, -626f, arg_0.b, 1498f), vec4<f32>(arg_0.b, -733f, arg_0.b, arg_0.b))))).a.a, 1000f);
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.e.yyz >> (~vec3<u32>(31469u, 0u, u_input.e.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 12129u, 70417u) & vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), ~vec3<u32>(u_input.e.x, 4294967295u, 0u))), abs(firstLeadingBit(abs(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, min(u_input.e.x, u_input.e.x), max(13913u, 17360u)), countOneBits(abs(u_input.e.wwz))) | ~u_input.e.yyy);
    let var_3 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(19564u, u_input.e.x) | 19735u, 1u, _wgslsmith_div_u32(~u_input.e.x, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(select(u_input.e.wwx, u_input.e.wxy, vec3<bool>(false, true, var_1.a.x)), vec3<u32>(var_2.x, u_input.e.x, var_2.x)), firstTrailingBit(u_input.e.wzx)), vec3<u32>(_wgslsmith_mult_u32(select(34512u, u_input.e.x, true), _wgslsmith_dot_vec3_u32(u_input.e.xyx, u_input.e.yzx)), ~(~u_input.e.x), ~firstLeadingBit(var_2.x)));
    var var_4 = var_2.yx;
    return func_4(func_4(func_1(func_4(Struct_1(vec2<bool>(arg_0.a.x, false), var_1.b), _wgslsmith_f_op_vec3_f32(func_2()).zy, _wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(207f, arg_0.b, 656f, arg_0.b)))).a, vec2<bool>(true, arg_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b, 1767f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(-1782f - arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1354f, -824f, -635f, arg_0.b)))))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, -394f), vec2<f32>(arg_0.b, 663f)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_0.b, 284f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b, arg_0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -163f), vec2<f32>(1000f, var_1.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_1.b, -1619f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b, -288f, -1063f), vec3<f32>(arg_0.b, var_1.b, arg_0.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 546f, var_1.b) - vec3<f32>(1000f, arg_0.b, var_1.b)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1954f, -229f, -1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 858f, -632f, var_1.b)), vec4<f32>(719f, -1000f, -1000f, var_1.b))), vec4<f32>(_wgslsmith_div_f32(125f, 1185f), -219f, arg_0.b, 257f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_1(select(func_6(func_1(Struct_1(vec2<bool>(true, false), 453f), vec2<bool>(true, false)), ~31056u, Struct_2(Struct_1(vec2<bool>(false, false), -1259f)), func_1(Struct_1(vec2<bool>(true, true), 342f), vec2<bool>(false, false))), !func_5(true, Struct_2(Struct_1(vec2<bool>(true, false), 1182f))).a.a, true), 1f), _wgslsmith_sub_vec3_i32(abs(-(vec3<i32>(2147483647i, 1i, -49047i) | vec3<i32>(u_input.c, u_input.b.x, u_input.d.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.a, u_input.a, u_input.c), select(vec3<i32>(1i, u_input.a, u_input.c) >> (vec3<u32>(u_input.e.x, 34260u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-16848i, u_input.c, -27563i), vec3<i32>(-1i, 3931i, 27941i)), vec3<bool>(true, true, true)), firstLeadingBit(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)))), func_6(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -974f), 688f))), u_input.e.x, Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_f_op_f32(min(165f, -1048f)))), func_1(Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_f32(step(-407f, -338f))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_1 = vec4<u32>(4294967295u, ~((select(0u, 0u, var_0.a.a.x) >> (max(u_input.e.x, u_input.e.x) % 32u)) << (0u % 32u)), countOneBits(58442u), u_input.e.x);
    var_1 = ~(u_input.e & ~max(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 85664u, var_1.x), u_input.e), countOneBits(u_input.e)));
    var var_2 = Struct_2(func_5(true, func_4(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-870f, -324f), vec2<f32>(var_0.a.b, var_0.a.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1746f, var_0.a.b) + vec2<f32>(863f, var_0.a.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, -316f, 820f)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), var_0.a.b, _wgslsmith_f_op_f32(var_0.a.b - var_0.a.b), func_4(var_0.a, vec2<f32>(-286f, 770f), vec3<f32>(-1283f, var_0.a.b, var_0.a.b), vec4<f32>(278f, -1038f, var_0.a.b, -770f)).a.b))).a);
    var_2 = Struct_2(Struct_1(!var_2.a.a, -360f));
    let var_3 = abs(abs(vec2<u32>(~u_input.e.x, firstLeadingBit(~var_1.x))));
    var_1 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.b)), 1276f, var_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b)) - _wgslsmith_f_op_f32(round(var_0.a.b))))), u_input.a, u_input.e);
}

