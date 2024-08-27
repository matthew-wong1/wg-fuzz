struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(42677i, -1i, -1i, -34388i, 7949i, 1i, -1i, -901i, -10262i, -1i, -49615i, -1i, 0i, -96503i, -4055i, -52194i, i32(-2147483648), -15695i, -1i, -1i, 19618i, -28373i, -14599i, -66365i, 39169i, -30508i, i32(-2147483648), -1i, 1i, 1i, 3430i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(998f, 901f, -1252f, -1585f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1122f, 1000f, 2153f, 836f), vec4<f32>(1338f, 368f, -1194f, -941f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, 815f, 469f, -112f) - vec4<f32>(1637f, -1000f, -1000f, 517f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1918f, -404f, -973f, 1000f) - vec4<f32>(485f, 501f, -258f, 361f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, 1708f, 1000f, 585f) * vec4<f32>(892f, 734f, 1093f, 139f)))))), _wgslsmith_f_op_f32(320f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1556f * -2474f), -1214f)))));
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1700f)));
    var var_2 = var_0;
    let var_3 = countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-22464i, 1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 31u)], u_input.b), 2147483647i), countOneBits(select(vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 31u)], u_input.b, u_input.b), vec4<i32>(13841i, -1i, u_input.b, 49618i), true))), _wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], 11967i, 59299i, global0[_wgslsmith_index_u32(1u, 31u)])), -firstTrailingBit(vec4<i32>(46869i, u_input.b, 2147483647i, u_input.b)))));
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_3;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1538f, arg_2.x, arg_2.x, arg_2.x))))), arg_2.x), !arg_3.wyx, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-143f, arg_2.x, 750f, -709f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.x, -687f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, 844f, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 2281f, -845f, -112f) - vec4<f32>(arg_2.x, 608f, -293f, -935f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) * -754f)), Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), arg_2.x, 853f), _wgslsmith_f_op_f32(arg_2.x - -894f)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 45270u, arg_1, arg_1), ~vec4<u32>(67508u, u_input.a, u_input.a, arg_1)), vec4<u32>(_wgslsmith_mod_u32(u_input.a, arg_1), _wgslsmith_mult_u32(4294967295u, u_input.a), _wgslsmith_add_u32(arg_1, arg_1), _wgslsmith_clamp_u32(1u, 57013u, 41591u))), arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(func_3())))));
    let var_2 = var_1;
    global0 = array<i32, 31>();
    let var_3 = false;
    return var_2.d.b.a.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(575f, _wgslsmith_f_op_f32(250f + _wgslsmith_f_op_f32(-1615f - 1871f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-936f, 1408f))), _wgslsmith_f_op_f32(285f - _wgslsmith_f_op_f32(436f - -1123f))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_2(u_input.b, 40594u, _wgslsmith_f_op_vec2_f32(vec2<f32>(749f, 1000f) - vec2<f32>(-3010f, 1113f)), arg_0)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<f32>) -> StorageBuffer {
    let var_0 = !arg_2.d.d;
    global0 = array<i32, 31>();
    var var_1 = ~1u;
    var var_2 = func_1(select(var_0, vec4<bool>(!arg_1.d.x && (var_0.x | arg_1.d.x), all(vec4<bool>(arg_1.d.x, arg_1.d.x, true, false)), all(vec2<bool>(var_0.x, true)), true), vec4<bool>(true, var_0.x, false, arg_1.d.x)));
    let var_3 = arg_2.d.c.zw;
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), ~(-22092i), 47104u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_0 = 572f;
    let var_1 = 4294967295u;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1226f), Struct_2(func_1(vec4<bool>(true, true, true, true)), func_1(vec4<bool>(true, false, true, true)), ~(~vec4<u32>(u_input.a, 5451u, var_1, u_input.a) << (vec4<u32>(u_input.a, 107756u, 84276u, u_input.a) % vec4<u32>(32u))), !vec4<bool>(any(vec2<bool>(false, true)), true, all(vec3<bool>(true, false, true)), select(true, false, false))), Struct_3(func_1(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, false), true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 1892f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, var_0, var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(875f)))), Struct_2(func_1(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1945f, 1628f, var_0), vec4<f32>(var_0, 470f, 1139f, 1098f))), _wgslsmith_f_op_f32(f32(-1f) * -1505f)), vec4<u32>(~u_input.a, ~var_1, _wgslsmith_mult_u32(u_input.a, 4294967295u), 67786u), vec4<bool>(true, true, var_1 <= 71568u, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(364f, 333f, -1851f)))), vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * 200f))))));
}

