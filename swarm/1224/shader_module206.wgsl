struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~arg_0.x;
    var var_1 = -6222i;
    var var_2 = -_wgslsmith_mult_vec3_i32(arg_3.a, abs(arg_3.a));
    var_1 = firstTrailingBit(arg_3.b);
    var_1 = -2321i;
    return arg_3;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1088f), -101f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(arg_0, arg_0)))))));
    var var_2 = arg_2;
    var var_3 = arg_2;
    var_3 = func_2(vec4<u32>(0u, u_input.a, ~(~abs(4294967295u)), 9977u), vec4<f32>(_wgslsmith_div_f32(860f, 2004f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(-arg_0)))), 835f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1335f)))), select(func_2((vec4<u32>(52344u, 0u, u_input.a, 74656u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) | abs(vec4<u32>(31541u, 15880u, 0u, 20010u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1999f, -172f, arg_0, var_1.x) - vec4<f32>(-851f, var_0, arg_0, arg_0)))), var_3.c.x, arg_2).c.x, true, false), func_2(vec4<u32>(_wgslsmith_mult_u32(~u_input.a, u_input.a), countOneBits(u_input.a >> (26983u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 4294967295u))), (u_input.a << (u_input.a % 32u)) | u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1464f, -1037f, -340f, -1109f), vec4<f32>(arg_0, -1110f, arg_0, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, 437f, arg_0, var_0))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 470f, var_0, 609f) * vec4<f32>(var_0, 451f, 517f, -259f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, -250f, -666f, -1000f)))))), !(1u > u_input.a), Struct_1(var_2.a, -16277i, select(!var_2.c, vec4<bool>(var_3.c.x, false, arg_2.c.x, true), var_2.c.x != true))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = 18544u;
    var var_1 = vec2<i32>(-2147483647i, arg_0.b);
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(arg_0.a, arg_0.a), vec3<i32>(countOneBits(-1i), arg_0.a.x, -41548i))), arg_0.a.x, func_3(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(643f, -131f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f))), _wgslsmith_mod_i32(var_1.x, -1i), Struct_1(func_2(abs(vec4<u32>(arg_1, 1u, u_input.a, 4294967295u)), vec4<f32>(1416f, 997f, -1649f, 1508f), !arg_2.x, func_2(vec4<u32>(arg_1, 6088u, 4294967295u, 47149u), vec4<f32>(-1029f, 1605f, -969f, -1337f), arg_0.c.x, arg_0)).a, abs(-arg_0.a.x), vec4<bool>(arg_2.x == arg_0.c.x, true, true, true))).c);
    let var_3 = func_3(-1786f, var_2.a.x, Struct_1(~select(vec3<i32>(-2147483647i, 0i, -2147483647i), var_2.a, arg_0.c.yzx), 380i, arg_2));
    return abs(select(~vec3<u32>(u_input.a, 22350u, 8403u) >> (reverseBits(vec3<u32>(0u, u_input.a, 0u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_1, arg_1, 0u), ~vec3<u32>(38714u, 54480u, u_input.a)), ~(~vec3<u32>(51483u, 0u, 28495u))), arg_0.c.yzw));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_4(func_3(-408f, arg_0, func_2(min(vec4<u32>(42122u, 62498u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 19968u, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1148f, 1019f, 367f, -1459f) + vec4<f32>(588f, -209f, 698f, 233f)), u_input.a != 0u, Struct_1(vec3<i32>(-55670i, arg_0, 36131i), arg_0, vec4<bool>(true, false, false, false)))), ~u_input.a, select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), func_3(-1366f, 1i, Struct_1(vec3<i32>(arg_0, 2147483647i, -1i), -1i, vec4<bool>(false, true, true, true))).c, vec4<bool>(true, true, true, true)), false)) >> ((min(~firstTrailingBit(vec3<u32>(4294967295u, u_input.a, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a)) << (_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(45629u, 1u, u_input.a), func_2(vec4<u32>(39909u, 20223u, 35284u, 4294967295u), vec4<f32>(-275f, -251f, -422f, 700f), true, Struct_1(vec3<i32>(arg_0, arg_0, -13883i), arg_0, vec4<bool>(false, true, true, false))).c.zyx), vec3<u32>(76205u, 4294967295u, u_input.a) << (firstTrailingBit(vec3<u32>(0u, 1u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = 4664i;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -219f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(289f + 333f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(691f - 965f), -1578f, true)))) + 1000f), !select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(arg_0, arg_0)) < arg_0, func_3(_wgslsmith_f_op_f32(floor(-210f)), _wgslsmith_mod_i32(0i, 35815i), func_2(vec4<u32>(4294967295u, var_0.x, 1u, 44968u), vec4<f32>(-1311f, -1586f, 323f, 157f), true, Struct_1(vec3<i32>(arg_0, arg_0, 88512i), arg_0, vec4<bool>(true, true, true, true)))).c.x, !func_3(-764f, -2147483647i, Struct_1(vec3<i32>(-18369i, arg_0, 0i), -2147483647i, vec4<bool>(true, false, false, true))).c.x)));
    global0 = !((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 12640i, 2147483647i, arg_0), vec4<i32>(-19782i, arg_0, arg_0, -16494i)) << (select(3191u << (0u % 32u), ~var_0.x, true) % 32u)) == min(~(-arg_0), -_wgslsmith_sub_i32(12409i, -1i)));
    var_1 = ~2147483647i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(func_1(-1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-6928i, 119386i, 8709i, 2768i), vec4<i32>(20050i, -1i, 2147483647i, 19214i)) << (~0u % 32u), _wgslsmith_sub_i32(~1i, -_wgslsmith_clamp_i32(1i, 31292i, 1i))), _wgslsmith_mult_i32(min(1i, countOneBits(1i)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(918f, -164f)) + 1f), -min(4160i, 2147483647i), Struct_1(vec3<i32>(0i, 41882i, 1i), firstLeadingBit(-25332i), vec4<bool>(true, true, true, true))).b), !func_2(~firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, 12042u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -415f, -1660f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1689f, -401f, -1000f, -877f) + vec4<f32>(-521f, -2208f, -554f, 446f)))), all(vec2<bool>(true, false)), Struct_1(firstLeadingBit(vec3<i32>(3726i, 14089i, -1i)), func_2(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<f32>(1000f, 323f, -1839f, 1244f), false, Struct_1(vec3<i32>(-1i, -1i, -2147483647i), 30418i, vec4<bool>(false, true, false, true))).a.x, vec4<bool>(true, false, false, true))).c);
    var var_1 = select(!vec2<bool>((var_0.c.x == false) && (u_input.a >= u_input.a), func_3(_wgslsmith_f_op_f32(565f * -879f), -var_0.b, func_3(-870f, -28101i, var_0)).c.x), select(func_2(vec4<u32>(u_input.a, 57306u, 1u, 69988u) & min(vec4<u32>(53603u, 0u, 1u, 6069u), vec4<u32>(0u, u_input.a, 1u, 4294967295u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1527f, 640f, 1894f, -1005f)))), true | var_0.c.x, func_2(vec4<u32>(17414u, 0u, 36825u, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, 836f, -1000f, -364f)), false, func_3(1134f, 2147483647i, var_0))).c.yz, func_3(2365f, var_0.b, func_2(abs(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 690f, 862f, -2296f))), !var_0.c.x, Struct_1(var_0.a, -1i, vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x)))).c.wz, vec2<bool>(var_0.c.x, var_0.c.x)), !vec2<bool>(true, (0i << (u_input.a % 32u)) == (0i ^ var_0.b)));
    let var_2 = select(false, var_1.x, true);
    var var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(sign(-827f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(535f, -1000f)), true)))));
    var var_4 = var_0;
    var var_5 = func_2(vec4<u32>(1u, countOneBits(u_input.a), select(42134u >> (~u_input.a % 32u), 1u << (u_input.a % 32u), !all(var_0.c)), _wgslsmith_add_u32(u_input.a, 0u)), vec4<f32>(338f, _wgslsmith_f_op_f32(max(-419f, _wgslsmith_f_op_f32(abs(var_3.x)))), var_3.x, var_3.x), false, var_0);
    var var_6 = 10303i;
    let var_7 = Struct_1(select(var_4.a | -var_5.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, abs(0i), -1i), func_3(592f, ~var_0.b, func_2(vec4<u32>(107632u, u_input.a, 4294967295u, 107248u), vec4<f32>(var_3.x, -1111f, var_3.x, var_3.x), var_4.c.x, var_0)).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) * 758f) >= var_3.x), -_wgslsmith_div_i32(-var_4.b, _wgslsmith_div_i32(-var_4.b, -1i)), !func_3(-1005f, abs(_wgslsmith_mult_i32(var_4.b, 1i)), func_2(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<f32>(var_3.x, 1170f, var_3.x, var_3.x)), !var_5.c.x, func_3(var_3.x, var_4.a.x, Struct_1(vec3<i32>(var_4.a.x, var_0.b, 2147483647i), 14563i, vec4<bool>(var_5.c.x, false, false, var_1.x))))).c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), var_3.x, _wgslsmith_f_op_f32(min(-1344f, _wgslsmith_f_op_f32(sign(-401f)))), ~firstTrailingBit(~(vec4<i32>(-33795i, 0i, var_7.b, var_0.b) & vec4<i32>(var_7.a.x, var_0.b, var_5.b, var_0.a.x))));
}

