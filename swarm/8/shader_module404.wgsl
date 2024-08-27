struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    let var_0 = u_input.b;
    let var_1 = !arg_2.x;
    let var_2 = !vec3<bool>(true, all(select(select(vec4<bool>(var_1, var_1, var_1, arg_2.x), vec4<bool>(arg_2.x, var_1, arg_2.x, var_1), vec4<bool>(true, false, arg_2.x, false)), vec4<bool>(var_1, var_1, false, false), select(vec4<bool>(var_1, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, arg_2.x, arg_2.x, var_1)))), !any(!vec4<bool>(var_1, true, false, false)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_0);
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x - -1000f), arg_0.x))), _wgslsmith_f_op_vec2_f32(arg_0 - arg_0), var_1)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-186f, -1782f))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-242f, var_3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(998f, arg_0.x)))))));
    return ~0i;
}

fn func_2() -> vec2<u32> {
    var var_0 = u_input.e;
    var_0 = -_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(vec3<i32>(8572i, var_0.x, var_0.x) << (vec3<u32>(26078u, 3830u, u_input.b) % vec3<u32>(32u))), countOneBits(vec3<i32>(var_0.x, func_3(vec2<f32>(1967f, -1694f), 2147483647i, vec3<bool>(true, false, true)), var_0.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 273f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1396f, 2137f))), any(vec2<bool>(false, false)))) * vec2<f32>(-1086f, _wgslsmith_f_op_f32(f32(-1f) * -1659f))))), -vec2<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), _wgslsmith_div_vec2_i32(var_0.zy, u_input.e.yy))), 70371i, !(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 110540u)) & ~vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), _wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, u_input.b, u_input.b, 12397u) & vec4<u32>(28691u, 4294967295u, 0u, 17338u)), ~(~vec4<u32>(u_input.b, 10556u, u_input.b, 32713u)))));
    var_0 = select(-u_input.a, ~(firstLeadingBit(u_input.a) & vec3<i32>(var_0.x, i32(-1i) * -1i, var_0.x)), vec3<bool>(var_1.d.x, true, var_1.d.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -198f, var_1.a.x, 1155f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1393f, var_1.a.x, var_1.a.x, 1000f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x) - vec4<f32>(var_1.a.x, -784f, -232f, -1000f)), vec4<f32>(-246f, var_1.a.x, var_1.a.x, -949f))), var_1.d.x || (959f <= var_1.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(max(1210f, _wgslsmith_f_op_f32(min(var_1.a.x, -651f)))), var_1.a.x, var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1810f, -1000f, var_1.a.x, -1000f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 711f), !vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 916f, 744f, var_1.a.x) - vec4<f32>(var_1.a.x, -1207f, var_1.a.x, 1252f)) + vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 825f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, var_1.a.x, -786f, var_1.a.x), true)) - vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), 1f, _wgslsmith_f_op_f32(1079f * 335f), _wgslsmith_f_op_f32(-1222f * var_1.a.x)))));
    return _wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(u_input.b & abs(u_input.b), ~(~(~var_1.e))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec2_i32(arg_0.b, vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, -45334i), reverseBits(vec2<i32>(arg_0.c, 2147483647i)))));
    var_0 = vec2<i32>(_wgslsmith_div_i32(arg_0.b.x, -arg_0.c), -23958i);
    var_0 = min(countOneBits(-abs(-arg_0.b)), vec2<i32>(-arg_0.b.x, var_0.x & firstTrailingBit(arg_0.c << (38137u % 32u))));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(func_2(), vec2<u32>(~(~68193u), 4294967295u)), _wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(arg_0.e, 43646u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4104u), vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b)) ^ (reverseBits(vec2<u32>(arg_0.e, u_input.b)) ^ countOneBits(vec2<u32>(arg_0.e, arg_0.e)))));
    var var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(945f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(-473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1088f)) + _wgslsmith_f_op_f32(f32(-1f) * -1529f)))), -_wgslsmith_sub_vec2_i32(u_input.a.xy, u_input.a.yx), -1i, select(vec2<bool>(true, u_input.b == 1u), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(0u == u_input.b, u_input.c < -17377i), true)), ~(~u_input.b));
    let var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.c, u_input.d), var_0.b.x), _wgslsmith_mult_i32(var_0.b.x ^ var_0.c, -2147483647i))), i32(-1i) * -7049i, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.a.x, 1i), 22776i)), -u_input.a.x);
    let var_2 = ~u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), 969f, _wgslsmith_f_op_f32(min(var_0.a.x, -1513f))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_0)), 914f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 801f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -257f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))), var_0.a.x));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.a.x, 1996f)), _wgslsmith_f_op_f32(-var_3.x))), -1312f, var_0.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, -1000f, var_3.x, -136f) + vec4<f32>(-1000f, var_0.a.x, var_3.x, -353f)), vec4<f32>(var_3.x, var_0.a.x, var_3.x, var_3.x))))));
    let var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec4<u32>(var_2, abs(var_2), 1u, var_2 | 89039u))));
}

