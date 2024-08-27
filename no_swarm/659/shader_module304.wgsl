struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = false;
    let var_1 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0.x, firstTrailingBit(16998i)), arg_0.x);
    let var_2 = false;
    return Struct_3(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], vec2<u32>(_wgslsmith_div_u32(40754u, min(11368u, arg_1.x)), arg_1.x)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec2<bool> {
    global0 = array<vec2<u32>, 1>();
    var var_0 = countOneBits(0u);
    var var_1 = arg_1;
    var var_2 = -817f;
    var var_3 = _wgslsmith_f_op_f32(step(-1621f, 540f));
    return vec2<bool>(var_1.e.x, (arg_1.d.x >= -1132f) && true);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> Struct_5 {
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    var var_0 = select(vec2<bool>(true, all(vec2<bool>(true, true))), func_3(Struct_5(!(u_input.c <= 25883u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2667f))), Struct_3(firstLeadingBit(vec2<u32>(70714u, 1u)))), Struct_2(~u_input.a.x, ~u_input.a, Struct_1(abs(global0[_wgslsmith_index_u32(u_input.d.x, 1u)]), ~vec3<u32>(937u, u_input.c, 16809u), vec2<bool>(true, false), vec4<u32>(arg_1, 1u, 0u, arg_1), select(true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1293f, 228f)) + vec2<f32>(-1799f, -270f)), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, 2542f) - vec2<f32>(-1308f, -1437f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1435f)) + vec2<f32>(878f, -1644f))), _wgslsmith_div_vec2_u32(u_input.a, global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(u_input.e)), 1u)])), true);
    return Struct_5(any(vec4<bool>(false, true, _wgslsmith_f_op_f32(-1000f + 1326f) < _wgslsmith_f_op_f32(sign(2748f)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-791f - _wgslsmith_div_f32(-653f, 455f)), -342f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1121f - _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1463f)) + _wgslsmith_f_op_f32(1982f - -298f))))), func_1(abs(arg_0), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1, 1u, 25500u), vec3<u32>(~arg_1, u_input.c, 82382u)), reverseBits(vec2<i32>(_wgslsmith_mod_i32(33698i, -1i), 10443i))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: bool) -> Struct_5 {
    var var_0 = _wgslsmith_mult_u32(arg_1.x, ~(~min(0u, 40861u) >> (_wgslsmith_dot_vec3_u32(arg_1.wzw, arg_1.wxy & vec3<u32>(arg_1.x, u_input.c, 4294967295u)) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_2 = var_1;
    var_0 = ~_wgslsmith_clamp_u32(~(~4294967295u), abs(u_input.a.x), _wgslsmith_div_u32(abs(_wgslsmith_add_u32(56919u, 88259u)), firstTrailingBit(21993u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(var_1, arg_0.b, true)), _wgslsmith_f_op_f32(114f - arg_0.b)), vec2<f32>(-130f, 1f), true)) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 - -298f), -1000f, !any(vec2<bool>(true, true)))), -943f));
    return Struct_5(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), Struct_3(arg_0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 1>();
    let var_0 = ~u_input.b;
    let var_1 = func_1(-min(~(-vec2<i32>(u_input.b, -1i)), ~(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(0i, u_input.b))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_sub_u32(33634u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, u_input.e, u_input.c), vec4<u32>(u_input.e, 27647u, 4294967295u, u_input.c))), ~vec3<u32>(u_input.c, u_input.e, u_input.e)), vec3<u32>(~22144u, ~u_input.d.x, _wgslsmith_sub_u32(4294967295u, u_input.a.x))), vec2<i32>(~(~(~var_0)), -(~var_0 >> (u_input.d.x % 32u))));
    let var_2 = var_0;
    let var_3 = func_4(func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 20012i) << (~global0[_wgslsmith_index_u32(0u, 1u)] % vec2<u32>(32u)), vec2<i32>(12472i, _wgslsmith_dot_vec2_i32(vec2<i32>(3795i, var_0), vec2<i32>(var_0, 12520i))), select(_wgslsmith_mult_vec2_i32(vec2<i32>(48643i, -1i), vec2<i32>(var_2, u_input.b)), min(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), true)), ~_wgslsmith_sub_u32(~0u, countOneBits(var_1.a.x)), 42247i), select(vec4<u32>(10033u, firstLeadingBit(u_input.d.x), u_input.d.x, min(1u, 30804u)), select(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 30115u, var_1.a.x), vec4<u32>(0u, u_input.e, var_1.a.x, var_1.a.x)), min(abs(vec4<u32>(u_input.a.x, var_1.a.x, 4393u, var_1.a.x)), min(vec4<u32>(u_input.c, u_input.c, 0u, 0u), vec4<u32>(var_1.a.x, 39306u, 4294967295u, 30779u))), false), true && (var_2 >= _wgslsmith_clamp_i32(var_2, u_input.b, var_2))), any(!vec4<bool>(u_input.b == u_input.b, true, true, func_3(Struct_5(false, -249f, var_1), Struct_2(var_1.a.x, global0[_wgslsmith_index_u32(94146u, 1u)], Struct_1(vec2<u32>(var_1.a.x, u_input.d.x), vec3<u32>(1u, 53027u, var_1.a.x), vec2<bool>(false, true), vec4<u32>(40649u, var_1.a.x, u_input.d.x, var_1.a.x), false), vec2<f32>(1537f, 1176f), vec4<bool>(true, true, false, false)), vec2<f32>(748f, 488f), vec2<u32>(1u, 66490u)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0, select(~var_0, 1i, true || var_3.a) >> (abs(66830u >> (var_1.a.x % 32u)) % 32u), 0i, _wgslsmith_div_i32(var_2, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, -2147483647i, var_0, u_input.b), vec4<i32>(var_2, var_0, u_input.b, -49322i))))), 2147483647i, abs(abs(vec4<i32>(var_0, firstTrailingBit(42202i), _wgslsmith_sub_i32(var_2, u_input.b), var_2 >> (0u % 32u)))));
}

