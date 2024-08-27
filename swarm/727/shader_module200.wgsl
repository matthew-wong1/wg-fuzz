struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1312f, 833f, 1278f, -917f), 3333f, true);

var<private> global3: array<bool, 25> = array<bool, 25>(false, false, true, true, false, true, false, true, false, true, false, false, true, true, true, false, false, true, false, true, true, false, true, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(!global2.c, true, !any(select(select(vec4<bool>(false, global2.c, global3[_wgslsmith_index_u32(22210u, 25u)], true), vec4<bool>(global3[_wgslsmith_index_u32(995u, 25u)], global3[_wgslsmith_index_u32(u_input.c.x, 25u)], global2.c, global2.c), global3[_wgslsmith_index_u32(u_input.a, 25u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(u_input.c.x, 25u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 25u)]), select(vec4<bool>(global2.c, true, global3[_wgslsmith_index_u32(65977u, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)]), vec4<bool>(global3[_wgslsmith_index_u32(86459u, 25u)], true, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(396u, 25u)], true, global2.c)))), global2.c);
    let var_1 = select(var_0.xx, select(select(vec2<bool>(!global2.c, var_0.x | global3[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(!global3[_wgslsmith_index_u32(u_input.e, 25u)], true), vec2<bool>(global2.c, 4294967295u == u_input.e)), var_0.zy, true), var_0.x);
    let var_2 = vec2<u32>(~(u_input.e | _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 55758u, 28588u), vec3<u32>(25601u, 21150u, u_input.e) ^ u_input.c)), ~_wgslsmith_add_u32(90202u, firstLeadingBit(1u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.a))), global2.b, 1u == _wgslsmith_clamp_u32(~1u, 0u, 1u << (_wgslsmith_sub_u32(var_2.x, 8389u) % 32u)));
    var_0 = vec4<bool>(all(select(select(!vec3<bool>(true, false, var_3.c), !var_0.yyz, false), vec3<bool>(any(vec4<bool>(var_3.c, var_1.x, false, var_1.x)), !var_1.x, any(vec4<bool>(false, true, true, true))), u_input.d.x == _wgslsmith_sub_i32(-39959i, u_input.b.x))), var_0.x & select(true, true & global3[_wgslsmith_index_u32(0u, 25u)], false), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(21893u, u_input.e, u_input.e, var_2.x)), vec4<u32>(u_input.a, ~u_input.c.x, 7874u, abs(83845u))) == max(var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.e, var_2.x, 0u), vec4<u32>(var_2.x, u_input.a, u_input.e, var_2.x) >> (vec4<u32>(var_2.x, 20142u, u_input.e, var_2.x) % vec4<u32>(32u)))), var_1.x);
    return 37353u;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_4(u_input.d.x, ~func_3());
    var var_1 = Struct_4(_wgslsmith_add_i32(-(arg_1.a.x << (u_input.c.x % 32u)), -var_0.a), var_0.b);
    let var_2 = -reverseBits(~u_input.d.zz);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_2)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(566f, arg_0, global2.b)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - arg_0), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))))));
    global1 = true;
    return -629f;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -1100f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(arg_0))));
    return Struct_1(global2.a, -1372f, select(global2.c, false, true));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5) -> Struct_2 {
    let var_0 = 231f;
    var var_1 = Struct_2(func_4(-514f, ~(~arg_1.c >> ((vec3<u32>(u_input.a, 0u, arg_0.d) & u_input.c) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, 1252f, false)), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(845f, global2.b)))))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -190f), arg_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.a.yyw)) * arg_1.a.a.xzz)), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(586f, 431f)))) * _wgslsmith_f_op_f32(max(131f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.b)))))), u_input.a);
    let var_2 = u_input.a;
    let var_3 = select(select(vec4<bool>(global3[_wgslsmith_index_u32(abs(69886u), 25u)], any(vec4<bool>(true, arg_1.a.c, arg_1.a.c, global2.c)), !func_4(arg_1.b.x, vec3<i32>(2147483647i, -2147483647i, arg_1.c.x), global2.a.xwx).c, arg_1.a.c), vec4<bool>(!(!global3[_wgslsmith_index_u32(arg_1.d, 25u)]), all(select(vec3<bool>(var_1.c.c, var_1.c.c, false), vec3<bool>(arg_0.a.c, true, var_1.c.c), vec3<bool>(global3[_wgslsmith_index_u32(var_2, 25u)], arg_0.a.c, arg_1.a.c))), !all(vec4<bool>(true, arg_1.a.c, false, false)), true), global2.c), vec4<bool>(global2.c, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_2 >> (var_2 % 32u), _wgslsmith_div_u32(var_2, var_2)), u_input.a), 25u)], select(true, true, _wgslsmith_clamp_i32(-48527i, arg_0.e.a, -85687i) >= 1i), true), true);
    var var_4 = arg_1.a.c;
    return Struct_2(arg_1.a, Struct_1(func_4(-1856f, arg_1.c, vec3<f32>(-612f, _wgslsmith_f_op_f32(1064f + -105f), _wgslsmith_f_op_f32(-1497f * global2.a.x))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.x, 369f))))), arg_1.a.c), var_1.b, _wgslsmith_f_op_f32(930f + var_1.c.a.x), 1u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, -3382i, abs(-2147483647i))) << (u_input.c % vec3<u32>(32u)), u_input.b.zwx);
    global0 = global2.a.wzw;
    let var_1 = u_input.c.x;
    var var_2 = global2.a;
    let var_3 = func_5(Struct_5(func_4(var_2.x, -vec3<i32>(41529i, var_0.x, -1i), vec3<f32>(_wgslsmith_f_op_f32(func_2(global2.a.x, Struct_3(vec4<i32>(-33202i, 28068i, 57593i, -1i), vec3<bool>(global2.c, false, global3[_wgslsmith_index_u32(0u, 25u)]), global2.c), var_2.wyy)), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(1124f + -226f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.b, 164f, -857f) * vec4<f32>(-265f, global0.x, global2.b, 518f)))), global2.a)), vec3<i32>(u_input.b.x, var_0.x, _wgslsmith_dot_vec2_i32(countOneBits(var_0.zx), vec2<i32>(1i, u_input.d.x))), min(select(~u_input.e, var_1 ^ 101649u, global2.c), 1u), Struct_4(reverseBits(79853i) >> ((u_input.a & var_1) % 32u), 1u)), Struct_5(func_4(-588f, reverseBits(u_input.d.wwx), var_2.wwz), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-900f - -879f) - _wgslsmith_f_op_f32(func_2(1770f, Struct_3(vec4<i32>(u_input.d.x, u_input.d.x, -22809i, u_input.b.x), vec3<bool>(false, global3[_wgslsmith_index_u32(18567u, 25u)], true), global3[_wgslsmith_index_u32(var_1, 25u)]), var_2.wzw))), global2.a.x, -445f, 1380f), vec3<i32>(-_wgslsmith_dot_vec2_i32(var_0.yx, u_input.d.zy), 64361i, -(~(-7853i))), 35344u, Struct_4(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, u_input.b.x, u_input.b.x, -31556i)), vec4<i32>(var_0.x, u_input.d.x, 58880i, 1i)), ~u_input.e | u_input.c.x)));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), func_4(global2.a.x, u_input.d.zyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1762f, 870f) - vec3<f32>(1521f, global2.a.x, global2.a.x)) + vec3<f32>(691f, global2.a.x, 1000f)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-137f * 301f), countOneBits(u_input.d.xzy), global2.a.yww).a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 107f, global2.a.x, global0.x) + vec4<f32>(global2.b, 1000f, global2.a.x, -596f)))), global0.x, true), -3056f, 0u);
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(~var_0.e >> (49825u % 32u), select(33754u, 32511u, !any(vec4<bool>(false, var_0.b.c, global3[_wgslsmith_index_u32(18200u, 25u)], false)))), var_0.e, 1u);
    var var_2 = Struct_3(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-28152i, u_input.d.x, u_input.b.x, -9830i), var_0.c.c), -u_input.b, ~u_input.d) | vec4<i32>(u_input.d.x, abs(countOneBits(-12326i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 1i), u_input.b.x), _wgslsmith_sub_i32(reverseBits(u_input.b.x), min(0i, u_input.d.x))), !(!select(select(vec3<bool>(var_0.b.c, true, global3[_wgslsmith_index_u32(17162u, 25u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.e, 25u)], true, var_0.a.c), true), vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(var_0.e, 25u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(14912u, 4294967295u, 28255u, 4294967295u), select(vec4<u32>(u_input.c.x, u_input.c.x, var_0.e, u_input.a), vec4<u32>(u_input.e, 1u, var_1.x, 4294967295u), global2.c)), 91700u), 25u)]);
    var var_3 = select(select(vec3<u32>(~var_0.e, (2022u | var_0.e) ^ ~0u, u_input.c.x), vec3<u32>(_wgslsmith_div_u32(var_1.x, var_1.x), _wgslsmith_add_u32(u_input.a, 22483u), u_input.a) ^ u_input.c, var_0.c.c), vec3<u32>(var_0.e, func_3(), var_0.e) << (vec3<u32>(var_1.x, countOneBits(16991u), abs(19909u) ^ var_1.x) % vec3<u32>(32u)), select(var_2.b, var_2.b, !(!(!vec3<bool>(false, global2.c, var_0.a.c)))));
    let var_4 = Struct_3(~(vec4<i32>(-1i) * -(~vec4<i32>(u_input.b.x, -2147483647i, -8324i, var_2.a.x))), var_2.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c.a), global2.b, true), var_0.a.a, select(abs(var_4.a.zwy), _wgslsmith_mult_vec3_i32(var_4.a.xzw, var_4.a.xzy), vec3<bool>(true, true, true)), ~0u, Struct_4(var_4.a.x, var_1.x ^ 1u)), Struct_5(func_1(), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -253f, 1997f, 418f))), _wgslsmith_sub_vec3_i32(-var_2.a.www, abs(var_2.a.zxx)), _wgslsmith_div_u32(~var_1.x, ~var_0.e), Struct_4(~(-1i), ~0u))).e, (u_input.c ^ u_input.c) & _wgslsmith_div_vec3_u32(u_input.c, u_input.c), -1i, countOneBits(-8379i));
}

