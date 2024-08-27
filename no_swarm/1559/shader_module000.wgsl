struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec3<bool>(false, false, false), 22289i));

var<private> global2: array<vec4<i32>, 9>;

var<private> global3: array<i32, 23> = array<i32, 23>(-37866i, 9269i, i32(-2147483648), 5890i, 33336i, 0i, 2147483647i, 30355i, 1i, 0i, -22517i, -1i, 13653i, 3772i, i32(-2147483648), -40784i, -1i, -819i, 1i, 0i, 4734i, 1i, i32(-2147483648));

var<private> global4: array<vec2<bool>, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = Struct_2(global0.a);
    global1 = Struct_2(Struct_1(false, var_0.a.b, var_0.a.c));
    global2 = array<vec4<i32>, 9>();
    let var_1 = ~29097u;
    let var_2 = _wgslsmith_sub_vec4_i32(global2[_wgslsmith_index_u32(arg_3, 9u)] ^ vec4<i32>(countOneBits(-29622i), -_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(u_input.a, 23u)], global0.a.c, var_0.a.c), -2147483647i, _wgslsmith_add_i32(var_0.a.c, 1i)), vec4<i32>(reverseBits(_wgslsmith_mult_i32(40809i, arg_1.x)), reverseBits(45826i), _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.b.x, 1i, global1.a.c)), -4916i) >> (vec4<u32>(u_input.a, _wgslsmith_clamp_u32(arg_2, 64168u, 15393u) | max(13249u, 18797u), ~reverseBits(22247u), ~(arg_3 ^ 4294967295u)) % vec4<u32>(32u)));
    return global0.a.b.x;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(any(global0.a.b), !vec3<bool>(true, global0.a.a, !any(global1.a.b)), firstTrailingBit(u_input.b.x));
    let var_1 = Struct_2(Struct_1(global1.a.a, select(select(global0.a.b, vec3<bool>(true, global0.a.a, global0.a.b.x), !var_0.b), vec3<bool>(true, all(var_0.b.yy), select(global1.a.b.x, true, var_0.a)), global0.a.a), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c, arg_1), _wgslsmith_mult_i32(u_input.b.x, global1.a.c) & (i32(-1i) * -25176i))));
    let var_2 = Struct_2(Struct_1(global1.a.b.x | func_3(var_0.b.yx, abs(vec3<i32>(1i, global0.a.c, 14686i)), 46469u, ~u_input.a), !select(vec3<bool>(var_0.b.x, global1.a.b.x, false), select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.a.a, true), global1.a.a), all(global4[_wgslsmith_index_u32(arg_0, 32u)])), reverseBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(-5083i, -1i, u_input.b.x), vec3<i32>(global0.a.c, u_input.b.x, global0.a.c)))));
    let var_3 = Struct_3(!select(select(vec3<bool>(true, true, true), select(var_0.b, var_0.b, vec3<bool>(var_2.a.a, global0.a.b.x, true)), vec3<bool>(var_0.b.x, var_0.b.x, var_0.a)), var_0.b, select(global0.a.b, !vec3<bool>(true, global0.a.a, var_0.b.x), vec3<bool>(var_0.a, var_1.a.b.x, var_1.a.b.x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(491f, 561f, false)) - _wgslsmith_f_op_f32(select(1046f, -442f, true))), _wgslsmith_div_f32(-473f, 508f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-200f, -1370f)))), Struct_2(global0.a));
    var var_4 = Struct_3(!vec3<bool>(all(var_1.a.b), any(var_3.c.a.b), (var_3.c.a.a & false) && false), var_3.b, var_3.c);
    return var_1.a;
}

fn func_1() -> f32 {
    global1 = Struct_2(func_2(u_input.a, 22563i));
    global0 = Struct_2(Struct_1(false, global1.a.b, -1i));
    let var_0 = func_2(max(reverseBits(_wgslsmith_mult_u32(~u_input.a, min(55150u, 4294967295u))), 16017u), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(69467i, global3[_wgslsmith_index_u32(0u, 23u)])), u_input.b.yz))).b;
    global4 = array<vec2<bool>, 32>();
    global3 = array<i32, 23>();
    return _wgslsmith_f_op_f32(trunc(-379f));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = firstTrailingBit(firstLeadingBit(vec3<u32>(~47214u, 0u, ~arg_0) >> (~(vec3<u32>(arg_0, arg_0, arg_0) >> (vec3<u32>(arg_0, u_input.a, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = vec3<bool>(global0.a.b.x, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(2888u, ~u_input.a), 23u)], -1i) < ~(global3[_wgslsmith_index_u32(arg_0, 23u)] >> (abs(4294967295u) % 32u)), !any(select(global1.a.b.zy, global4[_wgslsmith_index_u32(~1u, 32u)], global0.a.b.xx)));
    var var_2 = _wgslsmith_f_op_f32(trunc(-1159f));
    let var_3 = Struct_3(select(vec3<bool>(-2345f != _wgslsmith_f_op_f32(arg_1 * arg_1), all(!vec2<bool>(var_1.x, true)), true), global0.a.b, global1.a.a), vec2<f32>(552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-505f - _wgslsmith_div_f32(1514f, arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + arg_1)))), Struct_2(func_2(u_input.a, global0.a.c)));
    var var_4 = Struct_2(Struct_1(func_2(firstTrailingBit(_wgslsmith_mod_u32(var_0.x, u_input.a)), u_input.b.x).a, global1.a.b, ~(-(~1i))));
    return Struct_2(Struct_1(func_3(vec2<bool>(any(vec3<bool>(false, var_4.a.a, true)), false), u_input.b, 40500u, ~4294967295u), func_2(select(~u_input.a, min(37254u, arg_0), all(vec4<bool>(var_4.a.a, var_1.x, true, true))), -15564i).b, -57534i));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global4 = array<vec2<bool>, 32>();
    var var_0 = u_input.a;
    let var_1 = Struct_2(global0.a);
    let var_2 = _wgslsmith_f_op_f32(sign(101f));
    var var_3 = vec3<i32>(global1.a.c, _wgslsmith_mult_i32(abs(global3[_wgslsmith_index_u32(arg_1, 23u)]), global1.a.c), 0i);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 23>();
    global1 = Struct_2(global0.a);
    var var_0 = func_5(5702u, _wgslsmith_sub_u32(125918u, 55177u), func_4(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(29240u, u_input.a, 0u, u_input.a))), 57089u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f + 1468f) * _wgslsmith_f_op_f32(-1251f - 686f)) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -704f) - -1213f), u_input.b.x));
    let var_1 = !func_2(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 1826u), 0u), var_0.a.c).b.x;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(max(-global2[_wgslsmith_index_u32(26603u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)] & vec4<i32>(0i, 2147483647i, -2147483647i, global0.a.c)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(29691u, u_input.a), 9u)]), u_input.b.x) >> ((~((vec2<u32>(31799u, 37579u) | vec2<u32>(0u, u_input.a)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 3238u), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))) | countOneBits(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)) << ((vec2<u32>(14038u, u_input.a) & vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, ~global1.a.c), u_input.b.xz);
    var var_3 = !any(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.a.b.x, false, false, global0.a.b.x), vec4<bool>(var_0.a.a, global1.a.a, global1.a.a, false)), vec4<bool>(global0.a.a, var_0.a.b.x, true, var_1), true));
    var var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29944u, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)) >> (~(~vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~select(vec3<u32>(50884u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), var_0.a.b), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(28917u, 62224u, u_input.a), vec3<u32>(1u, 0u, 0u))))), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 28577u) | ~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)) & ~(u_input.a ^ _wgslsmith_mult_u32(17356u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(30352u, 1u, _wgslsmith_mod_u32(~1u, select(_wgslsmith_mult_u32(0u, u_input.a), 83076u, true)), countOneBits(countOneBits(19094u)) << (_wgslsmith_div_u32(~u_input.a, u_input.a) % 32u)), u_input.b, global2[_wgslsmith_index_u32(~1u, 9u)]);
}

