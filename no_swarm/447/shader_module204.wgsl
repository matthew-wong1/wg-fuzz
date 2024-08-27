struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -8427i;

var<private> global1: i32 = 0i;

var<private> global2: Struct_4;

var<private> global3: u32;

var<private> global4: array<i32, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_u32(~1u, ~(arg_1.x << (~arg_1.x % 32u)), ~arg_1.x) <= ~53345u;
    var var_1 = global2.b;
    var var_2 = select(vec2<u32>(86965u, abs(arg_1.x << (2867u % 32u)) | ~79410u), max(vec2<u32>(1u, firstTrailingBit(23572u)), ~vec2<u32>(65399u, abs(50711u))), vec2<bool>(false, true));
    let var_3 = vec3<i32>(1i, -14111i, 2147483647i);
    var_1 = global2.b;
    return !select(arg_3.wyy, arg_3.xzz, !select(!arg_3.wwx, arg_3.xwx, vec3<bool>(arg_3.x, false, arg_3.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(abs(vec2<i32>(~_wgslsmith_div_i32(0i, -68810i), _wgslsmith_mod_i32(reverseBits(0i), global2.c.x | global2.c.x))), false, ~(~min(vec3<u32>(75327u, 0u, 6503u), _wgslsmith_clamp_vec3_u32(vec3<u32>(19142u, 0u, 87729u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 0u, 1u)))));
    global3 = var_0.c.x;
    let var_1 = vec4<bool>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(max(2225f, _wgslsmith_f_op_f32(min(global2.a.x, global2.a.x)))))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-634f + -1146f))))), any(arg_0.zxx), !arg_2);
    let var_2 = firstLeadingBit(abs(~vec4<i32>(firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 15u)]), -1i, -u_input.c.x, abs(var_0.a.x))));
    let var_3 = global2.d;
    return global2.a;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> u32 {
    global4 = array<i32, 15>();
    global0 = u_input.b;
    var var_0 = true;
    global1 = -2147483647i;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(arg_3.b, (-31932i >> (arg_1 % 32u)) <= u_input.c.x, all(func_3(vec3<i32>(-12908i, arg_3.a.x, u_input.d), arg_3.c, global2.a.x, vec4<bool>(arg_3.b, true, global2.b.a, false))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 261f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a.x - global2.a.x)))), false, global2.d)), Struct_2(false), global2.c >> (~abs(arg_3.c) % vec3<u32>(32u)), Struct_3(!(~arg_1 >= 1u)));
    return 0u;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global1 = -1i;
    let var_0 = countOneBits(vec4<u32>(min(0u, reverseBits(func_2(-5323i, 4294967295u, 1u, Struct_1(global2.c.xz, true, vec3<u32>(4294967295u, 0u, 28140u))))), ~max(1u, 1u), ~(~(~15363u)), _wgslsmith_mod_u32(abs(~1u), select(~1u, ~1878u, true))));
    let var_1 = var_0.x;
    let var_2 = var_0;
    var var_3 = Struct_1(~_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(global2.c.zz, vec2<i32>(-27565i, 45012i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-461i, -14269i), u_input.c), global2.c.xy), -_wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(2147483647i, global2.c.x))), true, var_2.zzw);
    return global2.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    global3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(21240u, min(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(84804u, 1u, 35403u, 11407u), vec4<u32>(1u, 72413u, 4294967295u, 4294967295u)))), ~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(2061u, 0u, 70623u), vec3<u32>(1u, 4294967295u, 4294967295u)) >> (select(0u, 1u, true) % 32u)));
    global2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1354f * arg_1), _wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_vec4_f32(global2.a - global2.a)), global2.b, _wgslsmith_add_vec3_i32(vec3<i32>(31098i, 88197i, global2.c.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, arg_0.x, 2147483647i), vec3<i32>(-17510i, arg_0.x, 19357i)) | global2.c.x, func_1(272f).x, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~17772u), 15u)])), global2.d);
    var var_0 = _wgslsmith_f_op_vec4_f32(step(global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global2.a.x, _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), _wgslsmith_f_op_f32(trunc(arg_1)), all(vec3<bool>(true, false, true)), arg_2)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(abs(-1378f)))))));
    let var_1 = arg_2.a;
    let var_2 = Struct_2(true);
    return ~countOneBits(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_add_u32(select(countOneBits(1u), 1716u, true), firstLeadingBit(~(~30206u))) | abs(1u);
    global3 = abs(firstLeadingBit(0u) | func_5(func_1(_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(sign(global2.a.x)), Struct_3(336f != global2.a.x)));
    let var_0 = ~(-u_input.c);
    let var_1 = min(_wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, global2.c.x, u_input.b, 19226i) | vec4<i32>(-5293i, 1i, -45128i, -21378i), vec4<i32>(var_0.x, -9868i, var_0.x, var_0.x), true), vec4<i32>(global2.c.x, 1i, abs(998i), -36503i)) << (~vec4<u32>(abs(23208u), ~37883u, 0u, 1u) % vec4<u32>(32u)), min(vec4<i32>(~_wgslsmith_dot_vec3_i32(global2.c, global2.c), -88255i, _wgslsmith_mod_i32(-2147483647i, u_input.d) & var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(68133i, u_input.d), vec2<i32>(global2.c.x, -26990i))), vec4<i32>(~36955i, ~32047i, u_input.d, firstTrailingBit(u_input.b)) & vec4<i32>(-global4[_wgslsmith_index_u32(86578u, 15u)], -17372i, global2.c.x, -var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(ceil(-715f));
    let var_3 = -1000f;
    global3 = _wgslsmith_div_u32(func_2(_wgslsmith_mod_i32(1i, max(0i & global4[_wgslsmith_index_u32(6884u, 15u)], u_input.c.x)), firstTrailingBit(_wgslsmith_clamp_u32(~76082u, 4294967295u, 1u)), max(~(~89156u), reverseBits(~1u)), Struct_1(global2.c.yy, all(vec2<bool>(true, true)), ~reverseBits(vec3<u32>(0u, 31818u, 11508u)))), func_2(_wgslsmith_clamp_i32(u_input.b, u_input.c.x, ~(u_input.b ^ 5826i)), _wgslsmith_clamp_u32(39578u >> (select(14450u, 39525u, false) % 32u), 1u, 1u), ~0u, Struct_1(var_0, !global2.d.a, vec3<u32>(1u, 1u, 1u))));
    global3 = _wgslsmith_div_u32(~22135u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(max(select(vec3<u32>(54122u, ~27612u, 5834u), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(24374u, 1u, 20448u), vec3<u32>(1u, 4294967295u, 1u), false), select(vec3<u32>(49939u, 13974u, 5358u), vec3<u32>(4294967295u, 4294967295u, 4789u), vec3<bool>(global2.d.a, false, global2.b.a)), vec3<u32>(1u, 1u, 1u)), all(!vec3<bool>(global2.d.a, global2.d.a, false))), vec3<u32>(1u, ~(~124400u), _wgslsmith_mult_u32(countOneBits(0u), 1u))), 1000f, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), ~0u, _wgslsmith_div_u32(6788u, 1u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, 55993u, 59260u)), max(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 14398u, 0u)))), ~func_5(global2.c, global2.a.x, global2.d), _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(0u, 1u, 1u, 21691u))), vec4<u32>(1u, 1u, 1u, 1u))));
}

