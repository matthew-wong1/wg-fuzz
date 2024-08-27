struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(71982u, vec3<bool>(true, true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_5(!any(!(!global0.b)));
    var var_1 = global0.b;
    let var_2 = ~_wgslsmith_sub_vec3_u32(select(~(vec3<u32>(u_input.b.x, global0.a, u_input.a.x) << (vec3<u32>(global0.a, 28136u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(4749u, 26461u, 28174u)), global0.b), abs((vec3<u32>(85379u, global0.a, 0u) ^ vec3<u32>(1u, 4294967295u, 1u)) & (vec3<u32>(0u, 39645u, u_input.e) >> (vec3<u32>(1u, 1u, 82925u) % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(674f + -109f);
    var_1 = select(global0.b, global0.b, global0.b);
    return _wgslsmith_f_op_f32(round(var_3));
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(-416f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f + -1550f)))))));
    let var_1 = !(any(vec3<bool>(true, arg_0.a && true, u_input.c.x >= u_input.c.x)) && global0.b.x);
    let var_2 = vec4<i32>(20542i, _wgslsmith_mod_i32(~(57556i >> (global0.a % 32u)), u_input.c.x), select(_wgslsmith_mult_i32(1i, ~_wgslsmith_sub_i32(-2147483647i, 0i)), -1i, false), ~u_input.c.x);
    let var_3 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f))));
    return Struct_1(_wgslsmith_f_op_f32(func_3()), false, vec3<bool>(true, true, true), ~(~abs(~u_input.d)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_add_u32(max(1u, abs(_wgslsmith_div_u32(arg_0.a, arg_2.b.d.x))), 20380u), !vec3<bool>(false, global0.b.x, false));
    let var_0 = min(-u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(1i, u_input.c.x)));
    var var_1 = Struct_5(arg_0.b.x);
    let var_2 = Struct_3(arg_2, u_input.c.x, arg_2.b.c, arg_0.a, u_input.d.x);
    global0 = Struct_4(abs(0u), vec3<bool>(var_2.a.a.x, !var_1.a, false));
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = func_4(Struct_4(global0.a, !global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -174f))) + _wgslsmith_f_op_f32(-296f - 710f)), Struct_2(!(!vec4<bool>(false, false, global0.b.x, false)), func_2(Struct_5(global0.b.x))), select(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x) > 10217i, all(global0.b), global0.b.x));
    var var_0 = Struct_3(Struct_2(!select(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), select(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), global0.b.x), select(vec4<bool>(global0.b.x, false, global0.b.x, true), vec4<bool>(true, false, global0.b.x, global0.b.x), global0.b.x)), Struct_1(_wgslsmith_f_op_f32(-783f + _wgslsmith_f_op_f32(f32(-1f) * -1135f)), all(func_4(Struct_4(4294967295u, vec3<bool>(global0.b.x, false, false)), 1000f, Struct_2(vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), Struct_1(-120f, global0.b.x, vec3<bool>(global0.b.x, global0.b.x, global0.b.x), u_input.d)), true).b), !global0.b, u_input.a)), -38700i, func_4(func_4(func_4(Struct_4(global0.a, vec3<bool>(false, false, global0.b.x)), -974f, Struct_2(vec4<bool>(global0.b.x, false, global0.b.x, true), Struct_1(211f, global0.b.x, global0.b, vec3<u32>(global0.a, 12929u, global0.a))), any(vec4<bool>(false, false, false, false))), -1678f, Struct_2(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), Struct_1(245f, global0.b.x, global0.b, u_input.a)), global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1359f + _wgslsmith_div_f32(1251f, 830f))), Struct_2(vec4<bool>(global0.b.x, global0.b.x, !global0.b.x, global0.b.x & false), func_2(Struct_5(global0.b.x))), false).b, u_input.e, _wgslsmith_sub_u32(~global0.a, (~u_input.b.x >> (~1326u % 32u)) ^ (1u >> (firstLeadingBit(8344u) % 32u))));
    var var_1 = !var_0.a.b.c.zy;
    var var_2 = var_0.a.b.c;
    let var_3 = (-_wgslsmith_div_i32(-31571i, 1i) << (u_input.a.x % 32u)) >= _wgslsmith_dot_vec2_i32(u_input.c.xz, min(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.b, -6409i), vec2<i32>(-51292i, var_0.b), global0.b.x), -vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(56866i, 2147483647i), u_input.c.xz)));
    return Struct_2(select(var_0.a.a, !(!var_0.a.a), select(vec4<bool>(true, true, !global0.b.x, true), vec4<bool>(true, all(vec2<bool>(false, true)), all(var_0.a.a.xzz), true), !select(var_0.a.a, vec4<bool>(var_1.x, var_3, false, true), vec4<bool>(true, true, var_3, true)))), func_2(Struct_5(var_0.a.b.c.x)));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = 0u;
    var_0 = min(14439u, global0.a) | func_4(Struct_4(abs(global0.a), !(!global0.b)), 776f, func_1(), false).a;
    let var_1 = Struct_5(arg_2.c.x);
    global0 = func_4(Struct_4(arg_2.e, !func_1().b.c), _wgslsmith_f_op_f32(f32(-1f) * -1189f), arg_2.a, func_1().b.c.x);
    var_0 = arg_1;
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_4 {
    global0 = func_4(func_4(func_4(func_4(func_4(Struct_4(arg_2.e, vec3<bool>(false, arg_3.a, false)), 313f, arg_2.a, true), _wgslsmith_f_op_f32(min(615f, 357f)), func_5(vec3<f32>(arg_2.a.b.a, 297f, arg_2.a.b.a), arg_2.e, arg_2).a, true), arg_2.a.b.a, Struct_2(arg_1, func_5(vec3<f32>(-567f, 536f, arg_2.a.b.a), 2060u, arg_2).a.b), false), arg_2.a.b.a, arg_2.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b.a)), Struct_2(!select(vec4<bool>(arg_1.x, arg_2.a.a.x, true, arg_2.c.x), vec4<bool>(true, true, true, true), arg_2.a.a), arg_2.a.b), func_2(arg_3).c.x & func_4(Struct_4(_wgslsmith_mod_u32(4294967295u, u_input.e), vec3<bool>(arg_1.x, arg_2.a.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1441f), arg_2.a, true).b.x);
    global0 = func_4(func_4(func_4(func_4(Struct_4(4294967295u, arg_1.wyw), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(vec4<bool>(global0.b.x, true, arg_3.a, false), Struct_1(arg_2.a.b.a, true, arg_1.xzy, vec3<u32>(0u, 9134u, 4294967295u))), arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.b.a))), arg_2.a, arg_3.a), _wgslsmith_f_op_f32(f32(-1f) * -1030f), Struct_2(vec4<bool>(all(arg_1), any(vec4<bool>(arg_1.x, arg_1.x, global0.b.x, arg_2.c.x)), arg_2.a.b.b & true, true), Struct_1(-1960f, arg_1.x, vec3<bool>(arg_2.c.x, true, true), ~vec3<u32>(arg_2.d, u_input.e, 53546u))), any(func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.a.b.a, 1765f, arg_2.a.b.a), vec3<f32>(1000f, -317f, 487f))), arg_2.e, arg_2).a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1().b.a), _wgslsmith_f_op_f32(arg_2.a.b.a * 706f)))), arg_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a.b.a)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f + arg_2.a.b.a))));
    let var_0 = func_4(func_4(func_4(func_4(func_4(Struct_4(global0.a, arg_2.a.a.zyz), 796f, Struct_2(vec4<bool>(false, arg_2.c.x, false, arg_1.x), arg_2.a.b), true), _wgslsmith_f_op_f32(sign(arg_2.a.b.a)), func_5(vec3<f32>(837f, arg_2.a.b.a, arg_2.a.b.a), 2664u, arg_2).a, arg_3.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.b.a * arg_2.a.b.a), _wgslsmith_f_op_f32(f32(-1f) * -665f))), Struct_2(!arg_1, arg_2.a.b), true), _wgslsmith_f_op_f32(round(func_2(arg_3).a)), Struct_2(select(!arg_2.a.a, arg_1, !arg_2.a.a), Struct_1(arg_2.a.b.a, true, func_1().b.c, ~arg_2.a.b.d)), func_2(Struct_5(false)).c.x), arg_2.a.b.a, arg_2.a, func_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.b.a)), -279f, _wgslsmith_f_op_f32(arg_2.a.b.a + -262f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(564f, -1524f, 898f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1249f, 714f), vec3<f32>(-493f, arg_2.a.b.a, arg_2.a.b.a), vec3<bool>(false, true, true)))))), u_input.a.x, arg_2).c.x).a;
    let var_1 = !func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b.a, arg_2.a.b.a, arg_2.a.b.a) * vec3<f32>(1560f, arg_2.a.b.a, -794f)))), ~firstLeadingBit(arg_0) << (max(~global0.a, global0.a) % 32u), arg_2).a.a;
    var var_2 = true;
    return func_4(func_4(Struct_4(~arg_2.d, vec3<bool>(true, global0.b.x && false, true)), _wgslsmith_f_op_f32(abs(arg_2.a.b.a)), func_1(), arg_2.a.b.c.x), arg_2.a.b.a, func_1(), ((_wgslsmith_f_op_f32(206f * -1860f) <= _wgslsmith_f_op_f32(-arg_2.a.b.a)) | !arg_1.x) || arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -804f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-145f * 407f), _wgslsmith_div_f32(-345f, -1654f))), false)));
    global0 = Struct_4(u_input.b.x, vec3<bool>(any(vec3<bool>(global0.b.x, true, global0.b.x && global0.b.x)), !(!(!global0.b.x)), true));
    global0 = func_6(firstLeadingBit(102319u), !select(!select(vec4<bool>(true, global0.b.x, false, global0.b.x), vec4<bool>(false, global0.b.x, true, global0.b.x), global0.b.x), select(vec4<bool>(global0.b.x, false, false, global0.b.x), !vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), all(global0.b)), global0.b.x), func_5(vec3<f32>(887f, var_0, _wgslsmith_f_op_f32(296f + 545f)), 1u, Struct_3(func_1(), i32(-1i) * -1i, func_1().b.c, max(~u_input.a.x, ~global0.a), u_input.e)), Struct_5(!((-1000f != var_0) || func_2(Struct_5(false)).b)));
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, 710f))))))), 88961u, func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -806f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_u32(~global0.a, func_5(vec3<f32>(642f, var_0, 239f), 1u, Struct_3(Struct_2(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), Struct_1(2444f, false, vec3<bool>(false, true, true), vec3<u32>(u_input.b.x, u_input.d.x, 50855u))), -52460i, vec3<bool>(true, false, false), 46942u, global0.a)).a.b.d.x | _wgslsmith_clamp_u32(global0.a, 51434u, u_input.e)), func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1578f, var_0)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, -145f, -295f), vec3<f32>(126f, var_0, var_0), vec3<bool>(true, global0.b.x, global0.b.x))))), 4294967295u, Struct_3(func_5(vec3<f32>(var_0, var_0, var_0), global0.a, Struct_3(Struct_2(vec4<bool>(false, true, global0.b.x, true), Struct_1(var_0, true, global0.b, vec3<u32>(global0.a, u_input.a.x, u_input.e))), u_input.c.x, vec3<bool>(true, global0.b.x, global0.b.x), 22402u, 4294967295u)).a, i32(-1i) * -1i, func_1().a.xyx, u_input.e, global0.a | 42787u))));
    let var_2 = func_4(func_6(select(~global0.a, _wgslsmith_mult_u32(4294967295u, u_input.d.x >> (u_input.d.x % 32u)), !(31794i > u_input.c.x)), var_1.a.a, Struct_3(var_1.a, -2147483647i, !var_1.a.a.xxy, var_1.d, u_input.b.x), Struct_5(false)), 108f, Struct_2(vec4<bool>(func_2(Struct_5(false)).c.x, var_1.a.a.x, true, select(global0.b.x || false, var_1.c.x, true)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -155f), all(vec3<bool>(global0.b.x, var_1.c.x, var_1.a.a.x)) & (var_1.c.x | var_1.c.x), !func_1().b.c, vec3<u32>(func_5(vec3<f32>(1000f, -1000f, var_1.a.b.a), 0u, Struct_3(Struct_2(var_1.a.a, var_1.a.b), -1i, vec3<bool>(true, var_1.a.b.b, global0.b.x), 1u, global0.a)).d, ~var_1.d, 4294967295u))), !(!global0.b.x | (_wgslsmith_f_op_f32(f32(-1f) * -438f) == _wgslsmith_div_f32(var_0, 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(var_1.a.b.a - var_0)), _wgslsmith_f_op_f32(var_0 * var_0))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(sign(var_0)))), -1877f, -829f), u_input.c.x);
}

