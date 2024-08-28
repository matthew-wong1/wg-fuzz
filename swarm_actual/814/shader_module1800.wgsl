struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7750i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~(-(countOneBits(~u_input.d) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, u_input.b.x, u_input.b.x), vec4<u32>(0u, 4294967295u, 0u, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 59008u, 4294967295u, 35193u), vec4<u32>(u_input.b.x, u_input.e, 1u, u_input.e)), u_input.b.x, ~u_input.b.x) % vec4<u32>(32u))));
    var var_1 = ~(vec4<u32>(1521u, u_input.b.x, 1u, _wgslsmith_mod_u32(6132u << (0u % 32u), 24522u)) | select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, 4294967295u, 3217u, 4294967295u), firstTrailingBit(vec4<u32>(131347u, 1u, 1u, u_input.b.x))), vec4<u32>(4294967295u, 9334u, u_input.e, 32276u) >> (vec4<u32>(u_input.e, 48658u, 33676u, u_input.b.x) % vec4<u32>(32u)), !any(vec3<bool>(false, true, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(227f, 619f, 632f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1668f, 397f, 1000f) * vec3<f32>(-979f, 351f, -1829f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-726f, -259f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(floor(442f)), _wgslsmith_f_op_f32(f32(-1f) * -702f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-213f, 1089f, _wgslsmith_div_f32(-1623f, 874f), 1785f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1637f, 1946f, -2109f, -595f) * vec4<f32>(1489f, -1000f, -175f, 728f))), false))), vec2<i32>(-u_input.a.x, ~u_input.c), 1f, u_input.d.x >> (u_input.e % 32u));
    var_1 = vec4<u32>(abs(abs(10209u)), 1u, _wgslsmith_div_u32(1u, u_input.e), var_1.x ^ _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(16762u, 67130u, 14243u))));
    return var_2.b;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = ~firstLeadingBit(~abs(u_input.b.zz) << (~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u)));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-822f + 331f))), -652f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1327f, -398f, -1670f) - vec3<f32>(2191f, 1189f, 976f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-412f, -1000f, 780f), vec3<f32>(-120f, -872f, 1158f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1573f, _wgslsmith_f_op_f32(610f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -484f))))));
    var var_3 = Struct_2(Struct_1(vec3<f32>(1020f, _wgslsmith_f_op_f32(var_2.x * 3314f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(405f)), _wgslsmith_f_op_f32(var_2.x * -494f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3()))), var_1.ww, -275f, 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + 2404f), -663f, 985f), vec3<f32>(_wgslsmith_f_op_f32(-1627f + var_2.x), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(var_2.x - -334f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(-455f, var_2.x, var_2.x, var_2.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1912f, -408f) - vec4<f32>(var_2.x, var_2.x, 277f, var_2.x)), vec4<f32>(var_2.x, var_2.x, 1503f, 1716f))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), -(arg_0.x ^ var_1.x)));
    let var_4 = Struct_2(Struct_1(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(664f, 900f)), _wgslsmith_f_op_f32(min(-124f, -253f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1000f - 744f))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(0i, var_3.a.c.x)), -var_1.yx), firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.c, var_1.x)))), _wgslsmith_f_op_f32(-var_3.b.a.x), _wgslsmith_div_i32(-41514i, _wgslsmith_clamp_i32(var_1.x, 23976i, arg_0.x))), var_3.b);
    return ~(~(_wgslsmith_add_u32(263u, 1u | var_0.x) << (~_wgslsmith_sub_u32(24868u, u_input.b.x) % 32u)));
}

fn func_1(arg_0: bool, arg_1: bool) -> StorageBuffer {
    global0 = u_input.c;
    global0 = i32(-1i) * -_wgslsmith_add_i32(u_input.a.x, i32(-1i) * -30626i);
    let var_0 = u_input.d.x;
    global0 = _wgslsmith_sub_i32(max(~9898i, var_0), countOneBits(u_input.c));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, ~41844u, func_2(-vec4<i32>(-60297i, var_0, var_0, 79848i)) << ((u_input.e << (1u % 32u)) % 32u)), vec3<u32>(1u, 1u >> ((~u_input.b.x | (u_input.e << (17898u % 32u))) % 32u), _wgslsmith_div_u32(min(u_input.e, _wgslsmith_mult_u32(u_input.e, 108491u)), firstLeadingBit(46606u))));
    return StorageBuffer(_wgslsmith_sub_vec2_u32(u_input.b.yy, u_input.b.yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.xy;
    let x = u_input.a;
    s_output = func_1(false, true);
}

