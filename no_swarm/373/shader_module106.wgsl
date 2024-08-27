struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(0u, -1447f, vec4<bool>(true, true, true, true), true), vec2<u32>(11061u, 0u), vec2<u32>(1u, 1u), vec3<i32>(0i, -1i, -1i)), Struct_2(Struct_1(13336u, -1012f, vec4<bool>(true, false, true, false), false), vec2<u32>(26568u, 75033u), vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 6203i, -72036i)), Struct_2(Struct_1(59838u, -125f, vec4<bool>(true, true, false, false), true), vec2<u32>(4294967295u, 0u), vec2<u32>(21646u, 87122u), vec3<i32>(2434i, 25757i, 16412i)), Struct_2(Struct_1(1u, 1102f, vec4<bool>(false, true, false, false), true), vec2<u32>(4294967295u, 18241u), vec2<u32>(3361u, 4294967295u), vec3<i32>(-37312i, 0i, 57455i)), Struct_2(Struct_1(35107u, 334f, vec4<bool>(false, false, false, true), false), vec2<u32>(1u, 4294967295u), vec2<u32>(29034u, 4294967295u), vec3<i32>(-8922i, 6946i, i32(-2147483648))), Struct_2(Struct_1(11210u, -167f, vec4<bool>(false, true, false, false), true), vec2<u32>(101171u, 41787u), vec2<u32>(54936u, 1u), vec3<i32>(i32(-2147483648), -9393i, 1i)), Struct_2(Struct_1(86170u, 1000f, vec4<bool>(false, false, false, false), false), vec2<u32>(1u, 0u), vec2<u32>(1u, 39356u), vec3<i32>(0i, 1i, 1i)), Struct_2(Struct_1(43074u, -870f, vec4<bool>(false, true, true, true), false), vec2<u32>(19683u, 0u), vec2<u32>(5829u, 0u), vec3<i32>(1i, 6416i, -38129i)), Struct_2(Struct_1(0u, 517f, vec4<bool>(true, true, false, true), true), vec2<u32>(94028u, 1u), vec2<u32>(103553u, 19066u), vec3<i32>(-99599i, 897i, -13253i)), Struct_2(Struct_1(19397u, -408f, vec4<bool>(true, true, true, false), true), vec2<u32>(1u, 0u), vec2<u32>(62293u, 34951u), vec3<i32>(0i, -37277i, 1i)), Struct_2(Struct_1(51124u, -666f, vec4<bool>(true, true, false, true), true), vec2<u32>(11991u, 0u), vec2<u32>(0u, 4294967295u), vec3<i32>(-23581i, -25953i, 1i)), Struct_2(Struct_1(4294967295u, -1143f, vec4<bool>(true, false, true, true), false), vec2<u32>(58335u, 33957u), vec2<u32>(1u, 4294967295u), vec3<i32>(-34665i, 2147483647i, 17459i)), Struct_2(Struct_1(4294967295u, -766f, vec4<bool>(false, true, false, true), false), vec2<u32>(9431u, 83235u), vec2<u32>(4294967295u, 1u), vec3<i32>(0i, -25280i, -1i)), Struct_2(Struct_1(0u, -1478f, vec4<bool>(false, false, true, true), false), vec2<u32>(4294967295u, 20451u), vec2<u32>(16988u, 25070u), vec3<i32>(45566i, -37632i, 77017i)), Struct_2(Struct_1(1u, 665f, vec4<bool>(true, true, true, false), true), vec2<u32>(57008u, 1u), vec2<u32>(9660u, 0u), vec3<i32>(i32(-2147483648), -33710i, 23972i)), Struct_2(Struct_1(31185u, 1238f, vec4<bool>(false, true, true, false), false), vec2<u32>(1u, 4294967295u), vec2<u32>(93847u, 23097u), vec3<i32>(0i, 25521i, 21279i)), Struct_2(Struct_1(1u, -478f, vec4<bool>(true, false, false, false), false), vec2<u32>(0u, 12262u), vec2<u32>(4294967295u, 29732u), vec3<i32>(1i, 4160i, -1i)), Struct_2(Struct_1(14221u, -1048f, vec4<bool>(false, false, false, false), true), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u), vec3<i32>(1i, 0i, -15526i)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_i32(min(firstTrailingBit(abs(arg_3.d.x)), 39655i), arg_0);
    global0 = !vec4<bool>(any(vec4<bool>(true, any(arg_3.a.c.wz), global0.x, true)), false, all(vec4<bool>(false, global0.x, arg_3.a.c.x, true)) || global0.x, ((arg_3.d.x & u_input.a) ^ -24806i) >= _wgslsmith_dot_vec4_i32(~u_input.b, -vec4<i32>(0i, 1i, arg_3.d.x, -34699i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b) * -654f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_3.a.b)), 1874f, 21677u == arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b) + arg_3.a.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.a.b * arg_3.a.b), _wgslsmith_f_op_f32(arg_3.a.b + arg_3.a.b)))))));
    global0 = vec4<bool>(arg_3.a.c.x, global0.x, !(countOneBits(~arg_2) > (_wgslsmith_sub_u32(34024u, arg_2) | ~4294967295u)), false);
    global1 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.a.b - -114f))) * _wgslsmith_f_op_f32(1299f - 1321f));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f - -115f) - _wgslsmith_f_op_f32(1076f * -477f)))) * _wgslsmith_f_op_f32(func_3(min(-1i, -u_input.b.x), ~(-u_input.b.x), max(1u, ~4294967295u), Struct_2(Struct_1(1u, -274f, vec4<bool>(true, global0.x, global0.x, true), true), firstTrailingBit(vec2<u32>(1u, 1u)), select(vec2<u32>(15972u, 60050u), vec2<u32>(18007u, 1u), vec2<bool>(global0.x, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(-10705i, 20873i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a))))))));
    var var_1 = 0u;
    let var_2 = -50581i;
    var var_3 = Struct_1(select(firstLeadingBit(23769u), select(49952u, 12655u, false), true) >> (select(1u, min(1u, firstTrailingBit(1u)), global0.x) % 32u), _wgslsmith_f_op_f32(round(var_0)), select(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), !select(!vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, true, global0.x), true), vec4<bool>(true, true, global0.x, all(!global0.yz))), global0.x);
    var_1 = 22125u;
    return var_3.c.x;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = Struct_2(Struct_1(arg_0, 708f, select(vec4<bool>(any(vec4<bool>(false, global0.x, global0.x, true)), !global0.x, false, true || global0.x), !vec4<bool>(false, false, global0.x, false), select(!vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x))), func_2()), abs(firstLeadingBit(vec2<u32>(arg_0, 70402u) & vec2<u32>(arg_0, 1u))), vec2<u32>(~arg_0, arg_0), firstLeadingBit(-vec3<i32>(0i, u_input.a, -u_input.b.x)));
    global1 = array<Struct_2, 18>();
    let var_1 = 22612i;
    let var_2 = var_0.d.x;
    var var_3 = -(~var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(44027u, 1u, 0u, 71177u) ^ select(vec4<u32>(23782u, 48138u, 4294967295u, 1u), vec4<u32>(59986u, 30052u, 17523u, 62841u), false)), vec4<u32>(1u, 5556u, ~1u, ~1u), select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(76522u, 4294967295u, 0u, 57856u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(func_1(51142u), true, global0.x, true))), vec4<u32>(~1u, 1u, 1u, 1u));
    var var_1 = _wgslsmith_add_vec2_i32(-(~(-vec2<i32>(u_input.a, -28782i))), max(vec2<i32>(~_wgslsmith_clamp_i32(0i, u_input.a, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-25563i, -755i, -1i, 24733i), reverseBits(u_input.b))), u_input.b.xw));
    let var_2 = Struct_2(Struct_1(var_0, -555f, !(!(!vec4<bool>(global0.x, global0.x, global0.x, true))), global0.x), vec2<u32>(_wgslsmith_mod_u32(var_0, var_0), ~(~(~var_0))), ~(vec2<u32>(49206u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 0u))) << (reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, var_0))) % vec2<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(1i, ~abs(u_input.a)), _wgslsmith_clamp_i32(-1906i, ~var_1.x, -2147483647i), i32(-1i) * -28229i));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-163f, _wgslsmith_div_f32(2549f, _wgslsmith_f_op_f32(f32(-1f) * -300f)))));
    var var_4 = Struct_2(var_2.a, _wgslsmith_sub_vec2_u32(var_2.b, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.b.x, var_0, 0u), vec4<u32>(var_2.a.a, var_0, 1u, 1u)), 16451u) | firstTrailingBit(~vec2<u32>(var_2.a.a, 7151u))), ~var_2.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-var_2.d.x, 5312i, _wgslsmith_sub_i32(~(-1i), ~var_1.x)), -vec3<i32>(u_input.b.x, var_1.x, -50146i) ^ ~(~vec3<i32>(1i, u_input.a, var_1.x))));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b) * var_4.a.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.b + 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-386f, 965f))))) - var_4.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, var_4.a.a));
}

