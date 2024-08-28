struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: f32) -> i32 {
    let var_0 = all(select(!arg_0.yx, vec2<bool>(true, true), arg_0.xy));
    let var_1 = select(vec3<bool>(select(true, arg_0.x, all(select(arg_0.wyw, arg_0.zzz, vec3<bool>(true, var_0, arg_0.x)))), !all(arg_0.xxw), !arg_0.x), !vec3<bool>(any(select(vec4<bool>(arg_0.x, false, true, false), arg_0, var_0)), all(vec2<bool>(true, true)), true), select(!vec3<bool>(true, arg_0.x, false), arg_0.wxy, !arg_0.x));
    var var_2 = var_1.x;
    var var_3 = abs(~vec3<u32>(72777u, firstTrailingBit(0u), 1u));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(789f, arg_2), vec2<f32>(arg_2, 378f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -253f) + vec2<f32>(-594f, 1061f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -201f) * vec2<f32>(1330f, -247f)))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(arg_2 - -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1426f, -517f)))))))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(min(abs(vec2<i32>(-53064i, -2147483647i)), countOneBits(vec2<i32>(1i, 1i))), ~vec2<i32>(-21242i, -5533i), vec2<i32>(1i, ~(~0i))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -11365i, 2147483647i, -72669i), vec4<i32>(1i, 1i, 1i, 1i)), 1i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = select(~vec4<i32>(1i, func_3(vec4<bool>(arg_1.a, true, arg_1.a, true), arg_0.x, arg_1.b.a), 2147483647i >> (u_input.a % 32u), 34740i) | vec4<i32>(abs(max(0i, -31380i)), 30199i, 1i, _wgslsmith_mod_i32(-24025i, -2147483647i) >> (min(arg_0.x, 6568u) % 32u)), -vec4<i32>(23458i, -4848i, _wgslsmith_clamp_i32(2147483647i, 1i, -79967i), _wgslsmith_mod_i32(1108i, -22307i)) >> (vec4<u32>(0u, ~1u, u_input.a, ~(~arg_3.x)) % vec4<u32>(32u)), any(select(select(vec3<bool>(arg_1.a, true, true), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(arg_1.a, false, arg_1.a)), vec3<bool>(arg_1.a, arg_1.b.a >= -699f, arg_1.a & false), select(select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(true, arg_1.a, false), arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false), select(vec3<bool>(false, arg_1.a, true), vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_1.a, false, arg_1.a))))));
    var var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-533f)), _wgslsmith_f_op_f32(f32(-1f) * -534f))))), _wgslsmith_f_op_f32(step(721f, _wgslsmith_f_op_f32(round(arg_2.a))))));
    var var_3 = Struct_4(arg_1.b, arg_1, vec3<bool>(false, true, all(vec4<bool>(true, any(vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a)), !arg_1.a, !arg_1.a))));
    var var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.a), -1000f) == _wgslsmith_f_op_f32(268f + 1f), Struct_1(var_3.a.a));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-809f * _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_div_f32(var_3.a.a, var_1.a)))), false);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-289f))))));
    let var_1 = func_2(~vec2<u32>(~(~u_input.a), ~(~u_input.a)), arg_0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(919f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)))), countOneBits(vec3<u32>(~_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(105917u, 51378u, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 63483u, u_input.a, 0u))), u_input.a)));
    var var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(-arg_0.a.a);
    var_2 = max(_wgslsmith_div_i32(1i, 1i), -7610i);
    return ~4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4) -> bool {
    var var_0 = arg_2.b;
    let var_1 = func_2(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.a, u_input.a, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 46229u, 95861u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0, 64052u, arg_0), vec4<u32>(arg_0, 1u, 1u, 4294967295u)))), u_input.a), Struct_3(!(_wgslsmith_f_op_f32(sign(arg_1.x)) < -1583f), var_0.b), var_0.b, firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, u_input.a, arg_0), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 767u, 1u), vec3<u32>(arg_0, 4294967295u, u_input.a)))));
    let var_2 = !(~_wgslsmith_add_u32(u_input.a | arg_0, _wgslsmith_clamp_u32(0u, 4294967295u, 0u)) != ~(abs(82035u) | (u_input.a << (arg_0 % 32u))));
    let var_3 = 0i;
    var_0 = arg_2.b;
    return (i32(-1i) * -13319i) == (var_3 ^ var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 11987i;
    var var_1 = Struct_3(func_4(~(~func_1(Struct_4(Struct_1(268f), Struct_3(true, Struct_1(1264f)), vec3<bool>(false, true, false)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(233f), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(346f, 1679f, -1550f))))))), Struct_4(Struct_1(158f), Struct_3(u_input.a != u_input.a, Struct_1(993f)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), all(vec3<bool>(false, false, true))))), func_2(_wgslsmith_mult_vec2_u32(countOneBits(abs(vec2<u32>(u_input.a, u_input.a))), ~max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(45024u, u_input.a))), Struct_3(false, func_2(vec2<u32>(4158u, 84209u), Struct_3(true, Struct_1(1965f)), Struct_1(185f), vec3<u32>(6915u, u_input.a, 1u)).a), Struct_1(-758f), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u))), _wgslsmith_clamp_u32(abs(u_input.a), 3163u, u_input.a))).a);
    var_1 = Struct_3(!any(vec2<bool>(true, true)), func_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), Struct_3(true == var_1.a, Struct_1(var_1.b.a)), func_2(~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(80487u, 4294967295u)), Struct_3(func_2(vec2<u32>(1u, 1u), Struct_3(var_1.a, var_1.b), var_1.b, vec3<u32>(1u, u_input.a, 16470u)).b, func_2(vec2<u32>(0u, u_input.a), Struct_3(var_1.a, Struct_1(-650f)), var_1.b, vec3<u32>(u_input.a, u_input.a, 33311u)).a), var_1.b, select(vec3<u32>(1u, 39933u, 0u), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 1u, u_input.a), vec3<bool>(false, true, false)), var_1.a)).a, min(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), ~vec3<u32>(u_input.a, 0u, 0u)), select(vec3<u32>(u_input.a, 63417u, u_input.a), vec3<u32>(4294967295u, 52092u, u_input.a), vec3<bool>(true, true, var_1.a)) << (min(vec3<u32>(39891u, u_input.a, u_input.a), vec3<u32>(u_input.a, 2378u, 4760u)) % vec3<u32>(32u)))).a);
    var_1 = Struct_3(true, var_1.b);
    let var_2 = Struct_4(func_2(vec2<u32>(abs(~4356u), ~firstLeadingBit(u_input.a)), Struct_3(false, var_1.b), var_1.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))), vec3<u32>(countOneBits(u_input.a), u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a)))).a, Struct_3(func_2(~vec2<u32>(u_input.a, u_input.a), Struct_3(true, func_2(vec2<u32>(1520u, u_input.a), Struct_3(false, Struct_1(-1023f)), Struct_1(-1089f), vec3<u32>(19156u, u_input.a, u_input.a)).a), var_1.b, vec3<u32>(func_1(Struct_4(var_1.b, Struct_3(var_1.a, var_1.b), vec3<bool>(var_1.a, false, false)), vec4<bool>(false, true, true, var_1.a), Struct_2(Struct_1(var_1.b.a), var_1.a)), u_input.a, abs(35057u))).b, func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(3142u, 51920u))), Struct_3(!var_1.a, var_1.b), func_2(~vec2<u32>(1u, u_input.a), Struct_3(var_1.a, var_1.b), Struct_1(-1080f), vec3<u32>(1u, u_input.a, u_input.a) >> (vec3<u32>(98187u, 0u, 5656u) % vec3<u32>(32u))).a, ~reverseBits(vec3<u32>(u_input.a, u_input.a, 12231u))).a), select(select(select(!vec3<bool>(var_1.a, false, var_1.a), select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, true, false), vec3<bool>(var_1.a, var_1.a, var_1.a)), var_1.b.a != var_1.b.a), select(vec3<bool>(var_1.a, false, true), vec3<bool>(false, false, true), vec3<bool>(false, var_1.a, true)), vec3<bool>(true, true, true)), !vec3<bool>(true, true, false != var_1.a), func_4(_wgslsmith_mult_u32(0u, u_input.a), vec3<f32>(-921f, 989f, -1000f), Struct_4(Struct_1(var_1.b.a), Struct_3(var_1.a, var_1.b), select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_1.a, false, true), vec3<bool>(var_1.a, var_1.a, var_1.a))))));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(select(289f, 337f, var_1.b.a < 1000f))), var_2.b, vec3<bool>(func_4(u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(-755f, -184f, var_2.b.b.a), vec3<f32>(var_1.b.a, -119f, var_2.a.a)), Struct_4(Struct_1(var_1.b.a), var_2.b, vec3<bool>(var_1.a, false, var_2.b.a))) | !func_2(vec2<u32>(0u, u_input.a), Struct_3(var_2.b.a, var_2.a), Struct_1(var_1.b.a), vec3<u32>(u_input.a, u_input.a, u_input.a)).b, var_1.a, select(~1u == func_1(var_2, vec4<bool>(false, false, false, false), Struct_2(Struct_1(var_2.b.b.a), false)), all(!var_2.c.zy), var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

