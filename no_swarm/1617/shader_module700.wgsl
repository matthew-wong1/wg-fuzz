struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<f32, 11>;

var<private> global2: bool = false;

var<private> global3: array<bool, 28>;

var<private> global4: Struct_5 = Struct_5(vec2<bool>(false, true), Struct_1(vec4<f32>(577f, 808f, 941f, 2277f), vec3<bool>(false, true, true), 57546u, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    global3 = array<bool, 28>();
    var var_0 = 0u & abs(arg_0.b.c);
    var var_1 = arg_0;
    var_0 = ~1u;
    var var_2 = select(vec4<bool>(true, true, !arg_0.a.x, false), vec4<bool>(true, !(!arg_2.x), true, any(select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 28u)], false, var_1.a.x, true), vec4<bool>(false, true, var_1.b.b.x, var_1.b.d), var_1.b.c == arg_3.x))), any(!arg_0.a));
    return arg_0.b.c;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(global4.b.c, ~1u);
    var var_1 = (u_input.b.x >> (func_3(Struct_5(vec2<bool>(true, true), global4.b), 572f, global4.b.b, vec4<u32>(firstLeadingBit(0u), ~54950u, ~11459u, reverseBits(4294967295u))) % 32u)) & 18579u;
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i) << (u_input.a % vec3<u32>(32u)), -(~firstTrailingBit(vec3<i32>(-13280i, 2147483647i, -30412i)))), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(6352i, -1i, 22507i, -2147483647i), select(vec4<i32>(50i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(0i, 49693i, -1i, 17074i), vec4<bool>(global4.a.x, global4.a.x, global3[_wgslsmith_index_u32(global4.b.c, 28u)], global4.b.d))) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2204i, -2147483647i), vec2<i32>(1i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 2147483647i, -1i, i32(-1i) * -2147483647i), -vec4<i32>(1i, 1i, 1i, 1i))));
    let var_3 = ~(29166u & global4.b.c);
    let var_4 = u_input.a.yz;
    return Struct_3(~(_wgslsmith_mult_u32(1u, 1u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b.x), min(vec3<u32>(1u, global4.b.c, 18276u), u_input.a)) % 32u)), -579f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    let var_0 = vec4<i32>(-1i, _wgslsmith_div_i32(min(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_add_i32(-20232i, abs(-2147483647i))), _wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(2147483647i, 1i), vec2<i32>(9492i, -68569i), true)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 0i), firstLeadingBit(vec2<i32>(-30671i, 16063i))))), _wgslsmith_div_i32(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-16410i, -17167i)), -1i >> (_wgslsmith_clamp_u32(arg_1.a, 1u, 0u) % 32u)), 1i), _wgslsmith_mult_i32(countOneBits(-1i), _wgslsmith_mod_i32(abs(0i), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 25831i, 2147483647i, 4358i), countOneBits(vec4<i32>(-1i, 4894i, 1i, -7940i))))));
    let var_1 = vec4<i32>(46406i, -2147483647i, ~(_wgslsmith_div_i32(-1i << (0u % 32u), var_0.x) << (56447u % 32u)), var_0.x);
    global0 = array<Struct_3, 12>();
    global3 = array<bool, 28>();
    var var_2 = global4.a;
    return firstLeadingBit(u_input.a.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec3<i32> {
    global1 = array<f32, 11>();
    var var_0 = Struct_5(vec2<bool>(arg_1.x, (global4.b.a.x >= global1[_wgslsmith_index_u32(~31461u, 11u)]) == (_wgslsmith_f_op_f32(min(875f, global4.b.a.x)) != 913f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.a.x) + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 11u)], global4.b.a.x, false))), -2139f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~4294967295u, 11u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 11u)], 665f)))), select(vec3<bool>(true, global3[_wgslsmith_index_u32(~u_input.b.x, 28u)], global4.b.d), select(select(vec3<bool>(global4.b.b.x, global4.a.x, false), global4.b.b, vec3<bool>(arg_1.x, true, arg_1.x)), vec3<bool>(false, false, true), select(global4.b.b, global4.b.b, arg_1.x)), global4.b.d), func_2().a, arg_1.x));
    var_0 = Struct_5(global4.b.b.yz, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(347f, 1067f, -1108f, var_0.b.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.b.a.x, global4.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.b.a.x), vec4<f32>(var_0.b.a.x, global4.b.a.x, global4.b.a.x, 909f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.b.a.x, var_0.b.a.x, -1509f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, global4.b.a.x, 2577f, global4.b.a.x)))), select(vec3<bool>(!arg_1.x, true, select(global3[_wgslsmith_index_u32(1u, 28u)], false, global4.a.x)), select(!global4.b.b, var_0.b.b, select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), var_0.b.b, vec3<bool>(true, arg_1.x, false))), vec3<bool>(arg_1.x, true, all(vec3<bool>(global4.b.b.x, false, false)))), _wgslsmith_sub_u32(26790u, ~_wgslsmith_sub_u32(u_input.b.x, 6348u)), false));
    let var_1 = false;
    global1 = array<f32, 11>();
    return ~firstTrailingBit(firstTrailingBit(vec3<i32>(1i, 1i, 1i)));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_5 {
    global0 = array<Struct_3, 12>();
    let var_0 = func_5(vec2<u32>(~func_4(Struct_4(1648f), func_2()), global4.b.c << (44132u % 32u)), global4.b.b);
    global3 = array<bool, 28>();
    let var_1 = var_0;
    var var_2 = -1745f;
    return Struct_5(global4.a, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global4.b.c, 11u)])), 1098f, _wgslsmith_f_op_f32(776f + -502f), global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), select(global4.b.b, vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 28u)] && global4.b.d, true, any(vec4<bool>(true, true, global4.b.d, false))), true), max(func_4(Struct_4(global4.b.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 84728u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 33975u)), 12u)]), _wgslsmith_sub_u32(~global4.b.c, ~arg_0)), !global3[_wgslsmith_index_u32(select(61751u, 4294967295u, true), 28u)]));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    return func_1(_wgslsmith_dot_vec3_u32(u_input.a, ~reverseBits(u_input.a) << ((_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, 10353u, 0u), vec3<u32>(4294967295u, 1u, 0u)) << (vec3<u32>(26234u, 4294967295u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(min(u_input.a.x, 65425u), 28u)]).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 11>();
    var var_0 = func_6(func_1(0u, global4.b.b.x), Struct_1(vec4<f32>(global4.b.a.x, global4.b.a.x, global4.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f + 305f) + global4.b.a.x)), func_1(~(~1u), any(vec2<bool>(global4.a.x, false))).b.b, _wgslsmith_mod_u32(select(30685u, global4.b.c << (29857u % 32u), true), ~36188u), true || any(select(vec4<bool>(global4.b.b.x, true, global4.b.b.x, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(global4.b.c, 28u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(91124u, 28u)], false, global4.b.b.x, global3[_wgslsmith_index_u32(6570u, 28u)])))), ~(~(~abs(vec3<i32>(-69893i, 41892i, 2147483647i)))), Struct_2(~(~(~vec2<i32>(0i, -1i))), vec2<u32>(40547u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.a.x * _wgslsmith_div_f32(-2347f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]))), true, func_1(max(70925u ^ global4.b.c, func_1(0u, true).b.c), true).b));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-919f))));
    let var_2 = Struct_2(~(-(~vec2<i32>(0i, -1i))), ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.c, 1614u, 7446u), u_input.a), 4294967295u), ~u_input.a.yz | vec2<u32>(global4.b.c, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global4.b.a.x + -690f)))), select(all(vec3<bool>(false, true, true)) && func_6(func_1(25154u, true), Struct_1(vec4<f32>(718f, -902f, global4.b.a.x, -703f), var_0.b, var_0.c, true), vec3<i32>(16439i, -1i, -1i) << (vec3<u32>(16225u, u_input.b.x, 33308u) % vec3<u32>(32u)), Struct_2(vec2<i32>(0i, 1i), u_input.a.zy, 2030f, false, global4.b)).b.x, true, select(true, false, true)), func_6(Struct_5(var_0.b.xz, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.a.x, 417f, var_0.a.x, -1445f) - vec4<f32>(var_0.a.x, -1000f, 1909f, 1432f)), vec3<bool>(global4.a.x, global4.a.x, var_0.d), var_0.c, true)), global4.b, ~abs(abs(vec3<i32>(-2147483647i, -2147483647i, 2147483647i))), Struct_2(countOneBits(func_5(vec2<u32>(u_input.a.x, 0u), var_0.b).xz), ~u_input.a.zx, 554f, var_0.b.x, func_6(Struct_5(global4.a, Struct_1(vec4<f32>(var_0.a.x, var_1, -1000f, -494f), global4.b.b, var_0.c, var_0.d)), func_1(global4.b.c, false).b, countOneBits(vec3<i32>(-13449i, -20466i, -2147483647i)), Struct_2(vec2<i32>(-1i, 26195i), vec2<u32>(global4.b.c, global4.b.c), -930f, global4.b.d, global4.b)))));
    var_0 = global4.b;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(30471u, 1u, _wgslsmith_clamp_u32(89189u, 2338u, ~36278u)) >> (_wgslsmith_sub_vec3_u32(~(~u_input.a), u_input.a) % vec3<u32>(32u)));
}

