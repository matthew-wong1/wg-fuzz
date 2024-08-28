struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(true, Struct_2(vec4<bool>(true, true, false, true)), vec4<i32>(-24628i, 1i, -1i, 2147483647i)));

var<private> global1: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec3<u32>(70495u, 0u, 8101u)), Struct_5(vec3<u32>(1u, 0u, 4294967295u)), Struct_5(vec3<u32>(4143u, 5822u, 53457u)), Struct_5(vec3<u32>(15881u, 1165u, 1u)), Struct_5(vec3<u32>(34066u, 7055u, 8996u)), Struct_5(vec3<u32>(9865u, 65797u, 0u)), Struct_5(vec3<u32>(4294967295u, 143091u, 0u)), Struct_5(vec3<u32>(4294967295u, 1u, 1u)), Struct_5(vec3<u32>(35350u, 1u, 0u)), Struct_5(vec3<u32>(24091u, 20087u, 4294967295u)), Struct_5(vec3<u32>(0u, 4294967295u, 23722u)), Struct_5(vec3<u32>(4294967295u, 33960u, 4294967295u)), Struct_5(vec3<u32>(1u, 52920u, 77818u)), Struct_5(vec3<u32>(2970u, 41883u, 1u)), Struct_5(vec3<u32>(0u, 1u, 37104u)), Struct_5(vec3<u32>(4294967295u, 4294967295u, 5345u)), Struct_5(vec3<u32>(79371u, 1314u, 0u)), Struct_5(vec3<u32>(32864u, 78463u, 17946u)), Struct_5(vec3<u32>(0u, 18648u, 27185u)), Struct_5(vec3<u32>(75851u, 12044u, 33848u)), Struct_5(vec3<u32>(114673u, 1u, 1u)), Struct_5(vec3<u32>(1u, 45244u, 0u)), Struct_5(vec3<u32>(54997u, 4294967295u, 4294967295u)), Struct_5(vec3<u32>(63162u, 19050u, 13855u)), Struct_5(vec3<u32>(0u, 63271u, 4294967295u)), Struct_5(vec3<u32>(30157u, 0u, 1u)), Struct_5(vec3<u32>(8873u, 0u, 34392u)), Struct_5(vec3<u32>(4294967295u, 21177u, 3163u)), Struct_5(vec3<u32>(4294967295u, 23080u, 26205u)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.b)) ^ vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 0u), abs(124452u), u_input.b, ~u_input.a.x), select(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u) ^ vec4<u32>(46816u, u_input.b, 16565u, u_input.a.x), vec4<u32>(5593u, 1654u, u_input.a.x, u_input.a.x), any(global0.a.b.a.wy)) << (vec4<u32>(u_input.a.x << (u_input.b % 32u), ~1u, u_input.b ^ 31553u, ~1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1148f, 605f))), global0.a.c.xx);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~23650u, 4294967295u, ~_wgslsmith_sub_u32(u_input.a.x, 24842u), _wgslsmith_add_u32(~(~33179u), arg_0.a.x)), (arg_0.a << (arg_0.a % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(68336u, _wgslsmith_sub_u32(arg_0.a.x, 21680u), reverseBits(36393u), 43938u), select(vec4<u32>(83573u, 21179u, 0u, 10617u) << (vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x), global0.a.b.a)) % vec4<u32>(32u)));
    let var_1 = ~(arg_0.a ^ firstLeadingBit(vec4<u32>(var_0.x, _wgslsmith_mult_u32(19436u, arg_0.a.x), ~1u, ~var_0.x)));
    global1 = array<Struct_5, 29>();
    let var_2 = max(vec3<i32>(-18881i, global0.a.c.x, firstLeadingBit(func_2(Struct_2(vec4<bool>(true, false, global0.a.a, false)), vec2<bool>(global0.a.a, global0.a.b.a.x)).c.x)), select(global0.a.c.zwy, global0.a.c.wxw, global0.a.b.a.x)) >> ((vec3<u32>(1u, firstLeadingBit(~var_0.x), reverseBits(arg_0.a.x)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u ^ u_input.b, firstLeadingBit(var_0.x), 4294967295u), vec3<u32>(var_1.x, _wgslsmith_clamp_u32(4294967295u, arg_0.a.x, 89726u), ~0u), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_1.zxy, vec3<u32>(42136u, 4294967295u, arg_0.a.x)), ~arg_0.a.xyw))) % vec3<u32>(32u));
    let var_3 = Struct_5(_wgslsmith_add_vec3_u32(vec3<u32>(49094u, firstLeadingBit(4294967295u), 17789u), var_0.wzz << (arg_0.a.xzy % vec3<u32>(32u))));
    return global0.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_4(func_3(func_2(Struct_2(global0.a.b.a), select(global0.a.b.a.xy, select(vec2<bool>(global0.a.b.a.x, true), vec2<bool>(true, true), vec2<bool>(global0.a.a, false)), vec2<bool>(global0.a.b.a.x, global0.a.a))), 247f));
    global1 = array<Struct_5, 29>();
    global1 = array<Struct_5, 29>();
    global1 = array<Struct_5, 29>();
    var var_1 = 15231u;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x & u_input.a.x, ~arg_0.a.x, u_input.b, _wgslsmith_dot_vec2_u32(arg_0.a.zw, u_input.a)), vec4<u32>(u_input.a.x, ~arg_0.a.x, arg_0.a.x ^ u_input.b, arg_0.a.x & arg_0.a.x))), countOneBits(abs(~(~arg_0.a.x))));
    return Struct_1(vec4<u32>(var_0, var_0, abs(_wgslsmith_mod_u32(~arg_0.a.x, abs(u_input.a.x))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(11526u, 0u), ~var_0, _wgslsmith_dot_vec4_u32(max(arg_0.a, vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u)), ~arg_0.a))), _wgslsmith_f_op_f32(-368f + arg_0.b), func_1(~(~countOneBits(u_input.a))).a.c.yz);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(793f, -160f, arg_1.b) + vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(157f, 489f, arg_1.b) - vec3<f32>(1558f, arg_1.b, 597f)))))), vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(854f * _wgslsmith_f_op_f32(f32(-1f) * -258f)))), 1257f));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(883f, 1716f, var_0.x))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 349f, -1000f) - vec3<f32>(var_0.x, arg_0.b, 897f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-499f, arg_1.b, -1500f))), vec3<f32>(-508f, arg_0.b, 113f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 1661f, 1384f)) * vec3<f32>(-576f, arg_1.b, arg_0.b)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1f, arg_1.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b)), -1108f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, 619f, -941f), vec3<f32>(1000f, var_0.x, arg_0.b), global0.a.a)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -2255f, -1103f)))));
    global1 = array<Struct_5, 29>();
    let var_1 = any(select(func_3(Struct_1(abs(vec4<u32>(arg_1.a.x, arg_1.a.x, 49544u, 39756u)), arg_0.b, arg_0.c), _wgslsmith_f_op_f32(-var_0.x)).b.a.yz, !func_1(arg_2 ^ u_input.a).a.b.a.yx, func_1(vec2<u32>(27261u, arg_1.a.x) ^ (vec2<u32>(arg_0.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u)))).a.b.a.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(597u, 0u, u_input.b, u_input.b)), vec4<u32>(27326u, 0u, 124747u, 4294967295u) << (vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), 1f, ~(-vec2<i32>(global0.a.c.x, 1i))), func_1(~vec2<u32>(59646u, 4294967295u))), Struct_1(abs(vec4<u32>(~1u, u_input.a.x, countOneBits(u_input.a.x), _wgslsmith_div_u32(63111u, 70404u))), _wgslsmith_f_op_f32(f32(-1f) * -281f), -vec2<i32>(select(2147483647i, global0.a.c.x, global0.a.a), _wgslsmith_mod_i32(global0.a.c.x, global0.a.c.x))), _wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) << (func_2(global0.a.b, global0.a.b.a.wz).a.zz % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(22905u, ~42944u), _wgslsmith_div_vec2_u32(u_input.a, func_2(Struct_2(global0.a.b.a), vec2<bool>(false, true)).a.ww))));
    let var_1 = Struct_4(Struct_3(false, func_1(~(var_0.a.yx | var_0.a.zy)).a.b, -_wgslsmith_mult_vec4_i32(-global0.a.c, global0.a.c)));
    let var_2 = Struct_5(select(vec3<u32>(var_0.a.x, u_input.b ^ 1u, u_input.b), var_0.a.zwz, global0.a.b.a.xyx));
    var var_3 = 1i;
    var var_4 = vec3<u32>(_wgslsmith_div_u32(~(u_input.b | u_input.a.x), ~firstLeadingBit(_wgslsmith_mult_u32(2052u, u_input.a.x))), var_0.a.x, ~63381u);
    let var_5 = -1i;
    var var_6 = Struct_1(vec4<u32>(5024u, 1u, u_input.a.x, var_4.x), 466f, -vec2<i32>(func_4(func_5(Struct_1(vec4<u32>(var_4.x, var_2.a.x, var_2.a.x, u_input.a.x), var_0.b, vec2<i32>(1i, global0.a.c.x)), Struct_1(vec4<u32>(var_2.a.x, 4294967295u, var_4.x, u_input.b), 1401f, global0.a.c.ww), u_input.a), Struct_4(var_1.a)).c.x, func_4(func_5(Struct_1(vec4<u32>(var_0.a.x, var_2.a.x, var_4.x, 4294967295u), 650f, vec2<i32>(-2147483647i, -1i)), Struct_1(vec4<u32>(var_4.x, 34696u, var_2.a.x, 0u), 1000f, vec2<i32>(var_0.c.x, var_5)), var_0.a.zx), func_1(vec2<u32>(44563u, u_input.a.x))).c.x));
    var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(63157u, 31630u, 3013u, 1u), ~vec4<u32>(var_4.x, 35097u, var_2.a.x, 1u) << (~var_6.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(-var_0.b), ~vec2<i32>(~(-52534i), 2147483647i));
    var_0 = Struct_1(vec4<u32>(abs(~_wgslsmith_clamp_u32(var_6.a.x, var_2.a.x, var_6.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a.x), var_6.a.yw), ~_wgslsmith_mod_u32(40783u, var_6.a.x), _wgslsmith_div_u32(~(~var_6.a.x), 51725u)), _wgslsmith_f_op_f32(-var_6.b), vec2<i32>(40763i, ~26545i));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_2.a.x, 4294967295u, 28781u, 4294967295u)), var_2.a.x), min(var_0.a.zy, ~(vec2<u32>(u_input.b, u_input.a.x) | var_0.a.xz)), !(!all(vec4<bool>(true, true, var_1.a.b.a.x, true)))), -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1327f, -492f, var_0.b) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-540f, 1125f, var_6.b)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-696f, -1512f, var_6.b) * vec3<f32>(var_0.b, -261f, 403f))))), u_input.a.x);
}

