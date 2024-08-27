struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: bool;

var<private> global2: vec4<bool>;

var<private> global3: array<f32, 26>;

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    global3 = array<f32, 26>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(14027u, min(firstLeadingBit(arg_0) & 43154u, ~0u), max(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, 0u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, _wgslsmith_mult_u32(arg_0, max(arg_0, u_input.a))), ~vec3<u32>(1u, _wgslsmith_add_u32(u_input.b.x, arg_0), _wgslsmith_sub_u32(arg_0, u_input.b.x))));
    var var_1 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d, u_input.c.x, 29409i, u_input.c.x)) | vec4<i32>(-12281i, u_input.c.x, u_input.d, -2147483647i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, u_input.c.x, 19667i), vec4<i32>(u_input.d, 0i, u_input.c.x, u_input.d), vec4<i32>(0i, u_input.d, -7284i, 2147483647i))), u_input.d);
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 25u)];
    var var_3 = vec3<f32>(-608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2474f) * -1855f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1873f + global0[_wgslsmith_index_u32(arg_0, 6u)]), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(37165u, 6u)], global0[_wgslsmith_index_u32(2750u, 6u)]))))));
    return 10029i;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_2(~arg_1.x);
    let var_1 = global4[_wgslsmith_index_u32(4303u, 25u)];
    global0 = array<f32, 6>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2046f * -2430f))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(~countOneBits(arg_2.x)), -2147483647i, -1i), vec3<i32>(-arg_2.x, _wgslsmith_clamp_i32(u_input.c.x, (arg_2.x >> (27477u % 32u)) << ((9359u << (u_input.a % 32u)) % 32u), 63080i), -func_3(_wgslsmith_div_u32(4294967295u, var_0.a))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_div_u32(~4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a)))), 26u)], var_0.x, all(global2.wy)));
    var var_2 = vec2<bool>((2147483647i >= u_input.d) == true, !(global2.x | true));
    return Struct_1(countOneBits(0i) < select(-29639i, max(u_input.d, _wgslsmith_mult_i32(-2147483647i, 0i)), false));
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    global4 = array<Struct_1, 25>();
    var var_0 = func_4(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), ~u_input.b.yz)), 26u)], _wgslsmith_f_op_f32(round(-1037f)))), _wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1724f)), global3[_wgslsmith_index_u32((u_input.a | 0u) & 4294967295u, 26u)]), u_input.b, vec4<i32>(-2147483647i, -1i, ~_wgslsmith_div_i32(49003i, 13381i), -2147483647i), !(!select(vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, true, true))))), Struct_2(_wgslsmith_div_u32(u_input.a, ~1u)));
    global4 = array<Struct_1, 25>();
    global1 = ~(~_wgslsmith_mult_i32(-15227i, arg_0 | arg_0)) <= -11405i;
    let var_1 = Struct_1(!var_0.a);
    return ~_wgslsmith_dot_vec3_u32(~firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.b.ywy, vec3<u32>(1u, 37400u, u_input.a))), u_input.b.wxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(70901u, 6u)], 1531f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(97942u, 6u)], -187f) + vec3<f32>(global0[_wgslsmith_index_u32(82293u, 6u)], 1000f, global3[_wgslsmith_index_u32(3866u, 26u)])), global2.xwy)) + vec3<f32>(_wgslsmith_f_op_f32(abs(555f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(53100u, 26u)] + -908f), global3[_wgslsmith_index_u32(u_input.b.x, 26u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1203f, -668f, global3[_wgslsmith_index_u32(u_input.a, 26u)]) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 1070f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-1372f, 127f)), 855f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])))));
    global0 = array<f32, 6>();
    var var_1 = Struct_1(true);
    global4 = array<Struct_1, 25>();
    let var_2 = -278f;
    let var_3 = 2147483647i;
    var var_4 = global4[_wgslsmith_index_u32(func_1(_wgslsmith_add_i32(var_3 | -1i, 4551i), ~(-max(27263i, 0i))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(-2147483647i, var_3, 59613i, -18178i) | vec4<i32>(-2147483647i, -11589i, 0i, var_3)), ~(-select(vec4<i32>(u_input.d, -13650i, var_3, var_3), vec4<i32>(u_input.c.x, 38919i, -45308i, u_input.d), true))));
}

