struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 0u, 4294967295u, 0u, 0u, 0u, 1u, 4294967295u, 57885u, 4294967295u, 132177u, 4294967295u, 14636u);

var<private> global1: f32;

var<private> global2: vec3<i32>;

var<private> global3: array<vec3<f32>, 5>;

var<private> global4: u32 = 17274u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec3<u32>(u_input.c.x, 25297u, ~u_input.a);
    let var_1 = arg_2;
    var var_2 = arg_2;
    return vec2<bool>(all(vec2<bool>(true, true)), true);
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(func_3(~select(vec3<u32>(u_input.c.x, 103103u, 73419u), vec3<u32>(u_input.a, 0u, u_input.c.x), false), vec3<i32>(u_input.b.x & u_input.b.x, ~u_input.b.x, ~31289i), Struct_1(23768u, vec3<f32>(-164f, 1357f, 1781f))), vec2<bool>(false, false || select(true, false, true)), func_3(u_input.c.xwx, u_input.b.yyz, Struct_1(global0[_wgslsmith_index_u32(select(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47241u, 13u)], 13u)], false), 13u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, -1276f, 243f))))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), func_3(~u_input.c.yxx, u_input.b.yzz, Struct_1(u_input.a, vec3<f32>(580f, -1000f, -619f))), select(false, false, true)), vec2<bool>(!(-1i >= u_input.b.x), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !((i32(-1i) * -u_input.b.x) > u_input.b.x));
    var var_1 = abs(~vec2<u32>(global0[_wgslsmith_index_u32(~u_input.a & firstLeadingBit(u_input.c.x), 13u)], _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(u_input.a, 112u))));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~u_input.c ^ (~vec4<u32>(u_input.c.x, var_1.x, 28156u, u_input.a) | vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 1u, 1u, u_input.c.x)), u_input.c), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(25932u, 5u)]));
    let var_3 = vec3<bool>(!any(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false))), true, all(!(!vec3<bool>(false, var_0.x, var_0.x))) | (any(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, true), var_0.x)) || true));
    var var_4 = u_input.b.x;
    return var_2;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<u32, 13>();
    global3 = array<vec3<f32>, 5>();
    global4 = abs(~_wgslsmith_add_u32(abs(1u), ~u_input.a) ^ ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.c.x), 13u)], ~4294967295u, abs(73694u)), 13u)]);
    let var_0 = ~(~u_input.c.xy);
    var var_1 = !(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))));
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = 1u;
    global4 = ~u_input.a;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.e.b.x)) * -334f);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f - arg_1.e.b.x) * 268f)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1237f);
    return 809f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = abs(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(47561u, u_input.a >> (15677u % 32u))));
    global0 = array<u32, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(true, Struct_2(func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(21918u, 13u)], vec3<f32>(-106f, -1240f, 850f)), Struct_1(u_input.a, vec3<f32>(1677f, 1000f, -589f)), u_input.a, Struct_1(u_input.a, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), Struct_1(11834u, global3[_wgslsmith_index_u32(7314u, 5u)]))), func_2(), u_input.c.x, func_2(), func_1(Struct_2(Struct_1(4294967295u, vec3<f32>(1451f, -221f, 557f)), Struct_1(1u, global3[_wgslsmith_index_u32(1u, 5u)]), global0[_wgslsmith_index_u32(22214u, 13u)], Struct_1(u_input.a, global3[_wgslsmith_index_u32(38377u, 5u)]), Struct_1(1u, vec3<f32>(-152f, 1005f, 560f))))))), -959f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2811f))))), func_1(Struct_2(Struct_1(u_input.a, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), func_2(), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x, 13u)], 13u)], Struct_1(4u, vec3<f32>(-850f, -184f, 395f)), func_2())).b.x));
    var var_1 = Struct_2(func_1(Struct_2(func_2(), func_1(Struct_2(Struct_1(u_input.c.x, vec3<f32>(-1000f, 396f, var_0.x)), Struct_1(u_input.c.x, global3[_wgslsmith_index_u32(0u, 5u)]), 5258u, Struct_1(global0[_wgslsmith_index_u32(1u, 13u)], vec3<f32>(422f, var_0.x, var_0.x)), Struct_1(u_input.c.x, var_0.xzz))), ~1u, Struct_1(~17499u, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), func_1(Struct_2(Struct_1(4294967295u, global3[_wgslsmith_index_u32(5059u, 5u)]), Struct_1(u_input.a, vec3<f32>(var_0.x, 1000f, var_0.x)), u_input.a, Struct_1(19934u, vec3<f32>(var_0.x, var_0.x, var_0.x)), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], 13u)], var_0.yxz))))), Struct_1(_wgslsmith_clamp_u32(27742u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 53906u, 23634u), u_input.c.wzy), ~global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_add_u32(~u_input.c.x, ~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(25765u, 5u)]))))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global0[_wgslsmith_index_u32(69873u, 13u)], u_input.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)])), ~(~vec4<u32>(28599u, 0u, global0[_wgslsmith_index_u32(u_input.a, 13u)], u_input.c.x))), Struct_1(0u, func_1(Struct_2(func_2(), Struct_1(0u, var_0.xyz), ~39299u, func_1(Struct_2(Struct_1(0u, vec3<f32>(var_0.x, -226f, 1186f)), Struct_1(u_input.c.x, vec3<f32>(var_0.x, var_0.x, -1808f)), 1u, Struct_1(u_input.a, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), Struct_1(0u, vec3<f32>(1000f, 244f, var_0.x)))), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], vec3<f32>(var_0.x, -1647f, var_0.x)))).b), Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.yyz, ~u_input.c.yww), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, var_0.x, var_0.x) - var_0.wyw) * _wgslsmith_f_op_vec3_f32(abs(global3[_wgslsmith_index_u32(~0u, 5u)])))));
    let var_2 = func_1(Struct_2(func_2(), Struct_1(_wgslsmith_add_u32(13033u, 20158u >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-var_1.a.b)), abs(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_1.a.a), u_input.c.zww), 13u)])), Struct_1(~func_2().a, vec3<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(551f, 154f))), func_2()));
    var var_3 = Struct_2(func_1(Struct_2(func_2(), func_2(), 88447u, Struct_1(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(70576u, 13u)], 4294967295u, var_1.a.a), vec3<f32>(var_2.b.x, 627f, var_0.x)), var_1.e)), Struct_1(~(~(~88903u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 13u)], 5u)], vec3<f32>(423f, var_2.b.x, 880f), false)))), var_2.a, var_2, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.x, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, _wgslsmith_clamp_i32(87730i, u_input.b.x, -2147483647i | u_input.b.x)) >> (abs(u_input.c) % vec4<u32>(32u)), 0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.x) * _wgslsmith_f_op_f32(var_3.b.b.x - _wgslsmith_f_op_f32(var_0.x - var_3.e.b.x))), var_1.b.b.x));
}

