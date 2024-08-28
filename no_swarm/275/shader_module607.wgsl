struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_4(false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1036f + -239f) + -1314f) + global1.x), u_input.a, all(select(arg_1, vec2<bool>(true, false), select(vec2<bool>(arg_1.x, false), global0[_wgslsmith_index_u32(4294967295u, 6u)], arg_1.x)))), 0i, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.x), arg_0 | vec3<i32>(u_input.b, u_input.b, -2147483647i), true), ~arg_0 | min(arg_0, arg_0)), global0[_wgslsmith_index_u32(50955u, 6u)], Struct_2(Struct_1(2745f, u_input.a, true), u_input.a)));
    var var_1 = true;
    var_1 = global1.x == global1.x;
    var_1 = any(vec2<bool>(false, var_0.d.a.a.c));
    var_0 = Struct_4(max(27686u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 17030u)) << (4294967295u % 32u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(40775u, 1u), 1u), vec3<u32>(abs(4294967295u), 0u, ~0u)), Struct_1(_wgslsmith_f_op_f32(338f + _wgslsmith_f_op_f32(round(var_0.b.a))), arg_0 & (arg_0 & firstTrailingBit(vec3<i32>(u_input.b, arg_0.x, arg_0.x))), select(var_0.d.b.x & all(vec3<bool>(arg_1.x, true, var_0.a)), select(arg_1.x, !arg_1.x, arg_1.x), !all(vec2<bool>(false, var_0.a)))), countOneBits(_wgslsmith_div_i32(56424i, u_input.a.x << (1u % 32u))), var_0.d);
    return _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(436f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, 1238f, -1364f, 1320f))))), vec4<f32>(global1.x, global1.x, global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1648f - global1.x)))))));
    global0 = array<vec2<bool>, 6>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, global1.x, -400f, global1.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(253f, global1.x, global1.x, 353f), vec4<f32>(global1.x, 1000f, -1544f, 1430f))))))));
    global0 = array<vec2<bool>, 6>();
    global1 = vec4<f32>(-235f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-213f, -902f), _wgslsmith_div_f32(-592f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(ceil(global1.x)))))), global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a | u_input.a, vec2<bool>(false, true))), _wgslsmith_f_op_f32(-global1.x)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_clamp_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(u_input.a.x, 3880i, u_input.a.x))), u_input.a, u_input.a), true), u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: f32) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_0.c.a.a, -763f) * vec4<f32>(global1.x, -1784f, arg_3, -727f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -1655f, arg_0.a.a.a, -156f) - vec4<f32>(global1.x, arg_0.c.a.a, global1.x, -1157f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1079f, -1276f, -562f, global1.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 219f, global1.x, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1323f, -175f, arg_3, global1.x)), arg_2)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, arg_0.a.a.a, 1090f, 1000f))), vec4<f32>(global1.x, global1.x, arg_3, arg_3), vec4<bool>(arg_1.x, true, false, false))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -1000f, arg_0.c.a.a))))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.a.a, arg_3, arg_0.a.a.a, global1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 233f, -776f, 964f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(544f, arg_0.a.a.a, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a.a, 404f, arg_0.c.a.a, 767f) - vec4<f32>(698f, global1.x, arg_3, -860f)))))));
    var var_0 = _wgslsmith_f_op_f32(abs(-492f)) < global1.x;
    let var_1 = 109295u << (min(max(firstTrailingBit(70177u), 0u) << (76894u % 32u), max(~(~20629u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(45476u, 21217u, 0u), firstLeadingBit(13677u)))) % 32u);
    let var_2 = arg_0;
    return true;
}

fn func_1() -> Struct_3 {
    global0 = array<vec2<bool>, 6>();
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 73169u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(45881u, 4380u), 75155u, _wgslsmith_div_u32(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(3218u, 29978u, 1u, 51943u), vec4<u32>(26147u, 8396u, 23822u, 1u))))));
    global0 = array<vec2<bool>, 6>();
    let var_1 = func_4(Struct_3(func_2(vec3<u32>(min(var_0.x, var_0.x), ~39359u, ~var_0.x)), vec2<bool>(true, true), func_2(_wgslsmith_add_vec3_u32(var_0.yxx, vec3<u32>(var_0.x, var_0.x, 22815u) | var_0.zzy))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), select(select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), u_input.a.x < -17991i), vec4<bool>(true, 0u == var_0.x, func_2(vec3<u32>(1u, 46698u, 4294967295u)).a.c, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), true), vec4<bool>(true, true, true, true)), global1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.ywy * _wgslsmith_f_op_vec3_f32(-global1.wwz))));
    return Struct_3(Struct_2(func_2(~(~vec3<u32>(var_0.x, 20284u, var_0.x))).a, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(u_input.a), u_input.a), vec3<i32>(u_input.b, ~(-2147483647i), min(0i, 1i)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -2147483647i), vec3<i32>(u_input.a.x, -2147483647i, 1i))))), select(select(!global0[_wgslsmith_index_u32(19211u, 6u)], vec2<bool>(false, !var_1), !(false || var_1)), select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(~select(12604u, var_0.x, var_1), 6u)], !all(global0[_wgslsmith_index_u32(4294967295u, 6u)])), select(false && (false || var_1), !var_1, false)), func_2(vec3<u32>(max(var_0.x, 1043u), 0u, 1100u)));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec3<f32>(-869f, global1.x, global1.x);
    global0 = array<vec2<bool>, 6>();
    var var_1 = vec4<bool>(true, !(!(min(1i, u_input.b) < -2147483647i)), !arg_0.b.x, true);
    let var_2 = 39131u;
    var_1 = vec4<bool>(any(!(!vec4<bool>(var_1.x, false, var_1.x, var_1.x))), !arg_0.b.x, false, 4294967295u >= var_2);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(468f, _wgslsmith_f_op_f32(max(-786f, _wgslsmith_f_op_f32(f32(-1f) * -682f))));
    let var_1 = func_5(func_1());
    var var_2 = true;
    let var_3 = func_1().a.a;
    let var_4 = var_1;
    var var_5 = var_4.a.a.a;
    let var_6 = var_3;
    let var_7 = var_6.b.x == ~_wgslsmith_add_i32(abs(var_4.c.a.b.x), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(var_3.b.x, 2147483647i)));
    global0 = array<vec2<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_i32((2147483647i & var_1.a.b.x) << (~_wgslsmith_mult_u32(47003u, 9959u) % 32u), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(1i, 0i, 0i, -34875i), ~vec4<i32>(var_3.b.x, var_3.b.x, -8430i, -1i), false), ~vec4<i32>(2147483647i, -1i, var_6.b.x, 5184i))), vec4<f32>(_wgslsmith_f_op_f32(var_1.c.a.a - _wgslsmith_f_op_f32(var_3.a * -365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.a * _wgslsmith_f_op_f32(-703f * var_6.a)) + func_1().c.a.a), var_3.a, 150f), ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(61100u, 1u), vec2<u32>(4294967295u, 1u)), 44048u)));
}

