struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(15071u, 77116u, 19022u), vec3<u32>(0u, 22540u, 49815u), vec3<u32>(73408u, 29211u, 47878u), vec3<u32>(4294967295u, 11423u, 24275u), vec3<u32>(69236u, 0u, 1u), vec3<u32>(10844u, 0u, 0u), vec3<u32>(180u, 4294967295u, 22093u), vec3<u32>(0u, 1u, 17647u), vec3<u32>(4294967295u, 0u, 19694u), vec3<u32>(20846u, 4294967295u, 4294967295u), vec3<u32>(45610u, 4294967295u, 56551u), vec3<u32>(76750u, 1u, 41534u), vec3<u32>(1u, 4294967295u, 20788u), vec3<u32>(38277u, 0u, 70808u), vec3<u32>(84392u, 1u, 0u), vec3<u32>(15649u, 54032u, 4294967295u), vec3<u32>(41946u, 12109u, 0u), vec3<u32>(57408u, 41785u, 15447u), vec3<u32>(7095u, 4308u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(14373u, 17244u, 4294967295u), vec3<u32>(1u, 18637u, 60643u), vec3<u32>(0u, 11997u, 21745u), vec3<u32>(4294967295u, 37290u, 4294967295u), vec3<u32>(44286u, 7456u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 5799u, 1u), vec3<u32>(841u, 71518u, 31273u), vec3<u32>(36169u, 0u, 1u), vec3<u32>(1u, 0u, 4575u), vec3<u32>(4294967295u, 1u, 36379u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1037f, -1000f))))), _wgslsmith_f_op_f32(step(-446f, -1141f))));
    var var_1 = Struct_5(-(~global0[_wgslsmith_index_u32(countOneBits(40797u | u_input.d.x), 30u)]), Struct_4((_wgslsmith_div_u32(19993u, 4294967295u) > _wgslsmith_clamp_u32(142304u, 0u, u_input.d.x)) && true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-708f, -750f, -1000f))))), Struct_4(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), -719f, -736f))));
    var var_2 = -abs(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a, 24758i), vec2<i32>(var_1.a, var_1.a)), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_1.a), vec2<i32>(-7568i, global0[_wgslsmith_index_u32(u_input.c, 30u)])))));
    let var_3 = Struct_3(any(vec2<bool>(true, var_1.b.a)));
    let var_4 = vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_sub_i32(var_1.a ^ -22847i, abs(var_1.a)), _wgslsmith_mult_i32(countOneBits(2147483647i), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 30u)])), -24951i, -var_2.x, firstLeadingBit(1i));
    return firstTrailingBit(-2147483647i);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_3 {
    let var_0 = ~(~(~(~(~vec3<u32>(0u, u_input.d.x, arg_0.x)))));
    let var_1 = global0[_wgslsmith_index_u32(~3093u, 30u)] << (_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(39543u, firstTrailingBit(var_0.x)), arg_0.x), ~_wgslsmith_dot_vec3_u32(~var_0, ~var_0)) % 32u);
    global1 = array<vec3<u32>, 31>();
    var var_2 = vec4<bool>((~(~1i) & _wgslsmith_sub_i32(func_3(), ~global0[_wgslsmith_index_u32(var_0.x, 30u)])) <= _wgslsmith_sub_i32(1i, select(global0[_wgslsmith_index_u32(u_input.c, 30u)], -2147483647i, false) ^ select(1i, -55535i, true)), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), false, true);
    global0 = array<i32, 30>();
    return Struct_3(all(vec2<bool>(false, var_2.x & var_2.x)));
}

fn func_1(arg_0: f32) -> bool {
    global1 = array<vec3<u32>, 31>();
    let var_0 = func_2(reverseBits(u_input.b.zz), 491f);
    var var_1 = firstTrailingBit(-select(vec3<i32>(-1688i, global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 1i, global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), false)) << (vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(min(u_input.d, u_input.a)), ~vec4<u32>(u_input.b.x, 44270u, 44178u, 4294967295u)), select(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 25922u, u_input.b.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.wxz, vec3<u32>(29791u, 1111u, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), !(0i != global0[_wgslsmith_index_u32(u_input.d.x, 30u)]))) % vec3<u32>(32u));
    global0 = array<i32, 30>();
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-12381i, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(20484u, 35459u), 30u)], ~_wgslsmith_div_i32(var_1.x, 2147483647i)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)], var_1.x)) & (vec3<i32>(1i, 1i, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(53157u, 30u)], var_1.x, -9550i)), ~vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(46685u, 30u)], 19586i))) | select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -19949i, ~2147483647i), var_1.x), min(21527i, var_1.x), !func_2(firstLeadingBit(vec2<u32>(9105u, u_input.d.x)), _wgslsmith_div_f32(-681f, arg_0)).a);
    return any(select(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), true), vec3<bool>(var_0.a | true, false, var_0.a), var_0.a)) & true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>((global0[_wgslsmith_index_u32(29587u, 30u)] > 32333i) | true, true, true, true | any(vec3<bool>(true, true, true))), !vec4<bool>(any(vec2<bool>(false, false)), true, func_1(-696f), all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_1(495f)), true)));
    let var_1 = Struct_4(false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1943f, 2522f, 1542f) - vec3<f32>(224f, -818f, 910f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-845f, 481f, 1672f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(265f, -575f, -1920f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(771f, -569f, 549f), vec3<f32>(-726f, -284f, 2158f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(639f, 1586f, 188f), vec3<f32>(1372f, -1142f, -268f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1239f, 669f, 1790f)))))));
    let var_2 = vec3<i32>(-2147483647i, max(-(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.a.x), 30u)]), 1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -34183i, ~(-34584i), 2147483647i), -7807i));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(var_1.b)))), var_1.b, select(!(!vec3<bool>(var_0, false, true)), !(!select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -960f) <= _wgslsmith_f_op_f32(step(var_1.b.x, 178f)))));
    let var_4 = _wgslsmith_f_op_f32(select(-1553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)), true));
    var var_5 = all(vec3<bool>(true, !(var_1.a & true), true));
    var var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, max(var_2.xx, ~vec2<i32>(global0[_wgslsmith_index_u32(1u, 30u)], abs(var_2.x))), var_2.x << (~(_wgslsmith_dot_vec4_u32(u_input.d, u_input.a) | _wgslsmith_add_u32(1u, u_input.d.x)) % 32u));
}

