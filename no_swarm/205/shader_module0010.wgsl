struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(746u, 4294967295u);

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-292f)) - 1000f))), 587f);
    var var_1 = Struct_1(true, ~arg_1, !(!((1u <= arg_1) | all(arg_0))), -1i);
    global0 = vec2<u32>(var_1.b, ~56619u);
    var var_2 = Struct_1(arg_3.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.b, 100u, 69387u), min(18881u, global0.x)), ~arg_1), arg_2, 3379i);
    let var_3 = Struct_2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x));
    return vec3<bool>(false, true, !arg_0.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_2(arg_0);
    global1 = array<Struct_1, 13>();
    var var_1 = -(u_input.c.x | 5196i);
    var var_2 = u_input.d;
    var_1 = u_input.c.x;
    return Struct_3(global1[_wgslsmith_index_u32(0u, 13u)], Struct_1(true, u_input.a, all(func_3(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), global0.x, true, vec4<bool>(false, false, true, false))), min(-max(u_input.e.x, -38760i), 1200i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(vec4<f32>(arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(746f, 589f))), -1528f), -1045f, arg_1.a.x));
    let var_1 = arg_1;
    global1 = array<Struct_1, 13>();
    global0 = ~vec2<u32>(~(~arg_0.b.b) ^ 1u, ~47925u);
    global1 = array<Struct_1, 13>();
    return Struct_1(all(!select(select(vec3<bool>(arg_0.b.a, false, true), vec3<bool>(arg_0.b.a, true, arg_0.a.a), true), !vec3<bool>(false, arg_0.a.c, false), vec3<bool>(false, arg_0.b.a, true))), 1u, !arg_0.a.c, 1i);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 13>();
    let var_0 = true;
    var var_1 = Struct_3(Struct_1(false, 1u, false, arg_2.d), Struct_1(!any(vec2<bool>(var_0, arg_1.b.a)), arg_0, _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-669f + -1000f)) >= _wgslsmith_f_op_f32(-1119f * _wgslsmith_f_op_f32(ceil(-480f))), arg_1.a.d));
    var_1 = Struct_3(Struct_1(false, ~var_1.a.b, func_4(Struct_3(func_2(vec4<f32>(-538f, -258f, 436f, -1000f), 4294967295u).a, func_2(vec4<f32>(1193f, -714f, 1531f, -1834f), 1u).a), Struct_2(vec4<f32>(-229f, 588f, -368f, 527f))).a, _wgslsmith_mod_i32(-37917i & u_input.c.x, u_input.e.x) | func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1653f, -1000f, -1126f, 602f)), arg_2.b & arg_2.b).b.d), global1[_wgslsmith_index_u32(0u, 13u)]);
    var var_2 = firstTrailingBit(abs(vec3<i32>(-var_1.b.d, -u_input.e.x, u_input.c.x)));
    return Struct_1(u_input.c.x >= abs(1i), 71741u, any(vec3<bool>(any(!vec4<bool>(true, arg_2.a, arg_2.c, var_1.a.c)), !(!arg_1.a.a), true)), _wgslsmith_mult_i32(i32(-1i) * -34765i, ~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-3031i, 1i, 14307i, arg_1.a.d))));
}

fn func_1() -> Struct_3 {
    return Struct_3(global1[_wgslsmith_index_u32(u_input.a, 13u)], func_5(0u, Struct_3(Struct_1(true, 1u, global0.x > 27612u, u_input.c.x), func_4(func_2(vec4<f32>(-448f, 2093f, -694f, -113f), 55990u), Struct_2(vec4<f32>(-849f, -897f, -1555f, 857f)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(global0.x), _wgslsmith_add_u32(1u, u_input.d)) & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 44454u, 21707u, global0.x) & vec4<u32>(global0.x, global0.x, global0.x, u_input.d), reverseBits(vec4<u32>(u_input.d, global0.x, u_input.a, 0u))), 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(u_input.a, global0.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(359f, -325f, -1172f, 1744f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-896f, -356f, -846f, -1325f)))), vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = func_1();
    global1 = array<Struct_1, 13>();
    var var_2 = vec2<bool>(func_5(1u | var_1.b.b, Struct_3(Struct_1(var_1.a.c, _wgslsmith_add_u32(21553u, global0.x), any(vec4<bool>(var_1.b.c, false, true, var_1.a.c)), select(var_1.a.d, var_1.a.d, var_1.a.c)), var_1.b), func_5(~41285u, func_1(), Struct_1(true, ~u_input.d, !var_1.b.a, 2147483647i))).a, any(vec4<bool>(true, var_1.a.a, var_1.a.a, 50297u > global0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-273f, _wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 434f, var_0.x, -105f)))) - vec4<f32>(-1631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(select(-1152f, var_0.x, var_2.x))), 1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(845f, var_0.x)) - -140f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(139f, _wgslsmith_f_op_f32(abs(var_0.x)), -195f, _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1248f, -949f, -374f, 953f)), vec4<bool>(var_1.a.c, var_2.x, var_1.a.c, true)))));
    var var_3 = 1u;
    let var_4 = Struct_3(func_4(func_1(), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 342f, var_0.x))))), global1[_wgslsmith_index_u32(firstLeadingBit(~var_1.b.b), 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -select(u_input.e, firstTrailingBit(vec3<i32>(var_4.b.d, u_input.b.x, 2563i)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, var_1.b.c), true)) & -countOneBits(max(vec3<i32>(var_1.a.d, var_1.a.d, 49506i), vec3<i32>(var_4.a.d, var_4.a.d, 17146i))), -1i);
}

