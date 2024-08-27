struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = Struct_4(~4294967295u, Struct_3(all(!select(vec4<bool>(arg_0.e.a, arg_0.e.a, arg_0.e.a, arg_0.e.a), vec4<bool>(false, arg_0.e.a, true, false), vec4<bool>(true, true, true, arg_0.e.a))), vec2<i32>(arg_0.b.b.x | arg_0.b.b.x, -1i) ^ vec2<i32>(arg_0.b.b.x, -2147483647i | arg_0.b.b.x), arg_0.b.c, vec2<bool>(!any(vec4<bool>(arg_0.e.a, false, false, false)), arg_0.b.c.a.a)), arg_0.c, ~arg_0.d, Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x), vec2<f32>(-880f, _wgslsmith_div_f32(1254f, arg_2)))));
    var var_1 = _wgslsmith_mod_u32(4294967295u | ~(var_0.a >> (firstLeadingBit(4294967295u) % 32u)), 4294967295u);
    var var_2 = 1u;
    var_1 = _wgslsmith_add_u32(select(_wgslsmith_div_u32(abs(select(21366u, 4294967295u, false)), 1u), ~36650u, arg_0.e.a), arg_3);
    var_1 = _wgslsmith_clamp_u32(16537u, 35875u, ~(~abs(var_0.a) | firstTrailingBit(1u)));
    return select(var_0.b.b.x, max(~47401i, 22364i), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yw) * _wgslsmith_f_op_vec2_f32(-arg_0.ww));
    var var_1 = Struct_5(var_0.x, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 9553i, 1i, -35933i), vec4<i32>(-29845i, -39754i, 34794i, -2147483647i))), vec4<i32>(-1i, abs(func_3(Struct_4(27283u, Struct_3(false, vec2<i32>(-54i, 1i), Struct_2(Struct_1(false, var_0)), vec2<bool>(true, true)), vec3<f32>(arg_1, arg_1, 919f), vec4<i32>(-1i, -2147483647i, 20284i, 31561i), Struct_1(false, arg_0.wy)), arg_0, arg_0.x, u_input.a.x) & (-14283i >> (u_input.a.x % 32u))), -15084i, firstLeadingBit(_wgslsmith_clamp_i32(1i, 2147483647i, 1i))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(294f, 815f, false)) - _wgslsmith_f_op_f32(arg_0.x * arg_1))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec4<f32>(-524f, 1532f, arg_0.c.a.b.x, -590f), -459f)))) + _wgslsmith_f_op_f32(f32(-1f) * -582f))))));
    var var_2 = _wgslsmith_f_op_f32(min(-770f, arg_0.c.a.b.x));
    var_2 = 675f;
    var var_3 = min(_wgslsmith_clamp_u32(u_input.a.x >> (u_input.a.x % 32u), ~4294967295u, ~(~53594u)), ~_wgslsmith_mod_u32(u_input.a.x, 29107u));
    return !arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(func_1(Struct_3(true, vec2<i32>(35815i, 1i), Struct_2(Struct_1(true, vec2<f32>(-1229f, -294f))), vec2<bool>(true, true)), vec2<f32>(1391f, -2612f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec4<bool>(false, false, true, false))), func_1(Struct_3(false, vec2<i32>(5145i, 0i), Struct_2(Struct_1(false, vec2<f32>(-1041f, 238f))), vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(307f, -910f), vec2<f32>(-1170f, -1000f))), false));
    let var_1 = Struct_1(any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), !var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, true, false, var_0.x)), vec4<bool>(false, true, true, var_0.x)))), vec2<f32>(741f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-408f))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(-1985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-331f, _wgslsmith_f_op_f32(-var_1.b.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -606f))))), var_1.b.x);
    let var_3 = Struct_3(true, ~(-vec2<i32>(1i, 1i)), Struct_2(Struct_1(var_0.x, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(min(1168f, 282f))))), select(func_1(Struct_3(true, vec2<i32>(1i, 1i), Struct_2(Struct_1(var_0.x, var_1.b)), select(vec2<bool>(true, var_1.a), vec2<bool>(var_0.x, var_0.x), var_1.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_1.b, vec2<f32>(-481f, 1580f)))))), vec2<bool>(all(!vec4<bool>(var_0.x, true, true, true)), var_1.a), vec2<bool>(false, select(var_0.x, any(vec2<bool>(var_0.x, var_0.x)), var_1.a))));
    var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_3.c.a.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1348f)), 1504f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x + var_2.x), _wgslsmith_f_op_f32(var_1.b.x - var_3.c.a.b.x), _wgslsmith_f_op_f32(var_1.b.x * var_3.c.a.b.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, 1089f), var_2.x, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.a.b.x, -200f, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, var_2.x, var_3.c.a.b.x, var_2.x)) * vec4<f32>(477f, 114f, -868f, var_1.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(217f + var_2.x), _wgslsmith_f_op_f32(max(var_2.x, -653f)), _wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(floor(228f)), var_1.b.x, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.a.b.x, 318f, 1703f, var_3.c.a.b.x)))))), u_input.a.zz, ~(~u_input.a.x << (4294967295u % 32u)), -vec4<i32>(-var_3.b.x, 41867i, var_3.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.b.x, var_3.b.x, -7821i), vec3<i32>(-2147483647i, 40063i, var_3.b.x)), vec3<i32>(-1i, var_3.b.x, var_3.b.x))));
}

