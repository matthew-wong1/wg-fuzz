struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, false, false, true, true, true, false, false, false, true, true, false, true, true, true, false, false, false, false, true, true, false, false, true);

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(false, true, false), -18012i, true, 28680i), Struct_1(vec3<bool>(false, false, false), 14943i, false, -42365i), Struct_1(vec3<bool>(true, true, true), 28304i, true, -1i), Struct_1(vec3<bool>(true, true, false), -2136i, false, 6274i), Struct_1(vec3<bool>(true, true, true), -8636i, true, -55885i));

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, false, true), i32(-2147483648), false, 18570i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1;
    global0 = countOneBits(-arg_0.x);
    let var_1 = u_input.b;
    global0 = -(~_wgslsmith_dot_vec3_i32(max(-vec3<i32>(u_input.a.x, var_1, arg_1.e), arg_0.zzy | arg_0.zxy), vec3<i32>(var_1, -8799i, abs(var_0.e))));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(50540u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.c.x, 66379u, u_input.c.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.c.x, 33553u, u_input.c.x, 6604u)), ~vec4<u32>(u_input.c.x, u_input.c.x, 32246u, 77958u)))), ~(~1u), ~(~1u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(~_wgslsmith_mult_u32(2413u >> (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))) <= _wgslsmith_add_u32((u_input.c.x | 24816u) ^ 1u, min(0u, func_3(vec4<i32>(global3.b, -26814i, 0i, -1452i), Struct_2(global3.c, global1[_wgslsmith_index_u32(4294967295u, 25u)], global3.a, global2[_wgslsmith_index_u32(0u, 5u)], u_input.d), global3.a.xz, Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], true, vec3<bool>(global3.c, true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), global2[_wgslsmith_index_u32(u_input.c.x, 5u)], -43974i)))), any(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -390f) <= _wgslsmith_f_op_f32(round(-2922f)), any(vec4<bool>(true, false, global3.c, global1[_wgslsmith_index_u32(4294967295u, 25u)])), false)), vec3<bool>(all(select(select(vec4<bool>(false, global3.c, false, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<bool>(false, true, global3.c, true), vec4<bool>(global1[_wgslsmith_index_u32(2392u, 25u)], true, true, global1[_wgslsmith_index_u32(90301u, 25u)])), vec4<bool>(false, true, false, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global3.c, false), vec4<bool>(global3.a.x, false, false, false), vec4<bool>(false, global3.a.x, false, global3.a.x)))), all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global3.c, true, global1[_wgslsmith_index_u32(85834u, 25u)])), global1[_wgslsmith_index_u32(~abs(firstTrailingBit(u_input.c.x)), 25u)]), Struct_1(select(select(select(vec3<bool>(false, global3.c, global3.c), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, true), true), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(31107u, 25u)]), vec3<bool>(global3.a.x, false, global1[_wgslsmith_index_u32(4294967295u, 25u)])), global3.a, global3.a), _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(u_input.b, u_input.a.x, global3.b, -69108i), vec4<i32>(0i, global3.b, -2147483647i, global3.d), true), -vec4<i32>(0i, 34230i, 36126i, -50831i), global3.c), vec4<i32>(u_input.d, min(global3.d, global3.b), u_input.b, -global3.b)), all(!select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], true), vec3<bool>(global3.c, global3.a.x, global3.c), global3.c)), global3.d), u_input.d);
    var var_1 = Struct_2(global3.c, global1[_wgslsmith_index_u32(67560u, 25u)], vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c.x & reverseBits(~22580u), 25u)]), Struct_1(select(select(select(global3.a, vec3<bool>(false, false, var_0.a), true), global3.a, global1[_wgslsmith_index_u32(u_input.c.x, 25u)] || global1[_wgslsmith_index_u32(4294967295u, 25u)]), !(!var_0.d.a), any(global3.a.yz) & !global3.c), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.d.b, var_0.e), vec4<i32>(var_0.d.b, -11842i, 3076i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -40245i, -2147483647i), vec4<i32>(37121i, 1i, -3851i, u_input.d))) ^ -2147483647i, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 57898u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1u)), 25u)], u_input.b), global3.b);
    global2 = array<Struct_1, 5>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-262f, -910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(722f, -1281f, global1[_wgslsmith_index_u32(u_input.c.x, 25u)])))) - vec3<f32>(-872f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -523f))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -535f, var_2.x), vec3<f32>(-196f, var_2.x, var_2.x))))))));
    return var_0.d;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = select(true, any(global3.a), global3.c);
    let var_1 = !(!(!(!(u_input.c.x == arg_1))));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(arg_1, u_input.c.x), select(74696u, _wgslsmith_sub_u32(28482u, u_input.c.x), u_input.c.x >= 8422u), firstLeadingBit(~u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zz)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 4294967295u, arg_1, u_input.c.x), vec4<u32>(arg_1, arg_1, 69460u, u_input.c.x), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global3.c, var_0), vec4<bool>(var_0, true, true, false), false)), countOneBits(vec4<u32>(4294967295u, u_input.c.x, arg_1, arg_1) << (vec4<u32>(arg_1, arg_1, u_input.c.x, arg_1) % vec4<u32>(32u))))), 5u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-709f, 1634f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(186f, 147f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1905f, -447f)))))));
    var var_4 = func_2();
    return global2[_wgslsmith_index_u32(~1u, 5u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    let var_0 = arg_0;
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 25>();
    let var_0 = Struct_1(vec3<bool>(func_4(Struct_2(global1[_wgslsmith_index_u32(40983u, 25u)] & global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(~10071u, 25u)], select(global3.a, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], true, false), false), func_1(-32130i, 95948u, vec4<i32>(19222i, u_input.b, -23249i, global3.d), u_input.a.x), ~u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, -168f) * vec2<f32>(-705f, -237f)))), global3.c, true), countOneBits(func_1(u_input.a.x, ~10257u, _wgslsmith_div_vec4_i32(min(vec4<i32>(global3.d, u_input.a.x, u_input.a.x, -10708i), vec4<i32>(global3.b, 14510i, -27356i, global3.d)), vec4<i32>(global3.b, 1i, u_input.d, -2147483647i)), u_input.b).b), false, global3.b);
    var var_1 = 6852u;
    let var_2 = Struct_2(func_4(Struct_2(func_1(~1i, func_3(vec4<i32>(var_0.b, -40815i, 0i, -2147483647i), Struct_2(true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global3.a, Struct_1(vec3<bool>(global3.c, true, var_0.a.x), 5272i, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], var_0.b), global3.b), vec2<bool>(global3.c, global3.a.x), Struct_2(global1[_wgslsmith_index_u32(42326u, 25u)], false, var_0.a, global2[_wgslsmith_index_u32(1u, 5u)], var_0.d)), select(vec4<i32>(global3.d, global3.b, var_0.d, global3.d), vec4<i32>(u_input.d, 0i, -1i, -36114i), vec4<bool>(true, false, false, global3.c)), u_input.a.x).c, !func_2().c, vec3<bool>(any(var_0.a), false, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), Struct_1(!vec3<bool>(global1[_wgslsmith_index_u32(84658u, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], true), 9407i, global3.c && global1[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_mult_i32(global3.d, u_input.a.x)), func_2().b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-883f, 435f), vec2<f32>(-1123f, -584f), vec2<bool>(false, var_0.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(178f, -1000f)))))), !var_0.c, !var_0.a, global2[_wgslsmith_index_u32(~57443u, 5u)], u_input.a.x);
    global2 = array<Struct_1, 5>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, -632f, -314f, 1472f) * vec4<f32>(714f, 1517f, 274f, 1168f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1553f, -1000f, 305f, -297f) + vec4<f32>(-242f, -1028f, 821f, 1000f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~select(var_0.d, -35199i, global3.a.x), i32(-1i) * -global3.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -2147483647i, global3.b, var_2.d.b), vec4<i32>(-2147483647i ^ global3.b, var_0.b, 2147483647i, 1i)), 28367i), reverseBits(-select(reverseBits(vec4<i32>(-2147483647i, var_2.e, 0i, var_2.d.b)), vec4<i32>(1i, global3.d, var_2.d.b, -19472i) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(global3.a.x, true, true, false))), ~u_input.a, ~u_input.c.x, var_3.xx);
}

