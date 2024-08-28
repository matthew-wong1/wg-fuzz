struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(ceil(408f)))))));
    let var_1 = !vec3<bool>(true || all(vec3<bool>(true, false, false)), false, arg_1.c.x);
    return ~(~vec3<i32>(u_input.a, -16071i, u_input.a));
}

fn func_2() -> f32 {
    let var_0 = select(-reverseBits(func_3(Struct_1(true, vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, true, true, false)))), vec3<i32>(u_input.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, 1i), _wgslsmith_mult_i32(1i, u_input.a)), 2147483647i) | vec3<i32>(_wgslsmith_add_i32(~(-4793i), -u_input.a), ~(-2147483647i), firstTrailingBit(105i)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) ^ vec4<u32>(4294967295u, 74524u, 4294967295u, 56u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)), max(vec4<u32>(u_input.b.x, 4294967295u, 1u, 4294967295u), abs(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)))) < 4294967295u);
    var var_1 = Struct_1(false, vec2<bool>(false, false), vec4<bool>(!all(vec2<bool>(true, true)), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), any(vec4<bool>(true, true, true, true)), true));
    var var_2 = !var_1.a;
    let var_3 = var_1.b.x;
    var var_4 = Struct_1(any(!vec2<bool>(true, var_1.c.x)) && true, var_1.c.zy, select(vec4<bool>(!var_1.b.x, select(7551i <= u_input.a, any(vec2<bool>(var_1.b.x, var_1.a)), false), true, !select(false, true, false)), vec4<bool>(var_1.a, var_1.a, _wgslsmith_f_op_f32(min(-1112f, global0.x)) <= 466f, all(var_1.c.xxz)), vec4<bool>(true, _wgslsmith_f_op_f32(global0.x * 1255f) > _wgslsmith_f_op_f32(floor(309f)), any(var_1.b) && true, (u_input.b.x << (4294967295u % 32u)) >= u_input.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-304f - global0.x) + _wgslsmith_f_op_f32(select(-696f, -1259f, var_4.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 975f)))))));
}

fn func_1() -> vec4<f32> {
    let var_0 = -29142i;
    global1 = -24192i;
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1914f, _wgslsmith_f_op_f32(func_2()), true))), global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1536f, global0.x, _wgslsmith_f_op_f32(global0.x + -767f)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 753f, _wgslsmith_f_op_f32(f32(-1f) * -2636f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 919f, -375f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1269f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 105f), _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * 903f), global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1229f - global0.x), global0.x))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(685f, -573f) - _wgslsmith_f_op_f32(-global0.x)), global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-270f, -2109f)), _wgslsmith_f_op_f32(round(global0.x)), -1000f, _wgslsmith_f_op_f32(global0.x + global0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_div_f32(-627f, global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), true)), _wgslsmith_div_f32(1663f, global0.x), -421f, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1108f, global0.x, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -783f, 2403f, global0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(2219f, -623f, -1276f, -350f), vec4<f32>(global0.x, -307f, global0.x, -747f)))) * vec4<f32>(717f, -255f, 232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -612f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1127f))))));
    let var_1 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(2147483647i), u_input.c, abs(1i), firstTrailingBit(-6875i)) & vec4<i32>(func_3(Struct_1(true, vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_1(true, vec2<bool>(false, true), vec4<bool>(true, false, true, false))).x, firstTrailingBit(u_input.c), -38760i, _wgslsmith_add_i32(u_input.a, u_input.c)), firstLeadingBit(vec4<i32>(u_input.a ^ -45037i, 0i, -u_input.c, 107909i))));
    let var_2 = !(316f <= _wgslsmith_div_f32(var_0.x, var_0.x));
    global1 = -firstTrailingBit(30706i) & ~32082i;
    var var_3 = Struct_1(true & (!var_2 || true), select(select(select(vec2<bool>(true, true), vec2<bool>(var_2, false), true), vec2<bool>(true, true), select(any(vec4<bool>(false, var_2, true, var_2)), var_2, !var_2)), vec2<bool>(!(var_2 & false), select(var_2, var_2, true && var_2)), !(false || any(vec4<bool>(false, var_2, var_2, true)))), vec4<bool>(((var_2 | var_2) & var_2) & false, var_2 || false, true, all(!select(vec4<bool>(var_2, false, true, true), vec4<bool>(var_2, true, true, false), vec4<bool>(false, true, var_2, var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(-1118f - var_0.x));
}

