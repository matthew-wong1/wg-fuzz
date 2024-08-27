struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    global1 = true;
    global1 = any(!vec4<bool>(arg_0, arg_0 & all(vec2<bool>(arg_0, arg_0)), arg_0, !arg_0));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-957f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(select(-277f, -246f, false)))), _wgslsmith_f_op_f32(trunc(451f)), 458f) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(235f, 1569f, arg_0)) * _wgslsmith_div_f32(279f, arg_1.b.x)), arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.b.x)), arg_1.b.x), 645f)) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x)), !arg_0))), arg_1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.a.x))))));
    global0 = vec2<i32>(36683i, global0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(arg_1.b))));
    return vec4<i32>(40722i, reverseBits(~2147483647i), _wgslsmith_mult_i32(global0.x, global0.x << (u_input.a % 32u)), _wgslsmith_add_i32(global0.x << (1u % 32u), -27016i));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) + -2164f), 1325f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1095f + -604f), _wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_f32(round(-1230f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1143f, -128f, 1000f, -1000f), vec4<f32>(-1000f, 715f, 1198f, -161f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-713f, -1806f, 1051f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, 777f, -1274f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(815f, -872f, -2087f))))))));
    let var_1 = u_input.b;
    global0 = vec2<i32>(func_3(!select(false, false, false), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, var_0.b.x, var_0.a.x)))).x, _wgslsmith_sub_i32(i32(-1i) * -47488i, _wgslsmith_dot_vec4_i32(-vec4<i32>(9569i, global0.x, arg_0, arg_0), -arg_1))) << (~(~(~firstLeadingBit(vec2<u32>(17559u, 1u)))) % vec2<u32>(32u));
    global1 = (1u != var_1) || all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))));
    var var_2 = var_1;
    return u_input.a << (0u % 32u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = func_4(-(~0i), ~select(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global0.x, 72026i, global0.x, global0.x)), func_3(arg_0, arg_1)), ~(~vec4<i32>(global0.x, global0.x, global0.x, global0.x)), !select(vec4<bool>(false, arg_2, false, arg_0), vec4<bool>(true, true, true, arg_2), vec4<bool>(arg_2, arg_0, true, false))));
    var var_1 = arg_1;
    var var_2 = ~var_0 >> (abs(1u) % 32u);
    var var_3 = ~vec3<u32>(var_0, 17409u, ~(~14321u));
    let var_4 = arg_1;
    return abs(vec4<u32>(var_0, abs(4294967295u) >> (var_0 % 32u), 101825u, ~abs(func_4(2147483647i, vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = vec2<i32>(_wgslsmith_sub_i32(-global0.x, reverseBits(~arg_1) & countOneBits(firstLeadingBit(arg_1))), global0.x);
    var var_0 = arg_3;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - arg_3.a.wyw) - _wgslsmith_f_op_vec3_f32(-var_0.a.xzx))));
    global1 = 52807u == firstTrailingBit(select(_wgslsmith_mod_u32(u_input.b, 4294967295u), ~(0u << (u_input.a % 32u)), true));
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -9520i), vec2<i32>(-26370i, arg_1)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, arg_1, global0.x), vec3<i32>(3503i, global0.x, global0.x))) | _wgslsmith_mult_vec2_i32(vec2<i32>(15614i, -1i), reverseBits(vec2<i32>(-36602i, arg_1)) | select(vec2<i32>(global0.x, -2147483647i), vec2<i32>(-1i, global0.x), vec2<bool>(true, true))), -(~vec2<i32>(global0.x, arg_1)));
    return Struct_1(vec4<f32>(606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1170f, arg_3.b.x)))), -1062f, _wgslsmith_f_op_f32(-1214f - 1122f)), var_1.b);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = func_5(~vec4<u32>(countOneBits(abs(arg_0)), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(arg_0, arg_1.x)), arg_0, arg_0), ~(~(~1i)), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 31191u, u_input.a, 38206u)) & ~func_2(arg_3, arg_2, arg_3), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0, 1u, 39280u), firstLeadingBit(vec4<u32>(arg_0, arg_0, 15557u, 803u))) | vec4<u32>(~4294967295u, u_input.b, 65165u, _wgslsmith_sub_u32(1u, 0u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.a.x, 2275f, arg_3)))), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-425f - var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-arg_2.b)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -215f), 486f)), -370f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.a.x))))));
    var var_3 = u_input.b;
    var_3 = ~(~(~4294967295u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(721f)), 256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f) + -464f), _wgslsmith_div_f32(286f, -187f)), var_1.a, select(!select(vec4<bool>(arg_3, false, false, true), vec4<bool>(true, false, arg_3, true), true), select(!vec4<bool>(true, true, arg_3, arg_3), !vec4<bool>(false, arg_3, arg_3, false), select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3))), true || arg_3))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-var_1.a.x), var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~(~vec3<u32>(1u, 0u, u_input.b))));
    var var_1 = ~abs(-47204i);
    var var_2 = func_1(_wgslsmith_sub_u32(18010u, 4360u), firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), ~4294967295u, ~(~var_0.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)), 939f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2482f + 153f), -551f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(923f))))), vec3<f32>(_wgslsmith_f_op_f32(max(-1572f, _wgslsmith_f_op_f32(select(776f, 2299f, true)))), _wgslsmith_div_f32(-330f, -454f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f + 898f)))), true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(686f, var_2.a.x), 1069f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.x), 637f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1901f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.b.x)), -1000f, var_2.b.x, var_2.b.x))), vec3<f32>(-242f, _wgslsmith_f_op_f32(f32(-1f) * -1001f), 1f));
    var var_4 = ~u_input.b;
    var var_5 = reverseBits(vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 105u, u_input.b, 57606u), ~vec4<u32>(var_0.x, 23804u, var_0.x, u_input.a)), firstLeadingBit(_wgslsmith_sub_u32(abs(u_input.a), ~1u))));
    let var_6 = vec3<bool>(all(vec2<bool>(true, any(vec3<bool>(false, false, false)))), true, all(!vec2<bool>(true, var_2.b.x < var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~0u) >> (var_5.x % 32u), var_0.x), reverseBits(vec2<i32>(_wgslsmith_div_i32(-33188i, i32(-1i) * -1183i), 49657i)), var_2.a.yzx);
}

