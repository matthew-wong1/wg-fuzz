struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<f32>(849f, -149f, 796f), false, vec2<f32>(1155f, -337f)), Struct_1(vec3<f32>(1489f, 595f, -592f), false, vec2<f32>(585f, -870f)), 709f, Struct_1(vec3<f32>(1941f, 779f, 770f), false, vec2<f32>(-1515f, 1035f)), Struct_1(vec3<f32>(-1004f, -433f, -160f), false, vec2<f32>(-837f, -221f)));

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-1i, 26628i, -1i), vec3<i32>(-5376i, 0i, 8162i), vec3<i32>(1i, -44102i, -46697i), vec3<i32>(0i, 1i, 752i), vec3<i32>(-9397i, 25232i, 0i), vec3<i32>(i32(-2147483648), -11483i, -1i), vec3<i32>(-65770i, -1i, 0i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(16183i, 24633i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(-13908i, -6885i, 2147483647i), vec3<i32>(28456i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), -36211i, 2147483647i), vec3<i32>(-16910i, 30156i, 56666i), vec3<i32>(-5114i, 1i, 2147483647i), vec3<i32>(-11046i, -18499i, -47618i), vec3<i32>(2147483647i, 2167i, -20729i), vec3<i32>(0i, -21091i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -25350i), vec3<i32>(1i, -51268i, 0i), vec3<i32>(-21323i, -17477i, 25898i), vec3<i32>(0i, -4659i, -48491i), vec3<i32>(-1i, 1981i, -3943i), vec3<i32>(1i, 0i, 0i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(37059i, 26484i, -20559i), vec3<i32>(20622i, 8183i, 0i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = u_input.a;
    global1 = Struct_3(global1.d, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.e.a, vec3<f32>(171f, global1.a.c.x, arg_0.b.a.x)))) - vec3<f32>(arg_0.b.c.x, -808f, _wgslsmith_div_f32(arg_0.c.a.x, global1.d.c.x))), all(!select(vec4<bool>(arg_0.c.b, global1.d.b, false, true), vec4<bool>(true, false, true, false), true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(841f)), arg_0.b.a.x)), -804f, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1000f, global1.c), vec3<f32>(arg_0.a.a.x, 1000f, arg_0.e.x)))), (0i != -arg_0.d.x) | arg_0.c.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(178f, -1000f) + arg_0.c.c))))), global1.b);
    let var_1 = vec2<bool>(false, 4294967295u >= u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_0.b.a)), arg_0.d.x <= 0i, _wgslsmith_f_op_vec2_f32(global1.e.c + vec2<f32>(global1.e.a.x, 525f)));
    let var_3 = vec4<u32>(0u, select(4294967295u, 18432u, max(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_div_u32(34284u, u_input.a)) != 1u), 0u, arg_1.x);
    return 1000f;
}

fn func_2(arg_0: i32) -> u32 {
    global2 = array<Struct_2, 3>();
    global1 = Struct_3(global1.d, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1.a.a.x, -130f))))), global1.d, Struct_1(vec3<f32>(-107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) + -2213f), -365f), false, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(global1.a.a.yz))))));
    var var_0 = -(~_wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(19250u, 28u)], ~_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(43802u, 28u)])));
    let var_1 = Struct_3(global1.d, global1.b, _wgslsmith_f_op_f32(select(-2071f, _wgslsmith_f_op_f32(-global1.e.a.x), true)), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a, 3u)], vec3<u32>(1u, 1u, u_input.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.e.c.x - global1.d.a.x))), -890f), !(!(!global1.d.b)), vec2<f32>(global1.e.c.x, global1.e.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.c.x, global1.c, global1.e.a.x)))) + global1.b.a), (~40702u >> (firstLeadingBit(66629u) % 32u)) == u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.b.a.zy)))));
    var_0 = _wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(u_input.a, 28u)], ~(-global3[_wgslsmith_index_u32(73760u, 28u)] | _wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(20753u, 28u)] ^ global3[_wgslsmith_index_u32(u_input.a, 28u)], vec3<i32>(1i, -2147483647i, -48055i), ~vec3<i32>(arg_0, 29889i, 1i))));
    return ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 60759u), min(0u, 1u));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    global3 = array<vec3<i32>, 28>();
    var var_0 = arg_3;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.e.x, 2686f, arg_1.e.x), vec3<f32>(arg_1.c.a.x, 999f, -358f))))), !(!(true & global1.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0))), global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-649f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_1.c.c.x))))), arg_1.a, Struct_1(vec3<f32>(global1.a.a.x, _wgslsmith_f_op_f32(sign(global1.a.a.x)), -753f), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b.a.xy, arg_1.b.c) - vec2<f32>(arg_0, -1089f)))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_3 {
    global3 = array<vec3<i32>, 28>();
    var var_0 = func_4(global1.a.a.x, global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(~0u, ~29456u, _wgslsmith_clamp_u32(27194u, 0u, u_input.a)) >> ((func_2(-2147483647i) & min(arg_2.x, 36674u)) % 32u), (4294967295u << (abs(arg_2.x) % 32u)) ^ 4294967295u), 3u)], ~298i, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_2 << (vec2<u32>(7939u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a >> (arg_2.x % 32u), _wgslsmith_add_u32(u_input.a, 1u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(67117u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, 5432u), arg_2), vec2<u32>(1u, u_input.a))));
    let var_1 = Struct_3(var_0.b, var_0.a, _wgslsmith_f_op_f32(-var_0.d.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(global1.b.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1423f, arg_0, 1000f))), any(!vec2<bool>(var_0.b.b, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1268f, arg_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, -111f))))), Struct_1(vec3<f32>(-533f, 920f, -1000f), _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(arg_2.x, 28u)], vec3<i32>(-1i, 2038i, 14996i) | global3[_wgslsmith_index_u32(1u, 28u)]) >= ~(i32(-1i) * -1i), vec2<f32>(_wgslsmith_f_op_f32(global1.b.a.x * arg_0), -252f)));
    let var_2 = global1.b.c;
    let var_3 = !select(!select(!vec4<bool>(global1.a.b, false, false, false), select(vec4<bool>(arg_1.x, false, true, var_0.b.b), vec4<bool>(arg_1.x, false, global1.a.b, arg_1.x), arg_1.x), var_1.e.b), !vec4<bool>(global1.b.b, all(vec4<bool>(false, global1.a.b, var_0.d.b, false)), any(vec3<bool>(true, var_1.b.b, false)), false), !vec4<bool>(false, false, false, all(vec4<bool>(var_1.d.b, false, var_0.e.b, false))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.d.b;
    global1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1167f, _wgslsmith_f_op_f32(exp2(global1.e.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-2647f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.a.x) + 594f))), vec2<bool>(all(vec3<bool>(true, global1.a.b, global1.e.b)), global1.d.b), ~vec2<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, 55783u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))));
    var var_0 = global2[_wgslsmith_index_u32((~abs(u_input.a | 797u) >> (_wgslsmith_clamp_u32(u_input.a, 1u, abs(~4294967295u)) % 32u)) << (u_input.a % 32u), 3u)];
    global0 = var_0.a.b;
    var var_1 = Struct_3(global1.d, var_0.a, var_0.e.x, Struct_1(vec3<f32>(-584f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e.x - global1.d.c.x), _wgslsmith_f_op_f32(-global1.b.a.x))), 1895f), all(vec3<bool>(all(vec2<bool>(true, false)), true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, 1201f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(var_0.e, vec2<f32>(var_0.b.a.x, global1.e.c.x))))))), func_1(_wgslsmith_f_op_f32(step(-697f, global1.d.a.x)), vec2<bool>(true, _wgslsmith_f_op_f32(-var_0.c.a.x) <= -977f), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 0u), u_input.a)).d);
    var var_2 = global1.d.a.x;
    var var_3 = -588f;
    var var_4 = func_1(_wgslsmith_f_op_f32(func_3(Struct_2(global1.d, Struct_1(global1.b.a, var_1.a.b, func_4(-1691f, Struct_2(var_1.e, Struct_1(vec3<f32>(var_0.e.x, var_0.a.c.x, var_0.e.x), false, vec2<f32>(var_0.a.a.x, 1000f)), Struct_1(global1.e.a, true, global1.e.a.zz), var_0.d, vec2<f32>(var_1.b.a.x, global1.c)), 1i, vec2<u32>(56872u, 1u)).e.a.zx), global1.a, vec3<i32>(min(var_0.d.x, 2147483647i), min(var_0.d.x, var_0.d.x), var_0.d.x), global1.a.a.zz), abs(~vec3<u32>(1u, u_input.a, u_input.a) << (vec3<u32>(4294967295u, u_input.a, 40555u) % vec3<u32>(32u))))), vec2<bool>(var_0.c.b, true), firstTrailingBit(vec2<u32>(65466u, ~u_input.a)));
    var_4 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_4.b.a - vec3<f32>(-1707f, var_4.d.a.x, 1863f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.c.a)) - _wgslsmith_f_op_vec3_f32(round(var_0.c.a)))), false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.c.x, global1.c), _wgslsmith_f_op_vec2_f32(global1.b.a.yx + var_0.e))))), Struct_1(global1.d.a, func_1(_wgslsmith_f_op_f32(sign(var_4.a.a.x)), vec2<bool>(false, !var_0.c.b), ~select(vec2<u32>(u_input.a, 37620u), vec2<u32>(0u, 56041u), false)).d.b, global1.a.a.zy), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-979f, var_0.e.x), global1.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x * var_1.a.c.x) - global1.b.a.x)), 582f)), var_1.a, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(801f, var_4.d.c.x)), vec2<i32>(0i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(trunc(var_4.a.a.x)))));
}

