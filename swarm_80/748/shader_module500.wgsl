struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 114247u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = Struct_4(Struct_3(!select(true, any(vec2<bool>(arg_0.c, true)), true)), Struct_2(-403f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.a, arg_0.b.b.x, arg_0.b.d)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.b.x), _wgslsmith_f_op_f32(521f + arg_0.b.b.x), _wgslsmith_f_op_f32(max(1004f, arg_0.b.b.x))))), countOneBits(19381u) & _wgslsmith_div_u32(4294967295u ^ u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, arg_1)), 985f), all(select(!vec3<bool>(arg_0.a.a, false, false), select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(true, arg_0.c, arg_0.c), true), arg_1 != u_input.a.x)) || true, Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(-22738i, 2147483647i, -49270i)), select(vec3<i32>(arg_0.d.a, arg_0.d.a, 27795i) ^ vec3<i32>(14371i, arg_0.d.a, -9029i), _wgslsmith_sub_vec3_i32(vec3<i32>(-15438i, arg_0.d.a, arg_0.d.a), vec3<i32>(arg_0.d.a, 1i, arg_0.d.a)), select(vec3<bool>(arg_0.c, arg_0.c, arg_0.a.a), vec3<bool>(false, arg_0.c, false), false)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.d.a, 2147483647i, var_0.d.a, 12338i), vec4<i32>(15529i, arg_0.d.a, arg_0.d.a, arg_0.d.a) | vec4<i32>(10048i, var_0.d.a, var_0.d.a, 17691i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.a, arg_0.d.a, -2147483647i, arg_0.d.a), vec4<i32>(var_0.d.a, -54072i, 1i, var_0.d.a)))), vec4<i32>(arg_0.d.a, 1i, ~var_0.d.a, arg_0.d.a | 2147483647i) & _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.a, -17850i, -4244i, -1i), vec4<i32>(-25330i, 2147483647i, var_0.d.a, 4389i)), -vec4<i32>(-20347i, 0i, -1i, -1i))));
    var var_2 = arg_0.b.b.x;
    let var_3 = select(u_input.b.xx << (~u_input.a.yw % vec2<u32>(32u)), u_input.b.zx, all(select(select(select(vec3<bool>(true, arg_0.c, var_0.c), vec3<bool>(arg_0.a.a, false, var_0.c), vec3<bool>(true, false, arg_0.c)), select(vec3<bool>(false, false, true), vec3<bool>(var_0.c, arg_0.c, arg_0.a.a), true), vec3<bool>(arg_0.a.a, false, arg_0.a.a)), vec3<bool>(true, arg_0.c, true), select(vec3<bool>(true, var_0.a.a, arg_0.c), vec3<bool>(var_0.c, var_0.a.a, arg_0.a.a), true))));
    var_0 = Struct_4(var_0.a, Struct_2(_wgslsmith_f_op_f32(step(var_0.b.a, arg_0.b.d)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, var_0.b.a, var_0.b.a) * var_0.b.b))))), arg_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) + arg_0.b.b.x) - var_0.b.d)), var_0.c, Struct_1(-2147483647i));
    return min(u_input.a.x ^ _wgslsmith_sub_u32(var_3.x, arg_1 ^ 4469u), ~(~_wgslsmith_add_u32(1u, 22015u) >> (firstTrailingBit(abs(u_input.a.x)) % 32u)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 20435u), _wgslsmith_mod_u32(u_input.a.x, 1u)), ~(~u_input.b.x), func_3(Struct_4(Struct_3(false), Struct_2(arg_0, vec3<f32>(arg_0, 1388f, 567f), u_input.a.x, arg_0), true, Struct_1(0i)), _wgslsmith_add_u32(1u, 45932u)), u_input.a.x)));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(426f * arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1888f, arg_0, 1000f) * vec3<f32>(arg_0, arg_0, 1000f))))), min(1u, u_input.a.x), arg_0);
    var var_1 = Struct_5(true, !select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, all(vec2<bool>(false, false))), vec3<bool>(any(vec2<bool>(true, false)), u_input.a.x < 27586u, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28229i, -12259i), vec2<i32>(16838i, 6549i))) ^ 1i, arg_0, Struct_4(Struct_3(true), Struct_2(_wgslsmith_div_f32(arg_0, -1075f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1545f, var_0.b.x, arg_0))), 35998u, arg_0), false, Struct_1(1i)));
    return Struct_2(_wgslsmith_f_op_f32(-var_1.d), var_1.e.b.b, min(~_wgslsmith_div_u32(24646u, 51165u), _wgslsmith_mult_u32(78432u, ~func_3(var_1.e, var_1.e.b.c))), var_0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(countOneBits(vec4<u32>(u_input.b.x, arg_0.c, arg_0.c, 120405u)), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 9136u)), max(u_input.a, vec4<u32>(arg_0.c, arg_0.c, arg_0.c, 1u))), vec4<u32>(abs(u_input.b.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.b.x), ~arg_0.c), 13036u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(9669u, 1u)) | _wgslsmith_mult_u32(u_input.a.x, 71855u))) & (firstTrailingBit(19909u) >> (~(~0u) % 32u));
    let var_0 = Struct_5(-7812i < ~arg_1.a, vec3<bool>(true || any(vec3<bool>(true, false, true)), true, false), 34811i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a))), Struct_4(Struct_3(~42106u != _wgslsmith_clamp_u32(27325u, arg_0.c, u_input.b.x)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - arg_0.a)), true, arg_1));
    global0 = u_input.a.x;
    var var_1 = 62795u;
    let var_2 = ~u_input.a.x;
    return arg_1.a;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = firstTrailingBit(func_4(func_2(_wgslsmith_f_op_f32(-arg_2.x)), Struct_1(firstTrailingBit(2315i))) ^ (_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2997i, 23077i, 1i), -18459i) ^ ~1i));
    let var_1 = Struct_2(arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, vec3<f32>(-1093f, arg_2.x, arg_2.x)) - vec3<f32>(359f, 813f, 2442f)))), u_input.a.x, _wgslsmith_f_op_f32(-arg_2.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(967f).d, _wgslsmith_f_op_f32(floor(-632f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(499f)))), -454f)));
    let var_3 = var_1;
    var var_4 = min(~1i, min(-43159i, -2147483647i)) == (~40490i << (~(u_input.b.x ^ countOneBits(var_1.c)) % 32u));
    return ~(~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(!(select(true, true, true) & (select(true, false, true) & all(vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_f_op_f32(min(-298f, 153f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-654f, -1000f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1162f), -1524f, -460f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2107f, -469f, -1442f))) - vec3<f32>(-1230f, 1039f, -141f)) - vec3<f32>(_wgslsmith_f_op_f32(677f - -198f), -1000f, _wgslsmith_f_op_f32(-919f - 2986f)))));
    let var_0 = ~(~53406u);
    global0 = firstLeadingBit(_wgslsmith_div_u32(var_0, 17253u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f - 1000f)), 1015f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 1284f))) + func_2(_wgslsmith_f_op_f32(min(-1000f, -638f))).d)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1946f, -341f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f))));
    let var_2 = ~firstLeadingBit(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(13784i, 0i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, 0i, -60716i), vec4<i32>(-2147483647i, 2147483647i, 0i, 15819i)) & vec4<i32>(1i, 1i, 1i, 1i), ~min(vec4<i32>(-6481i, 0i, 12839i, 2147483647i), vec4<i32>(-29629i, 7139i, 2147483647i, 6619i))));
    global0 = min(1u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(vec2<i32>(1i, 0i), -(~var_2.ww), !select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), true), !vec2<bool>(true, var_1), vec2<bool>(true, var_1))), u_input.a.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2148f, -980f, -786f, -702f) * vec4<f32>(1087f, -827f, 1699f, -1794f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(728f, -2214f, 781f, 1220f), vec4<f32>(-231f, -768f, -207f, 1038f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1403f, -1314f, 489f, 927f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-393f - -1237f), 524f, 274f, 602f))), ~vec4<u32>(59815u, ~(~u_input.a.x), var_0, ~(~var_0)));
}

