struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -3198i;

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(4587u, vec2<u32>(4294967295u, 1u), false, vec4<i32>(0i, -1i, 66846i, 81720i), vec2<bool>(false, false)), Struct_4(11854u, vec2<u32>(4294967295u, 22305u), true, vec4<i32>(24916i, 0i, -32211i, 1i), vec2<bool>(true, false)), Struct_4(0u, vec2<u32>(0u, 63237u), true, vec4<i32>(-1i, 2147483647i, 37149i, -1i), vec2<bool>(false, false)), Struct_4(65166u, vec2<u32>(4294967295u, 11488u), false, vec4<i32>(-17467i, 4847i, i32(-2147483648), -219i), vec2<bool>(true, true)), Struct_4(4294967295u, vec2<u32>(4294967295u, 13072u), false, vec4<i32>(-1i, 1i, 35927i, -23439i), vec2<bool>(true, false)), Struct_4(0u, vec2<u32>(45146u, 50977u), false, vec4<i32>(-15365i, 28297i, -1i, 4141i), vec2<bool>(true, true)), Struct_4(12246u, vec2<u32>(18216u, 1u), false, vec4<i32>(1753i, -1i, 2147483647i, 1i), vec2<bool>(false, false)), Struct_4(65717u, vec2<u32>(37817u, 1u), true, vec4<i32>(-15791i, -1i, i32(-2147483648), 1i), vec2<bool>(false, false)), Struct_4(4294967295u, vec2<u32>(1u, 55286u), false, vec4<i32>(-10085i, 2147483647i, -38279i, 1245i), vec2<bool>(false, true)), Struct_4(9909u, vec2<u32>(1u, 29264u), true, vec4<i32>(1i, 1i, 1i, 36444i), vec2<bool>(true, true)), Struct_4(53474u, vec2<u32>(1u, 21548u), true, vec4<i32>(-30186i, 57755i, -1i, 57625i), vec2<bool>(true, false)), Struct_4(0u, vec2<u32>(123562u, 1341u), true, vec4<i32>(28055i, 0i, 36713i, 36931i), vec2<bool>(false, true)), Struct_4(1u, vec2<u32>(86199u, 123186u), true, vec4<i32>(25155i, 0i, 0i, -45779i), vec2<bool>(false, true)), Struct_4(10823u, vec2<u32>(1u, 6892u), false, vec4<i32>(9597i, -1i, -13739i, i32(-2147483648)), vec2<bool>(false, true)), Struct_4(49734u, vec2<u32>(4294967295u, 0u), true, vec4<i32>(63866i, i32(-2147483648), 1i, -13861i), vec2<bool>(false, true)), Struct_4(1u, vec2<u32>(67408u, 4294967295u), false, vec4<i32>(i32(-2147483648), 47718i, -1i, 26085i), vec2<bool>(true, true)), Struct_4(16576u, vec2<u32>(15386u, 4294967295u), false, vec4<i32>(i32(-2147483648), 2147483647i, -1694i, 13130i), vec2<bool>(false, true)), Struct_4(4294967295u, vec2<u32>(1298u, 8808u), true, vec4<i32>(-7248i, 2147483647i, -1i, -7355i), vec2<bool>(true, false)), Struct_4(1u, vec2<u32>(0u, 1u), true, vec4<i32>(-34923i, -1i, -39149i, 2147483647i), vec2<bool>(false, true)), Struct_4(1240u, vec2<u32>(20656u, 73350u), false, vec4<i32>(2147483647i, 1i, 1i, 0i), vec2<bool>(true, true)), Struct_4(4294967295u, vec2<u32>(17056u, 61440u), true, vec4<i32>(-1i, 19289i, 2147483647i, -1i), vec2<bool>(false, false)), Struct_4(85639u, vec2<u32>(61994u, 2160u), true, vec4<i32>(6517i, -1i, -60099i, 6015i), vec2<bool>(false, true)), Struct_4(1u, vec2<u32>(0u, 4294967295u), false, vec4<i32>(1i, 0i, -50047i, 0i), vec2<bool>(true, true)), Struct_4(0u, vec2<u32>(68866u, 4294967295u), false, vec4<i32>(1i, 2147483647i, 48929i, 0i), vec2<bool>(true, true)), Struct_4(50099u, vec2<u32>(38046u, 1u), true, vec4<i32>(0i, 0i, 2209i, 1i), vec2<bool>(true, false)));

var<private> global2: u32 = 43873u;

var<private> global3: i32 = -1i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global1 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f))))));
    global2 = u_input.c;
    return !select(vec4<bool>(true, all(!arg_0.a), !(49226u >= u_input.c), !arg_0.e), select(vec4<bool>(arg_0.a.x, false, arg_0.d.x, true), select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), arg_0.d.x), select(!arg_0.a, !arg_0.a, vec4<bool>(false, arg_0.d.x, arg_0.a.x, arg_0.a.x))), !select(select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.d.x, arg_0.d.x, arg_0.e), arg_0.e), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), select(arg_0.a, vec4<bool>(true, false, true, arg_0.d.x), arg_0.a.x)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(select(vec4<bool>(true, (u_input.c >= 47319u) | true, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), _wgslsmith_mod_i32(~max(abs(2147483647i), 23463i | u_input.a), max(u_input.b.x, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f + 480f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)))), 369f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1294f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(2150f)), 534f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1386f, -2095f, all(vec2<bool>(false, true)))) - 1f)), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), func_1(Struct_1(vec4<bool>(true, false, false, false), u_input.b.x | u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, 428f, -1463f, -1497f)), vec2<bool>(true, true), u_input.c >= u_input.c)).wz, !any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), all(!func_1(Struct_1(vec4<bool>(false, true, false, false), 1i, vec4<f32>(995f, -1000f, -720f, 117f), vec2<bool>(true, false), true)).zy));
    return select(!vec3<bool>(var_0.e, 4294967295u < u_input.c, !(true != var_0.a.x)), var_0.a.zyy, true);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_3(u_input.c, Struct_2(-1i & firstLeadingBit(~u_input.a), (arg_1.c.x && false) | ((true == arg_1.c.x) & true), Struct_1(vec4<bool>(!arg_1.c.x, arg_1.b.c.d.x, all(vec2<bool>(true, false)), true), ~u_input.b.x, arg_1.b.c.c, arg_1.b.c.a.zy, false)), vec2<bool>(any(func_3()), true));
    return !(!var_0.b.c.a.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a, false, Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), !func_1(Struct_1(vec4<bool>(true, false, true, false), 24035i, vec4<f32>(1000f, -292f, 449f, 650f), vec2<bool>(true, true), true)), true), u_input.b.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1729f, -1588f, 491f, -836f))))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, select(false, false, true)), func_2(vec4<u32>(1u, 84159u, u_input.c, 76212u), Struct_3(u_input.c, Struct_2(u_input.a, true, Struct_1(vec4<bool>(true, false, false, true), u_input.a, vec4<f32>(-245f, -378f, 263f, -372f), vec2<bool>(true, false), false)), vec2<bool>(true, false)))), any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, true)))));
    var var_1 = var_0.c.c;
    var var_2 = vec4<i32>(~countOneBits(~(-u_input.b.x)), 1i, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.c.b, -2147483647i, 0i, -21845i)), vec4<i32>(u_input.a, u_input.a, u_input.b.x, -11326i)), 1726i), -29021i);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-570f)) + var_0.c.c.x), var_0.c.d.x && var_0.c.a.x));
    let var_4 = Struct_1(!func_1(var_0.c), var_0.a >> (~min(u_input.c, u_input.c) % 32u), var_0.c.c, vec2<bool>(var_0.b, select(true, true, true) | var_0.b), u_input.c > 4294967295u);
    var var_5 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.c, u_input.c, 20050u), vec3<u32>(0u, 38322u, u_input.c)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, 104878u, u_input.c))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(2628u, 1u, 40142u), vec3<u32>(6166u, 1u, 16256u)))), 4294967295u));
}

