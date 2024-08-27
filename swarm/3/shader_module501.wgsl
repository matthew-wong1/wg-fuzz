struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<i32, 8>;

var<private> global2: array<f32, 20>;

var<private> global3: Struct_1;

var<private> global4: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(global4.b.x), 20u)]), global2[_wgslsmith_index_u32(global4.a >> (~20624u % 32u), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -298f), global2[_wgslsmith_index_u32(reverseBits(1u), 20u)])));
    let var_1 = true;
    global2 = array<f32, 20>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.a.xzy))));
    global1 = array<i32, 8>();
    return global4.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_1(arg_1.d.a, true);
    var var_1 = arg_1;
    global3 = var_1.d;
    let var_2 = ~(~global4.b);
    global4 = Struct_3(arg_1.a, global4.b, false, arg_1.d);
    return 0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    global1 = array<i32, 8>();
    var var_0 = global4.a;
    global3 = Struct_1(global3.a, false);
    global2 = array<f32, 20>();
    var_0 = ~0u;
    return func_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_2.a)), _wgslsmith_div_vec4_f32(vec4<f32>(1616f, 153f, -228f, 832f), arg_2.a))))), Struct_3(abs(1u), vec4<u32>(arg_3.x, func_3(!global0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global4.b.zx, vec2<u32>(global4.b.x, 70801u)), arg_3.xx), global4.a), global3.b, global4.d), vec4<bool>(global3.b, global4.c || true, ~(arg_1 << (arg_3.x % 32u)) >= 26126u, true));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = max(global4.b.xy >> (~(min(global4.b.zy, vec2<u32>(0u, 4014u)) & (global4.b.zy >> (global4.b.wx % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<u32>(global4.a, func_2(vec2<bool>(!arg_0.x, all(arg_0)), global4.a, Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(279f, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(global4.b.x, 20u)], 1000f)))), firstTrailingBit(~global4.b.zzy))));
    global4 = Struct_3(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2238f, -185f, 552f, -1000f))))), Struct_3(0u, vec4<u32>(1u << (global4.a % 32u), _wgslsmith_dot_vec4_u32(global4.b, vec4<u32>(global4.b.x, var_0.x, global4.b.x, 51187u)), 1u, 1u), true, Struct_1(_wgslsmith_mod_vec4_i32(global4.d.a, global3.a), global0.x | true)), arg_0), vec4<u32>(~firstLeadingBit(14152u), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.b.x, var_0.x), vec2<u32>(var_0.x, var_0.x)), 96379u), _wgslsmith_mult_u32(~global4.b.x, ~global4.a), abs(firstLeadingBit(global4.a))) >> ((global4.b ^ vec4<u32>(~1u, _wgslsmith_mult_u32(global4.a, global4.a), 4294967295u, global4.a << (var_0.x % 32u))) % vec4<u32>(32u)), false, Struct_1(global3.a, all(!vec4<bool>(global3.b, false, global3.b, global0.x))));
    var var_1 = Struct_3(4294967295u ^ global4.b.x, vec4<u32>(~global4.b.x, global4.a, _wgslsmith_sub_u32(~1u, func_3(global2[_wgslsmith_index_u32(16277u, 20u)] < global2[_wgslsmith_index_u32(global4.b.x, 20u)])), countOneBits(func_3(true))), false, Struct_1(-(global3.a << (_wgslsmith_div_vec4_u32(global4.b, vec4<u32>(4294967295u, var_0.x, global4.b.x, var_0.x)) % vec4<u32>(32u))), all(select(!arg_0.ywy, arg_0.xzy, !arg_0.wzz))));
    global2 = array<f32, 20>();
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2200f, global2[_wgslsmith_index_u32(abs(global4.a), 20u)], _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global4.a, 20u)], 1254f)), global2[_wgslsmith_index_u32(abs(61851u), 20u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), 1877f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(11234u, 20u)]), global2[_wgslsmith_index_u32(4294967295u, 20u)]) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(537f, 1000f, global2[_wgslsmith_index_u32(var_1.a, 20u)], 730f) + vec4<f32>(-1576f, global2[_wgslsmith_index_u32(global4.b.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(var_0.x, 20u)])) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(global4.a, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], -1327f, -3136f)))))));
    return ~_wgslsmith_add_i32(var_1.d.a.x, -max(~(-30281i), _wgslsmith_mult_i32(var_1.d.a.x, var_1.d.a.x)));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(global4.b.x, 20u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.b.x, 20u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(46038u, 20u)] + 1000f), _wgslsmith_f_op_f32(344f + -338f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(42820u, 20u)], global2[_wgslsmith_index_u32(global4.b.x, 20u)], global2[_wgslsmith_index_u32(31477u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 20u)], -528f, 649f, -214f) * vec4<f32>(-441f, global2[_wgslsmith_index_u32(61915u, 20u)], 759f, global2[_wgslsmith_index_u32(global4.a, 20u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(700f, -358f, -688f, global2[_wgslsmith_index_u32(global4.b.x, 20u)]), vec4<f32>(519f, global2[_wgslsmith_index_u32(37595u, 20u)], global2[_wgslsmith_index_u32(global4.a, 20u)], global2[_wgslsmith_index_u32(global4.b.x, 20u)]), global4.d.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global4.a, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global4.a, 20u)], global2[_wgslsmith_index_u32(global4.a, 20u)]), vec4<f32>(-1019f, -1000f, global2[_wgslsmith_index_u32(48153u, 20u)], 1345f))))));
    global0 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(arg_1, global3.b), vec2<bool>(arg_2, global4.d.b), arg_2), false || arg_2), select(vec2<bool>(global4.c, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), arg_1), vec2<bool>(true, global3.b)), !(!vec2<bool>(global0.x, false))), select(!select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, arg_2), vec2<bool>(global3.b, true), true), u_input.a != 1i), select(select(vec2<bool>(false, global3.b), vec2<bool>(true, global4.c), vec2<bool>(arg_2, false)), vec2<bool>(arg_2, !arg_2), vec2<bool>(!global4.c, global4.c && true)), any(!vec2<bool>(global3.b, true))), !(!vec2<bool>(true, global4.d.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1173f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x)))))));
    global3 = global4.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_1), _wgslsmith_f_op_f32(var_1 * -1392f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f))) + var_0.a.yxw)));
    return ~global4.b;
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~30207u, arg_0.x ^ _wgslsmith_sub_u32(arg_0.x, global4.a)), arg_0.yw >> (firstTrailingBit(~(~global4.b.zw)) % vec2<u32>(32u)));
    let var_1 = vec3<u32>(4294967295u, arg_0.x, _wgslsmith_sub_u32(19621u, ~_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec3_u32(arg_0.wzw, vec3<u32>(4294967295u, global4.b.x, 0u)))));
    let var_2 = global4.d.a.zy;
    let var_3 = global4.b.xwz;
    let var_4 = _wgslsmith_f_op_f32(trunc(-427f));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(11083u, 20u)] + var_4), _wgslsmith_f_op_f32(select(1444f, 1000f, global3.b)), var_4, _wgslsmith_f_op_f32(667f + var_4)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 166f) + vec2<f32>(1000f, 216f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(global4.b.x, 20u)], -1053f), vec2<f32>(global2[_wgslsmith_index_u32(48938u, 20u)], global2[_wgslsmith_index_u32(global4.b.x, 20u)]), vec2<bool>(false, global3.b)))))));
    var var_1 = func_6(func_5(select(func_1(vec4<bool>(false, true, global0.x, global3.b)), 2147483647i, global3.b) | u_input.a, true, false));
    var var_2 = Struct_3(global4.a, vec4<u32>(func_2(select(vec2<bool>(global3.b, true), vec2<bool>(true, true), var_1.a.x <= global2[_wgslsmith_index_u32(global4.a, 20u)]), 1u | _wgslsmith_sub_u32(global4.a, 12319u), func_6(_wgslsmith_mod_vec4_u32(global4.b, global4.b)), reverseBits(vec3<u32>(34545u, global4.b.x, 0u))), func_5(0i, any(vec4<bool>(global0.x, false, true, true)), true).x, _wgslsmith_mod_u32(0u, global4.b.x), abs(~(~global4.b.x))), true, Struct_1(global4.d.a, false));
    global3 = var_2.d;
    global3 = Struct_1(vec4<i32>(-(-global1[_wgslsmith_index_u32(46125u, 8u)] << (firstTrailingBit(1u) % 32u)), 29651i, -1i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11319u, countOneBits(1u), abs(4294967295u)), 8u)]), true);
    var var_3 = global4.d.a.x;
    var var_4 = global0.x;
    var var_5 = vec2<u32>(_wgslsmith_mod_u32(~12894u, global4.b.x), abs(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 71064u), min(4294967295u, var_2.a), select(10348u, global4.a, false))));
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~(~var_5.x), 20u)]);
}

