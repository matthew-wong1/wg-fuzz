struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(19708u, 4294967295u, 1u, 32045u, 53005u, 1u, 57134u, 1u, 4294967295u, 4294967295u, 50662u, 1611u, 0u, 4020u, 9767u, 25364u, 1u, 0u);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 15>;

var<private> global3: array<vec4<f32>, 16>;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = global4.a;
    let var_1 = 5529u;
    let var_2 = global4.a;
    var var_3 = ~_wgslsmith_add_u32(abs(var_1), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, 1u), u_input.a.xx), 18u)]);
    return Struct_2(firstLeadingBit(~(-_wgslsmith_mod_vec2_i32(global4.b.zx, vec2<i32>(-2147483647i, global4.b.x)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(vec3<f32>(global4.a.a, _wgslsmith_f_op_f32(207f + 1047f), arg_0), vec2<bool>(~15053u == u_input.a.x, global4.a.a < -136f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(711f + -1000f), -699f))) * _wgslsmith_f_op_f32(arg_0 * 266f)), vec3<i32>(-2147483647i, reverseBits(_wgslsmith_mult_i32(0i, 2147483647i >> (global0[_wgslsmith_index_u32(u_input.a.x, 18u)] % 32u))), 19867i), vec4<i32>(global4.b.x, global4.b.x, 0i, 0i));
    global2 = array<Struct_3, 15>();
    global0 = array<u32, 18>();
    global3 = array<vec4<f32>, 16>();
    let var_1 = Struct_3(-1000f);
    return global1.x;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(global4.a, ~u_input.c.yxy, _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~4294967295u, 18u)], 18822u, _wgslsmith_mod_u32(34498u >> (global4.c.x % 32u), min(4389u, 98131u)), 62000u), abs(abs(max(vec4<u32>(6355u, 15053u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global4.c.x), vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global4.c.x, 18u)], 22794u, global0[_wgslsmith_index_u32(1u, 18u)]))))), false);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.a.a));
    let var_2 = arg_2.b.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, -1675f, 203f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(673f, arg_2.a.x, global4.a.a) - _wgslsmith_f_op_vec3_f32(round(arg_2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, 743f, global4.a.a) - arg_2.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, arg_2.a.x, global4.a.a))), global1.wzy))), global1.wy, -1264f, u_input.c.xzw, vec4<i32>(~0i, global4.b.x, 0i, min(-u_input.d.x, 2147483647i | _wgslsmith_mult_i32(arg_0.a.x, -42006i))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(func_2(), !((true != func_3(global4.a.a, Struct_2(global4.b.zz))) | !global4.d), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.a.a, -370f, _wgslsmith_f_op_f32(global4.a.a + -1161f)))), global1.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.a.a, global4.a.a)))), -((vec3<i32>(-1i, 14811i, -3150i) >> (global4.c.xxy % vec3<u32>(32u))) | min(u_input.c.zyx, u_input.c.xyw)), u_input.c));
    global4 = Struct_4(global4.a, vec3<i32>(global4.b.x, ~(u_input.b << (u_input.a.x % 32u)) & 17378i, var_0.e.x), ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 8125u, 9697u, global4.c.x), global4.c), global0[_wgslsmith_index_u32(global4.c.x, 18u)], ~27263u >> ((25141u >> (u_input.a.x % 32u)) % 32u), 4294967295u), false);
    var var_1 = Struct_3(global4.a.a);
    var var_2 = _wgslsmith_add_i32(-_wgslsmith_sub_i32(u_input.c.x, var_0.d.x), ~(firstLeadingBit(-1278i) >> (select(~u_input.a.x, _wgslsmith_div_u32(1u, 3087u), true) % 32u)));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(117910u, 18u)], _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, 44023u, 1u)), ~(~vec4<u32>(4294967295u, 1u, 0u, global0[_wgslsmith_index_u32(0u, 18u)]))), ~u_input.a.x, ~min(_wgslsmith_dot_vec3_u32(u_input.a.zxx, global4.c.xww), global4.c.x)), abs(abs(vec4<u32>(global4.c.x, ~u_input.a.x, 37464u, ~8664u)))), 15u)];
    return func_2();
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-201f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.a, -965f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.a + global4.a.a)), false)), global4.a.a)));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))) - 1556f)), _wgslsmith_mod_vec3_i32(u_input.c.zxz, select(global4.b, u_input.c.zxx, arg_2)), ~global4.c, all(arg_0));
    var_1 = Struct_4(global2[_wgslsmith_index_u32(~(~4294967295u), 15u)], abs(vec3<i32>(_wgslsmith_mod_i32(0i, ~var_1.b.x), ~var_1.b.x, -610i)), ~u_input.a, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0 - var_0);
    var var_3 = _wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(46804u, ~u_input.a.x));
    return func_1();
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    global0 = array<u32, 18>();
    global4 = Struct_4(Struct_3(_wgslsmith_f_op_f32(round(-600f))), vec3<i32>(-2064i, (_wgslsmith_dot_vec3_i32(arg_2.www, arg_2.xyy) >> ((0u & u_input.a.x) % 32u)) ^ (arg_0.a.x ^ ~arg_2.x), global4.b.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 42151u >> (global4.c.x % 32u), 0u, 36452u & global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<u32>(u_input.a.x ^ 57025u, 4294967295u, ~(29854u ^ global0[_wgslsmith_index_u32(76095u, 18u)]), global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), u_input.a), 32514u > ~(~_wgslsmith_dot_vec3_u32(u_input.a.zyw, u_input.a.xxw)));
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.a, global4.a.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a, arg_1))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, global4.a.a), vec2<f32>(-471f, global4.a.a), global1.yz)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -682f), vec2<f32>(global4.a.a, -914f), vec2<bool>(global4.d, global4.d)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, arg_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -843f), vec2<f32>(arg_1, global4.a.a))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a, arg_1))))))));
    let var_1 = max(2147483647i, u_input.d.x | (i32(-1i) * -arg_0.a.x)) & abs(-7592i | arg_2.x);
    return Struct_3(_wgslsmith_f_op_f32(arg_1 - arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 16>();
    let var_0 = func_6(func_5(vec2<bool>(!any(vec4<bool>(true, global1.x, global1.x, global4.d)), global1.x), func_1(), select(!vec3<bool>(global1.x, global4.d, global4.d), global1.xxx, select(global1.zxy, vec3<bool>(global1.x, global4.d, global4.d), func_3(global4.a.a, Struct_2(global4.b.yz))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<i32>(77632i, 2147483647i)), false, Struct_1(vec3<f32>(global4.a.a, 1000f, -440f), global1.xy, 115f, vec3<i32>(global4.b.x, -1i, global4.b.x), u_input.c)).c - -180f), _wgslsmith_f_op_f32(-global4.a.a))), _wgslsmith_div_vec4_i32(~u_input.c, select(u_input.c, vec4<i32>(2147483647i, abs(1i), 5664i, global4.b.x), !vec4<bool>(true, global4.d, global1.x, true))));
    global2 = array<Struct_3, 15>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(func_2(), global1.x, Struct_1(vec3<f32>(global4.a.a, var_0.a, -843f), vec2<bool>(global1.x, global4.d), -353f, u_input.c.zxy, u_input.c)).a) + vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a, 708f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1039f, global4.a.a)), 1000f)), global1.yw, _wgslsmith_f_op_f32(func_4(Struct_2(abs(vec2<i32>(-26185i, -1i))), true, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(871f, 894f, var_0.a) * vec3<f32>(-232f, -1041f, 1717f)), global1.zz, func_4(Struct_2(vec2<i32>(66676i, u_input.b)), global1.x, Struct_1(vec3<f32>(global4.a.a, -1836f, -734f), vec2<bool>(true, false), 1360f, vec3<i32>(global4.b.x, u_input.b, -23279i), vec4<i32>(global4.b.x, -2147483647i, -5952i, 2147483647i))).c, -vec3<i32>(17015i, -25225i, u_input.c.x), ~vec4<i32>(-2147483647i, -2147483647i, -14541i, global4.b.x))).a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(308f, 675f)))), vec3<i32>(32121i, 1i, _wgslsmith_mod_i32(u_input.c.x, func_2().a.x)), reverseBits(min(select(vec4<i32>(28696i, global4.b.x, u_input.d.x, u_input.c.x), u_input.c | u_input.c, global4.d & global4.d), -vec4<i32>(u_input.d.x, global4.b.x, 1i, global4.b.x) >> (global4.c % vec4<u32>(32u)))));
    let var_2 = func_6(Struct_2((global4.b.xy << (_wgslsmith_mod_vec2_u32(u_input.a.wx, vec2<u32>(23714u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.c.x, 18u)], 18u)])) % vec2<u32>(32u))) & ~func_4(Struct_2(vec2<i32>(0i, 44730i)), global4.d, var_1).e.wy), 1174f, var_1.e >> (select(u_input.a, vec4<u32>(1u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(select(48469u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global4.d), 18u)]), false != (true & global4.d)) % vec4<u32>(32u)));
    let var_3 = max(~abs(~countOneBits(global4.c.wxx)), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(45724u | global4.c.x, u_input.a.x), ~abs(_wgslsmith_mod_u32(39322u, global0[_wgslsmith_index_u32(116761u, 18u)]))));
    let var_4 = !(!vec3<bool>(all(global1.wwz), global4.d, true));
    global2 = array<Struct_3, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_0.a)))));
}

