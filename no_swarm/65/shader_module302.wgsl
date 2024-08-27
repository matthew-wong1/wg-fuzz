struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 412f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> bool {
    var var_0 = false;
    global0 = -443f;
    var_0 = select(true, arg_0.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x ^ 19072i) != u_input.a.x) & arg_0.x;
    global0 = 323f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-985f, -522f)));
    return all(select(!vec3<bool>(true, true, !arg_0.x), vec3<bool>(all(!vec3<bool>(true, arg_0.x, false)), true, false), any(select(arg_0, vec2<bool>(true, true), vec2<bool>(arg_0.x, false)))));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_4(true, !select(vec3<bool>(func_3(vec2<bool>(arg_2.a, true), vec4<f32>(1458f, 582f, 372f, arg_3), vec4<i32>(2147483647i, -5306i, u_input.a.x, -1i)), false, !arg_2.b.x), select(arg_0.b, !vec3<bool>(true, arg_0.a, false), vec3<bool>(false, arg_0.b.x, false)), false));
    let var_1 = ~vec2<u32>(u_input.b, 1u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(round(arg_3)));
    let var_2 = _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(313f)), 125f, true)));
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(~(21052i | select(u_input.a.x, u_input.a.x, var_0.b.x)), ~(u_input.a.x | u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_sub_i32(2147483647i, u_input.a.x)) << (var_1.x % 32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), 38443i >> (var_1.x % 32u), u_input.a.x), vec3<i32>(abs(0i), abs(u_input.a.x), u_input.a.x)), ~(-(~vec3<i32>(35925i, 2147483647i, -28463i)))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(288f, _wgslsmith_f_op_f32(var_2 - -989f), _wgslsmith_f_op_f32(-arg_3)), vec3<f32>(var_2, _wgslsmith_f_op_f32(var_2 * var_2), var_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -1406f, var_2) + vec3<f32>(179f, -375f, 480f)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, ~u_input.a.x, firstLeadingBit(-18368i)), -abs(vec3<i32>(2147483647i, -31517i, var_3.x))), ~(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(6428u, arg_1, 4294967295u)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, 689f), vec2<f32>(arg_3, 1799f)))), vec2<f32>(_wgslsmith_div_f32(var_2, 435f), -1356f)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-777f, 727f) + var_2)))), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-841f)))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.e.x, u_input.c), u_input.d) << (u_input.d % vec3<u32>(32u))), u_input.d);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)));
    let var_1 = ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, -12703i, u_input.a.x)), ~(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)));
    var var_2 = abs(var_1);
    let var_3 = u_input.e;
    return func_2(Struct_4(select(~var_0.x != _wgslsmith_div_u32(var_3.x, 12239u), true, false | any(vec4<bool>(false, true, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(-11039i == u_input.a.x, true, true), vec3<bool>(true, true, true))), var_0.x, Struct_4(true, select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false)), 736f);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-704f, arg_2.e)), 312f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_1.d.c.x, 215f)))))) + _wgslsmith_f_op_f32(arg_2.d + arg_1.b));
    global0 = 1041f;
    let var_0 = ~arg_2.b >> (4294967295u % 32u);
    return _wgslsmith_f_op_f32(f32(-1f) * -286f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(21423i, u_input.a.x), u_input.a), -43326i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 13402i, u_input.a.x, u_input.a.x))), Struct_3(func_1(vec4<f32>(1714f, -1000f, -165f, -2325f)), func_2(Struct_4(false, vec3<bool>(false, false, true)), 0u, Struct_4(false, vec3<bool>(false, true, false)), 474f).a.x, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_1(0u, 69582u, vec3<f32>(-1000f, -1376f, 163f), u_input.b, -2147483647i), Struct_2(vec3<f32>(572f, -377f, -846f), -9090i, vec2<f32>(-776f, -1145f), 2232f, -623f)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(137f, -816f, -1519f), vec3<f32>(-1286f, 1684f, 803f), true)), -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(619f, 1450f)), 1000f, 1327f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.d.x)), vec4<f32>(_wgslsmith_f_op_f32(round(2702f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(880f + -1541f), 630f), _wgslsmith_f_op_f32(sign(-491f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -759f)), _wgslsmith_div_f32(-339f, _wgslsmith_f_op_f32(ceil(1779f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(912f + -330f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1487f, -155f)))), reverseBits(u_input.e) ^ ~vec4<u32>(u_input.b, ~u_input.d.x, ~u_input.e.x, ~1u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(398f, 1117f, 371f, 1876f) - vec4<f32>(-113f, -310f, 146f, -1713f))).a))));
}

