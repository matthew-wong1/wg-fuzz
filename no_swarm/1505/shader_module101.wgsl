struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_add_i32(0i, u_input.b) | u_input.b, -32693i ^ u_input.e.x, -(~u_input.e.x), ~(i32(-1i) * -2147483647i))), firstLeadingBit(vec4<i32>(2147483647i, u_input.e.x ^ u_input.e.x, u_input.c.x, _wgslsmith_div_i32(u_input.e.x, u_input.c.x)) << (abs(firstLeadingBit(vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, arg_0.b.x))) % vec4<u32>(32u))));
    var var_1 = !(!(!arg_0.a));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1513f)) + -440f), !any(vec2<bool>(arg_0.a, arg_0.a)))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * -1632f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, 1767f, -1245f) - vec3<f32>(-1085f, 1000f, 2090f)), vec3<f32>(1100f, -210f, arg_1))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(-2064f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-178f))))));
    global0 = max(max(abs(_wgslsmith_mult_i32(-56365i, u_input.b | u_input.c.x)), _wgslsmith_div_i32(-7024i, ~reverseBits(var_0))), i32(-1i) * -2147483647i);
    var var_3 = 1014f;
    return var_2.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = -230f;
    let var_1 = true;
    global0 = -arg_0.x;
    global0 = 0i;
    var var_2 = true;
    return _wgslsmith_f_op_f32(round(2000f));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = firstLeadingBit(vec4<u32>(arg_1.b.b.x, arg_1.a.b.x, u_input.d, 99975u | u_input.a.x));
    global0 = -12490i;
    var var_1 = _wgslsmith_div_vec2_i32((u_input.c.yz | (vec2<i32>(2147483647i, arg_1.c.x) | arg_1.c.xy)) ^ (vec2<i32>(_wgslsmith_clamp_i32(u_input.c.x, arg_1.c.x, -1i), ~(-2147483647i)) & _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, arg_1.c.x)), -vec2<i32>(arg_1.c.x, arg_1.c.x), vec2<i32>(1i, u_input.e.x))), vec2<i32>(976i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.c.x, -1i), vec3<i32>(arg_1.c.x, 0i, 3017i))) >> (u_input.a.x % 32u)));
    let var_2 = -758f;
    var var_3 = Struct_2(arg_1.b, arg_1.a, vec4<i32>(arg_1.c.x, countOneBits(-63958i), _wgslsmith_mod_i32(min(var_1.x, arg_1.c.x), arg_1.c.x) & _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(var_1.x, 2147483647i)), arg_1.c.x));
    return _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(var_3.c.wz, vec2<i32>(-1i, var_3.c.x)), select(abs(abs(arg_1.c.xw & vec2<i32>(var_1.x, u_input.b))), vec2<i32>(_wgslsmith_add_i32(-24846i, ~var_3.c.x), 1i), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(237f, 956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1507f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(878f)))), _wgslsmith_f_op_f32(trunc(-1764f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(686f, -425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(false, vec3<u32>(0u, 1u, 19866u)), -640f, 1302f)) - _wgslsmith_f_op_f32(func_2(u_input.e, 0u, 0u))), 1000f) * vec4<f32>(-293f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2022f, -825f)), _wgslsmith_f_op_f32(func_1(Struct_1(true, vec3<u32>(u_input.d, u_input.d, 0u)), -207f, 304f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1829f - 567f) + _wgslsmith_f_op_f32(f32(-1f) * -791f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(984f, -1131f)))))));
    var var_1 = Struct_2(Struct_1(false, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 45145u, u_input.a.x) ^ vec3<u32>(u_input.d, 1u, u_input.d), select(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(u_input.d, 43908u, u_input.a.x), vec3<bool>(false, true, true)), vec3<u32>(139964u, u_input.d, u_input.d))), Struct_1(false, vec3<u32>(94250u << (u_input.a.x % 32u), u_input.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(6727u, u_input.d, 29843u), vec3<u32>(u_input.d, 1u, 3180u)))), -((vec4<i32>(-1i) * -u_input.c) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 49110u, u_input.a.x), vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -346f)))))));
    global0 = u_input.c.x;
    global0 = _wgslsmith_dot_vec2_i32(var_1.c.xx, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.c.zy, func_3(var_1.a.a, Struct_2(Struct_1(false, var_1.a.b), Struct_1(false, var_1.a.b), vec4<i32>(var_1.c.x, 0i, -51164i, 1i)))), abs(var_1.c.xy), u_input.c.zx));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(-1i) & min(-_wgslsmith_dot_vec3_i32(u_input.c.yxx, var_1.c.xzx), abs(~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)))) + var_2));
}

