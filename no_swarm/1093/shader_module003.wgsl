struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_div_u32(u_input.b.x & _wgslsmith_dot_vec4_u32(u_input.c, u_input.b), 36940u);
    let var_1 = u_input.d.zz;
    var var_2 = ~(firstLeadingBit(min(vec4<u32>(var_0, 40040u, var_0, u_input.b.x) & u_input.c, ~u_input.c)) ^ vec4<u32>(var_0, abs(0u ^ var_0), var_0 & 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 4294967295u, var_0, 1u), firstLeadingBit(u_input.c))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1100f))) != 811f;
    var var_4 = Struct_2(!(!(!arg_0)) | any(!select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, arg_0, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_0, true))), Struct_1(u_input.d, all(vec3<bool>(any(arg_1), true, false & arg_0)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(383f + -377f), _wgslsmith_f_op_f32(-941f * -240f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(303f, 1043f) - vec2<f32>(528f, 426f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(750f, -1578f)))))));
    return 32335i;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(1086f - -1199f), 0i, _wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_div_f32(1359f, -124f))), Struct_2(true, arg_1), arg_1);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(max(var_0.a, var_0.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(280f)) * -1000f));
    let var_2 = func_3(true, !(!vec2<bool>(true, 2147483647i <= u_input.d.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.c, _wgslsmith_f_op_vec2_f32(min(arg_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1634f, -1000f))))), var_0.d.b.c) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.c.x, -848f)), _wgslsmith_f_op_vec2_f32(-arg_1.c))), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(step(var_0.e.c, arg_1.c))));
    return 0u & ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(102896u, u_input.b.x)), _wgslsmith_mult_vec2_u32(~u_input.c.wy, ~vec2<u32>(31033u, u_input.b.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2517f, 586f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1907f * 1000f), -703f) - -860f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1113f, -740f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.e.c - arg_2.d.b.c)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(153f, 232f), vec2<f32>(-155f, var_0.x)))) + arg_2.e.c)));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.e.c.x, 1452f)));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -111f))), arg_2.e.c));
    let var_1 = true;
    return arg_2.a;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), arg_3), _wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, -323f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1024f, 397f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-368f, arg_1) * vec2<f32>(arg_0, arg_0)))))));
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i), u_input.a.yxy);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> f32 {
    var var_0 = ~vec2<u32>(~_wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_clamp_u32(1u, 1598u, u_input.b.x) | ~u_input.c.x) ^ u_input.c.yx;
    var var_1 = vec2<bool>(arg_1, !((abs(u_input.a.x) >= 16925i) & arg_1));
    var var_2 = Struct_1(u_input.a, !((~6083u << (abs(0u) % 32u)) < ~(u_input.b.x >> (4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-221f, arg_0.x) - vec2<f32>(1000f, -1000f)), _wgslsmith_f_op_vec2_f32(step(arg_0.xz, vec2<f32>(arg_0.x, arg_0.x)))), arg_0.yy), true)));
    var_1 = vec2<bool>(false, (min(_wgslsmith_mod_i32(16157i, -2147483647i), max(u_input.d.x, -79878i)) ^ -_wgslsmith_mult_i32(var_2.a.x, u_input.a.x)) >= _wgslsmith_dot_vec2_i32(var_2.a.yz, u_input.a.xx));
    let var_3 = Struct_2(false, Struct_1(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_2.a.x, -var_2.a.x, _wgslsmith_sub_i32(-12489i, var_2.a.x), countOneBits(var_2.a.x))), false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(958f, 1417f) * _wgslsmith_div_vec2_f32(vec2<f32>(-678f, arg_0.x), vec2<f32>(arg_0.x, -600f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_mult_u32(0u, 63827u), 50901u, ~51579u, func_2(false, var_3.b)), vec4<i32>(u_input.d.x, var_2.a.x, ~var_3.b.a.x, 1i), Struct_3(_wgslsmith_f_op_f32(select(-1372f, 612f, false)), ~u_input.d.x, -153f, var_3, var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.c.x + var_3.b.c.x), _wgslsmith_f_op_f32(var_2.c.x * var_3.b.c.x))), 4294967295u, 217f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(-var_3.b.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = u_input.b.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(115f, 867f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f + 724f) - _wgslsmith_f_op_f32(func_1(vec3<f32>(-799f, -444f, -1961f), false)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(792f)) * 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1327f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -894f))), -281f)));
    var_0 = _wgslsmith_mult_u32(abs(select(var_1, ~(~1u), true)), ~var_1);
    let var_3 = Struct_1(u_input.d, true, var_2);
    var_0 = 36341u;
    var var_4 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(i32(-1i) * -1i), 0i, ~_wgslsmith_clamp_i32(u_input.d.x, -37816i, u_input.a.x), u_input.d.x >> (~var_1 % 32u)), _wgslsmith_clamp_vec4_i32(~(u_input.a << (u_input.c % vec4<u32>(32u))), u_input.d, firstLeadingBit(vec4<i32>(u_input.a.x, var_3.a.x, -2147483647i, u_input.d.x)))), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_3.c))) * var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.c.x, 533f))))) - vec2<f32>(-639f, var_4.c.x)))), -vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.x, 2147483647i, var_4.a.x, var_3.a.x), vec4<i32>(1i, var_3.a.x, -20474i, var_4.a.x))), -2147483647i, _wgslsmith_mod_i32(-u_input.a.x, u_input.a.x), ~var_4.a.x), firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.b.wwy, u_input.c.wyz)), _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f))), -13933i);
}

