struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-683f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(526f))))));
    var var_1 = ~1u;
    var var_2 = arg_2;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))));
    var var_4 = select(vec4<bool>(arg_2.x, all(vec2<bool>(arg_2.x, arg_2.x)) == true, firstLeadingBit(-arg_1.x) > 1i, any(!select(vec4<bool>(false, arg_2.x, arg_2.x, var_2.x), vec4<bool>(true, arg_2.x, var_2.x, var_2.x), vec4<bool>(false, true, arg_2.x, true)))), vec4<bool>(!select(var_2.x, false, all(vec4<bool>(var_2.x, arg_2.x, var_2.x, arg_2.x))), -18492i >= u_input.a.x, any(select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), select(vec4<bool>(var_2.x, arg_2.x, var_2.x, var_2.x), vec4<bool>(arg_2.x, var_2.x, var_2.x, false), true), vec4<bool>(var_2.x, true, true, false))), false), !(!(!select(vec4<bool>(arg_2.x, var_2.x, arg_2.x, false), vec4<bool>(arg_2.x, var_2.x, arg_2.x, true), vec4<bool>(arg_2.x, var_2.x, false, arg_2.x)))));
    return ~vec4<i32>(-25932i, -4448i, -43484i, -2147483647i);
}

fn func_2() -> u32 {
    let var_0 = ~(i32(-1i) * -16542i);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(9119i, ~u_input.a.x) ^ 58999i, 1i | _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_0, -1i, 25797i, -1i) ^ vec4<i32>(0i, 7595i, 0i, var_0)), func_3(_wgslsmith_f_op_f32(-459f * global0.a), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(14619i, var_0)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_1(global0.a))));
    let var_2 = ~vec4<u32>(~33641u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 81808u, u_input.d.x, u_input.c) | vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 4294967295u), ~vec4<u32>(32429u, 4294967295u, u_input.c, u_input.d.x)), _wgslsmith_dot_vec2_u32(abs(u_input.d.yz), vec2<u32>(_wgslsmith_clamp_u32(0u, 34320u, 85297u), 1u)), 69635u, u_input.d.x);
    let var_3 = false;
    let var_4 = Struct_1(1000f);
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global0 = Struct_1(-1474f);
    global0 = Struct_1(global0.a);
    var var_0 = arg_1;
    var var_1 = reverseBits(vec3<i32>(-45597i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -1i | _wgslsmith_sub_i32(u_input.b.x | u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(12992i, u_input.b.x, -21670i, -2147483647i), vec4<i32>(0i, u_input.a.x, -1i, 0i)))));
    var var_2 = arg_0;
    return reverseBits(vec3<u32>(_wgslsmith_mult_u32((0u & u_input.c) | max(u_input.d.x, 6851u), ~u_input.d.x), func_2(), max(reverseBits(0u), max(reverseBits(1u), u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a + global0.a)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-358f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - 1f)), _wgslsmith_f_op_f32(abs(816f)))));
    var var_2 = var_0;
    let var_3 = countOneBits(~(~(~func_1(var_0, Struct_1(2733f)))));
    var var_4 = -1000f;
    var_2 = Struct_1(var_0.a);
    var_4 = _wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(global0.a))))), all(vec2<bool>(u_input.b.x < 0i, u_input.a.x >= u_input.b.x)))));
    var_4 = _wgslsmith_f_op_f32(f32(-1f) * -846f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-648f, _wgslsmith_f_op_f32(ceil(-571f)))) - _wgslsmith_f_op_f32(-954f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_div_f32(global0.a, var_2.a)))), -1064f, -u_input.a.x, ~u_input.c, ~(-1i));
}

