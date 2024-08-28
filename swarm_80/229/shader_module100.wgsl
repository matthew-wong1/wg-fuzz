struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, false, 60446i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    return Struct_1(true, !(global0.a.a && select(!global0.a.b, !global0.a.b, all(vec2<bool>(false, global0.a.a)))), _wgslsmith_div_i32(i32(-1i) * -(~global0.a.c), ~global0.a.c));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = -1i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -558f)))))), select(vec4<bool>(func_2().b, arg_0.a, all(vec3<bool>(global1.a.a, true, global0.a.a)) & true, arg_2.a.b), select(select(!vec4<bool>(true, arg_2.a.b, arg_1.a.b, true), !vec4<bool>(false, false, global0.a.b, arg_1.a.a), global0.a.b), !select(vec4<bool>(false, arg_0.b, false, true), vec4<bool>(arg_1.a.a, global1.a.a, true, false), arg_2.a.b), true), global1.a.b));
    var_0 = min(min(min(41661i, max(_wgslsmith_mod_i32(arg_2.a.c, arg_2.a.c), -1i)), arg_2.a.c), _wgslsmith_add_i32(-func_2().c, _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(-2147483647i, u_input.a)), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, var_1.a, 1908f, var_1.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, -841f, -1507f, 2708f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, var_1.a, var_1.a, 1163f), vec4<f32>(var_1.b, -205f, -450f, var_1.b))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(216f, -180f, 622f, -377f), vec4<f32>(592f, var_1.b, 610f, var_1.a))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.a, var_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.a, 337f, false)))), 1239f, _wgslsmith_f_op_f32(trunc(1365f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, -1937f, 760f, 790f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a, 268f, 130f, var_1.b), vec4<f32>(var_1.a, var_1.b, 1153f, -683f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -1000f, -789f, var_1.a), vec4<f32>(var_1.b, -151f, var_1.a, var_1.a)))))), true));
    let var_3 = var_1.a;
    return Struct_2(func_2());
}

fn func_1() -> f32 {
    var var_0 = func_3(global0.a, Struct_2(func_2()), Struct_2(func_2()));
    global0 = func_3(func_2(), func_3(func_2(), Struct_2(func_3(Struct_1(false, true, 0i), Struct_2(Struct_1(var_0.a.b, false, -1i)), func_3(Struct_1(var_0.a.b, global1.a.b, var_0.a.c), Struct_2(Struct_1(global0.a.a, false, global1.a.c)), Struct_2(global0.a))).a), func_3(Struct_1(global0.a.a, var_0.a.a, var_0.a.c ^ -10570i), Struct_2(global0.a), func_3(func_2(), func_3(Struct_1(true, global0.a.a, -32025i), Struct_2(Struct_1(false, false, global1.a.c)), Struct_2(Struct_1(global1.a.a, true, global0.a.c))), func_3(global1.a, Struct_2(Struct_1(global1.a.a, false, 35359i)), Struct_2(global1.a))))), func_3(func_3(Struct_1(true, global0.a.c > -3815i, abs(u_input.a)), func_3(global0.a, Struct_2(Struct_1(false, false, -1i)), Struct_2(global1.a)), Struct_2(global1.a)).a, Struct_2(Struct_1(var_0.a.a, global0.a.a, 7054i)), func_3(func_3(var_0.a, func_3(Struct_1(global0.a.b, true, 2147483647i), Struct_2(global1.a), Struct_2(Struct_1(true, true, -2147483647i))), func_3(Struct_1(false, global0.a.a, u_input.a), Struct_2(global0.a), Struct_2(global1.a))).a, func_3(Struct_1(global0.a.a, global0.a.b, 2147483647i), Struct_2(Struct_1(global0.a.a, global0.a.b, -13807i)), Struct_2(Struct_1(global1.a.a, global0.a.b, u_input.a))), func_3(Struct_1(true, true, -2147483647i), Struct_2(global0.a), func_3(Struct_1(global1.a.b, var_0.a.b, 1i), Struct_2(Struct_1(true, false, u_input.a)), Struct_2(Struct_1(global0.a.b, true, 25257i)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(638f, -404f))))), _wgslsmith_f_op_f32(-1117f * _wgslsmith_f_op_f32(select(-367f, _wgslsmith_f_op_f32(sign(224f)), _wgslsmith_f_op_f32(step(-1000f, -2609f)) != -1605f))), select(select(select(select(vec4<bool>(global0.a.b, false, true, var_0.a.b), vec4<bool>(true, global1.a.b, global1.a.b, false), var_0.a.a), vec4<bool>(global1.a.b, global1.a.b, true, true), true), vec4<bool>(select(true, false, false), false, true, true), true), vec4<bool>(1u >= u_input.b, func_2().b, !all(vec2<bool>(true, true)), func_3(func_3(var_0.a, Struct_2(global0.a), Struct_2(Struct_1(global1.a.a, true, global0.a.c))).a, Struct_2(global1.a), Struct_2(Struct_1(global0.a.a, global1.a.a, -2147483647i))).a.b), (u_input.b << (14086u % 32u)) == u_input.b));
    var var_2 = countOneBits(-countOneBits(min(-vec2<i32>(-23655i, 0i), -vec2<i32>(global0.a.c, 37755i))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-1934f - var_1.a), _wgslsmith_f_op_f32(-1695f - _wgslsmith_f_op_f32(-var_1.b)), vec4<bool>((~u_input.b <= _wgslsmith_div_u32(u_input.b, u_input.b)) || true, func_2().b, false, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(all(select(vec4<bool>(global0.a.b, false, false, global0.a.a), vec4<bool>(false, global1.a.a, global0.a.a, true), true)) || global1.a.a, false, u_input.a));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(1873f)), global1.a.c == -5068i))))), _wgslsmith_div_f32(-806f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-668f + _wgslsmith_f_op_f32(690f * -1907f)) + _wgslsmith_f_op_f32(func_1()))), !vec4<bool>(false, all(!vec3<bool>(true, true, global1.a.a)), !(global1.a.a & global0.a.a), func_2().b));
    let var_1 = true;
    global0 = Struct_2(Struct_1(var_0.c.x, var_1 && (u_input.b != ~u_input.b), _wgslsmith_sub_i32(global1.a.c, min(2147483647i, u_input.a))));
    let var_2 = _wgslsmith_clamp_i32(~u_input.a, ~u_input.a, firstTrailingBit(~(-global0.a.c))) | abs(~_wgslsmith_sub_i32(global0.a.c, -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(global0.a.c, -2147483647i, var_2, global1.a.c) | firstLeadingBit(vec4<i32>(30798i, _wgslsmith_mult_i32(global1.a.c, global1.a.c), ~2147483647i, countOneBits(global0.a.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.b), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(257f, 658f, 1345f, 907f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(239f, 184f, var_0.a, var_0.b))))), ~(~(~(~1u))), min(min(vec3<u32>(u_input.b & u_input.b, 0u, ~67766u), ~select(vec3<u32>(u_input.b, 19306u, 67243u), vec3<u32>(4294967295u, 34047u, u_input.b), true)), ~vec3<u32>(~14286u, u_input.b, u_input.b)));
}

