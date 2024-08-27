struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(41498u, -20456i, false, 0i, vec3<i32>(i32(-2147483648), 1i, 520i));

var<private> global1: f32 = -598f;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    global2 = Struct_1(4294967295u, ~(-17116i), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(372f, -1115f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)) < _wgslsmith_f_op_f32(f32(-1f) * -563f)), firstLeadingBit(~(-global2.b)), global0.e);
    let var_0 = ~global3.b.x;
    var var_1 = Struct_1(~_wgslsmith_div_u32(firstLeadingBit(1u), abs(~var_0)), max(global2.d, 1i), global0.c, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.d, arg_3.d, -29255i)), arg_0), abs(-(abs(vec3<i32>(1i, arg_0.x, arg_2)) << (~vec3<u32>(global2.a, global3.b.x, u_input.a.x) % vec3<u32>(32u)))));
    let var_2 = arg_3;
    var var_3 = global2.e.x;
    return var_2.a | select(~(~abs(var_2.a)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(global3.b.yyz), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, arg_3.a), vec3<u32>(1483u, var_2.a, 32922u))), 1u ^ arg_3.a), global2.c);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = Struct_1(~_wgslsmith_sub_u32(~(global2.a & 0u), func_3(global2.e, vec3<bool>(global0.c, false, true), -2147483647i, Struct_1(24486u, global3.a, false, global0.e.x, global2.e)) & ~u_input.a.x), -abs(-global3.a), _wgslsmith_div_i32(countOneBits(-global2.b), 3595i) <= global2.e.x, -(_wgslsmith_div_i32(-global2.d, ~u_input.b.x) << (global3.b.x % 32u)), vec3<i32>(abs(-u_input.d), global2.d, firstLeadingBit(i32(-1i) * -u_input.b.x)));
    var var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(global3.b.zww, ~(~vec3<u32>(1u, 9704u, 1u))), vec3<u32>(func_3(vec3<i32>(-u_input.b.x, _wgslsmith_clamp_i32(44172i, global2.e.x, global2.e.x), global0.d), vec3<bool>(any(vec2<bool>(true, true)), global2.c, global0.c), global3.a, Struct_1(reverseBits(global3.b.x), 0i, all(vec2<bool>(true, true)), firstLeadingBit(u_input.b.x), select(vec3<i32>(u_input.d, u_input.d, global2.b), vec3<i32>(global3.a, global2.e.x, 568i), global0.c))), func_3(countOneBits(_wgslsmith_sub_vec3_i32(global2.e, global2.e)), vec3<bool>(true, global2.c, arg_0 < arg_0), -u_input.b.x, Struct_1(~global3.b.x, -12697i, global2.c, 3114i, vec3<i32>(1i, 1i, global0.e.x) | global0.e)), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 32168u, 4294967295u), 27423u << (u_input.a.x % 32u)), ~_wgslsmith_dot_vec4_u32(global3.b, vec4<u32>(4294967295u, global2.a, 0u, global2.a)))));
    var var_1 = Struct_1(var_0.x, 0i, false, u_input.b.x >> (~(~47141u) % 32u), global2.e);
    var var_2 = !(!(-121f == _wgslsmith_f_op_f32(arg_0 * -164f)) || true);
    var var_3 = all(vec3<bool>(!(!global0.c), all(select(vec4<bool>(global2.c, true, global2.c, global2.c), select(vec4<bool>(false, true, false, global0.c), vec4<bool>(var_1.c, false, global0.c, true), vec4<bool>(false, global2.c, false, global0.c)), var_1.c)), all(select(select(vec3<bool>(true, global0.c, global2.c), vec3<bool>(false, true, global0.c), global2.c), select(vec3<bool>(global0.c, true, true), vec3<bool>(var_1.c, true, true), global0.c), global0.c | var_1.c))));
    return Struct_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(-select(global2.e.yx, vec2<i32>(global0.e.x, global2.d), false), vec2<i32>(countOneBits(-2147483647i), global0.e.x))), global3.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    var var_0 = vec2<bool>(!(!(!(0u < arg_0.b.x))), !global0.c);
    global2 = arg_2.b;
    var var_1 = arg_2;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1198f - var_1.a), _wgslsmith_f_op_f32(trunc(-2080f)))));
    var var_2 = select(select(!vec4<bool>(false && var_0.x, true, global0.c, global2.c != global0.c), select(vec4<bool>(true, var_0.x, any(vec3<bool>(false, false, false)), false), vec4<bool>(!var_1.b.c, true, false, any(vec3<bool>(false, true, global2.c))), true), all(!vec4<bool>(var_0.x, false, false, false)) | (~(-38585i) < ~global2.e.x)), select(vec4<bool>(all(vec2<bool>(false, arg_2.b.c)) && !var_1.b.c, var_0.x, global0.c, any(vec2<bool>(arg_2.b.c, true)) | !global0.c), !select(vec4<bool>(false, global2.c, var_1.b.c, var_0.x), vec4<bool>(true, true, global0.c, false), all(vec4<bool>(arg_2.b.c, false, false, arg_2.b.c))), global0.c), any(!vec2<bool>(all(vec4<bool>(var_0.x, global2.c, true, false)), true)));
    return Struct_3(var_1.c, Struct_1(1u, -global0.b, true, func_2(335f).a, -firstLeadingBit(select(global0.e, global0.e, var_2.xyy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-228f, -224f)))) - _wgslsmith_f_op_f32(f32(-1f) * -369f)));
}

fn func_1(arg_0: bool) -> f32 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1661f)), _wgslsmith_f_op_f32(f32(-1f) * -475f));
    var var_0 = func_4(func_2(-891f), ~(-2212i), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1413f))), -2822f, true)), Struct_1(global2.a, ~global3.a, global2.c, firstTrailingBit(max(2147483647i, global2.b)), global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-792f, -1153f)) + _wgslsmith_f_op_f32(min(-1033f, -229f)))), ~(firstLeadingBit(global0.d) ^ global3.a) << (~28184u % 32u));
    global3 = Struct_2(abs(_wgslsmith_mult_i32(7279i ^ global2.d, min(-52713i, ~u_input.d))), vec4<u32>(1u, max(_wgslsmith_add_u32(reverseBits(39615u), 1u), 70858u), 42632u, 4294967295u));
    let var_1 = func_2(_wgslsmith_f_op_f32(step(var_0.a, func_4(func_2(var_0.a), _wgslsmith_add_i32(reverseBits(global3.a), max(var_0.b.b, global0.d)), func_4(Struct_2(25926i, vec4<u32>(1u, global3.b.x, u_input.a.x, u_input.c)), ~global2.d, func_4(Struct_2(global0.e.x, global3.b), 0i, Struct_3(1545f, var_0.b, var_0.c), -60782i), 2147483647i), 1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.a, u_input.c, var_0.b.a), vec3<u32>(u_input.a.x, 1u, global0.a)) % 32u)).c)));
    let var_2 = func_4(var_1, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-36885i, 14374i, 55802i, -1i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, global3.a)) | 35417i, Struct_3(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))), Struct_1(~(~7410u), func_2(495f).a, !global0.c && var_0.b.c, -9568i, var_0.b.e << (~var_1.b.wxw % vec3<u32>(32u))), _wgslsmith_f_op_f32(-107f - var_0.a)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.b.d, 1i, global0.b, 80548i), firstLeadingBit(vec4<i32>(var_1.a, 26795i, var_0.b.b, var_1.a))), -vec4<i32>(global3.a, -1i, var_0.b.e.x, global2.b)), ~countOneBits(~vec4<i32>(global0.b, global2.e.x, u_input.d, global3.a)))).b.a;
    return _wgslsmith_f_op_f32(step(-319f, _wgslsmith_div_f32(938f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1809f), _wgslsmith_f_op_f32(1590f - var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(~(~11738i), firstLeadingBit(~(~vec4<u32>(0u, 10795u, 4294967295u, 64606u))));
    global0 = Struct_1(global2.a, i32(-1i) * -countOneBits(i32(-1i) * -18295i), !(select(true, false, true) | !all(vec2<bool>(true, global2.c))), -4151i, global0.e);
    let var_0 = -2147483647i;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1395f + -337f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1150f, -1193f)) - -1132f));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_1(!global2.c)), func_4(Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.e.x, global0.d, global0.e.x), vec4<i32>(global3.a, global2.b, 74436i, global0.d)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, u_input.c), global3.b), countOneBits(0u), ~1u, 4294967295u)), ~(~(~var_0)), Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-329f, 404f), _wgslsmith_div_f32(-629f, -1121f))), Struct_1(global3.b.x << (global3.b.x % 32u), -36961i, true, 0i, vec3<i32>(-2147483647i, u_input.b.x, global3.a)), -844f), -9916i).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) - -1448f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1282f - 229f) - _wgslsmith_div_f32(-776f, -1000f))))));
    let var_2 = _wgslsmith_dot_vec4_i32(-min(vec4<i32>(-12128i, global2.b, 19475i, global0.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(-26112i, global2.b, -7779i, global2.d), vec4<i32>(1i, -48635i, 22196i, global0.b), vec4<i32>(global2.b, -13161i, global0.e.x, -2147483647i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(func_2(var_1.a).a, global2.d, var_0, func_2(-111f).a), -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, -3127i, -7391i), vec4<i32>(14290i, 1i, 15737i, -1i))), vec4<i32>(-1i, ~(-global2.e.x), global2.d, _wgslsmith_mod_i32(2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), global0.e.yz))));
    var var_3 = u_input.a;
    let var_4 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.c, var_1.a, var_1.a, -933f))), vec4<f32>(1014f, var_1.a, 708f, var_1.c)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, -1000f, var_1.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2217f, var_1.a, 1134f, var_1.a), vec4<f32>(690f, var_1.c, var_1.a, 1108f), global0.c)))))), vec4<f32>(-827f, 381f, -186f, _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1.b.c)) + _wgslsmith_f_op_f32(floor(-322f))))), _wgslsmith_f_op_f32(abs(var_1.a)));
}

