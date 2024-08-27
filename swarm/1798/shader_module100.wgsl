struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(global0.b + -260f), vec4<bool>(true & !(!global0.d), !(~u_input.b.x != firstTrailingBit(global0.a)), false, true), true);
    global0 = Struct_1(27991u, _wgslsmith_f_op_f32(abs(global0.b)), global0.c, global0.d && false);
    var var_0 = _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-global0.b));
    var var_1 = -(~(~(~u_input.c) << (60496u % 32u)));
    let var_2 = Struct_1(~(~u_input.b.x), -1396f, select(select(select(!vec4<bool>(global0.d, false, true, true), global0.c, vec4<bool>(global0.d, global0.c.x, global0.c.x, true)), !select(vec4<bool>(global0.c.x, true, false, true), vec4<bool>(global0.d, false, global0.d, true), true), global0.c.x), !(!select(global0.c, vec4<bool>(global0.d, global0.c.x, global0.d, false), global0.d)), !vec4<bool>(1u == u_input.a, !global0.d, all(global0.c.zx), global0.d | global0.d)), true);
    return var_2.b;
}

fn func_3() -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~1u) & vec2<u32>(firstLeadingBit(34111u), 30500u), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, 55532u)), vec2<u32>(~77757u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2307f)) + 1207f), vec4<bool>(global0.d, false, !select(select(false, global0.d, global0.c.x), false, any(global0.c)), any(select(global0.c.wz, select(global0.c.zw, global0.c.zx, global0.c.x), global0.c.x != true))), false);
    let var_0 = ~_wgslsmith_add_u32(~abs(0u), global0.a);
    var var_1 = vec2<bool>(!(!global0.c.x), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, -1959f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-320f, -622f, global0.b, 1572f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(842f, global0.b, -764f, -306f)))), select(!vec4<bool>(global0.d, global0.d, false, false), global0.c, vec4<bool>(!global0.d, var_0 <= 45390u, any(vec4<bool>(true, true, false, var_1.x)), !global0.d)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -450f), global0.b, global0.b) * vec4<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(select(global0.b, 186f, true)), _wgslsmith_f_op_f32(-111f * 1958f)))));
    let var_3 = all(global0.c.ww);
    return vec4<bool>(u_input.c >= _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(4540i, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(-25835i, 16179i), vec2<i32>(u_input.c, u_input.c))), vec2<i32>(-1i, -2830i) >> (u_input.b.xx % vec2<u32>(32u))), _wgslsmith_mod_i32(u_input.c | countOneBits(15791i), abs(u_input.c)) <= 1i, global0.c.x & select(global0.c.x, select(global0.c.x, var_3, global0.c.x) != global0.d, true), true == global0.c.x);
}

fn func_1() -> Struct_1 {
    var var_0 = global0.c.x;
    let var_1 = -vec3<i32>(firstTrailingBit(-_wgslsmith_clamp_i32(12502i, u_input.c, -1i)), ~(-2147483647i), -2147483647i);
    global0 = Struct_1(_wgslsmith_add_u32(~(~(u_input.a | global0.a)), ~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), select(func_3(), vec4<bool>(false, !global0.c.x, !global0.c.x, !select(false, false, global0.c.x)), false), false);
    let var_2 = Struct_1(_wgslsmith_clamp_u32(~26960u, ~_wgslsmith_div_u32(53971u, 24094u), 64221u) >> (global0.a % 32u), global0.b, vec4<bool>(select(false, !select(true, global0.c.x, true), global0.d), func_3().x | (true & select(true, global0.c.x, global0.d)), global0.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1258f)), true || !all(vec3<bool>(global0.d, false, false))), true);
    global0 = Struct_1(_wgslsmith_add_u32(var_2.a, u_input.a), var_2.b, global0.c, any(vec2<bool>(false & all(vec4<bool>(global0.d, true, true, global0.c.x)), global0.d)));
    return Struct_1(~(u_input.a >> (var_2.a % 32u)), var_2.b, !(!select(!var_2.c, !var_2.c, vec4<bool>(true, false, true, false))), false);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = arg_2.a;
    let var_0 = false;
    let var_1 = 4294967295u < _wgslsmith_add_u32(41751u, ~(arg_2.b.a | ~0u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(-389f)), _wgslsmith_f_op_f32(select(-339f, -126f, !var_1))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1759f), _wgslsmith_f_op_f32(arg_0 + 155f)), vec2<f32>(-1287f, -160f)) - vec2<f32>(global0.b, _wgslsmith_f_op_f32(min(global0.b, 1000f)))));
    var var_3 = func_1();
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3;
    return func_4(arg_1.x, _wgslsmith_div_f32(1950f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(max(1504f, arg_1.x))))), arg_3, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(trunc(-261f))) + global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -212f), Struct_2(func_1(), func_1()), 643f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, global0.b))) - _wgslsmith_f_op_f32(exp2(global0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2091f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(116f)) - global0.b), -1244f), firstLeadingBit(1u), Struct_2(func_4(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b)) * global0.b), Struct_2(func_1(), func_1()), global0.b), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_f_op_f32(-global0.b)), global0.b, Struct_2(func_4(global0.b, -1000f, Struct_2(Struct_1(u_input.b.x, 2925f, global0.c, false), Struct_1(u_input.b.x, -348f, vec4<bool>(false, global0.c.x, global0.c.x, true), true)), -173f), Struct_1(3230u, -933f, global0.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, 1607f))))));
    global0 = Struct_1(u_input.a, func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))), func_1().b, Struct_2(func_4(var_0.b, var_0.b, Struct_2(Struct_1(var_0.a, 665f, var_0.c, true), Struct_1(7791u, 2332f, vec4<bool>(global0.d, false, false, var_0.d), var_0.c.x)), -469f), Struct_1(4049u, -435f, global0.c, var_0.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(423f - var_0.b), 406f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(760f, global0.b, -1673f, 128f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -449f, -1517f, -2034f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_f_op_f32(round(-1088f)))), var_0.a, Struct_2(Struct_1(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_div_f32(var_0.b, global0.b), !vec4<bool>(true, global0.d, false, false), any(var_0.c)), func_4(-934f, -392f, Struct_2(Struct_1(u_input.b.x, 1846f, vec4<bool>(var_0.d, var_0.d, false, true), global0.c.x), Struct_1(global0.a, 763f, global0.c, true)), -2577f))).b, func_1().c, global0.d);
    var var_1 = Struct_2(func_1(), func_1());
    var var_2 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.yy), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), vec4<bool>(all(global0.c.zy), all(vec3<bool>(var_1.a.c.x, false, false)), false, any(var_1.a.c)), !(var_0.a >= global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, -389f, -779f, var_0.b))))), global0.a, Struct_2(var_1.b, func_5(Struct_1(global0.a, var_0.b, vec4<bool>(var_1.a.c.x, false, false, false), global0.c.x), vec4<f32>(306f, -473f, -1419f, -969f), var_1.a.a, Struct_2(Struct_1(u_input.a, var_0.b, vec4<bool>(global0.c.x, global0.d, global0.d, true), global0.d), Struct_1(26020u, 1325f, var_0.c, true))))).b * var_1.b.b);
    var var_3 = Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), Struct_2(Struct_1(2312u, 1107f, !var_1.a.c, false), Struct_1(1u, -184f, !var_1.b.c, true)), var_1.a.b), var_1.a);
    var var_4 = 18823u;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

