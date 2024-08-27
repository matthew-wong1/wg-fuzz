struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
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

var<private> global0: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(~firstTrailingBit(2889u), ~(~4294967295u))), ~arg_1.b, u_input.d);
    let var_1 = select(!vec2<bool>(all(vec2<bool>(false, false)), (arg_1.a < arg_1.a) & true), vec2<bool>(true, true), vec2<bool>(2147483647i < _wgslsmith_div_i32(arg_0, ~u_input.c), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -263f, -143f, arg_1.a)) + vec4<f32>(368f, 552f, arg_1.a, -318f)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(step(arg_1.a, -795f)), _wgslsmith_div_f32(328f, 163f), _wgslsmith_f_op_f32(exp2(arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1105f, arg_1.a, arg_1.a, arg_1.a))))));
    var var_3 = arg_1;
    var var_4 = Struct_1(807f, arg_1.b);
    return abs(var_3.b.x) >= min(u_input.b, (~var_0.x ^ ~42563u) ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b.x, 1u, 4294967295u), vec3<u32>(9694u, u_input.d.x, var_3.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = ~u_input.e.x != _wgslsmith_add_i32(2147483647i, u_input.c);
    let var_1 = select(func_3(~(~u_input.c), arg_0), 590f != arg_1.a, all(select(!vec3<bool>(true, true, var_0), vec3<bool>(var_0, -7376i < u_input.e.x, true), any(select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), true)))));
    global0 = !var_1;
    let var_2 = vec2<bool>(!any(vec4<bool>(true, false, var_1, true)), var_1);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1338f), vec2<u32>(~arg_2.x, ~(~11707u)));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.b, u_input.d), arg_0.b.x, arg_0.b.x);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<u32>(~arg_0, 1u, u_input.a);
    let var_1 = false || !(-1i <= u_input.e.x);
    global0 = var_1;
    var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f * -1048f)), u_input.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f * -183f)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(23044u, 1u), ~vec2<u32>(arg_0, 0u), vec2<u32>(1u, u_input.b) | vec2<u32>(arg_0, 29238u))), max(vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, var_0.x), true), firstTrailingBit(vec2<u32>(0u, var_0.x))), 0u ^ ~arg_0), vec3<u32>(max(u_input.b, 1u), _wgslsmith_mult_u32(1u, ~u_input.d.x), 4294967295u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1251f))))))), -579f, -169f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(-1f))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x + -2082f))) + _wgslsmith_f_op_f32(-var_2.x)), ~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 11106u), vec2<u32>(var_0.x, arg_0), ~vec2<u32>(arg_0, 1u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~firstLeadingBit(u_input.a) ^ (_wgslsmith_sub_u32(arg_2.b.x >> (4294967295u % 32u), arg_2.b.x) & 1u));
    var var_1 = arg_1.b;
    var_1 = u_input.d;
    let var_2 = 1u;
    let var_3 = ~19782u;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> StorageBuffer {
    global0 = all(select(arg_3.zz, vec2<bool>(arg_3.x, all(!vec3<bool>(false, arg_3.x, true))), false && !all(arg_3.xxy)));
    let var_0 = 1i;
    var var_1 = ~select(-select(i32(-1i) * -33548i, _wgslsmith_dot_vec2_i32(u_input.e.yx, vec2<i32>(-2147483647i, u_input.e.x)), !arg_3.x), 5110i, arg_3.x);
    let var_2 = select(~vec4<u32>(func_1(4236u).b.x, arg_1.b.x, 78050u, 70553u), vec4<u32>(_wgslsmith_sub_u32(12573u, _wgslsmith_sub_u32(~u_input.b, _wgslsmith_mult_u32(arg_2.b.x, u_input.d.x))), arg_0.b.x, _wgslsmith_div_u32(func_4(~vec3<i32>(-17343i, -35621i, -6546i), func_4(vec3<i32>(u_input.e.x, var_0, -19577i), Struct_1(arg_2.a, arg_1.b), arg_0), arg_0).b.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(58006u, 10017u, 30060u), ~u_input.b)), u_input.d.x), select(vec4<bool>(!arg_3.x, arg_3.x, true, false), select(vec4<bool>(select(true, true, arg_3.x), arg_3.x, any(vec3<bool>(true, arg_3.x, false)), true), select(arg_3, vec4<bool>(false, false, arg_3.x, arg_3.x), vec4<bool>(true, true, arg_3.x, arg_3.x)), arg_3), all(arg_3.wyx)));
    var_1 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.c, u_input.c, u_input.e.x & var_0) & select(vec3<i32>(-20182i, 2147483647i, 0i), u_input.e, !vec3<bool>(true, arg_3.x, true))), u_input.e & vec3<i32>(~u_input.c, select(u_input.e.x, -29632i, false) ^ 16288i, ~var_0 | _wgslsmith_add_i32(-1i, u_input.e.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(-arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(u_input.e, func_1(u_input.b), Struct_1(func_1(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.a)).a, u_input.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1567f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-215f - -636f) * -213f)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u ^ u_input.a), abs(u_input.d))), func_1(~(u_input.d.x ^ (u_input.d.x << (1u % 32u)))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), u_input.a <= u_input.d.x)), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(41245i, -1i, 20053i, u_input.c), vec4<i32>(-3076i, -2147483647i, u_input.e.x, 2494i)) == _wgslsmith_mult_i32(u_input.c, 88416i), any(vec4<bool>(true, true, true, true)), !(u_input.c < -8403i), all(vec3<bool>(true, true, true)))));
}

