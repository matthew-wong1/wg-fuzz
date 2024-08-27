struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(1i, -10286i, i32(-2147483648), -10932i), vec4<i32>(-46587i, 1i, -796i, -13306i), vec4<i32>(-1i, 2147483647i, -46865i, -1i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 19702i), vec4<i32>(-28148i, -49140i, 2147483647i, -5090i), vec4<i32>(-26776i, -3681i, -47952i, -1i), vec4<i32>(-6799i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-23415i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(0i, -1i, -1i, 8524i), vec4<i32>(-1i, -13336i, 0i, -1i), vec4<i32>(-1i, 39390i, 38361i, i32(-2147483648)), vec4<i32>(-30007i, -9768i, i32(-2147483648), 1i), vec4<i32>(17297i, 0i, -1i, 1i), vec4<i32>(12152i, -2380i, 1i, 1i), vec4<i32>(2147483647i, -18584i, 1i, 1i), vec4<i32>(0i, -4250i, i32(-2147483648), -1i), vec4<i32>(1i, 2147483647i, -34664i, -1075i), vec4<i32>(1i, -48776i, -1i, -1i));

var<private> global1: array<vec3<f32>, 30>;

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(~(-vec4<i32>(-2147483647i, -u_input.c.x, min(34119i, -32615i), -1i)), vec3<f32>(1545f, -508f, _wgslsmith_f_op_f32(min(1423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) + _wgslsmith_f_op_f32(f32(-1f) * -661f))))), Struct_2(global3.a), u_input.d.x);
    let var_1 = Struct_4(vec2<u32>(~u_input.d.x, 52387u), -var_0.a, ((select(var_0.a.ywx, var_0.a.xxz, var_0.c.a) | u_input.c) << ((_wgslsmith_sub_vec3_u32(vec3<u32>(23506u, var_0.d, u_input.b), u_input.d.yzy) | u_input.d.zzz) % vec3<u32>(32u))) ^ u_input.c, var_0.c, Struct_3(-vec4<i32>(var_0.a.x, 1i, _wgslsmith_add_i32(var_0.a.x, 0i), max(var_0.a.x, u_input.c.x)), vec3<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), Struct_2(false), 15601u));
    global2 = array<vec3<u32>, 31>();
    global2 = array<vec3<u32>, 31>();
    var var_2 = _wgslsmith_add_u32(u_input.b, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, var_0.d), u_input.a, 112416u)) >= u_input.d.x;
    return select(select(!vec4<bool>(global3.a && true, true, all(vec3<bool>(false, false, var_0.c.a)), global3.a), !vec4<bool>(!global3.a, !var_1.e.c.a, true, false), !select(!vec4<bool>(true, var_0.c.a, false, var_0.c.a), select(vec4<bool>(true, global3.a, var_1.d.a, true), vec4<bool>(var_1.d.a, true, true, false), false), 2147483647i <= var_1.c.x)), select(vec4<bool>(select(var_1.e.c.a, true, true), true, var_0.c.a, countOneBits(0i) == firstTrailingBit(-19865i)), !vec4<bool>(var_1.e.c.a, true, true, any(vec3<bool>(false, global3.a, false))), select(select(select(vec4<bool>(true, false, var_1.e.c.a, var_1.d.a), vec4<bool>(var_1.d.a, global3.a, false, true), true), select(vec4<bool>(var_1.e.c.a, var_0.c.a, true, false), vec4<bool>(true, var_1.e.c.a, false, true), var_0.c.a), any(vec3<bool>(var_1.e.c.a, false, global3.a))), !(!vec4<bool>(false, var_0.c.a, var_0.c.a, false)), !any(vec2<bool>(global3.a, global3.a)))), vec4<bool>(var_0.c.a, !any(!vec3<bool>(var_0.c.a, true, true)), select(true, !(var_1.d.a || false), !var_1.e.c.a), false));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = any(select(!select(vec3<bool>(arg_3.a, arg_2, false), vec3<bool>(false, false, true), vec3<bool>(global3.a, false, false)), vec3<bool>(true, true, true), select(!vec3<bool>(arg_2, true, true), !vec3<bool>(true, global3.a, false), !global3.a))) | true;
    global1 = array<vec3<f32>, 30>();
    global0 = array<vec4<i32>, 18>();
    var_0 = !(!all(select(vec3<bool>(true, arg_2, arg_3.a), !vec3<bool>(true, global3.a, false), select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_3.a, false, false), vec3<bool>(true, true, true)))));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(~select(~firstLeadingBit(0u), _wgslsmith_div_u32(28708u, 10781u), true), 18u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -339f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * 280f), _wgslsmith_f_op_f32(select(arg_0, arg_0, global3.a)))), _wgslsmith_f_op_f32(round(1877f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, arg_0, -1382f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -299f, arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), Struct_2(select(all(func_3()), (arg_2 || global3.a) & false, arg_2)), u_input.a);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1269f, _wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_f_op_f32(arg_0 - 2310f), 1000f), _wgslsmith_mod_vec3_u32(countOneBits(abs(select(u_input.d.xwy, vec3<u32>(u_input.d.x, u_input.b, 847u), vec3<bool>(var_1.c.a, arg_3.a, arg_3.a)))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.xzy, vec3<u32>(0u, var_1.d, u_input.a)) << (~vec3<u32>(u_input.d.x, 0u, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(29449u, 40911u, 0u), vec3<u32>(var_1.d, var_1.d, 955u), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.d, 42605u, var_1.d), vec3<u32>(var_1.d, u_input.b, u_input.d.x))))), vec4<bool>(true, !any(func_3().wyw), false, any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec4<bool> {
    var var_0 = arg_2;
    var var_1 = ~4294967295u >> (~4294967295u % 32u);
    var var_2 = vec3<f32>(-850f, arg_2, _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(188f, _wgslsmith_f_op_f32(-arg_2), select(true, arg_1.c.x, arg_0.a)))), _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-arg_2)), ~(~(~vec3<u32>(33986u, 1u, 11250u))), arg_1.c);
    let var_4 = -1097f;
    return var_3.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_4 {
    global3 = Struct_2(false);
    global1 = array<vec3<f32>, 30>();
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(arg_1.x - 1267f) <= -1330f), select(false, arg_0.c.x, !arg_0.c.x), false);
    let var_1 = -_wgslsmith_add_vec3_i32(select(vec3<i32>(1i, ~u_input.c.x, ~1i), countOneBits(countOneBits(u_input.c)), select(var_0, !var_0, var_0)), u_input.c);
    var var_2 = (~reverseBits(arg_0.b.x) >> (~abs(~arg_0.b.x) % 32u)) < abs(_wgslsmith_div_u32(8280u, _wgslsmith_mod_u32(4294967295u, u_input.d.x) << ((1u >> (arg_0.b.x % 32u)) % 32u)));
    return Struct_4(arg_0.b.zz, ~(~(-vec4<i32>(-24539i, 0i, -27390i, var_1.x) << (max(u_input.d, vec4<u32>(u_input.a, 4294967295u, 0u, 0u)) % vec4<u32>(32u)))), vec3<i32>(-firstTrailingBit(47079i), firstTrailingBit(1i) >> (74884u % 32u), -(~2147483647i)), Struct_2(true), Struct_3(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -5626i, 1i), var_1.x, _wgslsmith_sub_i32(8410i, -11767i), _wgslsmith_add_i32(-19671i, u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), -556f), Struct_2(true), arg_0.b.x));
}

fn func_1() -> Struct_2 {
    var var_0 = 558f;
    let var_1 = !(true || !select(!global3.a, true, global3.a));
    global1 = array<vec3<f32>, 30>();
    let var_2 = func_5(Struct_1(vec3<f32>(-1713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(755f)) + _wgslsmith_f_op_f32(f32(-1f) * -1022f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-151f + -2013f), 245f, var_1))), global2[_wgslsmith_index_u32(~1u, 31u)], select(func_4(Struct_2(global3.a), func_2(-535f, vec4<i32>(43381i, -7720i, -2147483647i, u_input.c.x), global3.a, Struct_2(false)), _wgslsmith_f_op_f32(-344f - 1000f), u_input.c.x), func_2(1000f, ~global0[_wgslsmith_index_u32(66914u, 18u)], true, Struct_2(true)).c, !var_1)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(ceil(-1683f))), vec2<bool>(true, true));
    var var_3 = vec3<u32>(var_2.e.d, u_input.b, ~abs(4294967295u));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-875f - 2150f), _wgslsmith_f_op_f32(sign(2186f))))))));
    let var_1 = select(global3.a, global3.a, false) & all(select(vec3<bool>(global3.a, !global3.a, true), func_2(_wgslsmith_f_op_f32(ceil(242f)), global0[_wgslsmith_index_u32(43642u, 18u)] | global0[_wgslsmith_index_u32(u_input.d.x, 18u)], false, Struct_2(true)).c.zxy, !select(vec3<bool>(false, true, global3.a), vec3<bool>(false, false, global3.a), global3.a)));
    var var_2 = vec2<u32>(u_input.d.x, min(u_input.b, ~33305u));
    let var_3 = vec4<u32>(_wgslsmith_div_u32(4294967295u, var_2.x), ~(~20190u) >> (_wgslsmith_add_u32(1u, 33139u >> (u_input.b % 32u)) % 32u), var_2.x, var_2.x);
    let var_4 = firstTrailingBit(vec2<u32>(firstLeadingBit(var_2.x), ~func_2(_wgslsmith_f_op_f32(step(-2520f, 807f)), select(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 0i), global0[_wgslsmith_index_u32(u_input.b, 18u)], vec4<bool>(false, true, false, var_1)), true, Struct_2(global3.a)).b.x));
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(664f, _wgslsmith_f_op_f32(trunc(-361f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(901f)) + _wgslsmith_f_op_f32(f32(-1f) * -220f))), -486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-317f, 100f, var_1))))));
    let var_6 = -(vec2<i32>(func_5(func_2(var_5.x, vec4<i32>(-13808i, 35947i, -37364i, 2147483647i), var_1, Struct_2(true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, var_5.x)), select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, false), vec2<bool>(true, global3.a))).b.x, -1i) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-30210i, 22747i), -vec2<i32>(42213i, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(u_input.d.x, 31u)]);
}

