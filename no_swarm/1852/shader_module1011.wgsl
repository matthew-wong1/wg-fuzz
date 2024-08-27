struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, i32(-2147483648), Struct_1(27029u), Struct_1(39050u), vec3<i32>(1i, 2147483647i, 75363i));

var<private> global1: Struct_5;

var<private> global2: array<bool, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = -1000f;
    var var_1 = select(vec4<u32>(global1.a.c.a, ~0u, firstLeadingBit(global0.c.a), ~abs(global1.a.d.a & global0.c.a)), _wgslsmith_sub_vec4_u32(select(countOneBits(~vec4<u32>(u_input.c.x, u_input.a, global1.d.d.a, global0.d.a)), firstLeadingBit(vec4<u32>(u_input.a, global0.c.a, global1.d.c.a, 4294967295u)), _wgslsmith_f_op_f32(-global1.c) > _wgslsmith_f_op_f32(max(var_0, 1461f))), firstTrailingBit(vec4<u32>(countOneBits(1u), _wgslsmith_add_u32(global1.a.d.a, global0.d.a), abs(18878u), 1u))), vec4<bool>(global2[_wgslsmith_index_u32(global0.d.a, 5u)], true, global0.a, global2[_wgslsmith_index_u32(0u, 5u)]));
    var var_2 = abs(reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, reverseBits(u_input.b)), 26854u)));
    var_1 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(45622u, global1.d.c.a, 4294967295u, var_2.x), vec4<u32>(var_1.x, global0.c.a, 29434u, u_input.a)), min(vec4<u32>(u_input.a, 0u, 0u, global1.a.c.a), vec4<u32>(26754u, global0.d.a, var_1.x, 1u))), (vec4<u32>(global0.c.a, 0u, 8133u, global0.d.a) | vec4<u32>(20656u, u_input.b.x, 4294967295u, global1.a.d.a)) & vec4<u32>(28970u, var_2.x, global0.d.a, u_input.c.x)));
    global0 = global1.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<i32>) -> bool {
    global0 = global1.a;
    let var_0 = Struct_4(Struct_3(Struct_2(true, 23758i, Struct_1(u_input.d), global1.d.d, vec3<i32>(arg_2.x, -22111i, 2147483647i)), ~_wgslsmith_mult_u32(global1.a.c.a, global0.d.a) ^ 0u, arg_0, global1.d.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(760f, arg_1, global1.c)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 135f, -369f) + vec3<f32>(520f, 922f, global1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1345f, arg_1, arg_1)), true)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(267f, 1000f, 3456f) - vec3<f32>(arg_1, arg_1, -2673f)))))), u_input.d, Struct_2(!select(global0.a, true, false) & (global1.d.a != false), 25439i, global1.d.c, global1.a.c, ~global1.a.e));
    let var_1 = Struct_4(Struct_3(var_0.a.a, ~(~global0.c.a ^ (4294967295u & global0.c.a)), select(arg_0, select(!arg_0, vec2<bool>(true, var_0.a.a.a), all(vec3<bool>(true, false, false))), !(global0.a & arg_0.x)), var_0.d.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-1373f + -315f)))), 4294967295u, Struct_2(!all(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.a, 5u)], var_0.d.a, true)) || global0.a, global0.e.x, global0.d, Struct_1(~(~global0.d.a)), vec3<i32>(2694i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, global1.b, var_0.d.b) >> (vec3<u32>(u_input.d, u_input.a, 0u) % vec3<u32>(32u)), global1.a.e), _wgslsmith_sub_i32(~global0.e.x, 1814i))));
    let var_2 = -10509i;
    global2 = array<bool, 5>();
    return true;
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.c, global1.c, global1.d.a)))), _wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_f_op_f32(-670f + global1.c), 299f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(984f + global1.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.c, _wgslsmith_f_op_f32(floor(-537f)), 492f, _wgslsmith_f_op_f32(global1.c + 1408f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), global1.c, _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(176f - 1013f)))), !select(vec4<bool>(true, global0.a, true, false), select(vec4<bool>(true, global1.a.a, false, false), vec4<bool>(global0.a, true, global1.a.a, global1.a.a), vec4<bool>(global0.a, global2[_wgslsmith_index_u32(0u, 5u)], global0.a, global1.a.a)), !vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 5u)], global1.d.a, false)))));
    global0 = global1.d;
    global2 = array<bool, 5>();
    var var_1 = vec2<bool>(false, func_4(vec2<bool>(false, any(!vec3<bool>(true, false, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c))) - _wgslsmith_f_op_f32(func_3())), vec3<i32>(global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.e.x, global0.b, global1.b, 8806i) | vec4<i32>(-8378i, global0.b, global0.e.x, 2147483647i), vec4<i32>(0i, 1i, global0.b, global1.d.e.x) | vec4<i32>(global0.b, 1i, 13129i, 1i)), _wgslsmith_mod_i32(max(-19357i, -1i), -2147483647i))));
    let var_2 = ~global1.a.e.zz;
    return Struct_5(global1.d, -1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(160f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + 1421f))))), Struct_2(!any(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(55899u, 5u)])), _wgslsmith_mult_i32(global1.a.e.x, firstTrailingBit(-2147483647i)), Struct_1(countOneBits(reverseBits(global1.a.c.a))), Struct_1(~u_input.d), -global1.d.e));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: i32) -> Struct_4 {
    global1 = func_2();
    global1 = Struct_5(Struct_2(true && global0.a, i32(-1i) * -47941i, global1.a.d, global1.a.c, global0.e), -_wgslsmith_dot_vec2_i32(~global0.e.zx, -global1.a.e.xx), 1203f, Struct_2(all(!vec4<bool>(global0.a, global2[_wgslsmith_index_u32(global0.d.a, 5u)], false, global2[_wgslsmith_index_u32(global1.a.c.a, 5u)])), ~global1.a.e.x, Struct_1(arg_1.x), func_2().d.d, reverseBits(abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 17946i, arg_2), global1.d.e)))));
    global2 = array<bool, 5>();
    let var_0 = global0.a;
    global2 = array<bool, 5>();
    return Struct_4(Struct_3(func_2().d, ~(~(~global1.a.c.a)), !(!select(vec2<bool>(global1.d.a, true), vec2<bool>(true, global0.a), global1.a.a)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(58569u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 57370u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, 1062f, global1.c) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-347f, global1.c, -624f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, -1128f, 418f) * vec3<f32>(-1000f, global1.c, global1.c)))))), ~(global1.a.c.a | u_input.a) | global1.a.c.a, global1.d);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: Struct_5) -> vec2<i32> {
    global2 = array<bool, 5>();
    var var_0 = global1.a;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_mult_vec3_u32(select(u_input.b, vec3<u32>(4294967295u, 21078u, 0u), true), vec3<u32>(0u, arg_3.a.d.a, u_input.d))), ~21096u, ~u_input.d);
    let var_2 = _wgslsmith_add_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(75570u, arg_0.a.a.d.a, u_input.d, var_0.d.a), vec4<u32>(u_input.d, 4294967295u, arg_3.a.d.a, 23386u)), vec4<u32>(4294967295u, global0.c.a, 26835u, 0u) | vec4<u32>(var_1, 0u, arg_3.a.c.a, 171966u), ~vec4<u32>(34757u, var_0.c.a, 0u, arg_0.d.d.a))), vec4<u32>(68071u, arg_3.a.d.a, var_0.d.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.d.a, var_1, 28886u), select(vec3<u32>(arg_0.a.a.d.a, 72636u, 54275u), u_input.b, arg_1)))));
    var_0 = func_1(-24103i, vec3<u32>(reverseBits((arg_3.a.c.a ^ var_2.x) ^ func_1(global0.b, vec3<u32>(12670u, u_input.c.x, 3775u), var_0.e.x).d.d.a), global0.c.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_2.yxz, u_input.b), vec3<u32>(global1.d.c.a, global0.d.a, var_2.x)), func_2().d.c.a)), ~arg_0.a.a.b).d;
    return vec2<i32>(firstTrailingBit(func_1(-50300i, var_2.yww >> (vec3<u32>(11852u, global0.d.a, global0.d.a) % vec3<u32>(32u)), arg_3.d.e.x).d.e.x) ^ abs(arg_0.a.a.b), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(select(func_5(Struct_4(Struct_3(Struct_2(false, global0.b, global1.a.c, global1.d.d, global0.e), global0.d.a, vec2<bool>(true, global2[_wgslsmith_index_u32(global1.a.d.a, 5u)]), Struct_1(0u)), vec3<f32>(global1.c, 427f, 475f), global1.d.d.a, Struct_2(false, 28335i, global1.a.c, global1.d.c, vec3<i32>(global0.b, -60402i, 41043i))), false, func_1(global1.a.b, vec3<u32>(global0.d.a, 7771u, 7358u), global0.e.x), func_2()), vec2<i32>(func_2().a.b, -1i), any(vec2<bool>(false, global1.d.a)) && true)) << ((u_input.c | ~abs(~u_input.c)) % vec2<u32>(32u));
    let var_1 = 0u;
    let var_2 = var_1;
    global1 = Struct_5(global1.d, 2147483647i, global1.c, func_1(-_wgslsmith_clamp_i32(min(global1.a.e.x, global0.e.x), _wgslsmith_mult_i32(global1.a.b, var_0.x), ~1i), (select(vec3<u32>(global0.c.a, global0.d.a, 87280u), u_input.b, vec3<bool>(true, global1.a.a, false)) ^ countOneBits(u_input.b)) >> (reverseBits(u_input.b) % vec3<u32>(32u)), 0i).a.a);
    var_0 = _wgslsmith_sub_vec2_i32(global1.a.e.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.e.x, ~var_0.x), ~(-global1.a.e.yx & vec2<i32>(global0.e.x, -10014i))));
    let var_3 = func_1(~global1.b, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 20128u, 3398u, 42311u), vec4<u32>(global1.d.c.a, var_2, 27069u, var_2)), vec4<u32>(var_1, 1u, global1.a.d.a, var_2)), ~(~0u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 1u, u_input.d, 79444u), vec4<u32>(0u, global0.c.a, var_2, var_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(1058u, 127157u, 1825u, global1.d.d.a), vec4<u32>(u_input.a, u_input.a, 12188u, 0u)))), vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.d, u_input.b.x) ^ global0.d.a, 1u, 103385u)), 0i);
    global1 = func_2();
    let var_4 = Struct_2(global0.a, ~1i, func_2().a.d, Struct_1(_wgslsmith_mod_u32(~(var_3.c >> (1u % 32u)), firstLeadingBit(func_2().a.d.a))), _wgslsmith_add_vec3_i32(global1.d.e, -global1.a.e));
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i) * -var_3.a.a.e.zz), ~vec4<i32>(_wgslsmith_sub_i32(-1i, -2147483647i) >> (_wgslsmith_mult_u32(u_input.d, 6864u) % 32u), -var_0.x, 0i, var_0.x), reverseBits(~global1.b));
}

