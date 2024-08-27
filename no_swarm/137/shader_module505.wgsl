struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-754f, -176f, -896f), vec3<f32>(992f, 864f, -123f), vec3<f32>(-366f, -299f, 576f), vec3<f32>(1741f, -1000f, 844f), vec3<f32>(613f, -416f, 1000f), vec3<f32>(-1327f, 523f, -1211f), vec3<f32>(382f, 645f, -1480f), vec3<f32>(-969f, 1716f, 315f), vec3<f32>(-203f, -396f, -1184f), vec3<f32>(-1512f, 435f, -289f), vec3<f32>(853f, 1290f, 1648f), vec3<f32>(-1040f, 620f, -905f), vec3<f32>(-914f, -1561f, 963f), vec3<f32>(1966f, -1152f, -338f), vec3<f32>(-1939f, -472f, 823f), vec3<f32>(1000f, 673f, -189f), vec3<f32>(-528f, -366f, -391f), vec3<f32>(-802f, 1082f, 931f), vec3<f32>(485f, 136f, 460f), vec3<f32>(-414f, 252f, 1254f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_2, 7>();
    global1 = array<vec3<f32>, 20>();
    let var_0 = vec3<i32>(~(~(-u_input.d)), reverseBits(u_input.d), 0i);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.e.x, 20u)], _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a.x), u_input.e.x, firstTrailingBit(0u)) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b.x, 37383u, 13117u), vec3<u32>(4294967295u, u_input.e.x, 0u), true), vec3<u32>(u_input.e.x, 65190u, 44725u)) << (~(vec3<u32>(u_input.e.x, u_input.c, u_input.c) | u_input.e.xww) % vec3<u32>(32u))), reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~var_0, ~var_0), ~var_0)), -vec4<i32>(u_input.d, firstTrailingBit(-53218i << (1u % 32u)), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(u_input.d, var_0.x)), u_input.d));
    var var_2 = Struct_3(var_0.x, global0[_wgslsmith_index_u32(~var_1.b, 7u)], !(!vec4<bool>(any(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, true, false)), true, true)));
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global1 = array<vec3<f32>, 20>();
    let var_0 = _wgslsmith_div_vec3_u32(func_3(), ~vec3<u32>(u_input.e.x ^ (4294967295u | u_input.e.x), ~(4294967295u | u_input.e.x), abs(firstLeadingBit(4294967295u))));
    let var_1 = ~((vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(45740u, 104409u))) & var_0.xz) >> (vec2<u32>(29428u, _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(2838u, 48171u), firstLeadingBit(var_0.x))) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_add_i32(~(u_input.d | _wgslsmith_div_i32(-25506i, 19057i)), -1i), select(vec3<bool>(-10828i >= (u_input.d >> (var_0.x % 32u)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0.x)), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, !(!arg_0.x), true), vec3<bool>(arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) && !arg_0.x, false & !arg_0.x)));
    let var_3 = ~var_0.yx;
    return 735f;
}

fn func_1() -> vec4<f32> {
    global0 = array<Struct_2, 7>();
    var var_0 = 1u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-1292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-317f, 2376f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-353f, -987f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1025f)), -525f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-377f)), -238f)));
    return vec4<f32>(var_1.x, _wgslsmith_f_op_f32(func_2(!vec2<bool>(any(vec2<bool>(true, true)), select(true, true, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true))))))), 252f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-421f - -1416f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-396f * 688f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1121f))))));
    global1 = array<vec3<f32>, 20>();
    let var_1 = u_input.c;
    global1 = array<vec3<f32>, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    global1 = array<vec3<f32>, 20>();
    let var_3 = var_2;
    var var_4 = ~(vec2<i32>(23258i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, -6790i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -55334i, u_input.d, u_input.d), vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.d)))) ^ vec2<i32>(u_input.d << (0u % 32u), ~0i));
    var var_5 = vec4<f32>(-367f, var_2.x, -1429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-14260i, -1181f, _wgslsmith_sub_vec3_u32(~(select(vec3<u32>(56182u, 9036u, var_1), vec3<u32>(var_1, var_1, 0u), vec3<bool>(false, true, false)) << (vec3<u32>(1u, 1u, u_input.e.x) % vec3<u32>(32u))), ~((u_input.a.zwz << (vec3<u32>(1u, 0u, u_input.a.x) % vec3<u32>(32u))) & (vec3<u32>(0u, var_1, 0u) << (u_input.b % vec3<u32>(32u))))));
}

