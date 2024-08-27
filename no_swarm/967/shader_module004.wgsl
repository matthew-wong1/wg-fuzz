struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<bool, 2>;

var<private> global1: array<Struct_4, 24>;

var<private> global2: Struct_1 = Struct_1(-406f, vec2<bool>(false, true), vec3<i32>(2147483647i, 2147483647i, 0i), -44934i, 0u);

var<private> global3: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 52466u, 0u, arg_0), vec4<u32>(0u, u_input.a.x, 19244u, 1u)))), ~(vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), ~36722u, ~1u, u_input.a.x) | _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 11186u), ~vec4<u32>(u_input.a.x, global2.e, 76353u, arg_0))));
    var var_1 = Struct_3(global2.a, Struct_2(Struct_1(global2.a, vec2<bool>(true, true), global2.c, -(~global2.d), _wgslsmith_clamp_u32(global2.e, ~u_input.a.x, _wgslsmith_clamp_u32(1u, arg_0, u_input.a.x))), vec3<u32>(1u, 5223u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.e, global2.e, global2.e, u_input.a.x), vec4<u32>(1u, arg_0, global2.e, 0u)), select(vec4<u32>(u_input.a.x, 0u, 0u, global2.e), vec4<u32>(4294967295u, arg_0, 0u, arg_0), global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))), !select(select(vec4<bool>(global2.b.x, true, global0[_wgslsmith_index_u32(global2.e, 2u)], true), vec4<bool>(global2.b.x, true, global2.b.x, true), vec4<bool>(false, true, false, true)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false, true, true), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_0, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(8973u, 2u)], false, true, true), vec4<bool>(false, global2.b.x, global2.b.x, global0[_wgslsmith_index_u32(69633u, 2u)]))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-149f, 636f) * _wgslsmith_f_op_f32(525f + global2.a)), global2.b, global2.c, 63087i, reverseBits(_wgslsmith_div_u32(10793u, global2.e))), _wgslsmith_f_op_f32(step(1f, 619f))), reverseBits(~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, global2.e)), vec2<u32>(arg_0, 4294967295u))));
    let var_2 = !all(vec3<bool>(!var_1.b.c.x, select(global0[_wgslsmith_index_u32(var_1.c.x, 2u)], true, global2.b.x), all(var_1.b.c.zyw))) | (true | (var_1.b.a.c.x >= -2147483647i));
    var var_3 = 0i;
    var var_4 = select(-firstLeadingBit(firstLeadingBit(select(vec4<i32>(var_1.b.a.c.x, var_1.b.a.c.x, global2.c.x, global2.c.x), vec4<i32>(2147483647i, 0i, var_1.b.a.c.x, global2.d), vec4<bool>(true, var_1.b.d.b.x, global2.b.x, true)))), (_wgslsmith_sub_vec4_i32(vec4<i32>(-27095i, 54795i, 11364i, global2.c.x), vec4<i32>(2147483647i, global2.d, var_1.b.d.d, global2.d)) << (vec4<u32>(global2.e, _wgslsmith_mult_u32(u_input.a.x, arg_0), 44182u, global2.e) % vec4<u32>(32u))) >> (vec4<u32>(~select(arg_0, 42660u, global2.b.x), 125u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, arg_0), 0u), max(reverseBits(arg_0), 22938u)) % vec4<u32>(32u)), vec4<bool>(!any(select(var_1.b.c, vec4<bool>(var_2, var_2, true, true), var_1.b.c)), all(global2.b), any(vec2<bool>(false, var_1.b.c.x)), true));
    return var_1.b.c;
}

fn func_2() -> Struct_1 {
    global3 = countOneBits(7722u);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(global2.a)), Struct_2(Struct_1(global2.a, global2.b, global2.c, i32(-1i) * -1i, u_input.a.x), firstTrailingBit(reverseBits(countOneBits(vec3<u32>(global2.e, u_input.a.x, 73566u)))), !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(46762u, 2u)], true, global2.b.x), !vec4<bool>(false, true, global2.b.x, false), global0[_wgslsmith_index_u32(global2.e, 2u)] == global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), vec2<bool>(!global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(abs(1u), 2u)]), max(global2.c, vec3<i32>(global2.d, global2.c.x, global2.d) ^ vec3<i32>(global2.d, global2.c.x, -2147483647i)), -countOneBits(15116i), 1u), _wgslsmith_f_op_f32(-global2.a)), countOneBits(vec2<u32>(countOneBits(global2.e >> (u_input.a.x % 32u)), global2.e)));
    global3 = ~_wgslsmith_div_u32(68441u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) & var_0.b.b.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(704f)), var_0.b, ~vec2<u32>(_wgslsmith_add_u32(u_input.a.x >> (u_input.a.x % 32u), select(u_input.a.x, global2.e, false)), abs(61404u)));
    let var_2 = select(vec4<bool>(true, var_1.b.d.a != global2.a, all(vec4<bool>(true, false, global2.b.x, var_1.b.d.b.x)) & ((4294967295u >> (0u % 32u)) < global2.e), !(!global0[_wgslsmith_index_u32(~global2.e, 2u)])), func_3(27653u), !vec4<bool>(var_1.b.d.a > 930f, true, global2.b.x, !(!var_0.b.d.b.x)));
    return Struct_1(-196f, func_3(50484u).yy, _wgslsmith_mult_vec3_i32(-firstLeadingBit(-vec3<i32>(var_1.b.d.d, 6839i, -2147483647i)), global2.c), 1i, var_0.c.x);
}

fn func_1() -> f32 {
    global3 = u_input.a.x;
    global0 = array<bool, 2>();
    let var_0 = Struct_4(func_2(), !(!vec4<bool>(true, true, !global0[_wgslsmith_index_u32(51u, 2u)], global2.b.x)));
    let var_1 = 26387i;
    global2 = func_2();
    return 1597f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = arg_0.x;
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1349f * arg_1.d.a), _wgslsmith_f_op_f32(round(arg_0.x))), arg_1, _wgslsmith_mod_vec2_u32(vec2<u32>(min(~arg_2, 4294967295u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, global2.e, 58763u), arg_1.b), ~arg_2)), _wgslsmith_mod_vec2_u32(select(abs(vec2<u32>(u_input.a.x, 31823u)), ~u_input.a, arg_3.wx), _wgslsmith_add_vec2_u32(vec2<u32>(global2.e, 22500u), vec2<u32>(86636u, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f - -1000f)), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-547f)), global2.a)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(716f + -1391f) * _wgslsmith_div_f32(1160f, -1054f)), vec2<bool>(true, true), global2.c, _wgslsmith_mod_i32(-33220i, ~global2.d), ~(~u_input.a.x)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 28301u, u_input.a.x), ~vec3<u32>(1u, u_input.a.x, 36590u)), select(func_3(1u), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], select(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global2.b.x, global2.b.x), func_3(global2.e).x, global2.b.x), false), func_2(), 2071f), max(countOneBits(u_input.a.x), 48992u), vec4<bool>(any(!vec4<bool>(true, global2.b.x, global0[_wgslsmith_index_u32(0u, 2u)], false)), -(~global2.d) >= 12629i, global0[_wgslsmith_index_u32(18405u, 2u)], select(true, global0[_wgslsmith_index_u32(84018u, 2u)], !select(false, true, true))));
    global0 = array<bool, 2>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1610f), global2.b, var_0.b.d.c, -37754i, ~(~22329u) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(20790u, 2821u), 1u) % 32u)), func_4(vec3<f32>(_wgslsmith_div_f32(-2364f, _wgslsmith_f_op_f32(trunc(var_0.a))), global2.a, var_0.a), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-903f, var_0.a, var_0.a))))), var_0.b, global2.e, vec4<bool>(true, global2.b.x && true, true, func_3(global2.e).x)).b, _wgslsmith_div_u32(min(34861u, 0u), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d.a, global2.a, 884f)), Struct_2(Struct_1(-403f, vec2<bool>(var_0.b.d.b.x, true), vec3<i32>(1i, var_0.b.a.d, global2.d), global2.d, var_0.c.x), var_0.b.b, var_0.b.c, Struct_1(-1279f, vec2<bool>(false, global2.b.x), var_0.b.a.c, var_0.b.d.d, 4294967295u), 1062f), 4294967295u, select(vec4<bool>(global2.b.x, var_0.b.a.b.x, global0[_wgslsmith_index_u32(var_0.b.d.e, 2u)], var_0.b.d.b.x), vec4<bool>(global2.b.x, var_0.b.c.x, false, true), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))).b.d.e), vec4<bool>(true, any(func_4(vec3<f32>(var_0.b.e, var_0.b.e, global2.a), var_0.b, u_input.a.x, var_0.b.c).b.d.b), all(!vec2<bool>(global2.b.x, false)), true)).b.c);
    let var_2 = Struct_1(var_1.a.a, var_1.a.b, vec3<i32>(var_0.b.a.d, _wgslsmith_mod_i32(global2.d, ~firstTrailingBit(-1i)), 26073i), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(17939i, 69021i, 0i), var_0.b.a.c), global2.c)), ~_wgslsmith_div_u32(~1u, global2.e ^ (20272u | var_0.c.x)));
    var_0 = Struct_3(-1379f, Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.a, -177f, -969f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, var_0.b.a.a, 451f))), var_0.b, 38432u, vec4<bool>(all(vec3<bool>(var_2.b.x, false, var_0.b.a.b.x)), global0[_wgslsmith_index_u32(0u, 2u)] | false, global0[_wgslsmith_index_u32(abs(9474u), 2u)], var_1.a.b.x)).b.a, var_0.b.b, select(var_0.b.c, func_3(var_1.a.e), select(global2.b.x, true, true)), Struct_1(var_0.a, !(!var_1.b.wx), vec3<i32>(var_0.b.a.d & -2147483647i, firstLeadingBit(var_2.d), var_1.a.c.x), var_2.c.x, 95161u), 1207f), ~u_input.a);
    global0 = array<bool, 2>();
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.a.a, -625f), 1000f, _wgslsmith_f_op_f32(ceil(-750f))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(121f)), var_0.b, vec2<u32>(4294967295u, _wgslsmith_clamp_u32(25272u, 0u, 1u)));
    let var_4 = _wgslsmith_clamp_i32(11262i, global2.c.x, -59171i | -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global2.c.x, var_0.b.d.d, 2147483647i), 0i, _wgslsmith_sub_i32(-1414i, var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a, var_3.x)) * -835f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a, var_3.x) + _wgslsmith_f_op_f32(f32(-1f) * -1209f))) * _wgslsmith_f_op_f32(var_2.a - var_0.b.e)));
}

