struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    return _wgslsmith_clamp_u32(firstTrailingBit(0u), 5903u, ~(~_wgslsmith_clamp_u32(abs(u_input.b.x), firstLeadingBit(arg_1.a.x), u_input.b.x & arg_1.a.x)));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_add_i32(-62474i, -_wgslsmith_dot_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a.x, 52830i, 44249i))), -vec3<i32>(-1i, u_input.a.x, u_input.a.x)));
    let var_1 = -1i;
    var var_2 = vec4<u32>(22234u, 13594u, 1u, 17819u);
    var_0 = u_input.a.x;
    let var_3 = Struct_4(!vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), select(!arg_0, true, var_2.x == var_2.x)), ~(0i << (func_3(select(vec2<bool>(true, false), vec2<bool>(arg_0, true), vec2<bool>(false, false)), Struct_3(var_2.xz)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1993f - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(2488f + -939f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1859f)))), _wgslsmith_f_op_f32(f32(-1f) * -243f), 1090f)));
    return _wgslsmith_div_f32(var_3.d.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -121f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.d.a.x), var_3.c))))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.d.a.x)) - var_3.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -765f)));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = func_2(select(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true, false));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2336f, -301f), _wgslsmith_f_op_f32(1000f * 351f))), _wgslsmith_div_f32(-1521f, _wgslsmith_f_op_f32(floor(-1825f))), 1077f, -1527f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - vec4<f32>(888f, var_1.a.x, -1380f, var_1.a.x)))));
    var var_3 = countOneBits(_wgslsmith_dot_vec2_i32(max(-u_input.a, ~vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1610i, u_input.a.x), min(u_input.a << (vec2<u32>(121709u, 28557u) % vec2<u32>(32u)), u_input.a))));
    var_0 = select(countOneBits(_wgslsmith_mod_i32(-2147483647i, arg_0)) <= _wgslsmith_clamp_i32(arg_0, _wgslsmith_sub_i32(1i, arg_0), arg_0), !(!any(vec3<bool>(true, false, true))), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))) && !func_2(!(var_1.a.x > -1824f));
    return vec2<i32>(9137i, ~(-_wgslsmith_mult_i32(~u_input.a.x, 18063i << (u_input.b.x % 32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_2.a.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.a.x), arg_2.a.a.x, _wgslsmith_f_op_f32(arg_2.a.a.x * -421f), arg_2.b.a.x) + vec4<f32>(arg_2.b.a.x, 320f, arg_2.b.a.x, _wgslsmith_f_op_f32(step(270f, -692f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(arg_2.b.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(1370f - _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(select(189f, arg_2.a.a.x, any(arg_3.xw))), -1098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1444f * 2419f) + -467f)), vec4<f32>(var_0.x, 935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_2.a.a.x, -1191f)), var_0.x)))))));
    let var_1 = 0u;
    var var_2 = Struct_4(select(select(arg_3.wx, arg_3.wy, vec2<bool>(true, true)), vec2<bool>(!arg_3.x, (-241f != arg_2.a.a.x) || any(vec2<bool>(arg_3.x, false))), (1i | arg_1) <= firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 0i, -1i), vec3<i32>(arg_0.x, -1i, u_input.a.x)))), u_input.a.x, -914f, arg_2.b);
    let var_3 = Struct_4(var_2.a, -(max(u_input.a.x, func_1(-47716i).x) & 0i), _wgslsmith_f_op_f32(ceil(-1724f)), arg_2.a);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_3.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-2147483647i, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(0i, -2147483647i)), ~u_input.a.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(969f, 2695f, -429f, -1245f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, -1000f, 405f, 1011f) + vec4<f32>(-1973f, -840f, -1663f, 342f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, -415f, 217f, 1505f))))));
    let var_2 = all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_vec2_i32(func_1(-29992i), vec2<i32>(countOneBits(-u_input.a.x), 0i)), u_input.a.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_1.b.a))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.a.x, var_1.b.a.x, var_1.b.a.x, var_1.a.a.x))))), select(!(!(!vec4<bool>(false, true, var_2, true))), select(select(select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(true, var_2, var_2, false), var_2), select(vec4<bool>(true, true, true, var_2), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, false, var_2, var_2)), var_2), select(!vec4<bool>(var_2, true, var_2, true), select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, var_2, false, var_2)), select(var_2, true, false)), true), var_2 | var_2));
}

