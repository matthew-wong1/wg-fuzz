struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_2.a * -1239f));
    let var_1 = _wgslsmith_f_op_f32(582f + 1909f);
    let var_2 = Struct_1(-777f);
    let var_3 = arg_3;
    let var_4 = ~abs(vec3<u32>(53045u, ~0u, 4294967295u));
    return vec3<bool>(true, false, !any(vec2<bool>(true, true)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 12060u), vec2<u32>(17278u, u_input.c.x)), abs(~u_input.c));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.a));
    let var_3 = var_2;
    let var_4 = firstTrailingBit(select(_wgslsmith_mod_vec3_i32(u_input.e.wwz, select(vec3<i32>(26434i, arg_1.x, 18743i) | arg_1.yyx, ~arg_1.xwy, func_3(vec2<f32>(var_2.a, 951f), Struct_1(arg_0), Struct_1(707f), var_3))), arg_1.wwz, -881f <= _wgslsmith_f_op_f32(trunc(-112f))));
    return u_input.c;
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(881f, -1375f) * _wgslsmith_f_op_f32(min(126f, 201f)))), 788f)), vec4<i32>(~arg_0, _wgslsmith_clamp_i32(u_input.b, countOneBits(-41003i), -abs(0i)), select(firstTrailingBit(arg_0), -1i, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), ~(-arg_1 | 1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(186f)))))));
    let var_2 = Struct_1(-833f);
    var var_3 = firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_0, -1i, -2147483647i) ^ _wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(-29469i, u_input.e.x, arg_0, -10424i)), vec4<i32>(arg_0, _wgslsmith_sub_i32(u_input.b, arg_0), arg_1, arg_1 << (6464u % 32u))), -reverseBits(_wgslsmith_mod_i32(arg_1, 2147483647i))));
    var var_4 = !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(-83454i >= var_3.x, false, u_input.d <= 4294967295u)));
    return _wgslsmith_div_f32(-869f, -665f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = !any(vec4<bool>((u_input.d <= u_input.c.x) & all(vec2<bool>(false, true)), ~4294967295u > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.c), all(vec2<bool>(false, false)), true));
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-107f - arg_0.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, 223f), vec2<f32>(-1698f, var_2.a))), vec2<f32>(-187f, -2045f))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-265f)))), arg_1.a))));
    return ~(~vec3<u32>(4294967295u, ~u_input.c.x, _wgslsmith_add_u32(u_input.c.x, ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1966f);
    var var_1 = min(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(52979u, 1u, 1u), ~vec3<u32>(0u, u_input.d, u_input.c.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(4959u, 1u, 4294967295u), vec3<u32>(u_input.c.x, u_input.d, 4918u))), func_4(var_0, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(0i, u_input.e.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, abs(~4328i), firstLeadingBit(~(~(~var_1.zx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) - -848f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1782f, var_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1000f) - vec2<f32>(1923f, -695f)))))));
}

