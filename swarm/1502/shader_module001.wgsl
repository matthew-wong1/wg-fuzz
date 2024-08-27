struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(49888u, _wgslsmith_add_u32(arg_0.a, ~max(u_input.d, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(127989u, u_input.a | 17440u, countOneBits(u_input.d) >> (~arg_0.a % 32u)), (~vec3<u32>(u_input.c, u_input.a, u_input.d) & _wgslsmith_mod_vec3_u32(vec3<u32>(76974u, u_input.a, u_input.c), vec3<u32>(u_input.a, arg_0.a, 24640u))) | vec3<u32>(1u, 1u, 1u)), 108769u, countOneBits(arg_0.a) << (arg_0.a % 32u));
    var var_1 = ~countOneBits(firstTrailingBit(firstLeadingBit(reverseBits(1u))));
    let var_2 = vec4<bool>(true, (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 51170u), var_0.wx), countOneBits(vec2<u32>(u_input.d, 1u))) >= _wgslsmith_mod_u32(var_0.x, 17774u)) | (_wgslsmith_dot_vec2_u32(var_0.yx >> (var_0.wz % vec2<u32>(32u)), ~var_0.wx) > u_input.c), 1i == (_wgslsmith_mod_i32(u_input.b.x, arg_0.b.x) << (arg_0.a % 32u)), all(vec4<bool>(true, select(arg_0.b.x < 14768i, true, any(vec4<bool>(false, true, true, false))), false, any(vec3<bool>(true, true, true)))));
    var var_3 = arg_0.c;
    let var_4 = Struct_1(arg_0.d.a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-339f, 560f))))))) + vec2<f32>(var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) + -228f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1161f * 437f))));
    global0 = array<vec2<i32>, 17>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -386f)), _wgslsmith_f_op_f32(1753f * -520f)));
    var var_2 = 61155u;
    let var_3 = Struct_2(u_input.c, vec3<i32>(2147483647i, ~_wgslsmith_clamp_i32(u_input.b.x, 2829i, u_input.b.x), (-35684i | u_input.b.x) ^ countOneBits(-26953i)), var_1, var_1);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.c.a) * var_1.a) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(u_input.c, vec3<i32>(5962i, -9776i, u_input.b.x), Struct_1(var_3.d.a), var_3.c)))))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(min(-1821f, -2120f)))))));
    var_0 = Struct_1(arg_0.d.a);
    global0 = array<vec2<i32>, 17>();
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(~reverseBits(u_input.b.yw), u_input.b.xw);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, u_input.b.x, arg_0.b.x), u_input.b.zxx | abs(vec3<i32>(8722i, u_input.b.x, -9458i))), ~u_input.b.yzy) << (_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(55910u), _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13703u, 0u, arg_0.a), vec4<u32>(46353u, u_input.c, u_input.a, 4294967295u)), 19356u) & _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, arg_0.a, 4294967295u), vec4<u32>(u_input.a, 6254u, arg_0.a, u_input.a)), vec4<u32>(35149u, 0u, 22681u, u_input.d)), vec4<u32>(0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 29951u), vec2<u32>(73323u, arg_0.a))), 55972u, 50363u)) % 32u);
    return func_2();
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = func_4(Struct_2(u_input.c, ~(-vec3<i32>(-2147483647i, 0i, arg_1.x)), arg_0.d, func_2()));
    let var_1 = select(!vec3<bool>(true, all(vec2<bool>(true, true)), true), !vec3<bool>(62264i <= ~arg_0.b.x, all(vec4<bool>(true, false, false, false)) || true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), !(4294967295u == arg_0.a));
    var var_2 = arg_0.c.a;
    let var_3 = arg_0.c;
    let var_4 = Struct_2(~firstLeadingBit(~_wgslsmith_add_u32(23002u, 0u)), arg_0.b, arg_0.d, var_3);
    return select(vec3<u32>(3146u, arg_0.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, arg_0.a), 4294967295u)) ^ ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_4.a, 4294967295u, 0u), vec3<u32>(24148u, var_4.a, arg_0.a))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(109429u, 0u, 93189u)), countOneBits(vec3<u32>(arg_0.a, 46473u, var_4.a))), min(select(vec3<u32>(var_4.a, var_4.a, 1u), vec3<u32>(var_4.a, arg_0.a, arg_0.a), var_1), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 49016u, 0u), vec3<u32>(var_4.a, 1u, arg_0.a)))), vec3<u32>(1872u, _wgslsmith_mod_u32(countOneBits(14447u), var_4.a), var_4.a)), !var_1);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_4(Struct_2(1u, ~vec3<i32>(-4372i, arg_1.b.x, -2147483647i) << (vec3<u32>(arg_2.a >> (arg_0 % 32u), 41282u, reverseBits(47378u)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(174f, -207f) * vec2<f32>(2629f, 431f)))), func_4(arg_2)));
    var var_1 = _wgslsmith_div_u32(~arg_2.a, ~arg_3.a);
    var var_2 = all(!vec3<bool>(arg_3.c.a.x > -1098f, arg_3.a > 50564u, true)) | !select(true, true, any(vec4<bool>(true, true, true, true)));
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c.a.x - -2436f))), -1111f), func_4(arg_3).a));
    let var_4 = ~(~(~vec2<u32>(u_input.d & 0u, 19935u)));
    return Struct_2(~u_input.a & ~(~4294967295u), firstTrailingBit(-reverseBits(vec3<i32>(-2147483647i, arg_3.b.x, 0i))), arg_2.d, Struct_1(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-507f + -207f))) + _wgslsmith_f_op_f32(1217f + 1f))));
    global0 = array<vec2<i32>, 17>();
    var var_1 = func_5(1u, Struct_2(abs(u_input.d), ~(~vec3<i32>(u_input.b.x, u_input.b.x, 58729i) << (func_1(Struct_2(u_input.d, u_input.b.wyw, Struct_1(vec2<f32>(-559f, -2317f)), Struct_1(vec2<f32>(641f, 182f))), vec2<i32>(0i, -2147483647i)) % vec3<u32>(32u))), func_4(Struct_2(u_input.a, vec3<i32>(24321i, u_input.b.x, u_input.b.x), Struct_1(vec2<f32>(611f, -711f)), Struct_1(vec2<f32>(772f, -599f)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-547f, -239f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(u_input.d, u_input.b.wyw, Struct_1(vec2<f32>(855f, 1000f)), Struct_1(vec2<f32>(1368f, -190f)))))))), Struct_2(~(~(34264u | u_input.a)), ~max(~u_input.b.zwy, vec3<i32>(u_input.b.x, 0i, 0i)), func_2(), func_2()), Struct_2(_wgslsmith_clamp_u32(firstLeadingBit(u_input.c), 8127u, _wgslsmith_sub_u32(u_input.a, u_input.d)), u_input.b.xww, func_4(Struct_2(10661u, u_input.b.wyz, func_2(), func_4(Struct_2(u_input.a, u_input.b.xzy, Struct_1(vec2<f32>(-1629f, 571f)), Struct_1(vec2<f32>(-1061f, 624f)))))), func_4(Struct_2(0u, min(u_input.b.zwx, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), func_2(), Struct_1(vec2<f32>(-414f, 531f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.x, vec3<f32>(var_1.c.a.x, 1810f, var_1.c.a.x), u_input.c);
}

