struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = 16923u;
    let var_1 = vec3<u32>(4294967295u, ~4294967295u, countOneBits(arg_1.a.x));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(~u_input.e.xxw, u_input.e.wzy));
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_vec2_u32(arg_1.a, _wgslsmith_mod_vec2_u32(~u_input.e.zz, vec2<u32>(u_input.a, 64306u))), arg_1.b, Struct_1(vec3<bool>(var_0 >= var_2, all(arg_1.c.a.xx), true), arg_1.e.b, abs(arg_0.xx), u_input.b, arg_1.e.e), -2690i, Struct_1(!(!arg_1.c.a), arg_1.c.b, _wgslsmith_clamp_vec2_i32(~arg_1.e.c, select(arg_1.e.c, arg_1.c.c, vec2<bool>(arg_1.c.a.x, arg_1.e.a.x)), arg_1.e.c), -abs(26592i), vec2<f32>(-792f, -397f))), true, arg_1, Struct_1(select(vec3<bool>(any(arg_1.c.a.zy), !arg_1.e.a.x, arg_1.e.a.x), vec3<bool>(any(vec4<bool>(arg_1.e.a.x, arg_1.e.a.x, arg_1.e.a.x, arg_1.e.a.x)), false, arg_1.e.a.x), select(select(arg_1.c.a, vec3<bool>(false, true, arg_1.c.a.x), vec3<bool>(true, true, true)), arg_1.e.a, arg_1.e.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1541f, _wgslsmith_f_op_f32(arg_1.e.b * 1502f))), arg_1.c.e.x), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, arg_0.x) >> (vec2<u32>(var_0, 1588u) % vec2<u32>(32u))), arg_0.wx), _wgslsmith_sub_i32(-arg_0.x >> (_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(var_2, 4294967295u, var_2, 4294967295u)) % 32u), _wgslsmith_dot_vec3_i32(arg_0.wxx, vec3<i32>(u_input.b, arg_1.c.d, arg_1.c.d)) >> (~var_1.x % 32u)), vec2<f32>(arg_1.c.b, arg_1.e.e.x)));
    var_3 = Struct_3(arg_1, 670f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_3.c.e.b, _wgslsmith_f_op_f32(-arg_1.e.e.x))))), Struct_2(vec2<u32>(arg_1.a.x, var_1.x), var_2, Struct_1(select(vec3<bool>(var_3.d.a.x, arg_1.e.a.x, var_3.b), var_3.c.c.a, false), arg_1.c.e.x, _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.a.d, var_3.d.c.x), var_3.d.c)), var_3.c.d, vec2<f32>(_wgslsmith_f_op_f32(941f - -171f), -561f)), 0i, arg_1.e), var_3.d);
    return _wgslsmith_f_op_vec2_f32(abs(arg_1.e.e));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1195f), _wgslsmith_f_op_f32(1164f * 1650f), all(vec2<bool>(true, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f + -152f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(27801i, 2147483647i, 15784i, -2147483647i), Struct_2(vec2<u32>(1u, u_input.a), 40735u, Struct_1(vec3<bool>(true, false, true), -574f, vec2<i32>(arg_1.x, arg_1.x), arg_0.x, vec2<f32>(-1922f, 467f)), 68145i, Struct_1(vec3<bool>(false, false, false), -135f, arg_0.wx, arg_0.x, vec2<f32>(-948f, -953f))))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-1234f)), _wgslsmith_div_f32(1471f, -551f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(819f, -2127f) - _wgslsmith_f_op_f32(f32(-1f) * -585f)), 672f)), select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, false)), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), true), true)));
    var var_1 = Struct_1(vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)) | select(false, true, all(vec2<bool>(true, true))), select(any(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), true), _wgslsmith_f_op_f32(-874f - _wgslsmith_f_op_f32(-var_0.x)), vec2<i32>(22254i, arg_0.x), 2147483647i, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1270f, 1058f) * _wgslsmith_div_f32(var_0.x, -977f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f * _wgslsmith_f_op_f32(abs(var_0.x))));
    let var_3 = ~vec4<u32>(arg_3.x, _wgslsmith_mult_u32(u_input.e.x ^ u_input.d, arg_2.x), _wgslsmith_mod_u32(arg_3.x, _wgslsmith_add_u32(1u, 1u << (arg_2.x % 32u))), _wgslsmith_sub_u32(u_input.a, 4294967295u));
    var var_4 = arg_3.x;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) - 830f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(sign(-361f))))))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_2(-(vec4<i32>(1i, u_input.b, 30745i, 0i) & max(vec4<i32>(u_input.b, u_input.c, -13372i, -1i), vec4<i32>(0i, -13069i, u_input.b, -38761i))), select(vec2<i32>(-u_input.c, i32(-1i) * -44218i), min(~vec2<i32>(u_input.b, -2147483647i), abs(vec2<i32>(4721i, u_input.b))), vec2<bool>(true, true)), ~(~vec4<u32>(u_input.a, 1u, 1u, u_input.e.x)), u_input.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, -954f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-172f, 369f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1586f, 272f) + vec2<f32>(1293f, 496f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1334f, -1586f)), -1166f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-440f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(f32(-1f) * -582f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, _wgslsmith_div_f32(-1126f, 1133f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x)))))));
    var var_1 = Struct_1(!vec3<bool>(any(vec2<bool>(true, false)) == true, true, _wgslsmith_f_op_f32(1382f + var_0.x) <= var_0.x), _wgslsmith_f_op_f32(ceil(-938f)), vec2<i32>(~1i, -3031i), 1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1809f, 883f)) + -726f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -526f) * vec2<f32>(236f, 392f))))));
    let var_2 = firstLeadingBit(u_input.b);
    var var_3 = Struct_1(!var_1.a, _wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(min(var_1.b, var_1.e.x))), reverseBits(var_1.c), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -26509i, var_2), vec3<i32>(51450i, 25161i, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -16795i, var_2, var_1.c.x), vec4<i32>(u_input.c, u_input.b, var_2, 0i))), _wgslsmith_sub_i32(select(-12805i, u_input.b, var_1.a.x), _wgslsmith_mod_i32(1i, -15234i))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-14299i, 0i, -2147483647i) & vec3<i32>(var_2, 12151i, -1i), ~vec3<i32>(var_1.d, -62609i, 2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), 272f));
    var var_4 = vec2<bool>(!any(select(vec3<bool>(var_1.a.x, var_3.a.x, false), vec3<bool>(false, var_1.a.x, true), var_3.a.x)) | var_1.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_clamp_vec3_u32(u_input.e.wzy, u_input.e.xwz, u_input.e.yxw))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.e.x))))));
}

