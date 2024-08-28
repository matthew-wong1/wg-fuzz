struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(312f, 759f), vec2<f32>(-425f, 1000f), vec2<f32>(-1105f, 379f), vec2<f32>(-929f, 249f), vec2<f32>(-541f, 1000f), vec2<f32>(1197f, -538f), vec2<f32>(308f, -1835f), vec2<f32>(179f, -200f), vec2<f32>(221f, 1000f), vec2<f32>(-445f, -981f), vec2<f32>(838f, -506f), vec2<f32>(906f, 620f), vec2<f32>(-1286f, -1582f), vec2<f32>(1000f, 129f), vec2<f32>(-1000f, -1000f), vec2<f32>(1645f, 1639f), vec2<f32>(-104f, -413f), vec2<f32>(709f, 1000f), vec2<f32>(-206f, 843f), vec2<f32>(735f, -1031f), vec2<f32>(2469f, 184f), vec2<f32>(1080f, -1390f), vec2<f32>(-237f, 634f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = u_input.c.xy;
    let var_1 = Struct_1(select(arg_1.a, !(!arg_1.a), !(!all(vec4<bool>(arg_2.x, arg_2.x, false, arg_1.b)))), any(!(!arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1022f + -443f))) - _wgslsmith_f_op_f32(exp2(arg_3.x))));
    let var_2 = var_1;
    var var_3 = ~(~4294967295u);
    let var_4 = ~(-29331i);
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - _wgslsmith_f_op_f32(-var_1.c))), -769f, var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(f32(-1f) * -383f));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    let var_0 = vec4<i32>(u_input.d.x, ~arg_1.d, ~15396i, arg_1.d);
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, abs(4294967295u), 33026u, 77973u), vec4<u32>(abs(u_input.b.x) | u_input.b.x, u_input.b.x, u_input.b.x, ~(~reverseBits(45015u))));
    var var_2 = arg_2;
    return true;
}

fn func_2() -> f32 {
    let var_0 = (firstLeadingBit(78852u | u_input.b.x) << (~(~60722u) % 32u)) ^ max(~(~countOneBits(u_input.b.x)), 4294967295u);
    let var_1 = any(vec4<bool>(any(vec4<bool>(var_0 < 28315u, u_input.d.x != 2147483647i, true, true)), !(var_0 >= var_0) && (all(vec2<bool>(false, false)) & true), func_4(_wgslsmith_sub_i32(min(-15606i, u_input.c.x), u_input.d.x), Struct_2(Struct_1(vec3<bool>(true, true, false), true, 611f), Struct_1(vec3<bool>(false, true, true), true, 1157f), Struct_1(vec3<bool>(false, false, false), true, -1000f), ~(-32420i), vec2<bool>(true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-689f, Struct_1(vec3<bool>(false, false, true), false, 1514f), vec2<bool>(false, false), vec3<f32>(179f, 1425f, 740f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1030f, 1000f, 1652f, -131f)))), false));
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(678f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -868f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f + -1000f)) - -705f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-947f - -1346f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(func_2()) > -554f, select(u_input.b.x > u_input.b.x, _wgslsmith_f_op_f32(floor(-1721f)) == _wgslsmith_f_op_f32(-216f * -852f), any(vec2<bool>(false, false)))), false, -634f);
    var var_1 = var_0;
    var_1 = Struct_1(vec3<bool>(32339u >= ~abs(u_input.b.x), var_0.a.x, !(var_1.c <= var_0.c) != any(var_1.a)), var_0.c > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)) * _wgslsmith_f_op_f32(abs(-1160f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(339f)))) * _wgslsmith_f_op_f32(func_2())));
    var_1 = Struct_1(select(select(var_1.a, vec3<bool>(true, any(vec4<bool>(var_1.b, var_1.a.x, false, var_1.a.x)), var_0.b), select(var_1.a, var_1.a, all(vec4<bool>(var_0.b, true, true, true)))), !select(var_1.a, var_0.a, !vec3<bool>(false, false, var_1.a.x)), var_0.b), !var_0.b, var_1.c);
    let var_2 = !vec4<bool>(any(select(var_1.a, vec3<bool>(false, var_1.a.x, var_1.b), var_0.a)) && (var_1.a.x == !var_1.b), true, all(vec4<bool>(!var_1.a.x, arg_1 <= arg_1, false & var_0.b, false)), true);
    return var_0;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    let var_0 = func_1(u_input.d, ~1i);
    global0 = array<vec2<f32>, 23>();
    let var_1 = var_0.a.x;
    global0 = array<vec2<f32>, 23>();
    let var_2 = func_1(u_input.d, 6051i).a.x;
    return vec3<u32>(_wgslsmith_mod_u32(arg_3, ~57416u) ^ ~1u, 4294967295u, max(arg_3, 1338u)) >> (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), ~vec3<u32>(u_input.b.x, arg_3, 1u))) % vec3<u32>(32u));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<f32>, 23>();
    let var_0 = abs(u_input.b.x);
    let var_1 = 4294967295u;
    global0 = array<vec2<f32>, 23>();
    let var_2 = u_input.a;
    return Struct_1(!(!func_1(u_input.d, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)).a), all(select(!vec4<bool>(false, true, arg_1.a.x, arg_1.a.x), vec4<bool>(all(arg_1.a.yy), var_2 != u_input.c.x, true, any(vec4<bool>(arg_1.a.x, arg_1.a.x, false, true))), !(!vec4<bool>(arg_1.b, false, arg_1.a.x, arg_1.b)))), func_1(u_input.d, u_input.a).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(vec3<i32>(u_input.a & -1i, u_input.d.x & u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2672i, u_input.c.x, u_input.a), u_input.d.wwx)), func_1(vec4<i32>(u_input.d.x, 1i, -26204i, u_input.a) & u_input.d, abs(u_input.c.x)), Struct_2(Struct_1(vec3<bool>(true, false, false), false, -213f), Struct_1(vec3<bool>(false, true, false), true, -110f), func_1(u_input.d, -1i), u_input.c.x >> (u_input.b.x % 32u), vec2<bool>(true, true)), u_input.b.x), func_1(~u_input.d, u_input.d.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(182f, _wgslsmith_f_op_f32(abs(173f)), _wgslsmith_f_op_f32(-190f * 1487f), _wgslsmith_f_op_f32(f32(-1f) * -169f))))), func_6(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 0u, 74628u), _wgslsmith_add_vec3_u32(vec3<u32>(42702u, 4294967295u, 4294967295u), vec3<u32>(u_input.b.x, 13764u, u_input.b.x))), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, 82374u), func_1(abs(u_input.d), 0i >> (u_input.b.x % 32u)).a), Struct_1(vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, true)), true), true, -1297f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(274f, -472f, -112f, 276f) * vec4<f32>(971f, 1000f, -265f, 1168f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, -379f, 699f, -369f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1433f, 367f, -461f, -1475f), vec4<f32>(300f, -1317f, -511f, -466f))))), Struct_1(vec3<bool>(true, true, true), func_6(select(_wgslsmith_mod_vec3_u32(vec3<u32>(30728u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 367u)), select(vec3<u32>(6592u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 70856u), vec3<bool>(true, false, false)), func_6(vec3<u32>(u_input.b.x, 4294967295u, 16096u), Struct_1(vec3<bool>(false, true, true), false, 1067f), vec4<f32>(-418f, 1000f, -141f, 666f)).a), Struct_1(vec3<bool>(false, true, true), true, 736f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(650f, -1000f, -849f, -1000f), vec4<f32>(-332f, -968f, 288f, -518f)))).a.x, _wgslsmith_f_op_f32(floor(1477f))), -13130i, vec2<bool>(true || !any(vec3<bool>(true, false, false)), true));
    global0 = array<vec2<f32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.b.c, var_0.c, var_0.a.a.yx, vec3<f32>(var_0.c.c, 1131f, var_0.a.c))).x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.c + _wgslsmith_f_op_f32(-var_0.a.c)))));
    let var_2 = Struct_2(var_0.c, func_1(_wgslsmith_clamp_vec4_i32(abs(u_input.d), u_input.d, u_input.d) >> (select(firstTrailingBit(vec4<u32>(79009u, u_input.b.x, u_input.b.x, u_input.b.x)), select(vec4<u32>(u_input.b.x, 23205u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<bool>(var_0.c.b, false, true, var_0.a.a.x)), !vec4<bool>(false, var_0.c.b, var_0.e.x, var_0.c.a.x)) % vec4<u32>(32u)), reverseBits(_wgslsmith_div_i32(u_input.a, u_input.a))), Struct_1(func_6(vec3<u32>(1u, max(32682u, u_input.b.x), u_input.b.x), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1121f, 972f, var_0.a.c))))).a, !var_0.a.a.x, _wgslsmith_f_op_f32(max(var_0.c.c, 1000f))), _wgslsmith_div_i32(max(firstLeadingBit(var_0.d), _wgslsmith_div_i32(2147483647i, -1i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.d, 72870i, var_0.d, var_0.d), vec4<i32>(var_0.d, u_input.c.x, -60659i, u_input.c.x))) >> (71228u % 32u), select(var_0.b.a.zy, vec2<bool>(true, _wgslsmith_f_op_vec4_f32(func_3(var_0.b.c, Struct_1(var_0.b.a, var_0.b.b, -1744f), vec2<bool>(var_0.e.x, var_0.c.a.x), vec3<f32>(-114f, -1268f, -1495f))).x > -869f), var_0.e.x));
    var_0 = Struct_2(Struct_1(var_0.c.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c.c + 906f))))), Struct_1(!select(select(var_0.a.a, var_2.a.a, vec3<bool>(false, var_2.b.a.x, var_2.e.x)), vec3<bool>(var_0.a.b, false, true), func_1(vec4<i32>(-1i, u_input.c.x, var_0.d, -262i), u_input.a).a), var_2.e.x, 264f), func_1(max(u_input.d, u_input.d), 0i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-8744i, u_input.d.x), u_input.c.xx)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.d, var_2.d), vec2<i32>(-69632i, u_input.a)), u_input.c.xy | vec2<i32>(var_2.d, -2147483647i))), ~abs(~var_2.d)), var_2.a.a.yy);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c) * _wgslsmith_f_op_f32(-var_0.a.c));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c) + -1450f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec4_f32(func_3(var_3.x, Struct_1(!var_2.b.a, var_0.c.a.x, _wgslsmith_f_op_f32(var_0.a.c * var_2.c.c)), !var_0.a.a.xx, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-442f, -1181f, var_2.b.c), vec3<f32>(var_3.x, -1092f, var_3.x)))))).yyy)));
}

