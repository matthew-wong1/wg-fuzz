struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, true, true, false), Struct_1(-12254i, vec2<u32>(1u, 12130u)), 1604f, Struct_1(20146i, vec2<u32>(4294967295u, 0u)));

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, true, false), Struct_1(-21100i, vec2<u32>(29870u, 9969u)), 1456f, Struct_1(i32(-2147483648), vec2<u32>(0u, 1u)));

var<private> global2: Struct_2;

var<private> global3: Struct_3 = Struct_3(vec2<bool>(true, true), Struct_1(2147483647i, vec2<u32>(4294967295u, 2472u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = u_input.a;
    let var_1 = 30470u ^ firstTrailingBit(40456u);
    let var_2 = !(all(!select(vec4<bool>(global2.a.x, true, false, true), vec4<bool>(global3.a.x, false, arg_0.a.x, true), global0.a)) || (_wgslsmith_f_op_f32(select(global2.c, global0.c, true)) < 375f));
    return _wgslsmith_f_op_f32(934f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(961f * 653f), _wgslsmith_f_op_f32(sign(global1.c))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = true;
    let var_1 = 0u;
    var var_2 = true;
    var var_3 = arg_1.b.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.c, _wgslsmith_div_f32(-1247f, 154f)), _wgslsmith_f_op_f32(func_3(Struct_3(global1.a.xw, Struct_1(-31130i, vec2<u32>(arg_0.b.x, 7266u))), Struct_1(-2147483647i, global2.d.b), Struct_1(global3.b.a, global1.b.b))))), arg_2));
    return global0.a.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = Struct_2(select(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(73438u, global3.b.b.x, 1u), vec3<u32>(global0.d.b.x, 0u, 64828u)) < _wgslsmith_div_u32(0u, 7825u), any(vec3<bool>(global1.a.x, false, false)), true, false), select(vec4<bool>(false, select(global1.a.x, global2.a.x, true), all(global0.a), any(global1.a.yyy)), !vec4<bool>(false, global1.a.x, global0.a.x, true), all(!vec3<bool>(global0.a.x, true, true))), vec4<bool>(any(select(global0.a.yyx, vec3<bool>(arg_2, false, arg_2), false)), !global3.a.x, !(52755i <= global2.b.a), true)), Struct_1(arg_0, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b.x, global0.d.b.x, 0u, 64643u), select(vec4<u32>(global1.b.b.x, 1u, global0.d.b.x, u_input.b), vec4<u32>(arg_1.b.x, global1.b.b.x, 4294967295u, 126087u), true)), reverseBits(1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(841f)) * 1360f), Struct_1(~(global0.d.a & ~global0.b.a), vec2<u32>(_wgslsmith_clamp_u32(abs(global0.d.b.x), global3.b.b.x, 0u), min(min(39000u, global2.d.b.x), reverseBits(0u)))));
    let var_0 = Struct_1(2147483647i, ~global2.b.b);
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.b.b.x, 4294967295u), abs(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(var_0.b.x, global2.d.b.x, u_input.b)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.b.b.x, arg_1.b.x, 1u), vec3<u32>(global2.d.b.x, 4294967295u, global1.d.b.x)), vec3<u32>(0u, 79401u, global0.d.b.x) << (vec3<u32>(24926u, 8260u, arg_1.b.x) % vec3<u32>(32u)), true), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4528u, var_0.b.x, 16784u), vec3<u32>(49892u, global2.d.b.x, global0.d.b.x), vec3<u32>(4294967295u, global1.d.b.x, 1u)), ~vec3<u32>(global0.d.b.x, var_0.b.x, u_input.b)))));
    let var_2 = -23118i ^ abs(_wgslsmith_div_i32(global2.d.a, -2147483647i));
    var var_3 = !(!vec3<bool>(global2.a.x, any(select(global1.a.zzw, global2.a.zyw, arg_2)), (global2.a.x | arg_2) & true));
    return Struct_1(1i, global0.b.b);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = Struct_2(vec4<bool>(!any(select(arg_3.a, global0.a.xx, true)), global1.a.x, global2.c != 839f, _wgslsmith_sub_i32(0i, global3.b.a) == _wgslsmith_mod_i32(arg_3.b.a, 0i | u_input.d.x)), Struct_1(global0.d.a, vec2<u32>(func_4(max(49737i, 2147483647i), func_4(global2.d.a, Struct_1(2147483647i, global1.b.b), global3.a.x), arg_1 < 1000f).b.x, reverseBits(arg_3.b.b.x))), _wgslsmith_f_op_f32(arg_1 * 231f), Struct_1(u_input.c, ~(~(global3.b.b >> (global3.b.b % vec2<u32>(32u))))));
    var var_0 = arg_3;
    var_0 = Struct_3(!(!(!global0.a.zy)), Struct_1(firstTrailingBit(var_0.b.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -8427i, 1i, u_input.c), vec4<i32>(var_0.b.a, -25125i, global1.b.a, global2.d.a))), ~vec2<u32>(firstLeadingBit(global0.b.b.x), ~arg_3.b.b.x)));
    global1 = Struct_2(vec4<bool>(any(global2.a.xyw) && (min(12288u, global3.b.b.x) >= 38408u), global3.a.x, all(global2.a), _wgslsmith_f_op_f32(select(234f, _wgslsmith_f_op_f32(global0.c + arg_1), true)) > -1153f), Struct_1(_wgslsmith_div_i32(reverseBits(-14208i), global1.b.a), select(_wgslsmith_clamp_vec2_u32(arg_3.b.b, vec2<u32>(global1.d.b.x, 1u), vec2<u32>(global3.b.b.x, global1.d.b.x)), vec2<u32>(var_0.b.b.x, 32167u), global3.a)), _wgslsmith_f_op_f32(step(-165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)))), func_4(var_0.b.a >> (~(global0.b.b.x | global1.b.b.x) % 32u), Struct_1(34329i, abs(vec2<u32>(global3.b.b.x, 1u))), true));
    global0 = Struct_2(vec4<bool>(!(global2.b.a >= 50122i) != (max(4294967295u, arg_3.b.b.x) != 26508u), all(global2.a.zwz), true, all(global0.a.zyw)), global3.b, arg_0, global3.b);
    return func_4(arg_3.b.a, arg_3.b, ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.b.x, 0u, global2.b.b.x), vec3<u32>(1u, global2.d.b.x, var_0.b.b.x))) < ~_wgslsmith_dot_vec3_u32(vec3<u32>(20764u, global2.b.b.x, 4294967295u), vec3<u32>(global3.b.b.x, 0u, global0.d.b.x) & vec3<u32>(4545u, 0u, global0.d.b.x)));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global2 = Struct_2(vec4<bool>(true, !global2.a.x, arg_0.a.x, -408f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(839f + -1435f), _wgslsmith_f_op_f32(-global0.c))), Struct_1(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -14241i, u_input.a.x, 1i), -vec4<i32>(global3.b.a, global1.d.a, global2.d.a, -1i))), global0.b.b), global0.c, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-787f, global2.c)) - global0.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -848f) * _wgslsmith_f_op_f32(-global1.c))), -477f, any(vec4<bool>(all(arg_0.a), true != global3.a.x, false, true)), Struct_3(!arg_0.a, func_4(-13466i, global0.b, func_2(Struct_1(global0.d.a, vec2<u32>(87573u, 4294967295u)), global0.b, 1746f)))));
    var var_0 = all(!(!(!vec4<bool>(global0.a.x, true, true, arg_0.a.x))));
    var var_1 = Struct_2(select(!global1.a, vec4<bool>(any(select(vec3<bool>(global3.a.x, arg_0.a.x, global1.a.x), global0.a.wyw, true)), !select(global2.a.x, global0.a.x, true), any(vec3<bool>(true, false, false)), !(global1.a.x || false)), global0.a), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-global2.c))), -385f, true, arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c))))), func_5(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1628f - _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(round(1897f)), false, Struct_3(vec2<bool>(false, true), Struct_1(-global3.b.a, vec2<u32>(arg_0.b.b.x, 123522u)))));
    var var_2 = global3.b.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c - -179f))), -1114f, 1091f, var_1.c)))));
    return Struct_2(vec4<bool>(global0.a.x, var_1.a.x, true, func_2(arg_0.b, func_5(global1.c, 1375f, global3.a.x, Struct_3(global2.a.yx, var_1.d)), var_1.c) | global1.a.x), global3.b, _wgslsmith_f_op_f32(-var_1.c), Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, firstLeadingBit(global0.d.a)), u_input.a.x), vec2<u32>(1u, ~global2.d.b.x) << (global3.b.b % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * _wgslsmith_f_op_f32(f32(-1f) * -133f)) - 1864f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1512f * global0.c) * -966f))));
    let var_2 = vec3<i32>(-countOneBits(_wgslsmith_sub_i32(-u_input.d.x, -50492i)), 1i, -34190i);
    var var_3 = func_1(Struct_3(vec2<bool>(any(vec4<bool>(global1.a.x, global3.a.x, global2.a.x, global3.a.x)), _wgslsmith_f_op_f32(-global0.c) != global1.c), global0.b));
    let var_4 = global1.a.zzw;
    var var_5 = ~(~var_3.b.b.x);
    var var_6 = true;
    var var_7 = Struct_2(!func_1(Struct_3(select(vec2<bool>(var_3.a.x, var_0.x), global3.a, false), global2.b)).a, Struct_1(_wgslsmith_sub_i32(~(-23039i), 2147483647i), global3.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(410f + -956f))), _wgslsmith_f_op_f32(-1000f * -1000f))), global2.c), Struct_1(var_3.d.a, vec2<u32>(global0.d.b.x, ~(~37243u))));
    let var_8 = select(func_1(Struct_3(global2.a.ww, Struct_1(-1i, vec2<u32>(0u, 19996u)))).a.x && (-17924i != (global3.b.a | (-4586i | u_input.c))), func_2(global0.d, var_7.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(365f - global1.c)))), global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~11026u, min(global1.b.b.x, 38171u), ~4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(50690u, 4294967295u, 4294967295u), vec3<u32>(56412u, global3.b.b.x, var_3.b.b.x)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(global2.b.b.x, global3.b.b.x, global1.d.b.x)), max(vec3<u32>(global1.d.b.x, 70279u, u_input.b), vec3<u32>(global3.b.b.x, global2.b.b.x, global1.b.b.x)))), _wgslsmith_mult_i32(-40941i, -(~0i)));
}

