struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(firstLeadingBit(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_1, 85046u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 7986u, 4294967295u), vec3<u32>(39888u, arg_1, u_input.c))), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, u_input.c, 1u) ^ vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.c, 1u)), !vec3<bool>(arg_2.a.x, false, arg_0.a.x))));
    var_0 = Struct_1(~(firstLeadingBit(var_0.a) & _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1, var_0.a.x, u_input.c), firstLeadingBit(var_0.a))));
    let var_1 = Struct_1(var_0.a);
    var var_2 = _wgslsmith_dot_vec2_u32(~var_0.a.xy, var_0.a.yz);
    let var_3 = Struct_1(var_0.a);
    return arg_0.a.wx;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(~(-55582i), i32(-1i) * -1i), u_input.a.x, u_input.b), vec3<i32>(_wgslsmith_add_i32(~(u_input.a.x ^ -13714i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 0i, -12045i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, u_input.a.x))), u_input.d.x, 41058i));
    var var_1 = _wgslsmith_mod_vec2_u32(countOneBits(~(~vec2<u32>(0u, 4294967295u))), (vec2<u32>(u_input.c, ~u_input.c) | (vec2<u32>(55787u, 1u) & ~vec2<u32>(u_input.c, 20126u))) ^ vec2<u32>(1u, ~4682u));
    var var_2 = select(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), func_3(Struct_2(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true)), u_input.c, Struct_2(vec4<bool>(false, true, true, false))), true), !vec2<bool>(select(true, true, u_input.c == u_input.c), true), vec2<bool>(true, true));
    var var_3 = vec3<u32>(4294967295u >> (~(~(~var_1.x)) % 32u), 35738u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(var_1.x, 4294967295u), firstTrailingBit(~u_input.c), _wgslsmith_mod_u32(56963u, _wgslsmith_mult_u32(u_input.c, var_1.x))), _wgslsmith_mod_u32(1u, ~firstTrailingBit(u_input.c))));
    var_2 = select(vec2<bool>(true, _wgslsmith_f_op_f32(max(-1273f, _wgslsmith_f_op_f32(step(1152f, 782f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1776f)))), !vec2<bool>(false, 51357u < reverseBits(u_input.c)), vec2<bool>(select(!var_2.x, true, true), any(!vec2<bool>(var_2.x, var_2.x))));
    return -305f;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_1(abs(firstTrailingBit(vec3<u32>(~55230u, 1u, firstLeadingBit(1u)))));
    let var_1 = arg_0;
    var var_2 = -859f;
    var_0 = Struct_1(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), min(vec3<u32>(u_input.c, 4294967295u, 43307u), abs(vec3<u32>(u_input.c, 105809u, u_input.c)))), var_0.a, !vec3<bool>(true, -2643f < arg_1.x, u_input.a.x == 0i)));
    var var_3 = u_input.a.wy;
    return _wgslsmith_clamp_vec2_u32(firstLeadingBit(var_0.a.yx) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(u_input.c, var_0.a.x), vec2<u32>(u_input.c, var_0.a.x)), _wgslsmith_div_vec2_u32(firstLeadingBit(var_0.a.yx ^ var_0.a.zy), _wgslsmith_add_vec2_u32(var_0.a.xx, vec2<u32>(4294967295u, u_input.c))), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 2565u), var_0.a.zx)) ^ ~(~min(~vec2<u32>(var_0.a.x, 68733u), vec2<u32>(u_input.c, var_0.a.x)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -777f)) + -2155f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1583f, _wgslsmith_f_op_f32(abs(-956f)), var_0, -759f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 636f, -993f, 524f) + vec4<f32>(var_0, var_0, 507f, var_0)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(870f, 1524f, -1360f, var_0), vec4<f32>(-858f, var_0, var_0, var_0))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(-1123f + _wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1299f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 696f, var_0, -1000f) + vec4<f32>(-376f, -676f, var_0, var_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(833f, var_0, 265f, -1000f), vec4<f32>(-139f, 2565f, -437f, var_0)))))));
    var var_2 = -205f;
    let var_3 = true;
    let var_4 = ~(vec4<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(min(arg_0.x, u_input.c), u_input.c), _wgslsmith_add_u32(min(4294967295u, u_input.c), _wgslsmith_mult_u32(38745u, 16587u)), ~1u) & ~vec4<u32>(u_input.c, _wgslsmith_clamp_u32(72968u, 6279u, 6465u), _wgslsmith_add_u32(arg_0.x, u_input.c), u_input.c));
    return Struct_3(var_3, Struct_1(max(vec3<u32>(_wgslsmith_add_u32(u_input.c, arg_0.x), u_input.c, 0u), vec3<u32>(4294967295u, abs(1u), u_input.c))), select(func_3(Struct_2(vec4<bool>(false, arg_1.a.x, false, false)), ~1u, Struct_2(!arg_1.a)), arg_3.a.xw, vec2<bool>(true, true)), Struct_1(vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.c, u_input.c)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 0u, var_4.x, 4294967295u), abs(var_4)), ~(~arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.wwz, var_1.yww)) - _wgslsmith_f_op_vec3_f32(ceil(var_1.zxy)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = arg_1.x | (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - -2315f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(-1726f * arg_0.x)))) != 484f);
    let var_1 = func_5(func_4(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_0.x + -1557f)))), Struct_2(!select(vec4<bool>(false, var_0, arg_1.x, var_0), select(vec4<bool>(var_0, false, false, false), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, false, false, arg_1.x)), any(arg_1.zx))), all(!arg_1), Struct_2(!select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, arg_1.x, var_0, true), var_0), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, var_0), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))));
    var var_2 = Struct_2(select(select(!(!vec4<bool>(true, false, var_0, false)), !(!vec4<bool>(arg_1.x, var_0, var_0, false)), vec4<bool>(u_input.a.x >= -30182i, var_1.e.x < var_1.e.x, any(vec2<bool>(arg_1.x, arg_1.x)), true)), select(select(select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, false, var_0, arg_1.x), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(var_0, false, false, var_1.a), vec4<bool>(false, var_0, var_0, true), false), var_0), true));
    var var_3 = Struct_3(!select(var_2.a.x, any(vec4<bool>(true, true, var_1.a, var_1.a)), true), func_5(vec2<u32>(u_input.c, var_1.b.a.x), Struct_2(select(!vec4<bool>(arg_1.x, var_1.c.x, true, true), var_2.a, arg_1.x)), !any(vec4<bool>(true, false, var_0, var_1.c.x)), Struct_2(select(!var_2.a, var_2.a, u_input.a.x > u_input.d.x))).b, arg_1.yy, func_5(firstTrailingBit(vec2<u32>(60584u << (u_input.c % 32u), firstLeadingBit(u_input.c))), Struct_2(select(!vec4<bool>(var_0, var_0, var_1.a, arg_1.x), select(var_2.a, vec4<bool>(var_1.c.x, var_1.c.x, false, var_0), var_0), vec4<bool>(var_0, var_2.a.x, arg_1.x, false))), var_2.a.x, Struct_2(var_2.a)).b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, 241f, -1291f)) - vec3<f32>(arg_0.x, -759f, _wgslsmith_f_op_f32(ceil(2339f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e) * vec3<f32>(arg_0.x, var_1.e.x, arg_0.x))))));
    let var_4 = Struct_3(!(true && var_1.c.x), func_5(vec2<u32>(2441u, ~0u) << ((var_1.b.a.zx ^ vec2<u32>(var_1.b.a.x, var_1.b.a.x)) % vec2<u32>(32u)), Struct_2(select(var_2.a, var_2.a, !vec4<bool>(var_2.a.x, var_0, var_2.a.x, var_1.a))), var_3.a, Struct_2(select(var_2.a, vec4<bool>(true, var_1.a, var_3.a, false), vec4<bool>(true, arg_1.x, true, var_2.a.x)))).d, vec2<bool>(arg_1.x, true), Struct_1(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_1.d.a.x), vec2<u32>(u_input.c, 16907u)), _wgslsmith_mult_u32(109238u << (var_1.b.a.x % 32u), 4294967295u), 43060u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.e)));
    return vec2<u32>(18095u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(~(func_1(vec3<f32>(201f, -1502f, 1364f), vec3<bool>(true, true, true)) | vec2<u32>(26208u, 15724u)), vec2<u32>(42403u, ~firstTrailingBit(38111u))) > u_input.c;
    var_0 = true;
    var_0 = select(true, true || (any(vec2<bool>(true, true)) | true), select(max(4294967295u, u_input.c), 70467u, any(vec4<bool>(false, false, true, false))) <= 1u) & true;
    var_0 = all(!(!func_5(select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(30451u, 1u), false), Struct_2(vec4<bool>(false, true, true, false)), true, Struct_2(vec4<bool>(true, true, false, true))).c));
    var var_1 = func_5(~(~_wgslsmith_mult_vec2_u32(func_5(vec2<u32>(u_input.c, u_input.c), Struct_2(vec4<bool>(true, false, true, true)), false, Struct_2(vec4<bool>(true, false, true, true))).b.a.zx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)))), Struct_2(vec4<bool>(true, true, _wgslsmith_f_op_f32(step(1385f, -1297f)) == _wgslsmith_f_op_f32(-337f * 2408f), true)), (-5408i == firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-15325i, 2147483647i, u_input.b)))) || true, Struct_2(vec4<bool>(true, u_input.c <= 1u, u_input.a.x > (u_input.a.x << (68825u % 32u)), u_input.c >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(81368u, 0u, 0u))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.xz, _wgslsmith_mult_i32(10159i, _wgslsmith_clamp_i32(-5190i, 22829i, u_input.a.x)) >> (u_input.c % 32u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(countOneBits(0u), 0u), ~var_1.a.x << (select(~8641u, u_input.c & 1u, func_5(vec2<u32>(0u, u_input.c), Struct_2(vec4<bool>(false, false, true, true)), false, Struct_2(vec4<bool>(false, true, false, false))).a) % 32u)));
}

