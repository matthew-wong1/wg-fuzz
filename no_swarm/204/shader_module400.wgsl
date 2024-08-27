struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-15025i, 1i, i32(-2147483648)), vec3<i32>(-14456i, 1i, 0i), vec3<i32>(-29908i, i32(-2147483648), 27266i), vec3<i32>(i32(-2147483648), 19879i, 10066i), vec3<i32>(21394i, 18228i, -52573i), vec3<i32>(i32(-2147483648), -46437i, -28608i), vec3<i32>(23219i, 10160i, 55490i), vec3<i32>(1i, 1i, -35952i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, u_input.a)), vec2<i32>(2147483647i, 6822i));
    var_0 = -(~max(-2147483647i, u_input.c | select(-2147483647i, 4925i, true)));
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    var var_1 = vec2<u32>(u_input.b, select(0u, 91986u, !(!arg_2.a.x)) ^ 0u);
    return arg_2.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    global0 = array<vec3<i32>, 8>();
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, ~u_input.b << (arg_1.d.x % 32u)), firstLeadingBit(arg_1.d.x)), 1u, _wgslsmith_div_u32(5058u, arg_1.d.x), u_input.b ^ (~reverseBits(var_0.d.x) ^ 4294967295u));
    var_2 = min(firstLeadingBit(~vec4<u32>(4294967295u, 1u, 4294967295u, var_1.d.x | var_0.d.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_0.d.x, 18596u, 4294967295u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(78470u, var_1.d.x, 4294967295u, 0u), vec4<u32>(var_1.d.x, arg_1.d.x, var_0.d.x, var_2.x))));
    return _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.c.x)))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1168f)), _wgslsmith_f_op_f32(631f * -455f))), -523f)), _wgslsmith_f_op_f32(func_4(func_3(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -694f), Struct_2(vec4<bool>(false, arg_1.x, arg_1.x, true), _wgslsmith_div_vec3_f32(vec3<f32>(-2528f, -263f, -314f), vec3<f32>(-539f, -948f, -577f)), Struct_1(arg_0, arg_1.zx, vec2<f32>(527f, 1946f), vec2<bool>(true, arg_1.x), vec4<f32>(-2438f, 816f, 1072f, 540f)), select(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(26872u, u_input.b, 0u), vec3<bool>(false, false, arg_0)))), Struct_2(!(!vec4<bool>(true, arg_1.x, true, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2008f, 762f, -445f)), Struct_1(all(arg_1.yz), vec2<bool>(arg_1.x, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1042f, 1053f)), select(arg_1.yy, vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(690f, 395f, 1308f, 100f) * vec4<f32>(1768f, -1000f, 677f, 578f))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 44484u), vec3<u32>(u_input.b, 1u, u_input.b)), 0u, ~u_input.b)), all(!vec3<bool>(arg_0, arg_1.x, arg_1.x)) | true))));
    global0 = array<vec3<i32>, 8>();
    var_0 = 371f;
    let var_1 = Struct_1(true, vec2<bool>(any(func_3(_wgslsmith_f_op_f32(step(-547f, -693f)), _wgslsmith_f_op_f32(-1107f + 529f), Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(-1536f, 1194f, 2261f), Struct_1(arg_1.x, arg_1.zy, vec2<f32>(-459f, 243f), arg_1.xx, vec4<f32>(1950f, -2161f, -277f, -1000f)), vec3<u32>(u_input.b, u_input.b, 17325u)))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(842f, -216f), vec2<f32>(-1000f, 650f), arg_1.yy)) * _wgslsmith_div_vec2_f32(vec2<f32>(-928f, 376f), vec2<f32>(-944f, 1500f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-888f)), _wgslsmith_f_op_f32(f32(-1f) * -369f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(270f, -1046f)))))), !(!vec2<bool>(!arg_0, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1182f)), -1309f, _wgslsmith_f_op_f32(-726f * 574f), _wgslsmith_f_op_f32(f32(-1f) * -497f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(216f, 1233f, -882f, -581f), vec4<f32>(-631f, -1157f, -1110f, 876f))))))));
    global0 = array<vec3<i32>, 8>();
    return !vec3<bool>(arg_0, false, !(!arg_1.x) || arg_1.x);
}

fn func_5(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = !(!(!func_3(_wgslsmith_f_op_f32(-2517f + -405f), -1000f, Struct_2(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec3<f32>(-379f, -1079f, 1178f), Struct_1(true, arg_0.xx, vec2<f32>(-114f, 923f), vec2<bool>(false, false), vec4<f32>(-574f, -1482f, -180f, 1426f)), vec3<u32>(51074u, 37992u, u_input.b)))));
    var var_1 = vec3<bool>(true, (true & var_0.x) | !all(vec2<bool>(true, true)), true);
    let var_2 = Struct_1(((_wgslsmith_f_op_f32(func_4(vec4<bool>(false, arg_0.x, true, false), Struct_2(vec4<bool>(var_0.x, arg_0.x, false, var_0.x), vec3<f32>(143f, 1873f, 1711f), Struct_1(true, vec2<bool>(true, true), vec2<f32>(-239f, -443f), vec2<bool>(arg_0.x, arg_0.x), vec4<f32>(-1000f, 2601f, -1000f, -155f)), vec3<u32>(1u, u_input.b, u_input.b)), var_1.x)) <= -670f) | func_2(arg_0.x, vec3<bool>(true, var_0.x, true)).x) == false, !vec2<bool>(any(vec3<bool>(true, arg_0.x, var_1.x)) | func_3(-1184f, 247f, Struct_2(vec4<bool>(var_1.x, false, false, false), vec3<f32>(-1406f, -1513f, -1000f), Struct_1(arg_0.x, var_1.yy, vec2<f32>(-1297f, 807f), var_1.yz, vec4<f32>(691f, 111f, -1370f, 1343f)), vec3<u32>(4294967295u, u_input.b, 4294967295u))).x, arg_0.x), vec2<f32>(-854f, 106f), vec2<bool>(true, !(_wgslsmith_div_u32(0u, u_input.b) <= _wgslsmith_add_u32(0u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(select(519f, -511f, func_2(false || arg_0.x, func_3(304f, -216f, Struct_2(vec4<bool>(true, true, var_1.x, true), vec3<f32>(174f, -1498f, -996f), Struct_1(var_1.x, vec2<bool>(true, false), vec2<f32>(1000f, -118f), vec2<bool>(arg_0.x, var_1.x), vec4<f32>(1123f, -1000f, 1222f, -502f)), vec3<u32>(25959u, u_input.b, u_input.b))).xzy).x)), _wgslsmith_f_op_f32(abs(678f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1333f)));
    var var_3 = firstLeadingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-34057i, 0i, _wgslsmith_sub_i32(u_input.a, u_input.d), ~u_input.c), vec4<i32>(-u_input.d, u_input.d | u_input.d, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-52263i, u_input.a), vec2<i32>(45062i, u_input.a)))), abs(abs(vec4<i32>(u_input.a, -1i, -16193i, 2147483647i))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 1u), vec4<u32>(4294967295u, 22283u, 49349u, 33128u), vec4<u32>(38849u, u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 39786u, u_input.b, 827u), vec4<u32>(u_input.b, u_input.b, 46496u, 1u))) % vec4<u32>(32u)), select(func_3(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, var_1.x, var_1.x, var_0.x), Struct_2(vec4<bool>(true, true, true, true), var_2.e.zxx, Struct_1(arg_0.x, var_0.wx, var_2.c, vec2<bool>(var_2.d.x, arg_0.x), var_2.e), vec3<u32>(55592u, 1u, 101325u)), arg_0.x)), _wgslsmith_div_f32(var_2.c.x, -170f), Struct_2(vec4<bool>(true, true, true, false), var_2.e.yyw, Struct_1(false, var_0.wx, var_2.c, vec2<bool>(false, arg_0.x), vec4<f32>(var_2.e.x, var_2.e.x, var_2.c.x, var_2.e.x)), vec3<u32>(51926u, 26606u, 14284u))), select(!vec4<bool>(var_1.x, var_0.x, true, var_0.x), !vec4<bool>(true, var_0.x, false, var_2.b.x), true), var_0.x)));
    var var_4 = _wgslsmith_f_op_f32(sign(-1058f));
    return !var_0.yzw;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_i32(~2147483647i, max(-reverseBits(u_input.c ^ 1i), -1i));
    let var_1 = select(vec3<bool>(true, true, true), func_5(select(func_2(arg_0.d.x, !vec3<bool>(arg_0.d.x, false, arg_0.b.x)), select(!vec3<bool>(arg_0.b.x, true, true), select(vec3<bool>(arg_0.a, arg_0.d.x, arg_0.a), vec3<bool>(arg_0.b.x, true, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.b.x, true)), u_input.d > arg_3.x), select(vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, true, arg_0.b.x), false))), vec3<bool>(arg_1.x < arg_1.x, all(vec3<bool>(true, false, any(vec3<bool>(arg_0.a, arg_0.b.x, false)))), ~var_0 <= ~1i));
    global0 = array<vec3<i32>, 8>();
    var var_2 = Struct_1(!any(arg_0.d), var_1.xx, arg_0.c, vec2<bool>(!func_2(!arg_0.b.x, vec3<bool>(var_1.x, arg_0.b.x, true)).x, any(func_3(_wgslsmith_f_op_f32(arg_2 * arg_0.e.x), 1434f, Struct_2(vec4<bool>(var_1.x, true, arg_0.d.x, false), arg_0.e.xyy, Struct_1(arg_0.a, vec2<bool>(true, var_1.x), vec2<f32>(-1252f, arg_2), var_1.xx, vec4<f32>(arg_2, arg_0.e.x, 137f, arg_2)), vec3<u32>(arg_1.x, arg_1.x, u_input.b))))), _wgslsmith_f_op_vec4_f32(arg_0.e + vec4<f32>(1f, _wgslsmith_f_op_f32(-477f + 332f), arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-725f - -113f)))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(345f, 1504f)) * arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!vec4<bool>(false, var_1.x, var_1.x, var_2.d.x), Struct_2(vec4<bool>(var_2.b.x, false, false, false), vec3<f32>(-1381f, var_2.c.x, 673f), Struct_1(true, arg_0.d, vec2<f32>(var_2.e.x, arg_2), vec2<bool>(true, false), vec4<f32>(var_2.c.x, arg_0.e.x, var_2.e.x, 533f)), vec3<u32>(u_input.b, u_input.b, u_input.b)), arg_2 > 969f)))), arg_0, arg_1.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1016f + -1435f), _wgslsmith_div_f32(1627f, -1072f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.e.x * -858f))), var_2.e.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, 1801f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, 283f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(266f, arg_2), vec2<f32>(var_2.c.x, arg_2)))) + _wgslsmith_f_op_vec2_f32(-var_3.b.c))));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> Struct_1 {
    return Struct_1(arg_3, select(arg_1.yw, vec2<bool>(arg_3, all(!arg_1.yx)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, 445f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)), arg_3)), _wgslsmith_f_op_vec2_f32(round(arg_0)), arg_1.zw))), select(select(!(!arg_1.yy), arg_1.wx, func_3(-580f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), Struct_2(arg_1, vec3<f32>(arg_0.x, arg_0.x, 1000f), Struct_1(true, vec2<bool>(true, arg_1.x), arg_0, arg_1.xy, vec4<f32>(1327f, arg_0.x, -1512f, arg_0.x)), vec3<u32>(1u, 20793u, 4294967295u))).ww), !arg_1.ww, func_2(false, func_3(_wgslsmith_f_op_f32(493f - -1137f), _wgslsmith_f_op_f32(-197f - arg_0.x), Struct_2(arg_1, vec3<f32>(609f, arg_0.x, arg_0.x), Struct_1(true, arg_1.wz, vec2<f32>(arg_0.x, arg_0.x), vec2<bool>(arg_3, arg_1.x), vec4<f32>(arg_0.x, arg_0.x, 505f, arg_0.x)), vec3<u32>(u_input.b, u_input.b, 4294967295u))).xzw).yx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -2207f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1601f, -1000f, 344f, arg_0.x), vec4<f32>(arg_0.x, 1445f, 434f, arg_0.x), vec4<bool>(false, true, arg_1.x, arg_3)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-343f, -832f, 1000f, -460f), vec4<f32>(-1295f, -1572f, arg_0.x, arg_0.x))), vec4<f32>(-1876f, arg_0.x, 1000f, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(select(true, true, true) | true, true, true, false), vec3<f32>(1224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-551f))), 1910f), func_6(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(450f, -773f) - _wgslsmith_div_vec2_f32(vec2<f32>(335f, 1025f), vec2<f32>(346f, 425f))), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(false, vec2<bool>(false, true), vec2<f32>(-1319f, 1000f), vec2<bool>(true, false), vec4<f32>(-1245f, 1383f, 1536f, -103f)), ~vec2<u32>(u_input.b, 0u), -1463f, vec3<i32>(0i, -2147483647i, u_input.a))))), !vec4<bool>(true, all(vec3<bool>(false, false, true)), true, any(vec4<bool>(false, false, false, false))), ~(firstTrailingBit(-31464i) >> (1u % 32u)), true), select(select(abs(min(vec3<u32>(u_input.b, 1775u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec3<u32>(~20087u, 8772u, max(u_input.b, u_input.b)), any(vec3<bool>(false, false, false))), _wgslsmith_mod_vec3_u32(vec3<u32>(81782u, 5363u, 45843u) >> ((vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<u32>(60251u, u_input.b, u_input.b))), true));
    var_0 = Struct_2(vec4<bool>(true, var_0.c.b.x, false, false || var_0.c.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_6(var_0.b.zz, select(var_0.a, var_0.a, true), ~u_input.c, func_6(var_0.b.zx, var_0.a, 0i, true).b.x).e.zxw, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b))))), func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<bool>(false, true, var_0.c.b.x, true), Struct_2(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec3<f32>(-1000f, 295f, var_0.b.x), var_0.c, var_0.d), false)) - _wgslsmith_f_op_f32(f32(-1f) * -1208f)), 923f), vec4<bool>(false, true && any(var_0.a.wzz), true, true), _wgslsmith_sub_i32(i32(-1i) * -30169i, ~min(u_input.a, 2147483647i)), any(select(vec2<bool>(true, true), vec2<bool>(true, var_0.c.a), !var_0.c.d.x))), ~vec3<u32>(4294967295u, 7255u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.d.x, var_0.d.x, 4294967295u)), ~vec3<u32>(u_input.b, u_input.b, var_0.d.x))));
    var var_1 = Struct_3(-496f, Struct_1(true, vec2<bool>(1i < select(-1i, -41299i, var_0.c.b.x), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1108f, -1424f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(907f, var_0.c.c.x)))), vec2<bool>(func_5(vec3<bool>(true, true, true)).x, any(var_0.a)), _wgslsmith_f_op_vec4_f32(-var_0.c.e)), ~(~101696u));
    let var_2 = _wgslsmith_f_op_f32(step(var_1.a, var_1.b.c.x));
    let var_3 = func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_1.a) - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.x))), vec4<bool>(true & select(true, all(var_0.a.www), !var_1.b.a), all(var_0.a.zyz), true, true), -1i, u_input.a >= (u_input.a << (_wgslsmith_mod_u32(firstLeadingBit(13530u), 67528u) % 32u)));
    global0 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, 1164f)) * _wgslsmith_f_op_vec2_f32(max(var_1.b.e.yx, vec2<f32>(988f, var_3.e.x)))), vec4<bool>(false, func_5(var_0.a.www).x, var_3.d.x != var_3.d.x, -1897f >= var_0.b.x), 20677i, true), countOneBits(max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, u_input.b)), firstLeadingBit(vec2<u32>(12815u, var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.e.x * _wgslsmith_f_op_f32(-var_2)) + -1297f), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, min(-1i, u_input.c), min(-2147483647i, -1i)), countOneBits(_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(48247u, 8u)], vec3<i32>(-1i, u_input.d, -2147483647i)))))).x, var_3.e);
}

