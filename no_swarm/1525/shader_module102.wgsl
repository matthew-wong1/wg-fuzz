struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(295f, 706f), vec2<f32>(435f, -734f), vec2<f32>(-1769f, -363f), vec2<f32>(-1633f, -537f), vec2<f32>(-1424f, 669f), vec2<f32>(-497f, 1796f), vec2<f32>(810f, -1752f), vec2<f32>(1025f, -702f), vec2<f32>(-2122f, 1539f), vec2<f32>(1554f, 1164f), vec2<f32>(338f, 194f), vec2<f32>(413f, 718f), vec2<f32>(-2220f, 1000f), vec2<f32>(-540f, -249f), vec2<f32>(1404f, 588f), vec2<f32>(736f, 461f), vec2<f32>(-2839f, -835f), vec2<f32>(-2112f, -558f), vec2<f32>(1030f, -2815f), vec2<f32>(173f, -792f), vec2<f32>(-1341f, -152f), vec2<f32>(-611f, -293f), vec2<f32>(-379f, 602f), vec2<f32>(-797f, -1665f), vec2<f32>(625f, 161f), vec2<f32>(-958f, 1570f), vec2<f32>(411f, 1069f), vec2<f32>(-286f, 252f));

var<private> global2: i32 = -2718i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32) -> u32 {
    return u_input.b;
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_sub_i32(abs(-firstTrailingBit(u_input.a)), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(47738i, 24484i, -1i)), vec3<i32>(_wgslsmith_div_i32(u_input.a, ~20205i), u_input.a, 0i)));
    var var_0 = Struct_1(select(vec3<bool>(true, firstTrailingBit(u_input.a) > ~19i, false), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true));
    var var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_add_u32(27428u, u_input.b)), ~max(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 10837u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)))), ~vec2<u32>(1u, ~min(u_input.b, 1u)));
    var_1 = vec2<u32>(max(u_input.b, ~func_3(_wgslsmith_f_op_f32(step(-655f, 644f)), abs(var_1.x), -2147483647i)), countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(52696u, 17518u, u_input.b, 15150u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_1.x, u_input.b, var_1.x), vec4<u32>(1u, 4294967295u, var_1.x, var_1.x)))));
    let var_2 = Struct_2(!select(!select(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), false), select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(var_0.a.x, true, var_0.a.x, true), select(vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(false, false, false, var_0.a.x))), select(vec4<bool>(true, var_0.a.x, var_0.a.x, true), !vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(false, var_0.a.x, var_0.a.x, false))), abs(vec3<i32>(_wgslsmith_mod_i32(u_input.a << (4294967295u % 32u), ~u_input.a), u_input.a, u_input.a)), !var_0.a.x);
    return Struct_1(select(select(!var_0.a, var_2.a.xzz, true), !vec3<bool>(any(var_2.a), false, u_input.a == -1i), var_0.a));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> i32 {
    var var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_div_u32(u_input.b, ~25206u)));
    var var_1 = firstTrailingBit(~1u);
    let var_2 = Struct_3(arg_0.a);
    var var_3 = func_2();
    var var_4 = Struct_1(arg_0.a.a);
    return countOneBits(_wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, countOneBits(~u_input.b)), 28u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(327f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + var_0.x)))))));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(u_input.a, -func_1(Struct_3(Struct_1(vec3<bool>(true, false, true))), true))), u_input.a);
    let var_3 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f + var_0.x)))));
    var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, ~(~u_input.a), -1i), select(vec3<i32>(-1i) * -vec3<i32>(31877i, -19054i, 56i), ~min(vec3<i32>(-3299i, -6550i, u_input.a), vec3<i32>(2147483647i, u_input.a, var_2.x)), true)), var_2.x);
    let var_4 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, u_input.a), vec2<i32>(1i, u_input.a)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-10570i, var_2.x, u_input.a, 25595i)), ~vec4<i32>(var_2.x, -34377i, u_input.a, 13029i)), 1i), 2147483647i & ~var_2.x), max(2147483647i, -1i), -_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, -22307i), select(-30804i, -1i, true) >> (reverseBits(7474u) % 32u)), -23837i);
    let var_5 = firstLeadingBit(reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 9466u), vec2<u32>(4294967295u, u_input.b)), ~336u, min(abs(43451u), firstTrailingBit(u_input.b)))));
    let var_6 = ~abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_2.x, var_4.x, u_input.a)), var_4.wyx));
    var var_7 = 15395u;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_4 >> (abs(~vec4<u32>(u_input.b, 1u, u_input.b, 92442u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(max(-1266f, -824f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1342f))), var_1, 964f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(366f, _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1025f, -269f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1160f, var_3, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, var_0.x, var_0.x, var_3))))), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(803f, var_0.x, var_1) * vec3<f32>(-680f, var_3, -915f)))))));
}

