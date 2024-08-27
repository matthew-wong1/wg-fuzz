struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(20576u), vec2<i32>(44822i, -31639i), false), Struct_4(Struct_3(1u), vec2<i32>(1i, i32(-2147483648)), false), Struct_4(Struct_3(0u), vec2<i32>(i32(-2147483648), -1i), false), Struct_4(Struct_3(1u), vec2<i32>(-14785i, -1i), false), Struct_4(Struct_3(44102u), vec2<i32>(26099i, -17814i), true), Struct_4(Struct_3(0u), vec2<i32>(5707i, 0i), false), Struct_4(Struct_3(89408u), vec2<i32>(1522i, i32(-2147483648)), false), Struct_4(Struct_3(904u), vec2<i32>(-17132i, -27574i), false));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1185f, -408f) - _wgslsmith_f_op_f32(step(124f, 990f))), -666f)));
    var var_1 = Struct_2(-33171i, true, ~countOneBits(1u), false, abs(i32(-1i) * -_wgslsmith_sub_i32(arg_2, arg_2)));
    let var_2 = ~arg_1;
    var_1 = Struct_2(~(~(-reverseBits(-1i))), var_1.d, arg_0, true, 2147483647i);
    return 1189f;
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = ~firstTrailingBit(max(vec4<u32>(arg_0.c, 1u, ~4949u, u_input.a.x), u_input.a));
    global0 = array<Struct_4, 8>();
    var_0 = vec4<u32>(var_0.x, _wgslsmith_sub_u32(~countOneBits(_wgslsmith_clamp_u32(arg_0.c, u_input.a.x, 4294967295u)), ~firstTrailingBit(~1u)), abs(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x) ^ _wgslsmith_sub_u32(~var_0.x, arg_0.c)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(func_3(41054u, countOneBits(reverseBits(~firstTrailingBit(u_input.a))), _wgslsmith_mult_i32(-67212i, ~(~_wgslsmith_add_i32(arg_0.a, arg_0.e))), Struct_1(vec2<i32>(u_input.b, -1013i), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 39447u), u_input.a.xzz) & 0u)));
    let var_2 = false;
    return vec3<f32>(2181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -606f))) + _wgslsmith_f_op_f32(var_1 * 402f)), 1167f);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    let var_0 = !(!(!vec2<bool>(true, all(vec3<bool>(true, true, false)))));
    let var_1 = vec4<bool>(arg_0 > arg_0, !any(var_0), !(!any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)))), any(vec3<bool>(!all(vec3<bool>(var_0.x, var_0.x, true)), !all(vec4<bool>(var_0.x, false, false, false)), true)));
    return Struct_1(_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -18617i, 9582i), vec3<i32>(u_input.b, 0i, -1i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, 1i), u_input.b), ~(-vec2<i32>(-62217i, -20078i)))), ~(~u_input.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2039f) + _wgslsmith_f_op_f32(f32(-1f) * -460f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1340f + -311f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(i32(-1i) * -1i, u_input.a.x < u_input.a.x, abs(4294967295u), false, -u_input.b))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(801f * -132f), _wgslsmith_f_op_f32(abs(1053f)))), 344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f + 508f) * 1344f))));
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f * 1241f) - -495f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, -502f, 701f) + vec3<f32>(644f, 158f, 284f)))) + vec3<f32>(-1456f, -1718f, _wgslsmith_f_op_f32(-441f * 801f))) + vec3<f32>(-1000f, _wgslsmith_div_f32(1033f, _wgslsmith_f_op_f32(abs(586f))), _wgslsmith_f_op_f32(f32(-1f) * -1508f))));
    var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-2007f, 319f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(689f, 593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1560f + 432f) + _wgslsmith_f_op_f32(1592f - 608f))), vec3<f32>(-2033f, 358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1759f, 588f)))))));
    var_0 = Struct_1(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 1i, var_0.a.x), ~vec3<i32>(2147483647i, 1i, -963i)), -1265i)), u_input.a.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1136f * _wgslsmith_f_op_f32(select(288f, -1918f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(334f, 771f, false)) + _wgslsmith_f_op_f32(trunc(1535f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(-2159i, true, u_input.a.x, true, u_input.b))).x, _wgslsmith_f_op_f32(f32(-1f) * -1144f))));
    return Struct_3(var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 8>();
    let var_0 = -2147483647i;
    let var_1 = Struct_4(func_1(), vec2<i32>(0i, _wgslsmith_sub_i32(countOneBits(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(5764i, -2147483647i), vec2<i32>(0i, -47273i))) | u_input.b), false);
    let var_2 = -(reverseBits(-(vec4<i32>(49572i, var_1.b.x, -52198i, var_1.b.x) << (vec4<u32>(var_1.a.a, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) << (~(vec4<u32>(u_input.a.x, var_1.a.a, var_1.a.a, 4294967295u) & vec4<u32>(0u, var_1.a.a, 1u, var_1.a.a)) % vec4<u32>(32u)));
    var var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(594f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-365f, 306f, 407f), vec3<f32>(-295f, 313f, 1913f)) - vec3<f32>(-1389f, 2072f, -718f)))));
    var var_4 = vec4<u32>(min(_wgslsmith_mod_u32(1u, ~var_1.a.a), _wgslsmith_mult_u32(~42469u, 0u)), 0u, ~1u, _wgslsmith_mult_u32(0u, func_4(-1567f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, -2216f, 208f))).b)) << ((~abs(~u_input.a) | vec4<u32>(var_3.b, _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 0u)) | ~4294967295u, 44524u, var_3.b)) % vec4<u32>(32u));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~73733u)), var_5.b.x, 0u << (((_wgslsmith_dot_vec2_u32(u_input.a.wy, var_4.zw) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_4.x, var_4.x, 45588u), u_input.a)) | firstLeadingBit(~var_1.a.a)) % 32u), ~(i32(-1i) * -(var_5.b.x >> (29565u % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f - _wgslsmith_f_op_f32(ceil(567f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1065f - 759f))))))));
}

