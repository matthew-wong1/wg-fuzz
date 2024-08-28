struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> vec3<f32> {
    let var_0 = arg_1.zx;
    var var_1 = u_input.b.x >> (max(u_input.a, ~countOneBits(~u_input.c.x)) % 32u);
    var_1 = _wgslsmith_add_u32(select(~0u, u_input.a, arg_3), min(~1u, 625u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.a), vec3<u32>(1u, 4294967295u, u_input.c.x))) | min(29325u, u_input.b.x));
    var_1 = _wgslsmith_add_u32(0u, 73134u);
    var_1 = abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(16144u, 4107u, 37807u) | vec3<u32>(u_input.c.x, 58935u, u_input.b.x), vec3<u32>(~4294967295u, abs(u_input.a), ~u_input.c.x)));
    return vec3<f32>(var_0.x, 542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1121f - -1055f))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_i32(-abs(-24206i), ~(-2147483647i));
    var var_2 = arg_2 || any(!vec4<bool>(arg_2, false, true, arg_2));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.a, arg_0, var_0.a.a))), vec3<f32>(var_0.a.a, 1105f, arg_1.a.a), true)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-984f)) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - arg_1.a.a) * _wgslsmith_f_op_f32(trunc(-486f)))), arg_0 < _wgslsmith_f_op_f32(ceil(1163f)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.a, -687f, arg_1.a.a))), _wgslsmith_f_op_vec3_f32(func_3(arg_1, var_3, -1i, arg_2)), !arg_2)), _wgslsmith_f_op_vec3_f32(var_3 - var_3))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, 1000f, -1100f)) * _wgslsmith_f_op_vec3_f32(var_3 + vec3<f32>(312f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, var_0.a.a, var_0.a.a) - var_3), _wgslsmith_f_op_vec3_f32(abs(var_3)), !vec3<bool>(arg_2, true, false)))), arg_2)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), 230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.a)))));
    return arg_1.a.a;
}

fn func_1() -> vec4<i32> {
    let var_0 = !vec2<bool>(any(vec2<bool>(true, true)), select(any(vec3<bool>(true, true, true)), select(false, all(vec2<bool>(false, false)), false), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(864f)), _wgslsmith_f_op_f32(abs(-1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -693f), Struct_2(Struct_1(-1109f)), var_0.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1902f, -1341f)) - 216f)))));
    let var_3 = !var_0;
    var_2 = Struct_1(var_2.a);
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, max(firstTrailingBit(1i), firstLeadingBit(1604i)), abs(_wgslsmith_mult_i32(~(-1i), abs(-7728i))), firstTrailingBit(-max(-19418i, 10386i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(29777i, -2147483647i, 27138i, 0i), -vec4<i32>(-1i, 1i, 5001i, 1i), abs(vec4<i32>(548i, -18452i, -2147483647i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(639f, -828f, -1764f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1510f, -211f, 1244f), vec3<f32>(730f, -1000f, 169f), vec3<bool>(false, false, true))) - vec3<f32>(-806f, -1000f, -1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, 100f, -156f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1358f, -233f, -470f), vec3<f32>(668f, 636f, -759f), true)), true)), vec3<f32>(_wgslsmith_f_op_f32(max(860f, -1557f)), -1276f, -334f)))));
    let var_1 = Struct_1(-1000f);
    var var_2 = false;
    var_2 = any(select(vec3<bool>(false, true, !any(vec3<bool>(false, false, false))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(true, false)) & (var_1.a > -1139f)), true));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(func_1(), abs(select(vec4<i32>(0i, 0i, 4069i, -2147483647i), vec4<i32>(-1i, 0i, -2147483647i, 43001i), false))), reverseBits(54966i)), ~min(~_wgslsmith_mod_i32(-16137i, 28275i), _wgslsmith_mult_i32(abs(38427i), firstLeadingBit(0i))));
    var_2 = _wgslsmith_add_u32(u_input.c.x, 901u) <= ~u_input.c.x;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(var_1.a * -517f)), _wgslsmith_f_op_f32(-var_0.x), false)))));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_mult_i32(_wgslsmith_mult_i32(~var_3, 2147483647i), ~(-17091i << (u_input.b.x % 32u))));
}

