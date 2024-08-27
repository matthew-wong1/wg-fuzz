struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: f32;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 20403u);

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(1735f, -1334f)), Struct_1(vec2<f32>(-743f, 330f)), Struct_1(vec2<f32>(-1067f, 232f)), Struct_1(vec2<f32>(-1385f, -1985f)), Struct_1(vec2<f32>(-1781f, 1091f)), Struct_1(vec2<f32>(-1000f, 369f)), Struct_1(vec2<f32>(-1000f, 946f)), Struct_1(vec2<f32>(-113f, -1000f)), Struct_1(vec2<f32>(1238f, 1000f)), Struct_1(vec2<f32>(1490f, 451f)), Struct_1(vec2<f32>(-1009f, 188f)), Struct_1(vec2<f32>(-1990f, 1000f)), Struct_1(vec2<f32>(128f, 430f)), Struct_1(vec2<f32>(1000f, 1000f)), Struct_1(vec2<f32>(-1325f, 356f)), Struct_1(vec2<f32>(603f, 1527f)), Struct_1(vec2<f32>(435f, 945f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = vec3<u32>(~(~4294967295u) << (global3.x % 32u), ~(~(~_wgslsmith_div_u32(arg_0, global3.x))), (firstTrailingBit(_wgslsmith_add_u32(arg_0, global3.x)) | ~abs(arg_0)) | global3.x);
    var var_1 = vec4<u32>(1u, 0u, ~_wgslsmith_sub_u32(4765u, global3.x >> (4294967295u % 32u)), _wgslsmith_mult_u32(152779u, ~_wgslsmith_add_u32(arg_0, _wgslsmith_sub_u32(0u, global3.x))));
    let var_2 = 1080f;
    var var_3 = _wgslsmith_f_op_f32(trunc(-941f));
    var_3 = -258f;
    return global3.x;
}

fn func_2() -> u32 {
    global4 = array<Struct_1, 17>();
    let var_0 = vec3<u32>(~(~countOneBits(global3.x)), max(4294967295u, 60006u), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(global3.x), _wgslsmith_dot_vec2_u32(global3.xx, global3.yz), _wgslsmith_sub_u32(global3.x, global3.x)) << (~(vec3<u32>(global3.x, global3.x, global3.x) << (vec3<u32>(1u, 4294967295u, global3.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(func_3(min(55629u, global3.x)), abs(38039u), ~min(global3.x, global3.x))));
    var var_1 = !select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, true), true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, true, true), false), false);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-299f)) + _wgslsmith_div_f32(1533f, -124f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, -475f))), !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f + -619f))) + 1f));
    var_2 = Struct_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(445f, var_2.a.x, true)) * _wgslsmith_f_op_f32(-var_2.b)))), 945f);
    return 17212u;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global4 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1524f, 2267f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(368f, -1119f))), vec2<f32>(1966f, -1108f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f * 2542f)) + -776f), _wgslsmith_f_op_f32(step(788f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(676f))))))), any(vec3<bool>(false, true, any(vec4<bool>(false, true, false, false))))));
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(~func_2(), global3.x), 13649u, arg_0.x, _wgslsmith_mod_u32(72998u, _wgslsmith_mod_u32(func_2(), 21867u)));
    global1 = array<vec2<bool>, 4>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -510f));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, countOneBits(-(~(-1i)))), _wgslsmith_mult_vec2_i32(max(~countOneBits(vec2<i32>(global0.x, u_input.a)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, u_input.a), vec2<i32>(u_input.a, 51401i)), -vec2<i32>(1i, u_input.a))), -max(abs(vec2<i32>(-12827i, global0.x)), ~vec2<i32>(-1i, 25312i))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-685f, -496f), vec2<f32>(-212f, -1305f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(163f, -2168f) - vec2<f32>(-928f, -758f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(495f, -524f))))));
    let var_1 = 47084u;
    global4 = array<Struct_1, 17>();
    let var_2 = func_1(_wgslsmith_add_vec2_u32(~(max(global3.xx, global3.zz) >> (~vec2<u32>(var_1, global3.x) % vec2<u32>(32u))), ~vec2<u32>(global3.x, 34967u) ^ vec2<u32>(81338u, 1u)));
    let var_3 = max(~(~select(select(vec4<u32>(59026u, global3.x, global3.x, 0u), vec4<u32>(0u, global3.x, var_1, 61826u), vec4<bool>(false, true, true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(103682u, 4294967295u, var_1, var_1), vec4<u32>(15401u, var_1, var_1, global3.x)), true)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, var_1, global3.x, 23898u), vec4<u32>(var_1, global3.x, var_1, 1u)) >> ((vec4<u32>(4294967295u, 4294967295u, 106367u, 31518u) ^ vec4<u32>(var_1, var_1, var_1, global3.x)) % vec4<u32>(32u))) ^ vec4<u32>(global3.x, var_1, var_1, 41336u));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 505f, 1474f)) * vec3<f32>(var_2.b, 652f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1334f, var_0.a.x, 749f), vec3<f32>(-548f, 633f, -619f), true))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, func_1(vec2<u32>(global3.x, var_3.x)).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~975i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-114f, var_4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(round(var_2.a.x)))), -595f), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + func_1(global3.yx).b))), min(_wgslsmith_add_u32(4294967295u, min(4294967295u, global3.x)), var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(632f))))));
}

