struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(90698u, -1i, Struct_1(vec2<f32>(-1000f, -409f))), Struct_2(4294967295u, i32(-2147483648), Struct_1(vec2<f32>(-910f, -1183f))), Struct_2(4294967295u, 30310i, Struct_1(vec2<f32>(-500f, 140f))), Struct_2(50214u, -18216i, Struct_1(vec2<f32>(649f, 927f))), Struct_2(17133u, 7003i, Struct_1(vec2<f32>(519f, -669f))), Struct_2(3265u, i32(-2147483648), Struct_1(vec2<f32>(-206f, 1230f))), Struct_2(21954u, -61545i, Struct_1(vec2<f32>(-1609f, 1846f))), Struct_2(39386u, 0i, Struct_1(vec2<f32>(282f, -1538f))), Struct_2(1u, 27587i, Struct_1(vec2<f32>(1000f, -1648f))), Struct_2(4294967295u, 14930i, Struct_1(vec2<f32>(1960f, 1133f))), Struct_2(0u, 2147483647i, Struct_1(vec2<f32>(372f, 269f))), Struct_2(19989u, 7290i, Struct_1(vec2<f32>(-1068f, 1132f))), Struct_2(3953u, i32(-2147483648), Struct_1(vec2<f32>(-493f, 1152f))), Struct_2(48919u, 46020i, Struct_1(vec2<f32>(-592f, 605f))), Struct_2(23609u, 0i, Struct_1(vec2<f32>(194f, 259f))), Struct_2(4294967295u, 1i, Struct_1(vec2<f32>(1023f, 1000f))), Struct_2(4294967295u, 0i, Struct_1(vec2<f32>(-286f, -868f))), Struct_2(0u, 38299i, Struct_1(vec2<f32>(-2048f, -1000f))));

var<private> global1: Struct_2 = Struct_2(0u, 12665i, Struct_1(vec2<f32>(1006f, -765f)));

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-1i, 1i, 2147483647i, 1i), vec4<i32>(35194i, -1805i, i32(-2147483648), 63418i), vec4<i32>(-30837i, -44403i, -1i, 1i), vec4<i32>(-43426i, -1i, 1i, -110627i), vec4<i32>(-12425i, -1i, 19957i, 19238i), vec4<i32>(54717i, -73190i, 2903i, 0i), vec4<i32>(-29006i, -1i, -837i, i32(-2147483648)), vec4<i32>(6520i, i32(-2147483648), -38800i, -52012i), vec4<i32>(0i, -1i, 2147483647i, -39668i), vec4<i32>(8335i, 41714i, 2147483647i, -9885i), vec4<i32>(i32(-2147483648), -1i, 0i, -1i), vec4<i32>(55834i, 2147483647i, i32(-2147483648), 44357i), vec4<i32>(37977i, -42546i, 0i, 2147483647i), vec4<i32>(2147483647i, 10594i, i32(-2147483648), -26041i), vec4<i32>(2147483647i, 1i, 33747i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 1i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(11119i, -3066i, 3761i, -1i), vec4<i32>(6637i, i32(-2147483648), 2147483647i, 25395i), vec4<i32>(-1i, -1i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), vec4<i32>(-23669i, 1i, -1i, -74471i), vec4<i32>(0i, 14958i, 2493i, 17942i), vec4<i32>(3056i, 0i, 0i, -1i), vec4<i32>(0i, 1i, -55407i, -1136i), vec4<i32>(60152i, 6961i, -56663i, -88789i), vec4<i32>(2147483647i, -33103i, -14528i, 0i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 1i), vec4<i32>(-25427i, -29175i, -29607i, -2795i), vec4<i32>(0i, 1i, 91135i, -42203i), vec4<i32>(13869i, -40372i, 8111i, 35221i));

var<private> global3: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global4: array<vec4<f32>, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = global1.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)) - 468f);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = global1.b;
    global4 = array<vec4<f32>, 13>();
    let var_2 = vec2<u32>(firstLeadingBit((global1.a ^ u_input.a) ^ 1u), max(19142u, _wgslsmith_mult_u32(u_input.a & u_input.a, abs(global1.a)))) | abs(vec2<u32>(~_wgslsmith_add_u32(1u, u_input.a), u_input.a));
    var var_3 = u_input.a;
    return Struct_2(var_2.x, ~global1.b, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.x, global1.c.a.x)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global2 = array<vec4<i32>, 31>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global1 = Struct_2(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(u_input.a, ~global1.a)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1074u, u_input.a, arg_2.a, 4294967295u)), firstTrailingBit(~vec4<u32>(u_input.a, global1.a, 1u, 0u)))), -2147483647i, global1.c);
    var var_0 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.c.a + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a.x, global1.c.a.x)))))).c);
    return reverseBits(_wgslsmith_add_u32(arg_3.a, max(var_0.a, ~(~global1.a))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    var var_0 = !all(select(select(!vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, true, false), any(vec4<bool>(false, arg_2.x, false, false))), !(!vec4<bool>(arg_2.x, true, arg_2.x, false)), !(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))));
    global1 = Struct_2(u_input.a, global1.b, global1.c);
    let var_1 = global1.c;
    var var_2 = vec4<u32>(13708u, _wgslsmith_mult_u32(func_4(vec2<u32>(u_input.a, 37632u), global1.c, func_2(global1.c), func_2(global1.c)), ~(~2548u)), global1.a, 60462u) << (vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43673u, 4294967295u, u_input.a), vec4<u32>(4294967295u, 80796u, 0u, 0u))), 1u, select(u_input.a ^ abs(global1.a), ~(global1.a << (u_input.a % 32u)), _wgslsmith_f_op_f32(-var_1.a.x) >= _wgslsmith_f_op_f32(abs(arg_3))), abs(func_2(func_2(global1.c).c).a)) % vec4<u32>(32u));
    let var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(~(91763u | var_2.x)), 18u)];
    return var_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~_wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(u_input.a, 1u))), 2147483647i, global1.c);
    let var_1 = global0[_wgslsmith_index_u32(global1.a, 18u)];
    global0 = array<Struct_2, 18>();
    var var_2 = select(func_5(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(step(var_1.c.a, var_0.c.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 1u, var_1.a, global1.a), vec4<u32>(4294967295u, global1.a, 62426u, u_input.a)), global3[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(abs(231f))), 1i, var_0.c), func_2(var_1.c).c, -984f), var_1.a, true);
    let var_3 = Struct_2(44994u, _wgslsmith_mod_i32(~max(-1i, _wgslsmith_add_i32(-24829i, global1.b)), func_2(func_2(Struct_1(var_1.c.a)).c).b), func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.x, 1492f)))).c).c);
    var var_4 = true & !all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false));
    var_2 = ~4294967295u;
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.b, ~1i, var_3.b, var_3.b));
}

