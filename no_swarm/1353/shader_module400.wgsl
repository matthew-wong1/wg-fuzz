struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(true, false), i32(-2147483648), true, vec3<f32>(1008f, 577f, 410f)), Struct_1(vec2<bool>(false, false), i32(-2147483648), true, vec3<f32>(305f, 142f, -1582f)), Struct_1(vec2<bool>(true, false), -1i, false, vec3<f32>(496f, 1033f, -271f)), Struct_1(vec2<bool>(false, true), 1i, false, vec3<f32>(-1754f, -1029f, -742f)), Struct_1(vec2<bool>(false, false), -15501i, true, vec3<f32>(-2277f, 1001f, -825f)), Struct_1(vec2<bool>(true, true), 17598i, false, vec3<f32>(229f, 514f, -463f)), Struct_1(vec2<bool>(false, false), 0i, true, vec3<f32>(1192f, -1000f, 734f)), Struct_1(vec2<bool>(false, true), 0i, false, vec3<f32>(-699f, -1000f, -260f)), Struct_1(vec2<bool>(false, false), 0i, true, vec3<f32>(1191f, -358f, -287f)), Struct_1(vec2<bool>(false, false), i32(-2147483648), false, vec3<f32>(-1843f, 238f, -702f)), Struct_1(vec2<bool>(false, true), 16582i, false, vec3<f32>(1596f, 753f, -1026f)), Struct_1(vec2<bool>(true, false), -1i, true, vec3<f32>(-668f, 1180f, 315f)), Struct_1(vec2<bool>(true, false), 0i, false, vec3<f32>(220f, -327f, -258f)), Struct_1(vec2<bool>(false, true), 1i, false, vec3<f32>(633f, -175f, -410f)), Struct_1(vec2<bool>(true, true), 0i, false, vec3<f32>(1931f, -370f, -494f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_5 {
    global0 = array<Struct_1, 15>();
    let var_0 = !select(true, any(select(vec2<bool>(true, true), arg_2.a.a.a, !arg_1.x)), all(vec3<bool>(false, false, true)));
    var var_1 = arg_2.a;
    var_1 = arg_2.d;
    let var_2 = 21946u;
    return arg_3;
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> Struct_2 {
    let var_0 = abs(~(~(~(~vec4<u32>(29542u, u_input.a, 30784u, arg_0.a.a.x)))));
    var var_1 = arg_0.a.a.x;
    var var_2 = _wgslsmith_mult_u32(arg_0.a.a.x, 47824u);
    var var_3 = ~firstLeadingBit(abs(~(~vec4<u32>(0u, 4294967295u, 99217u, arg_0.a.a.x))));
    return Struct_2(Struct_1(select(vec2<bool>(select(arg_1, true, false), arg_1 && true), vec2<bool>(true, arg_1 & true), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), false), select(vec2<bool>(true, arg_1), vec2<bool>(false, false), arg_1), vec2<bool>(arg_1, arg_1))), -2147483647i, select(true, arg_1, any(select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(-1987f * -930f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f + -1250f)))), true, Struct_1(!(!(!vec2<bool>(false, arg_1))), 10431i, all(vec2<bool>(select(true, arg_1, false), true)), vec3<f32>(112f, _wgslsmith_f_op_f32(-836f - _wgslsmith_f_op_f32(1328f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 15>();
    var var_1 = 20914u;
    let var_2 = Struct_5(Struct_4(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(0u, 66165u, 0u, 20857u), false), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 38492u, 1u), vec4<u32>(1u, 1u, 18477u, 9138u)))), 2147483647i, u_input.b.yx));
    let var_3 = func_2(-(~(~max(var_2.a.c, var_2.a.c))), !(!vec3<bool>(true, true, var_2.a.b <= arg_0.d.a.b)), arg_0, var_2).a;
    return func_3(var_2, true).c;
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_1, 15>();
    let var_0 = func_4(Struct_3(func_3(func_2(_wgslsmith_sub_vec2_i32(u_input.b.zz, vec2<i32>(2147483647i, u_input.b.x)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, Struct_1(vec2<bool>(false, false), -52204i, true, vec3<f32>(-1205f, -1469f, -986f))), vec4<f32>(714f, 2256f, 231f, 488f), vec3<bool>(false, true, false), Struct_2(Struct_1(vec2<bool>(true, false), 1i, true, vec3<f32>(-1236f, 338f, 224f)), true, Struct_1(vec2<bool>(false, false), -59203i, true, vec3<f32>(168f, -806f, -277f))), Struct_1(vec2<bool>(true, true), u_input.b.x, false, vec3<f32>(-1282f, 1442f, 823f))), Struct_5(Struct_4(vec2<u32>(0u, u_input.a), u_input.b.x, vec2<i32>(u_input.b.x, -2147483647i)))), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(401f, _wgslsmith_f_op_f32(sign(748f)), -1359f, _wgslsmith_f_op_f32(step(-374f, -901f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1227f, 162f, -1000f, 442f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(238f, 246f, 2417f, -1351f))))), select(vec3<bool>(all(vec4<bool>(true, false, true, true)), u_input.b.x == -4641i, -1i > u_input.b.x), vec3<bool>(true, true, select(false, true, false)), vec3<bool>(func_3(Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), 32697i, vec2<i32>(9093i, u_input.b.x))), false).c.a.x, all(vec3<bool>(true, true, true)), true)), func_3(func_2(abs(u_input.b.yx), vec3<bool>(true, true, true), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 15u)], true, Struct_1(vec2<bool>(true, true), -26220i, false, vec3<f32>(-809f, -992f, 2081f))), vec4<f32>(-505f, 527f, -172f, -382f), vec3<bool>(false, false, true), Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], false, Struct_1(vec2<bool>(true, false), u_input.b.x, true, vec3<f32>(368f, -823f, 222f))), global0[_wgslsmith_index_u32(0u, 15u)]), func_2(u_input.b.zz, vec3<bool>(true, true, false), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 15u)], false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(1264f, -2216f, 1469f, 790f), vec3<bool>(false, true, true), Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], false, Struct_1(vec2<bool>(true, false), 0i, false, vec3<f32>(1000f, -841f, -1917f))), global0[_wgslsmith_index_u32(26200u, 15u)]), Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), u_input.b.x, u_input.b.zz)))), select(all(vec4<bool>(false, false, true, false)), func_3(Struct_5(Struct_4(vec2<u32>(52228u, u_input.a), 2147483647i, u_input.b.xy)), false).a.a.x, all(vec3<bool>(true, true, true)))), func_3(Struct_5(func_2(vec2<i32>(u_input.b.x, u_input.b.x), vec3<bool>(false, true, true), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), -1i, false, vec3<f32>(-1000f, -382f, -1078f)), true, Struct_1(vec2<bool>(false, false), u_input.b.x, true, vec3<f32>(-749f, 542f, -528f))), vec4<f32>(-1000f, 673f, -541f, 242f), vec3<bool>(false, false, false), Struct_2(Struct_1(vec2<bool>(true, true), u_input.b.x, true, vec3<f32>(1318f, -943f, -340f)), true, Struct_1(vec2<bool>(true, false), -2147483647i, false, vec3<f32>(109f, -1384f, -1000f))), global0[_wgslsmith_index_u32(u_input.a, 15u)]), Struct_5(Struct_4(vec2<u32>(26273u, 19571u), 1i, u_input.b.yy))).a), true).c));
    var var_1 = func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(abs(u_input.a), 15u)], 295f < _wgslsmith_f_op_f32(-var_0.d.x), Struct_1(!vec2<bool>(var_0.c, var_0.a.x), var_0.b, any(vec4<bool>(true, false, var_0.c, var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(460f, 1013f, -475f) + var_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, 1131f, -1000f) - vec4<f32>(var_0.d.x, 1323f, 681f, -932f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, var_0.d.x, -513f, -453f)))))), !(!vec3<bool>(var_0.c, false, false)), func_3(Struct_5(func_2(u_input.b.zy, vec3<bool>(var_0.a.x, false, var_0.a.x), Struct_3(Struct_2(var_0, var_0.c, global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<f32>(-841f, var_0.d.x, 388f, var_0.d.x), vec3<bool>(false, true, var_0.c), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 15u)], true, var_0), Struct_1(vec2<bool>(false, var_0.a.x), var_0.b, false, var_0.d)), Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), var_0.b, vec2<i32>(2147483647i, var_0.b)))).a), true), func_4(Struct_3(func_3(Struct_5(Struct_4(vec2<u32>(0u, u_input.a), var_0.b, u_input.b.yx)), var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -276f, 860f, var_0.d.x) * vec4<f32>(1784f, var_0.d.x, -386f, var_0.d.x)), vec3<bool>(var_0.a.x, false, true), func_3(Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), var_0.b, vec2<i32>(u_input.b.x, 0i))), var_0.c), func_3(Struct_5(Struct_4(vec2<u32>(4294967295u, u_input.a), -1i, vec2<i32>(u_input.b.x, -2147483647i))), false).a))));
    var var_2 = Struct_3(func_3(func_2(vec2<i32>(-18899i, reverseBits(2147483647i)), !(!vec3<bool>(false, var_1.c, var_0.a.x)), Struct_3(Struct_2(var_0, false, Struct_1(vec2<bool>(false, var_0.c), var_1.b, true, var_0.d)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(301f, -1738f, var_1.d.x, 1000f), vec4<f32>(var_1.d.x, var_1.d.x, -1614f, 1657f))), select(vec3<bool>(true, var_1.c, false), vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.c), Struct_2(Struct_1(vec2<bool>(var_0.c, var_0.a.x), -21884i, false, var_0.d), var_0.c, var_0), Struct_1(var_1.a, var_1.b, var_0.a.x, var_1.d)), Struct_5(func_2(vec2<i32>(var_1.b, var_1.b), vec3<bool>(var_1.a.x, false, var_0.c), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), var_1.b, var_1.a.x, var_0.d), false, Struct_1(var_0.a, 1294i, var_0.c, vec3<f32>(var_0.d.x, 119f, var_1.d.x))), vec4<f32>(var_1.d.x, -1196f, 959f, var_1.d.x), vec3<bool>(true, false, var_1.a.x), Struct_2(var_0, true, Struct_1(vec2<bool>(true, false), -44099i, var_0.c, vec3<f32>(-935f, -1000f, var_0.d.x))), Struct_1(vec2<bool>(false, true), var_0.b, false, vec3<f32>(-1103f, 296f, 870f))), Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), u_input.b.x, vec2<i32>(-77i, var_1.b)))).a)), !(all(vec2<bool>(false, var_0.c)) | false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-884f, var_1.d.x, -115f, var_0.d.x), vec4<f32>(-563f, var_0.d.x, 1155f, var_1.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1459f, var_0.d.x, var_0.d.x, var_0.d.x)))))))), !(!(!(!vec3<bool>(true, var_1.a.x, var_0.c)))), Struct_2(func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1674u, 15u)], false, Struct_1(var_0.a, var_1.b, false, vec3<f32>(var_1.d.x, var_1.d.x, -1437f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 536f, 1000f, var_0.d.x)), select(vec3<bool>(var_1.c, var_1.a.x, true), vec3<bool>(var_1.c, var_1.a.x, var_1.a.x), true), func_3(Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), 0i, vec2<i32>(1i, var_1.b))), var_0.a.x), global0[_wgslsmith_index_u32(u_input.a, 15u)])), var_1.d.x > -1519f, func_3(Struct_5(Struct_4(vec2<u32>(4294967295u, u_input.a), -37617i, vec2<i32>(var_0.b, var_0.b))), true).a), func_4(Struct_3(Struct_2(Struct_1(var_1.a, u_input.b.x, var_1.a.x, var_1.d), all(vec4<bool>(true, true, var_1.c, var_1.a.x)), Struct_1(var_0.a, var_1.b, false, vec3<f32>(var_0.d.x, var_0.d.x, -1551f))), vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(floor(var_1.d.x)), _wgslsmith_f_op_f32(1000f * -520f), -1562f), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_1.a.x), true), select(vec3<bool>(true, var_0.c, false), vec3<bool>(false, var_0.a.x, false), var_0.c), vec3<bool>(var_1.a.x, true, true)), func_3(func_2(u_input.b.zy, vec3<bool>(false, var_1.a.x, true), Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 15u)], false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_0.d.x), vec3<bool>(var_0.a.x, var_1.c, false), Struct_2(Struct_1(vec2<bool>(var_1.c, var_0.c), u_input.b.x, var_0.a.x, vec3<f32>(var_0.d.x, -111f, 1028f)), true, Struct_1(vec2<bool>(true, false), -37756i, false, vec3<f32>(1000f, var_1.d.x, var_1.d.x))), Struct_1(vec2<bool>(var_0.c, false), -1188i, true, vec3<f32>(1905f, -1881f, -1053f))), Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), var_1.b, u_input.b.xz))), func_3(Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), -46552i, vec2<i32>(1i, 2147483647i))), true).c.c), global0[_wgslsmith_index_u32(u_input.a, 15u)])));
    var var_3 = Struct_3(var_2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, _wgslsmith_f_op_f32(-1015f + var_0.d.x), 668f, _wgslsmith_f_op_f32(round(var_2.e.d.x))))), !select(!select(vec3<bool>(var_0.c, var_1.c, true), vec3<bool>(var_1.a.x, var_1.c, var_0.a.x), false), !(!vec3<bool>(var_1.c, true, var_2.d.a.a.x)), select(vec3<bool>(true, var_1.a.x, var_2.d.b), var_2.c, !var_2.c)), func_3(Struct_5(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_1.b), u_input.b.xy), select(vec3<bool>(true, var_2.d.b, var_2.a.a.c), vec3<bool>(true, var_2.e.c, false), vec3<bool>(true, var_0.c, false)), Struct_3(var_2.d, var_2.b, vec3<bool>(var_2.c.x, var_2.e.a.x, false), Struct_2(Struct_1(vec2<bool>(var_2.d.a.c, false), var_0.b, true, var_0.d), var_1.c, Struct_1(vec2<bool>(var_0.a.x, var_1.a.x), -61515i, var_1.a.x, var_2.a.c.d)), global0[_wgslsmith_index_u32(u_input.a, 15u)]), func_2(vec2<i32>(var_2.e.b, var_1.b), var_2.c, Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_1.a.x, Struct_1(vec2<bool>(var_0.a.x, false), 2147483647i, var_0.a.x, var_2.d.a.d)), vec4<f32>(var_0.d.x, var_1.d.x, -1377f, var_1.d.x), vec3<bool>(false, false, true), Struct_2(Struct_1(var_0.a, u_input.b.x, false, vec3<f32>(var_2.e.d.x, -909f, var_2.e.d.x)), false, var_0), Struct_1(var_0.a, -1i, true, var_1.d)), Struct_5(Struct_4(vec2<u32>(1u, 4294967295u), -32298i, vec2<i32>(-29083i, var_2.a.a.b))))).a), var_2.e.a.x), Struct_1(vec2<bool>(all(!vec4<bool>(false, false, false, var_2.a.a.a.x)), !var_1.c & true), var_1.b, var_2.e.a.x, var_1.d));
    return Struct_5(Struct_4(~select(~vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), !vec2<bool>(var_0.a.x, var_3.c.x)), var_1.b, -vec2<i32>(abs(1i), 7654i)));
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> Struct_5 {
    let var_0 = true;
    let var_1 = u_input.a;
    var var_2 = !select(vec4<bool>(arg_0, var_0, !arg_0, all(vec2<bool>(true, true))), vec4<bool>(true, all(vec2<bool>(var_0, var_0)) | any(vec2<bool>(false, true)), true, all(vec2<bool>(var_0, true))), false);
    global0 = array<Struct_1, 15>();
    let var_3 = _wgslsmith_mod_i32(arg_1.a.b, ~(~u_input.b.x));
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> vec3<bool> {
    let var_0 = any(select(!select(!vec4<bool>(false, arg_1, true, false), !vec4<bool>(true, false, arg_1, true), true), select(vec4<bool>(false, arg_1, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, true, false), true), select(false, false, true)));
    let var_1 = (16020u & ~u_input.a) & _wgslsmith_sub_u32(~(~(u_input.a | 24932u)), arg_2.a.a.x);
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_div_vec4_u32(~min(firstTrailingBit(select(vec4<u32>(arg_2.a.a.x, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 51753u, 33941u, var_1), vec4<bool>(true, true, false, arg_1))), reverseBits(~vec4<u32>(61828u, u_input.a, u_input.a, u_input.a))), ~(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_2.a.a.x, 17333u, u_input.a, var_1), vec4<u32>(1u, 4294967295u, 0u, var_1), true), ~vec4<u32>(44395u, var_1, 16793u, u_input.a)) | ~select(vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u), vec4<u32>(4294967295u, var_1, u_input.a, arg_2.a.a.x), vec4<bool>(var_0, arg_1, var_0, var_0))));
    return !vec3<bool>(!any(!vec3<bool>(true, arg_1, false)), true, all(vec2<bool>(true, true)) || true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(u_input.b.x == 2147483647i, true, true), func_6(_wgslsmith_div_i32(-1i, -1254i), true, func_5(true, func_1()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(970f))))), (~u_input.b.x << (0u % 32u)) < reverseBits(36991i | u_input.b.x)), !vec3<bool>(-994f <= func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], false, global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<f32>(378f, -561f, -954f, 2970f), vec3<bool>(true, false, true), Struct_2(Struct_1(vec2<bool>(false, false), -9741i, false, vec3<f32>(-1390f, 514f, 953f)), false, Struct_1(vec2<bool>(false, true), u_input.b.x, false, vec3<f32>(-1000f, -2259f, -311f))), Struct_1(vec2<bool>(false, false), -1i, false, vec3<f32>(-232f, 982f, 751f)))).d.x, false, true), select(select(vec3<bool>(true, true, true), func_6(-u_input.b.x, -20248i == u_input.b.x, Struct_5(Struct_4(vec2<u32>(u_input.a, u_input.a), u_input.b.x, vec2<i32>(u_input.b.x, 0i))), _wgslsmith_f_op_f32(min(657f, 1569f))), true), select(!func_6(0i, false, Struct_5(Struct_4(vec2<u32>(30019u, u_input.a), 2147483647i, vec2<i32>(u_input.b.x, u_input.b.x))), -562f), vec3<bool>(true, true, true), !func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], false, Struct_1(vec2<bool>(true, false), 12095i, true, vec3<f32>(-580f, -1612f, -265f))), vec4<f32>(1206f, 276f, -2183f, -973f), vec3<bool>(true, true, false), Struct_2(global0[_wgslsmith_index_u32(0u, 15u)], false, global0[_wgslsmith_index_u32(u_input.a, 15u)]), global0[_wgslsmith_index_u32(45230u, 15u)])).a.x), vec3<bool>(true, true, _wgslsmith_f_op_f32(sign(174f)) <= _wgslsmith_f_op_f32(f32(-1f) * -922f))));
    let var_1 = -409f;
    global0 = array<Struct_1, 15>();
    let var_2 = select(!vec4<bool>(!(!var_0.x), true, true, true), select(!vec4<bool>(22091i == u_input.b.x, true, false, any(vec4<bool>(var_0.x, var_0.x, true, true))), !select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(false, false, var_0.x, var_0.x), true), select(select(!vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false), !vec4<bool>(var_0.x, true, var_0.x, true)), select(!vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, true, false, var_0.x)), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x), false)), var_0.x)), func_5(var_0.x, Struct_5(Struct_4(vec2<u32>(1u, 137627u), u_input.b.x, vec2<i32>(1i, -9252i)))).a.a.x <= ~54935u);
    var var_3 = u_input.b.x;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -774f);
    global0 = array<Struct_1, 15>();
    let var_5 = Struct_5(func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~select(vec4<u32>(u_input.a, u_input.a, 4294967295u, var_5.a.a.x), vec4<u32>(u_input.a, var_5.a.a.x, var_5.a.a.x, 1u), var_0.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, -1085f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(362f, var_1), vec2<f32>(var_4, var_1), var_2.xx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1176f, -724f) * vec2<f32>(-431f, 246f))) - vec2<f32>(_wgslsmith_f_op_f32(var_1 + 300f), _wgslsmith_f_op_f32(step(1580f, 930f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_4) - vec2<f32>(-1105f, -1841f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, var_1)))), vec2<f32>(-1543f, func_4(Struct_3(Struct_2(Struct_1(vec2<bool>(var_2.x, true), u_input.b.x, true, vec3<f32>(var_4, -242f, var_1)), var_0.x, global0[_wgslsmith_index_u32(28692u, 15u)]), vec4<f32>(774f, -341f, -1922f, -1284f), vec3<bool>(false, false, false), Struct_2(global0[_wgslsmith_index_u32(var_5.a.a.x, 15u)], var_0.x, global0[_wgslsmith_index_u32(167494u, 15u)]), Struct_1(vec2<bool>(true, true), -37056i, var_2.x, vec3<f32>(var_4, -1440f, -1000f)))).d.x)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1)));
}

