struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(0u), -871f, Struct_2(Struct_1(55411u), Struct_1(5812u), 1488f, 51612u), Struct_1(0u), Struct_1(7222u));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true));

var<private> global3: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_1(arg_2.c.d);
    var var_1 = Struct_3(Struct_1(~(select(7009u, arg_2.d.a, true) >> (u_input.b % 32u))), 567f, global3.c, var_0, var_0);
    global3 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, global3.c.c), global3.c.c) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2.c.c)), global3.c.c))))) * 2497f);
    let var_3 = Struct_2(global3.a, arg_1, -654f, ~var_1.e.a);
    return var_0.a;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global3 = Struct_3(global0.d, -1810f, Struct_2(arg_0.a, global0.e, -961f, ~global0.c.b.a), Struct_1(func_3(abs(_wgslsmith_clamp_u32(28437u, arg_0.d, u_input.b)), global0.d, Struct_3(global3.a, _wgslsmith_f_op_f32(-1077f + global3.b), Struct_2(Struct_1(4294967295u), Struct_1(global0.e.a), global3.c.c, 31122u), Struct_1(global0.c.b.a), arg_0.b))), arg_0.a);
    global1 = ~1u;
    let var_0 = _wgslsmith_dot_vec3_i32(~(firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.d, u_input.e.x, -2147483647i))) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 16658i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-30301i, u_input.d, 2718i), vec3<i32>(-37412i, 33691i, u_input.d)) & -vec3<i32>(u_input.a.x, 2147483647i, -2147483647i)));
    global1 = u_input.c.x;
    var var_1 = !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return Struct_3(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), arg_0.c) - _wgslsmith_f_op_f32(888f + -411f))), arg_0, arg_0.a, Struct_1(~global0.a.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = !(!any(vec2<bool>(true, true)));
    global2 = array<vec4<bool>, 20>();
    let var_1 = arg_1.e;
    global0 = func_2(func_2(arg_1.c).c);
    global0 = Struct_3(Struct_1(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f) + arg_2), Struct_2(Struct_1(var_1.a | arg_1.a.a), Struct_1(countOneBits(14738u)), 1000f, countOneBits(var_1.a)), Struct_1(130805u), func_2(Struct_2(Struct_1(firstTrailingBit(global0.a.a)), func_2(func_2(arg_1.c).c).a, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_clamp_u32(44809u, ~arg_1.c.b.a, var_1.a))).c.b);
    return Struct_3(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(global3.c).c.c))))), func_2(global3.c).c, func_2(arg_1.c).c.a, global0.a);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f) + global3.b), _wgslsmith_div_f32(global3.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_f_op_f32(ceil(1789f))))), func_2(Struct_2(global0.a, Struct_1(32689u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b - global3.b), 502f)), ~global0.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(2082f, -1333f) * vec2<f32>(-1098f, 1256f)))) * vec2<f32>(318f, global3.c.c))));
    let var_0 = 5274u;
    global0 = Struct_3(Struct_1(func_3(u_input.c.x & ~global0.a.a, global0.d, func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.c.c, 1255f), vec2<f32>(218f, -1441f))), func_4(vec2<f32>(-218f, global0.c.c), Struct_3(Struct_1(4294967295u), 1188f, global3.c, global0.d, Struct_1(global3.c.d)), -998f, vec2<f32>(global0.b, global0.b)), _wgslsmith_f_op_f32(abs(324f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1891f, -476f)), _wgslsmith_f_op_f32(sign(global0.b))))) - 1000f), Struct_2(global3.e, global3.a, global0.b, ~7841u | ~_wgslsmith_mod_u32(global3.e.a, 4294967295u)), global0.d, func_2(Struct_2(global3.a, func_2(global3.c).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.c) * -512f), _wgslsmith_add_u32(~global0.a.a, _wgslsmith_mult_u32(0u, var_0)))).e);
    var var_1 = u_input.c;
    let var_2 = !(!vec3<bool>(any(vec2<bool>(true, true)), !(global0.a.a >= global3.d.a), arg_0));
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_i32(-(-1275i >> (global3.e.a % 32u)), _wgslsmith_mult_i32(u_input.e.x, -24764i)) > -22122i);
    var_0 = global3.c;
    global3 = Struct_3(global3.d, _wgslsmith_f_op_f32(-global0.c.c), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.ywy >> (u_input.c.wzw % vec3<u32>(32u)), select(u_input.c.xwx, vec3<u32>(u_input.c.x, global3.a.a, global3.d.a), vec3<bool>(true, true, true)))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.c.c, global0.c.c)))), func_2(global0.c), global0.c.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c, 318f))))).a, 637f, global3.a.a), Struct_1(_wgslsmith_add_u32(59914u, _wgslsmith_sub_u32(~47810u, global0.c.d))), Struct_1(_wgslsmith_mod_u32(76838u >> (var_0.b.a % 32u), 1u) | (u_input.b << (global0.c.d % 32u))));
    global3 = Struct_3(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-global3.c.c)) * _wgslsmith_div_f32(func_2(Struct_2(Struct_1(52755u), global0.a, 153f, u_input.b)).c.c, global3.c.c)) + -307f), global3.c, Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 0u, u_input.c.x) & u_input.c.yzy), ~(u_input.c.yzw << (vec3<u32>(u_input.b, 8551u, global3.e.a) % vec3<u32>(32u))))), func_2(Struct_2(func_2(func_1(true)).c.b, Struct_1(48642u), func_1(true).c, u_input.c.x)).e);
    global3 = Struct_3(var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1754f))))), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.c, global3.b) + vec2<f32>(global0.b, global0.b)), Struct_3(global3.c.b, _wgslsmith_f_op_f32(f32(-1f) * -1001f), global3.c, func_4(vec2<f32>(global3.b, global3.c.c), Struct_3(global0.c.b, 364f, global0.c, Struct_1(11041u), Struct_1(4294967295u)), 511f, vec2<f32>(1026f, var_0.c)).a, func_4(vec2<f32>(-880f, -2137f), Struct_3(Struct_1(7358u), 466f, global0.c, Struct_1(var_0.b.a), global0.a), 854f, vec2<f32>(-332f, -1585f)).d), func_2(Struct_2(Struct_1(43249u), Struct_1(global0.c.b.a), global3.c.c, global3.a.a)).c.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.c, 863f)), vec2<f32>(global0.b, -955f), vec2<bool>(false, false)))).a, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-206f)) * func_1(any(vec4<bool>(true, true, true, true))).c), ~u_input.c.x), var_0.b, Struct_1(firstTrailingBit(func_1(any(vec2<bool>(false, false))).a.a)));
    var var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, 0u <= var_0.d, u_input.a.x == u_input.a.x), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), all(vec4<bool>(false, true, true, true)))), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), var_0.b.a == 4294967295u)), false && any(vec2<bool>(true, true))), select(true, u_input.e.x > max(-21683i, _wgslsmith_dot_vec3_i32(vec3<i32>(-28425i, u_input.e.x, u_input.e.x), vec3<i32>(-21736i, -16560i, u_input.e.x))), !(!any(vec4<bool>(true, true, false, false)))));
    var var_2 = select(!select(vec4<bool>(all(vec3<bool>(false, var_1.x, false)), var_1.x | false, !var_1.x, false), !(!global2[_wgslsmith_index_u32(46991u, 20u)]), true), !vec4<bool>(!var_1.x, all(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true, ~45299u < func_2(Struct_2(Struct_1(u_input.c.x), var_0.a, var_0.c, 1u)).d.a), vec4<bool>(all(global2[_wgslsmith_index_u32(global3.e.a ^ 60936u, 20u)]), any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.b), global0.a.a), 20u)]), var_1.x, false));
    var_2 = vec4<bool>(var_2.x, false, !var_2.x, (u_input.d <= u_input.d) & false);
    let var_3 = any(var_1.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, global0.b) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.c)))), ~u_input.c.wyw);
}

