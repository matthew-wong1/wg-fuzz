struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i), vec4<i32>(-9251i, -1i, 10003i, 28879i), vec4<i32>(6668i, i32(-2147483648), -20569i, 1i), vec4<i32>(-37118i, i32(-2147483648), -49832i, -36860i), vec4<i32>(0i, -2524i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -31010i, -1i, 34483i), vec4<i32>(0i, 3754i, -1246i, 94411i), vec4<i32>(i32(-2147483648), 1i, 13652i, -34607i), vec4<i32>(0i, -1i, -6017i, 1i), vec4<i32>(0i, -37979i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), -24338i, 46084i, 28450i), vec4<i32>(37385i, 0i, 6600i, -1i), vec4<i32>(-34728i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(62509i, i32(-2147483648), -14599i, i32(-2147483648)), vec4<i32>(36574i, 17319i, 1i, 2147483647i), vec4<i32>(-66033i, 13669i, -66154i, 3647i), vec4<i32>(-13343i, -1i, 55898i, 1i), vec4<i32>(2147483647i, -10506i, -1i, 46805i), vec4<i32>(-20015i, 1i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 3177i, -38770i, 45619i), vec4<i32>(-2717i, 1i, 1i, -2846i), vec4<i32>(0i, i32(-2147483648), 43656i, 0i), vec4<i32>(i32(-2147483648), -1i, -1i, i32(-2147483648)), vec4<i32>(-3318i, -35882i, 15222i, i32(-2147483648)), vec4<i32>(-1i, 31491i, -46667i, -9849i), vec4<i32>(1i, -47684i, 50922i, 11748i), vec4<i32>(-21898i, -1i, i32(-2147483648), 1i), vec4<i32>(-7224i, 2147483647i, -4660i, 1i));

var<private> global1: u32;

var<private> global2: array<bool, 30> = array<bool, 30>(true, false, true, false, true, false, true, false, false, true, true, true, true, false, false, false, false, false, true, false, false, false, true, false, false, true, true, true, false, true);

var<private> global3: vec2<bool>;

var<private> global4: array<i32, 27> = array<i32, 27>(-5917i, 3592i, 2147483647i, 2147483647i, 1i, 0i, -1i, 2147483647i, -1i, -39667i, 50525i, i32(-2147483648), -220i, -5255i, 53635i, -1738i, 0i, i32(-2147483648), -1i, 23050i, 0i, -23885i, -17273i, 2147483647i, -1i, -4026i, -34964i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global0 = array<vec4<i32>, 28>();
    global1 = _wgslsmith_mod_u32(~reverseBits(_wgslsmith_add_u32(u_input.b, u_input.b)), 1u & _wgslsmith_mult_u32(47500u, _wgslsmith_dot_vec2_u32(u_input.e.yz, u_input.e.yx))) >> (_wgslsmith_mult_u32(u_input.b, 30912u) % 32u);
    global4 = array<i32, 27>();
    let var_0 = vec4<bool>(false, global3.x, (_wgslsmith_div_f32(-245f, _wgslsmith_f_op_f32(f32(-1f) * -508f)) <= _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-387f, -580f), true))) & (select(global2[_wgslsmith_index_u32(u_input.e.x, 30u)], global3.x, false) | true), (525f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-662f)))) & (677f <= _wgslsmith_f_op_f32(step(1f, 494f))));
    let var_1 = countOneBits(vec2<u32>(u_input.e.x, u_input.a.x) | vec2<u32>(~countOneBits(0u), reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.b))));
    return !global3.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(551f, -403f)), _wgslsmith_f_op_f32(round(-780f)))))), _wgslsmith_f_op_f32(exp2(1f)));
    return Struct_2(all(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], true, all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], true, global2[_wgslsmith_index_u32(u_input.e.x, 30u)])), false), !vec4<bool>(true, global3.x, global2[_wgslsmith_index_u32(3416u, 30u)], false), vec4<bool>(func_3(), true, true, global3.x))), Struct_1(max(~firstLeadingBit(vec2<u32>(arg_0.x, u_input.b)), u_input.a), _wgslsmith_div_u32(firstLeadingBit(arg_0.x >> (6779u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.b, u_input.a.x), u_input.e), abs(arg_0.x), 29842u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1413f, var_0.x, var_0.x))))))), Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.x, 49971u), 22575u, arg_0.x ^ 2603u)), 1u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    let var_0 = !select(select(!select(vec4<bool>(false, arg_2, global2[_wgslsmith_index_u32(arg_1.b.a.x, 30u)], global3.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 30u)], true), true), vec4<bool>(arg_2, true, true, global2[_wgslsmith_index_u32(~0u, 30u)]), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.d.b, 30u)], arg_1.a), !vec4<bool>(global2[_wgslsmith_index_u32(50815u, 30u)], true, true, global2[_wgslsmith_index_u32(1u, 30u)]), !vec4<bool>(true, false, global3.x, arg_1.a))), !vec4<bool>(arg_1.a, false || global3.x, u_input.c.x <= -2147483647i, false), vec4<bool>(arg_2, true, all(!vec3<bool>(arg_2, true, true)), true));
    var var_1 = arg_1.b;
    var var_2 = func_2(_wgslsmith_clamp_vec3_u32(~(firstLeadingBit(vec3<u32>(1u, 0u, arg_0.b)) >> (u_input.e % vec3<u32>(32u))), vec3<u32>(reverseBits(arg_0.b), max(11011u, var_1.a.x), select(_wgslsmith_add_u32(var_1.a.x, 25110u), countOneBits(0u), any(var_0.xyy))), u_input.e | ~firstLeadingBit(vec3<u32>(4824u, arg_1.d.a.x, 4294967295u)))).b.b;
    global2 = array<bool, 30>();
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstTrailingBit(1u), ~4294967295u), firstLeadingBit(~_wgslsmith_dot_vec3_u32(~u_input.e, ~vec3<u32>(70873u, var_1.b, 39310u))), ~func_2(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.b, 4294967295u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1701u, 39778u, arg_1.b.a.x), vec3<u32>(14078u, arg_0.b, arg_1.d.a.x)))).d.a.x);
    return min(arg_0.a, _wgslsmith_mod_vec2_u32(func_2(vec3<u32>(~var_3, ~4294967295u, var_1.a.x >> (arg_0.a.x % 32u))).b.a, ~select(_wgslsmith_mult_vec2_u32(u_input.a, u_input.e.zx), ~arg_0.a, vec2<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.e.x, 30u)]))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    var var_0 = -58560i;
    global2 = array<bool, 30>();
    let var_1 = Struct_1(func_4(Struct_1(abs(vec2<u32>(26353u, 1u)), 0u), func_2(_wgslsmith_sub_vec3_u32(~u_input.e, ~u_input.e)), !func_2(countOneBits(vec3<u32>(arg_3, 3684u, u_input.b))).a), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_3, arg_0.b), ~vec3<u32>(arg_3, arg_0.b, u_input.b)), _wgslsmith_dot_vec2_u32(countOneBits(abs(u_input.a)), vec2<u32>(~4294967295u, u_input.e.x))));
    global2 = array<bool, 30>();
    var var_2 = Struct_2(true, arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-768f, -1078f, -1101f) * vec3<f32>(-1028f, -847f, -387f)))), func_2(~vec3<u32>(0u, 107524u, var_1.b)).c), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, -481f, -859f)))))), Struct_1(~arg_0.a, u_input.a.x));
    return firstLeadingBit(_wgslsmith_clamp_i32(firstTrailingBit(-arg_1 >> (_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(78214u, var_1.b, 7252u)) % 32u)), ~_wgslsmith_dot_vec4_i32(-global0[_wgslsmith_index_u32(66448u, 28u)], ~vec4<i32>(-1614i, arg_1, arg_2.x, global4[_wgslsmith_index_u32(arg_0.a.x, 27u)])), u_input.d.x));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2(vec3<u32>(_wgslsmith_clamp_u32(1u, arg_1.d.a.x, ~0u), select(_wgslsmith_clamp_u32(0u, 1u, 1196u), u_input.a.x, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 30u)], arg_1.a))) ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 1265u), u_input.a.x >> (arg_1.b.b % 32u), firstLeadingBit(24515u)), u_input.a.x));
    var var_1 = select(!(!vec4<bool>(true, false, any(vec2<bool>(var_0.a, false)), func_2(u_input.e).a)), !vec4<bool>(firstTrailingBit(u_input.b) >= abs(arg_1.b.b), true, false, func_3()), _wgslsmith_dot_vec4_i32(-(~u_input.d), -reverseBits(vec4<i32>(global4[_wgslsmith_index_u32(4929u, 27u)], u_input.d.x, global4[_wgslsmith_index_u32(arg_1.b.b, 27u)], global4[_wgslsmith_index_u32(59618u, 27u)]))) != _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(1u, 27u)], max(global4[_wgslsmith_index_u32(0u, 27u)] & -36540i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 0i), u_input.d.yy))));
    global4 = array<i32, 27>();
    let var_2 = var_0;
    let var_3 = abs(~(~(~vec4<u32>(var_2.d.a.x, 13546u, arg_1.b.b, var_2.d.b)))) | vec4<u32>(firstLeadingBit(firstLeadingBit(var_2.b.a.x)), _wgslsmith_add_u32(~1u, 1u) & ~var_2.b.b, _wgslsmith_clamp_u32(~1u, 25282u, abs(1u)), var_0.b.b);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 30u)], Struct_1(_wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, u_input.e.x), vec2<u32>(u_input.e.x, 4294967295u), vec2<bool>(true, false)), _wgslsmith_div_vec2_u32(vec2<u32>(65968u, u_input.a.x), u_input.a)), firstLeadingBit(0u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-817f, _wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(1f + -1438f)))), Struct_1(u_input.a, countOneBits(firstTrailingBit(u_input.a.x))));
    var var_1 = func_5(_wgslsmith_mod_i32(37311i, select(-func_1(Struct_1(u_input.a, 23787u), u_input.c.x, vec4<i32>(-23810i, u_input.c.x, -1i, u_input.c.x), 49313u), global4[_wgslsmith_index_u32(var_0.d.b, 27u)], global2[_wgslsmith_index_u32(func_4(Struct_1(u_input.a, 42128u), Struct_2(var_0.a, Struct_1(vec2<u32>(16292u, u_input.e.x), var_0.d.b), var_0.c, Struct_1(vec2<u32>(16750u, 4294967295u), u_input.a.x)), false).x, 30u)])), Struct_2(all(select(select(vec4<bool>(var_0.a, global2[_wgslsmith_index_u32(1u, 30u)], true, false), vec4<bool>(false, false, true, global3.x), true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 30u)], var_0.a, false, global2[_wgslsmith_index_u32(var_0.b.b, 30u)]), var_0.a)), var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c)))), var_0.d));
    var var_2 = func_5(2147483647i, func_5(global4[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(45706u, ~var_1.d.b), ~(~42460u)), 27u)], Struct_2(any(vec2<bool>(false, true)), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.b.b), var_1.d.a), ~u_input.a.x), var_0.c, func_5(-26576i, Struct_2(false, var_0.b, var_0.c, Struct_1(vec2<u32>(var_0.b.a.x, 15794u), u_input.a.x))).d)));
    global4 = array<i32, 27>();
    let var_3 = Struct_1(_wgslsmith_add_vec2_u32(~var_2.b.a, var_1.b.a), ~(~18865u & var_2.d.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~(firstTrailingBit(u_input.d.x) >> (_wgslsmith_add_u32(22460u, 0u) % 32u)), _wgslsmith_mod_i32(-_wgslsmith_div_i32(29148i, -1i), 2147483647i | (global4[_wgslsmith_index_u32(var_0.d.b, 27u)] | -15632i))), _wgslsmith_div_i32(-1i, u_input.d.x), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(0u, 27u)], abs(-11944i)), ~(~(-vec2<i32>(global4[_wgslsmith_index_u32(var_0.d.b, 27u)], 54932i))), _wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(-2147483647i), u_input.d.x), ~global4[_wgslsmith_index_u32(var_0.d.a.x, 27u)]));
}

