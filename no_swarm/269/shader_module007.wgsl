struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, true, false));

var<private> global2: array<f32, 22> = array<f32, 22>(212f, 141f, -1334f, 570f, 1000f, 190f, -1606f, -1536f, 1072f, -1411f, 668f, 450f, -1236f, 1646f, 1495f, -2138f, -348f, -1000f, -363f, -843f, -148f, 677f);

var<private> global3: array<vec3<f32>, 8>;

var<private> global4: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = Struct_4(Struct_1(arg_0, u_input.b.x <= 30423u, u_input.b), -2274f, u_input.d, Struct_3(~(~vec4<i32>(38077i, u_input.d.x, 2147483647i, -1i) << (min(vec4<u32>(112284u, u_input.c, u_input.c, 76434u), vec4<u32>(0u, 4294967295u, u_input.c, 85363u)) % vec4<u32>(32u))), Struct_1(-1159f, arg_1 & true, vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 0u), u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 82402u)))));
    global0 = var_0.a.c.x;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.d.b.c.x, var_0.d.b.c.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(57922u, 4294967295u, u_input.c, 43913u), vec4<u32>(u_input.b.x, u_input.c, 23714u, 16784u))), 8u)])), global3[_wgslsmith_index_u32(1u, 8u)])), vec3<f32>(-316f, arg_0, -811f));
    let var_2 = var_0.d;
    var var_3 = Struct_2(!(!all(select(vec3<bool>(arg_1, true, false), vec3<bool>(var_2.b.b, var_0.d.b.b, false), var_2.b.b))), var_2.b);
    return ~var_3.b.c.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    let var_0 = func_3(_wgslsmith_f_op_f32(-arg_1), all(!(!(!vec2<bool>(arg_0, false)))));
    var var_1 = arg_2.b;
    let var_2 = ~((_wgslsmith_mod_i32(u_input.d.x, abs(u_input.a)) | ~firstTrailingBit(u_input.d.x)) << (~(~var_1.c.x) % 32u));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.a, global2[_wgslsmith_index_u32(arg_2.b.c.x, 22u)], 648f, 293f) * vec4<f32>(arg_1, arg_2.b.a, var_1.a, 513f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, -242f, var_1.a, var_1.a))), !arg_0)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)] + global2[_wgslsmith_index_u32(var_1.c.x, 22u)]))), -794f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.b.a, global2[_wgslsmith_index_u32(arg_2.b.c.x, 22u)]), _wgslsmith_f_op_f32(-arg_2.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f + arg_1) + _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 22u)]))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(arg_1 + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1155f), -262f))), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(~arg_2.b.c.x, 22u)], _wgslsmith_f_op_f32(var_1.a + -130f), arg_2.b.a, _wgslsmith_f_op_f32(exp2(arg_2.b.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(116f, 1055f, -298f, 829f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, 887f, var_1.a, -548f), vec4<f32>(-863f, var_1.a, 612f, arg_2.b.a), global1[_wgslsmith_index_u32(4294967295u, 1u)]))))));
    global0 = _wgslsmith_add_u32(11867u, (_wgslsmith_div_u32(var_1.c.x, 101863u) | firstTrailingBit(0u)) << (_wgslsmith_div_u32(1u >> (var_0 % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(48893u, u_input.c), vec2<u32>(1u, 0u))) % 32u)) | ~(~45987u);
    return Struct_4(arg_2.b, -461f, vec2<i32>(7879i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~(-26039i), _wgslsmith_dot_vec4_i32(vec4<i32>(33128i, var_2, 1i, var_2), vec4<i32>(var_2, -1i, var_2, 18954i)), var_2), vec4<i32>(_wgslsmith_mod_i32(-1i, var_2), _wgslsmith_clamp_i32(var_2, 22193i, var_2), 1i, _wgslsmith_div_i32(u_input.a, 22752i)))), Struct_3(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(10850i, u_input.d.x, var_2, 2147483647i)), ~(~vec4<i32>(2147483647i, var_2, -1i, -2147483647i)), countOneBits(~vec4<i32>(86713i, -49140i, 1i, var_2))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 684f, true))), !var_1.b, abs(abs(vec3<u32>(var_0, 1u, 4294967295u))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-424f, _wgslsmith_f_op_f32(min(arg_0.d.b.a, arg_0.d.b.a))))), global2[_wgslsmith_index_u32(arg_0.d.b.c.x, 22u)], select(!any(vec4<bool>(false, arg_0.d.b.b, false, false)), any(!vec3<bool>(arg_0.d.b.b, false, true)), false))));
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    let var_1 = global2[_wgslsmith_index_u32(74423u, 22u)];
    var var_2 = select(select(!vec3<bool>(any(vec3<bool>(false, arg_0.d.b.b, arg_0.a.b)), arg_0.d.b.b, arg_0.d.b.c.x < 21402u), select(vec3<bool>(-1i > arg_0.d.a.x, arg_0.a.b == true, arg_0.d.b.b), !vec3<bool>(true, arg_0.d.b.b, true), select(arg_0.a.b & true, global2[_wgslsmith_index_u32(arg_0.d.b.c.x, 22u)] <= 864f, arg_0.d.b.b)), !select(select(vec3<bool>(false, true, arg_0.d.b.b), vec3<bool>(arg_0.d.b.b, arg_0.a.b, arg_0.d.b.b), false), !vec3<bool>(false, false, arg_0.d.b.b), arg_0.a.b)), !vec3<bool>(false, arg_0.a.b, false), select(vec3<bool>(!(arg_0.a.b | arg_0.a.b), false, !arg_0.d.b.b), select(select(select(vec3<bool>(true, arg_0.d.b.b, arg_0.a.b), vec3<bool>(false, arg_0.a.b, false), true), select(vec3<bool>(true, arg_0.a.b, true), vec3<bool>(false, false, arg_0.d.b.b), arg_0.d.b.b), select(vec3<bool>(arg_0.d.b.b, arg_0.a.b, arg_0.d.b.b), vec3<bool>(false, true, false), vec3<bool>(arg_0.a.b, true, arg_0.d.b.b))), vec3<bool>(any(vec3<bool>(false, arg_0.a.b, true)), arg_0.a.b, true), true), all(!select(global1[_wgslsmith_index_u32(32711u, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(arg_0.a.c.x, 1u)]))));
    return ~0i;
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, u_input.d.x), abs(_wgslsmith_div_i32(u_input.d.x, u_input.d.x))), -(i32(-1i) * -22437i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.a, 2147483647i), vec3<i32>(u_input.d.x, 38740i, 27026i)), ~0i, ~u_input.a, -u_input.d.x), vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, abs(u_input.d.x))), abs(u_input.d.x)));
    global1 = array<vec4<bool>, 1>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(arg_0, 8u)], vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(arg_0, 22u)]), vec3<bool>(false, true, arg_1))), global3[_wgslsmith_index_u32(firstLeadingBit(0u), 8u)])), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.c << (1u % 32u), 8u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, global2[_wgslsmith_index_u32(52976u, 22u)], 826f)))))));
    var_0 = vec4<i32>(~var_0.x, -firstLeadingBit(_wgslsmith_clamp_i32(-28628i, var_0.x, var_0.x)), -2147483647i, func_4(func_2(true, var_1.x, Struct_2(arg_1, Struct_1(global2[_wgslsmith_index_u32(arg_0, 22u)], arg_1, u_input.b)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_div_f32(-582f, 628f)))) | abs(min(firstLeadingBit(vec4<i32>(2147483647i, -1i, var_0.x, -1i)), firstLeadingBit(vec4<i32>(-23985i, -38045i, 9233i, u_input.a))));
    let var_2 = _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, 49378u >> (~arg_0 % 32u), arg_0)), vec3<u32>(select(func_3(var_1.x, true), u_input.b.x, !arg_1), ~(~u_input.b.x), 13560u) >> (vec3<u32>(~(~234u), 0u << (func_2(false, 769f, Struct_2(arg_1, Struct_1(-456f, arg_1, u_input.b)), false).a.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 30180u, 1u), min(vec4<u32>(75780u, arg_0, 0u, 4294967295u), vec4<u32>(26990u, arg_0, u_input.b.x, 81827u)))) % vec3<u32>(32u)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(42156u, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)))))));
    var var_1 = 1i;
    let var_2 = ~_wgslsmith_mod_u32(10252u, abs(u_input.c));
    var var_3 = ~max(func_2(!(global2[_wgslsmith_index_u32(0u, 22u)] > global2[_wgslsmith_index_u32(u_input.c, 22u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 22u)]), -671f)), Struct_2(false, func_2(true, global2[_wgslsmith_index_u32(var_2, 22u)], Struct_2(false, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 22u)], false, u_input.b)), true).d.b), true).d.a, vec4<i32>(-u_input.a, -449i, u_input.a, _wgslsmith_clamp_i32(-43825i, 3411i, -1i)) << (~vec4<u32>(88986u, u_input.c, 109415u, 20879u) % vec4<u32>(32u)));
    let var_4 = Struct_2(!all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_1(_wgslsmith_f_op_f32(func_1(var_2, all(vec3<bool>(true, true, true)))), false, abs(select(vec3<u32>(u_input.b.x, 83823u, 29532u), firstTrailingBit(vec3<u32>(39559u, 27483u, u_input.c)), vec3<bool>(true, false, false)))));
    var_1 = 65i;
    let var_5 = -35911i;
    var_3 = _wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(0i, 1i ^ var_5, abs(0i), var_3.x)), vec4<i32>(~(-16179i), countOneBits(u_input.d.x), 3412i, 1i));
    global4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_4.b.c.x, u_input.b.x, 37401u) & firstLeadingBit(var_4.b.c)), vec3<u32>(min(var_4.b.c.x & var_2, 0u), countOneBits(var_4.b.c.x), 1u)), _wgslsmith_add_vec2_i32(~u_input.d, ~vec2<i32>(~0i, var_3.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(select(var_4.b.c.x, u_input.b.x, var_4.b.b), 22u)]), _wgslsmith_div_f32(func_2(true, 527f, var_4, true).a.a, 1381f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, 1770f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.a, 708f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1422f, 438f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1132f, -1000f)))))), var_3.x);
}

