struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    var var_0 = ~(-18478i);
    var var_1 = Struct_4(Struct_1(vec3<bool>(arg_1, arg_1, !all(vec3<bool>(false, arg_0, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -780f), vec2<f32>(191f, 1085f), arg_0)))) + vec2<f32>(_wgslsmith_f_op_f32(285f + -1000f), -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1700f, -651f, 259f, -1122f) - vec4<f32>(121f, -780f, 542f, 1104f)))))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, abs(-2147483647i)), max(vec2<i32>(~u_input.a, _wgslsmith_mult_i32(-2147483647i, u_input.a)), vec2<i32>(-1i, firstLeadingBit(u_input.a)))), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(30075i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-26317i, 141i, -1i)), reverseBits(vec3<i32>(2147483647i, 1i, u_input.a))) | -_wgslsmith_mult_i32(-23245i, -1i)), ~(~abs(vec3<u32>(52056u, u_input.b.x, 1u) ^ vec3<u32>(32137u, u_input.b.x, 1918u))));
    var var_2 = var_1.e;
    var_1 = Struct_4(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) - var_1.b), _wgslsmith_sub_vec2_i32(countOneBits(abs(var_1.c)), -_wgslsmith_add_vec2_i32(var_1.c, vec2<i32>(76289i, var_1.c.x))), abs(1716i), ~(~vec3<u32>(60707u, var_1.e.x, u_input.b.x) | ~var_1.e) | ~vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_1.e.x, u_input.b.x), ~var_2.x));
    var_0 = ~max(countOneBits(u_input.a), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -27308i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c.x, 1386i, u_input.a), vec3<i32>(-21671i, u_input.a, -21788i)))));
    return any(vec2<bool>(!(!(-29461i < u_input.a)), all(vec4<bool>(true, var_1.a.a.x, true, var_1.c.x <= var_1.d))));
}

fn func_2() -> vec2<f32> {
    let var_0 = !(!(!func_3(true, false))) == false;
    let var_1 = var_0;
    let var_2 = Struct_3(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-10734i), 7416i), 0i, _wgslsmith_clamp_i32(-53938i, 0i, -2147483647i)), u_input.a, 25650i), all(!select(vec3<bool>(var_1, var_1, var_0), vec3<bool>(false, var_1, var_0), true)), var_0);
    let var_3 = u_input.a;
    var var_4 = var_1;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), 1000f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(813f, -316f), vec2<f32>(-226f, -966f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(297f, -868f) * vec2<f32>(1218f, 1076f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1131f, 1551f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, 1437f))))))));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.b.wwy, arg_1.b.yzx))));
    let var_1 = arg_1.a.a.x;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * vec2<f32>(-348f, _wgslsmith_f_op_f32(trunc(194f)))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-932f, arg_1.b.x)), _wgslsmith_f_op_f32(-958f * var_0.a.x))), _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), var_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(1558f * 139f)) * _wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, Struct_4(Struct_1(vec3<bool>(true, true, false), vec2<f32>(412f, 1342f)), vec4<f32>(305f, 1529f, -1008f, 237f), vec2<i32>(53081i, 1i), u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, 0u))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * vec2<f32>(635f, 160f))))));
    var var_1 = Struct_4(Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -1645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 472f, var_0.x, -597f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(898f, -473f, -883f, var_0.x))))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, false, true, false), true), any(vec3<bool>(true, true, true))))), ~firstLeadingBit(countOneBits(countOneBits(vec2<i32>(u_input.a, u_input.a)))), ~(u_input.a | ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 23683i))), vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), ~vec3<u32>(1u, u_input.b.x, u_input.b.x), ~vec3<u32>(3375u, u_input.b.x, 1u))), u_input.b.x));
    var var_2 = var_1.a.a.yx;
    let var_3 = var_1.a;
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_2()).x, 1368f, ~u_input.b, reverseBits(vec2<i32>(countOneBits(0i), 2147483647i | var_1.d) | var_1.c));
}

