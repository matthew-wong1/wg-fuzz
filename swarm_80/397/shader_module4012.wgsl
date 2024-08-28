struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a.x, arg_2.a.x, 12105i)), u_input.a));
    let var_1 = Struct_2(u_input.e.yx, arg_2, _wgslsmith_add_vec3_i32(u_input.e.zyz, _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.e.x, u_input.e.x, 0i)), -vec3<i32>(arg_2.a.x, -56535i, -1i)) & firstLeadingBit(vec3<i32>(0i, arg_2.a.x, var_0.x) >> (vec3<u32>(1u, 4294967295u, 29388u) % vec3<u32>(32u)))));
    global0 = array<vec3<u32>, 5>();
    let var_2 = min(var_1.a.x, arg_2.a.x);
    var var_3 = u_input.c.x == 0u;
    return _wgslsmith_f_op_f32(-var_1.b.b.x) != 1169f;
}

fn func_4(arg_0: bool) -> vec4<u32> {
    let var_0 = vec4<bool>(arg_0, -28420i >= u_input.d, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1080f, 1083f, 1942f, -2847f) - vec4<f32>(306f, -1567f, 1353f, -1753f)) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<u32>(abs(63130u), ~u_input.c.x, u_input.c.x, 67609u), Struct_1(vec3<i32>(u_input.b, -31531i, u_input.e.x), vec3<f32>(1f, 1f, 1f), vec2<i32>(u_input.d, -26585i), !vec4<bool>(arg_0, arg_0, true, arg_0))) || any(!select(vec4<bool>(true, true, arg_0, true), vec4<bool>(true, true, true, arg_0), vec4<bool>(false, true, arg_0, true))), true);
    let var_1 = Struct_2(select(select(u_input.e.yz, vec2<i32>(u_input.d, -u_input.a.x), var_0.yx), select(-(~vec2<i32>(2147483647i, u_input.b)), firstLeadingBit(-u_input.e.zz), !all(vec2<bool>(var_0.x, false))), select(vec2<bool>(arg_0 || var_0.x, false), select(var_0.xx, select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), var_0.yz), all(var_0)), vec2<bool>(any(vec4<bool>(var_0.x, arg_0, true, false)), all(vec2<bool>(arg_0, true))))), Struct_1(vec3<i32>(-1i, u_input.a.x, max(u_input.d, ~63288i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(274f + -619f) * _wgslsmith_f_op_f32(f32(-1f) * -1559f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(819f, 1000f))), u_input.e.xy, var_0), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), u_input.e.yy), abs(u_input.b), _wgslsmith_dot_vec3_i32(u_input.a & vec3<i32>(u_input.b, u_input.b, 0i), u_input.a))));
    let var_2 = Struct_1(-var_1.b.a, vec3<f32>(-1473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -995f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * -806f))), var_1.b.b.x), firstLeadingBit(var_1.a), var_0);
    var var_3 = Struct_3(-36233i, _wgslsmith_f_op_f32(-var_1.b.b.x), 1u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(~968u, 5u)], ~(~global0[_wgslsmith_index_u32(u_input.c.x, 5u)])));
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1547f))) * var_3.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(select(var_3.b, -367f, arg_0)))), var_1.b.b.x))));
    return select(~vec4<u32>(firstTrailingBit(u_input.c.x), var_3.c, u_input.c.x, ~var_3.d) << ((~select(vec4<u32>(var_3.c, var_3.c, 102295u, 1841u), vec4<u32>(var_3.c, 54329u, 40630u, var_3.d), var_0.x) & ~vec4<u32>(u_input.c.x, 42793u, 4294967295u, 0u)) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, _wgslsmith_clamp_u32(1u, 33461u, ~58544u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, var_3.d, var_3.d, u_input.c.x), vec4<u32>(var_3.c, u_input.c.x, var_3.d, u_input.c.x), false), reverseBits(min(vec4<u32>(4294967295u, 0u, 4294967295u, 67422u), vec4<u32>(60203u, 0u, 1u, 82532u)))), firstTrailingBit(var_3.c)), select(!any(vec4<bool>(var_1.b.d.x, arg_0, var_1.b.d.x, var_2.d.x)), !(!(!var_0.x)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.b.x, var_2.b.x, 209f, var_1.b.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, var_1.b.b.x, -339f, var_2.b.x))), abs(vec4<u32>(u_input.c.x, 0u, 1u, 1u)), Struct_1(vec3<i32>(2147483647i, var_2.a.x, -49301i), _wgslsmith_div_vec3_f32(vec3<f32>(320f, 1188f, -1467f), vec3<f32>(-1925f, 971f, var_2.b.x)), countOneBits(var_1.c.yy), vec4<bool>(arg_0, false, arg_0, arg_0)))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(firstLeadingBit(func_4(func_3(vec4<f32>(929f, -282f, arg_1.x, arg_1.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), Struct_1(vec3<i32>(arg_0, u_input.b, arg_0), vec3<f32>(965f, 2437f, arg_1.x), vec2<i32>(arg_0, 2147483647i), vec4<bool>(true, false, true, true))))), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(1u, 92258u, 1u, 4940u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(36394u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(4270u, u_input.c.x, 12785u, 75185u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(0u, u_input.c.x, 61210u, u_input.c.x))));
    global0 = array<vec3<u32>, 5>();
    var var_1 = Struct_3(_wgslsmith_mod_i32(1i, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 1u, min(func_4(any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))).x, var_0.x));
    var var_2 = select(!vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false), vec4<bool>(true, any(vec4<bool>(false, all(vec2<bool>(false, true)), select(false, true, false), arg_1.x >= 1679f)), true, true), !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -346f) + 473f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1081f)) + _wgslsmith_f_op_f32(var_1.b - var_1.b))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(exp2(arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(-245f - 159f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b - var_1.b), var_1.b, !var_2.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1297f, 360f, arg_1.x, arg_1.x))))), arg_1)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(489f, 351f) - arg_1.x), _wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(arg_1.x + -1380f), arg_1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1219f - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(1f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> vec3<i32> {
    let var_0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2(firstLeadingBit(u_input.e.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -221f) * arg_2.x), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -688f), 505f))), -1040f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x + -494f), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-15829i, u_input.b, arg_3), u_input.e.yzz), u_input.b), arg_3) << (firstLeadingBit(vec2<u32>(~111257u, u_input.c.x)) % vec2<u32>(32u));
    let var_3 = 1664f;
    return ~(vec3<i32>(-1i) * -u_input.e.zxw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(_wgslsmith_sub_vec3_i32(func_1(vec3<f32>(-2358f, -520f, 1076f), false, vec2<f32>(2258f, 388f), ~(-83178i)), vec3<i32>(2147483647i, 6357i, u_input.d) & u_input.e.xxx)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(sign(298f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1087f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(601f + -1000f), _wgslsmith_f_op_f32(sign(851f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(126f, 349f)) - _wgslsmith_f_op_f32(abs(-1000f))), true))), vec2<i32>(~u_input.b ^ u_input.a.x, ~max(1i, u_input.a.x)), !vec4<bool>(all(vec3<bool>(false, true, true)) != true, false, ~u_input.e.x < ~0i, u_input.b < u_input.a.x));
    global0 = array<vec3<u32>, 5>();
    var var_1 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-2147483647i), -var_0.c.x), vec2<i32>(u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e.wwy, vec3<i32>(3286i, 2147483647i, 39041i))))), var_0, ~var_0.a << (((~global0[_wgslsmith_index_u32(u_input.c.x, 5u)] | global0[_wgslsmith_index_u32(11005u, 5u)]) | vec3<u32>(countOneBits(4294967295u), u_input.c.x, ~u_input.c.x)) % vec3<u32>(32u)));
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var_1 = Struct_2(~_wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(var_0.a.yz, vec2<i32>(u_input.b, -11469i)), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-59077i, u_input.d), var_1.c.xz))), Struct_1(vec3<i32>(-_wgslsmith_mod_i32(var_0.c.x, var_0.a.x), var_1.c.x, _wgslsmith_sub_i32(max(0i, u_input.e.x), u_input.e.x)), _wgslsmith_f_op_vec3_f32(var_1.b.b + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1073f, 1000f, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-var_1.b.b), !var_0.d.zzz))), -var_1.b.a.xy, !select(!vec4<bool>(var_0.d.x, var_0.d.x, false, false), select(var_1.b.d, var_1.b.d, var_1.b.d.x), var_0.d.x)), firstLeadingBit((vec3<i32>(0i, u_input.e.x, u_input.b) << (vec3<u32>(u_input.c.x, 1u, 63850u) % vec3<u32>(32u))) | vec3<i32>(1i, -1i, u_input.d)) ^ countOneBits(_wgslsmith_mult_vec3_i32(max(vec3<i32>(var_1.b.a.x, 19827i, -5674i), var_1.c), -var_0.a)));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-3322i, firstLeadingBit(-1i)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(min(var_0.c, vec2<i32>(0i, u_input.e.x)), -var_0.c), -(~var_1.c.zz))), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, u_input.b), -1665i), abs(1i)), -var_1.b.a.x);
    global0 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~u_input.c.x);
}

