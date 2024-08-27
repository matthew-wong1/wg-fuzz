struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(-606f, -580f), true, 4294967295u, vec4<i32>(-34293i, 23987i, -54626i, 1i)), Struct_1(vec2<f32>(-111f, -1032f), false, 0u, vec4<i32>(-5879i, 20955i, 1i, 2147483647i)), Struct_1(vec2<f32>(1871f, 318f), true, 4294967295u, vec4<i32>(3777i, 0i, -39699i, 22360i)), Struct_1(vec2<f32>(-677f, 1000f), false, 1u, vec4<i32>(-75440i, i32(-2147483648), 59768i, 13064i)), Struct_1(vec2<f32>(-1000f, 2360f), false, 0u, vec4<i32>(19946i, 24789i, i32(-2147483648), -28274i)), Struct_1(vec2<f32>(-962f, -1326f), true, 44294u, vec4<i32>(0i, 51726i, -57265i, 42856i)), Struct_1(vec2<f32>(-151f, 149f), true, 54637u, vec4<i32>(-57041i, 0i, 29285i, -39899i)), Struct_1(vec2<f32>(-1137f, -2174f), false, 15206u, vec4<i32>(-16415i, 1i, -15788i, 0i)), Struct_1(vec2<f32>(-803f, -1044f), true, 26142u, vec4<i32>(-40207i, 57509i, -12811i, -1i)), Struct_1(vec2<f32>(-436f, 299f), true, 0u, vec4<i32>(0i, 12620i, 33014i, -16294i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> i32 {
    global0 = array<Struct_1, 10>();
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x), var_0.a.x));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) + _wgslsmith_f_op_f32(-arg_0.d.c.x)), _wgslsmith_f_op_f32(-arg_0.d.c.x)), arg_0.d.c.x != _wgslsmith_f_op_f32(-arg_0.b.a.x), arg_1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, _wgslsmith_mult_i32(1i, arg_2), -1i, 0i << (1u % 32u)), var_0.d, vec4<i32>(var_0.d.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(70787u, var_0.c, 44917u, arg_0.b.c), vec4<u32>(u_input.c.x, 1u, 15004u, 15699u)) % 32u), u_input.a.x, -1i, -36517i)));
    var var_2 = arg_2;
    return -countOneBits(arg_0.b.d.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 10>();
    let var_0 = arg_1.d.b.zy;
    let var_1 = vec2<i32>(1i, ~_wgslsmith_clamp_i32(u_input.a.x, ~5375i, func_3(arg_1, Struct_3(13431u), arg_2.d.x)));
    global0 = array<Struct_1, 10>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1405f, arg_2.a.x)))))), _wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1662f)))))));
    return Struct_2(!select(vec3<bool>(true, true, !arg_1.b.b), vec3<bool>(false, any(vec3<bool>(false, arg_1.c.x, false)), true), true), select(!vec3<bool>(all(arg_1.c), arg_1.b.a.x < arg_2.a.x, arg_2.b & true), select(vec3<bool>(any(vec3<bool>(false, arg_2.b, false)), var_0.x, true), select(vec3<bool>(var_0.x, true, arg_0.x), !arg_0.wyx, arg_1.e <= 0u), arg_0.x), select(vec3<bool>(true | arg_1.d.a.x, arg_2.d.x < arg_1.b.d.x, any(vec2<bool>(arg_0.x, arg_0.x))), arg_1.c.yzy, arg_0.yzz)), arg_1.d.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.c.zy), arg_0.b.x, abs(_wgslsmith_mult_u32(4294967295u, 0u)) | u_input.c.x, _wgslsmith_mod_vec4_i32(~vec4<i32>(2694i, u_input.d, -1108i, u_input.b.x), vec4<i32>(1i, u_input.d, u_input.d, u_input.b.x)) ^ countOneBits(vec4<i32>(-2147483647i, u_input.d, u_input.b.x, 2147483647i) << (vec4<u32>(10473u, arg_2.x, arg_2.x, arg_3.x) % vec4<u32>(32u)))), 33661i & (-2147483647i ^ u_input.b.x));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, min(vec3<u32>(u_input.c.x, 11659u, u_input.c.x), firstLeadingBit(u_input.c))), min(6310u, 22660u), firstLeadingBit(1u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.c, ~(~vec3<u32>(48488u, 1u, arg_1.x)))));
    global0 = array<Struct_1, 10>();
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1555f, _wgslsmith_div_f32(arg_0.c.x, 510f))), _wgslsmith_f_op_f32(1415f - _wgslsmith_f_op_f32(arg_0.c.x - var_0.a.a.x))), vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.x * -1169f))))), false, ~_wgslsmith_add_u32(arg_3.x, arg_2.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.a.d.x, u_input.b.x, -2147483647i, u_input.d), select(vec4<i32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), vec4<i32>(var_0.a.d.x, -47207i, var_0.b, u_input.d), arg_0.a.x)), var_0.a.d), select(vec4<i32>(57749i, _wgslsmith_mod_i32(2147483647i, var_0.a.d.x), _wgslsmith_add_i32(var_0.a.d.x, 52679i), var_0.a.d.x >> (30662u % 32u)), -_wgslsmith_div_vec4_i32(var_0.a.d, vec4<i32>(var_0.b, var_0.b, var_0.b, 26905i)), vec4<bool>(false, false, arg_0.b.x, true)), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a.d.xxz, var_0.a.d.wxz), -36887i, ~var_0.a.d.x, 40332i))));
    let var_3 = abs(var_1.xx);
    return arg_0.b.xy;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> vec2<bool> {
    global0 = array<Struct_1, 10>();
    return vec2<bool>(all(select(!vec3<bool>(false, arg_0.b.x, false), select(select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(arg_0.b.x, true, false), vec3<bool>(arg_0.b.x, arg_0.a.x, true)), arg_0.a, !arg_0.b.x), true)), any(select(func_4(func_2(vec4<bool>(false, true, arg_2, arg_0.b.x), Struct_4(u_input.c, Struct_1(arg_0.c.zx, arg_0.a.x, u_input.c.x, vec4<i32>(1i, -17900i, u_input.d, -1i)), vec4<bool>(arg_0.b.x, arg_2, false, false), arg_0, arg_1), Struct_1(arg_0.c.xy, arg_2, 4938u, vec4<i32>(u_input.a.x, u_input.d, 2147483647i, 2147483647i))), firstTrailingBit(vec2<u32>(u_input.c.x, 1u)), u_input.c.zz, firstLeadingBit(vec2<u32>(arg_1, arg_1))), !(!vec2<bool>(arg_2, arg_2)), !(!arg_0.a.xy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), func_1(Struct_2(vec3<bool>(all(vec4<bool>(false, false, false, true)), all(vec4<bool>(false, true, false, true)), any(vec3<bool>(false, true, true))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<f32>(1f, 1f, 1f)), ~abs(25804u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1552f)))) < _wgslsmith_f_op_f32(1000f - 656f)), all(vec4<bool>(true && all(vec2<bool>(false, true)), (u_input.c.x << (u_input.c.x % 32u)) <= ~u_input.c.x, true, true)));
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.c, firstTrailingBit(u_input.c));
    var var_2 = Struct_3(_wgslsmith_sub_u32(~(~(~1u)), _wgslsmith_sub_u32(abs(u_input.c.x), ~var_1.x) << (u_input.c.x % 32u)));
    var var_3 = _wgslsmith_f_op_f32(floor(1697f));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) - -178f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(trunc(536f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-779f, -1167f)), -578f)))));
    let var_5 = (~max(firstTrailingBit(vec4<i32>(0i, u_input.d, -34007i, 76562i)), abs(vec4<i32>(u_input.b.x, 0i, 0i, u_input.a.x))) << (reverseBits(abs(vec4<u32>(var_2.a, 42308u, var_2.a, 4294967295u)) << (abs(vec4<u32>(var_1.x, 5362u, 10223u, 44773u)) % vec4<u32>(32u))) % vec4<u32>(32u))) | -(reverseBits(vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i)) & -firstLeadingBit(vec4<i32>(u_input.b.x, -1i, u_input.a.x, u_input.a.x)));
    let var_6 = _wgslsmith_f_op_vec2_f32(var_4 - var_4);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.c.x, 16036u));
}

