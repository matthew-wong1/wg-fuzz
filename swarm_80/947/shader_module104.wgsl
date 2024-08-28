struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-184f, 538f);

var<private> global1: bool;

var<private> global2: u32 = 13540u;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(false, true, true, true), true, 40520u, false), Struct_1(vec4<bool>(true, true, false, true), false, 1u, true), Struct_1(vec4<bool>(false, true, false, true), true, 1u, true), Struct_1(vec4<bool>(true, true, true, false), false, 10224u, true), Struct_1(vec4<bool>(false, true, true, true), true, 4294967295u, false));

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -647f);
    let var_0 = ~_wgslsmith_add_u32(abs(firstLeadingBit(firstLeadingBit(14621u))), 34464u);
    global1 = all(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    var var_1 = _wgslsmith_f_op_f32(abs(global0.x));
    var var_2 = 1i;
    return vec4<bool>(any(select(vec4<bool>(true, false, all(vec2<bool>(false, false)), u_input.a >= 1i), vec4<bool>(false, all(vec2<bool>(true, true)), false, true), true)), !(true && (var_0 > 1u)), all(vec4<bool>(!any(vec2<bool>(false, true)), true, _wgslsmith_div_f32(global0.x, global0.x) > _wgslsmith_f_op_f32(global0.x * global0.x), true)), select(select(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), ~_wgslsmith_add_u32(0u, var_0) == var_0, !(-17732i < u_input.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -693f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1089f))))));
    var var_1 = Struct_1(!func_3(), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1947f) + _wgslsmith_f_op_f32(abs(584f))) < _wgslsmith_f_op_f32(f32(-1f) * -1422f)) == any(vec2<bool>(true, true)), abs(select(~1u, 41970u, false)), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = Struct_1(select(select(var_1.a, var_1.a, vec4<bool>(var_1.b, true, var_1.a.x | var_1.a.x, true)), select(!func_3(), func_3(), any(select(var_1.a.zz, vec2<bool>(true, true), true))), vec4<bool>(!(2118f < global0.x), false, !var_1.b == false, var_1.d)), var_1.b, max(min(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 6259u, 57376u, var_1.c), vec4<u32>(42540u, 10980u, 45317u, var_1.c))), _wgslsmith_mult_u32(1u, ~var_1.c)), _wgslsmith_mult_u32(~var_1.c, 4294967295u)), u_input.a > 1i);
    var var_3 = var_2;
    var var_4 = Struct_1(vec4<bool>(false, var_3.d, false, true), var_2.b, countOneBits(25368u), true);
    return Struct_1(vec4<bool>(!(!(var_4.b || var_2.b)), var_3.a.x, _wgslsmith_div_i32(u_input.a, -u_input.a) > ~(0i << (var_4.c % 32u)), !(0u != (35224u & var_1.c))), select(var_4.d, any(func_3().wz), false), 1u, select(true, true, false));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec3<i32> {
    var var_0 = vec3<i32>(2147483647i, max(~u_input.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a >> (4294967295u % 32u), u_input.a), select(3261i, -1i, any(vec4<bool>(arg_0.a.x, arg_0.b, true, false))))), u_input.a);
    var var_1 = Struct_1(vec4<bool>(arg_1, arg_1, true, func_2().b), !(true & arg_1), abs(~4294967295u), arg_1);
    let var_2 = Struct_1(!arg_0.a, true, arg_2 | _wgslsmith_sub_u32(47293u, arg_2), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - -780f), global0.x, false)) != -401f));
    let var_3 = func_2();
    let var_4 = ~max(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 71011u), vec2<u32>(0u, var_3.c), ~vec2<u32>(4294967295u, var_1.c)), select(vec2<u32>(arg_0.c, var_2.c), vec2<u32>(1u, 50835u), true) | _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0.c), vec2<u32>(arg_0.c, arg_0.c))), _wgslsmith_add_vec2_u32(~vec2<u32>(58758u, var_1.c) << ((vec2<u32>(var_3.c, var_2.c) | vec2<u32>(arg_0.c, 6086u)) % vec2<u32>(32u)), vec2<u32>(var_3.c, 80943u << (0u % 32u))));
    return firstTrailingBit(_wgslsmith_div_vec3_i32(abs(abs(vec3<i32>(-41676i, var_0.x, var_0.x) << (vec3<u32>(arg_0.c, arg_2, 6498u) % vec3<u32>(32u)))), ~abs(vec3<i32>(var_0.x, var_0.x, u_input.a)) << (~vec3<u32>(arg_2, 2636u, 136368u) % vec3<u32>(32u))));
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), 4294967295u);
    var var_1 = any(select(!func_3().yxy, select(func_3().wzy, !func_3().xzy, true), true));
    global1 = true;
    let var_2 = !any(func_3());
    global4 = var_2;
    return ~(~(~(~18394u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global4 = false;
    let var_0 = Struct_1(vec4<bool>(true, all(func_3().wwx), true, false), true, arg_2.c, func_3().x);
    return _wgslsmith_f_op_f32(global0.x * global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 8789u, 29916u), vec4<u32>(15963u, 67973u, 71886u, 4294967295u))) ^ 51884u), firstLeadingBit(4294967295u));
    var var_1 = 725f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~vec3<i32>(u_input.a, u_input.a, 1i), func_1() >> (_wgslsmith_clamp_u32(4294967295u, 2081u, 90257u) % 32u), Struct_1(vec4<bool>(false, true, false, true), true, abs(1u), func_3().x))) * _wgslsmith_f_op_f32(-global0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2469f)), _wgslsmith_f_op_f32(abs(-608f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = 0u;
    var var_3 = _wgslsmith_mod_u32(1u, 4294967295u) >> (~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(33258u, 1u, 47391u), vec3<u32>(1u, 1u, 1u)), ~(~55871u)) % 32u);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1115f)) - var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -1634f)), _wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-5322i);
}

