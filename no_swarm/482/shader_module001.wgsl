struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<i32> {
    global0 = array<vec3<bool>, 7>();
    global0 = array<vec3<bool>, 7>();
    global0 = array<vec3<bool>, 7>();
    global0 = array<vec3<bool>, 7>();
    var var_0 = Struct_2(arg_1, arg_3.a.x, _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, countOneBits(arg_0.x) ^ 1u), arg_0.wy), vec2<f32>(1029f, -1256f), arg_3.b.a.x);
    return ~countOneBits(vec4<i32>(-2147483647i, var_0.e, u_input.e.x, -_wgslsmith_mult_i32(var_0.e, 66940i)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-263f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1400f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f))), 1254f));
    global0 = array<vec3<bool>, 7>();
    let var_1 = -26028i;
    let var_2 = max(u_input.b.zz, vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-30676i, var_1), ~vec2<i32>(u_input.e.x, var_1)), vec2<i32>(var_1, var_1) | vec2<i32>(-1i, -1i)), ~_wgslsmith_add_i32(~u_input.b.x, -1i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -181f, var_0.x, var_0.x)) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(1000f)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -394f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, -741f, var_0.x, 2115f) + vec4<f32>(var_0.x, var_0.x, 633f, 135f)))))));
    return Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(86730u, 4294967295u, 75824u, 61382u), vec4<u32>(1u, 0u, 1u, 4202u)), 1u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 7u)], Struct_3(var_0.xx, Struct_1(u_input.b, vec2<u32>(807u, 1u), false))), u_input.b), u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(28741u, 102039u)), abs(vec2<u32>(4294967295u, 71357u)), vec2<bool>(true, true)), ~vec2<u32>(58236u, 1u))), true);
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = func_2();
    let var_1 = Struct_2(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - 1704f)), var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-976f, arg_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec2_f32(arg_0.zx + _wgslsmith_f_op_vec2_f32(-arg_0.zz)))), ~14326i);
    var_0 = Struct_1(var_0.a, ~vec2<u32>(var_0.b.x, 38844u), false);
    var_0 = Struct_1(firstLeadingBit(-(~_wgslsmith_mod_vec4_i32(u_input.b, var_0.a))), ~vec2<u32>(~32489u, ~15416u), true);
    var_0 = func_2();
    return !all(global0[_wgslsmith_index_u32(reverseBits(57038u), 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 7>();
    global0 = array<vec3<bool>, 7>();
    global0 = array<vec3<bool>, 7>();
    global0 = array<vec3<bool>, 7>();
    var var_0 = all(!select(vec2<bool>(func_1(vec3<f32>(-1742f, 364f, 449f)), all(vec4<bool>(false, false, false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-434f, 1208f))) + vec2<f32>(1f, 1f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, 914f) * vec2<f32>(-585f, -1128f)) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(716f, -144f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, 145f)))))));
    var var_2 = -1486f;
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~vec4<u32>(4294967295u, 59300u, max(87485u, _wgslsmith_dot_vec2_u32(vec2<u32>(31799u, 0u), vec2<u32>(4294967295u, 0u))), 15756u));
}

