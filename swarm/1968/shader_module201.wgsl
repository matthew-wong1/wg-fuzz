struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-256f, -454f, -377f), vec3<f32>(-204f, -1661f, 1000f), vec3<f32>(198f, 2683f, 530f), vec3<f32>(-814f, -694f, 128f), vec3<f32>(604f, -259f, 1000f), vec3<f32>(531f, -3403f, 697f), vec3<f32>(-182f, -464f, -230f), vec3<f32>(-472f, 1737f, -338f), vec3<f32>(-610f, -294f, 161f), vec3<f32>(-1000f, 924f, -273f), vec3<f32>(475f, -1255f, -1286f), vec3<f32>(-1155f, 1109f, -1302f), vec3<f32>(-1008f, -358f, -1598f), vec3<f32>(670f, -369f, -109f), vec3<f32>(-296f, 491f, -660f), vec3<f32>(662f, -747f, -284f), vec3<f32>(124f, -763f, 1000f), vec3<f32>(1532f, -1099f, 487f), vec3<f32>(646f, -1251f, -806f), vec3<f32>(1131f, -722f, -293f), vec3<f32>(-604f, -966f, -566f), vec3<f32>(363f, 411f, -1377f), vec3<f32>(-715f, -1061f, 888f), vec3<f32>(-176f, 1000f, -222f), vec3<f32>(-929f, 423f, 1852f), vec3<f32>(447f, -133f, -729f), vec3<f32>(3302f, 719f, -288f), vec3<f32>(434f, 1180f, -363f));

var<private> global1: i32 = 0i;

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = firstLeadingBit(u_input.b >> (10368u % 32u));
    global0 = array<vec3<f32>, 28>();
    global2 = arg_1;
    var_0 = abs(65038u);
    let var_1 = Struct_3(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1496f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x)))), 966f, -2076f), -100f, select(!vec2<bool>(any(vec3<bool>(false, global2.b, true)), !global2.b), !select(!vec2<bool>(true, global2.b), !vec2<bool>(arg_1.b, true), vec2<bool>(false, arg_1.b)), !vec2<bool>(!global2.b, true)), vec2<u32>(~select(_wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(57936u, 60499u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 16581u, u_input.b, u_input.b)), !arg_1.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.b, 1u, 4294967295u, 1u)))), arg_1);
    return var_1.d;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, _wgslsmith_f_op_f32(abs(-1382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)), -1409f) * vec4<f32>(-1679f, _wgslsmith_f_op_f32(-1f), 870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)))), -2489f, vec2<bool>(~u_input.a.x <= (reverseBits(-65822i) >> (u_input.b % 32u)), 20480u > (_wgslsmith_sub_u32(u_input.b, u_input.b) >> (~u_input.b % 32u))), _wgslsmith_mult_vec2_u32(func_3(vec3<f32>(-1123f, -1236f, -584f), Struct_2(global2.a, global2.b)), vec2<u32>(4294967295u, u_input.b)) << (~(~_wgslsmith_sub_vec2_u32(vec2<u32>(24064u, u_input.b), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), Struct_2(~min(firstLeadingBit(global2.a), vec3<i32>(27915i, arg_0, global2.a.x)), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), u_input.a) >= (-1i & _wgslsmith_mult_i32(-15119i, global2.a.x))));
    var var_1 = Struct_1(global2.a.x, true, firstTrailingBit(-788i), vec4<bool>(!(!(!global2.b)), any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)) && var_0.c.x, true, 27185u == _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, var_0.d.x, var_0.d.x), firstTrailingBit(vec4<u32>(110988u, 43239u, var_0.d.x, var_0.d.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.e, 678f), _wgslsmith_f_op_vec2_f32(-var_0.a.yz))))), vec2<f32>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, _wgslsmith_f_op_f32(-321f + var_1.e)))), vec2<bool>(var_1.d.x, true)));
    var_1 = Struct_1(max(-1i, 2147483647i), true, reverseBits(_wgslsmith_clamp_i32(var_1.a, -19005i, -2147483647i ^ (var_0.e.a.x << (4294967295u % 32u)))), !vec4<bool>(!all(var_1.d.yzx), any(vec2<bool>(false, true)), var_1.d.x, _wgslsmith_f_op_f32(1337f * var_2.x) < var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-799f)) + 608f))));
    global1 = 1i;
    return var_0.d.x;
}

fn func_1() -> u32 {
    return ~_wgslsmith_mod_u32(~(~func_2(global2.a.x, vec2<bool>(false, global2.b))), u_input.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = ~reverseBits(arg_0);
    global1 = -(~(-1i));
    global1 = global2.a.x;
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(641f * -1723f))), 241f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-167f)) - -1726f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-202f, -1099f)), -755f)), 708f, !select(!vec2<bool>(arg_1.b, true), vec2<bool>(0i > u_input.a.x, arg_1.b || arg_1.b), any(!vec2<bool>(global2.b, arg_1.b))), vec2<u32>(~(arg_0.x ^ 1u), arg_0.x), Struct_2(-arg_1.a, -(~(-57187i)) >= u_input.a.x));
    let var_2 = vec4<bool>(global2.b, (_wgslsmith_sub_u32(4294967295u, 1u) << (~var_1.d.x % 32u)) < ~(~_wgslsmith_div_u32(var_0.x, var_1.d.x)), any(vec2<bool>(arg_1.b || all(vec4<bool>(global2.b, arg_1.b, false, global2.b)), all(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(step(118f, _wgslsmith_f_op_f32(step(-226f, _wgslsmith_f_op_f32(var_1.a.x + var_1.b))))) != var_1.a.x);
    return Struct_2(arg_1.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-countOneBits(-61430i), (73949i ^ global2.a.x) & 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -446f), -331f, _wgslsmith_f_op_f32(min(-122f, _wgslsmith_f_op_f32(abs(254f)))), 196f)));
    var var_2 = var_1.xyx;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global2.a.x), global2.a), global2.a), reverseBits(u_input.a.x) | _wgslsmith_sub_i32(u_input.a.x, 1i), countOneBits(firstTrailingBit(28173i)));
    var var_4 = func_4(vec3<u32>(firstTrailingBit(~_wgslsmith_mod_u32(u_input.b, u_input.b)), select(_wgslsmith_dot_vec2_u32(~vec2<u32>(60672u, 4294967295u), vec2<u32>(6391u, 0u)), ~u_input.b | func_1(), all(!vec4<bool>(true, true, true, global2.b))), _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 20599u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(1u, u_input.b, 32817u, u_input.b)))), Struct_2(~(_wgslsmith_add_vec3_i32(u_input.a.xzw, global2.a) << (countOneBits(vec3<u32>(u_input.b, 4294967295u, u_input.b)) % vec3<u32>(32u))), true));
    var var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1.x, _wgslsmith_f_op_f32(-1000f * 429f), _wgslsmith_f_op_f32(-532f - var_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(491f, var_2.x))) - 1f))), vec2<bool>(true, !(var_1.x <= _wgslsmith_div_f32(var_1.x, var_2.x))), _wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 15078u)), vec2<u32>(u_input.b, firstLeadingBit(countOneBits(8601u)))), func_4(vec3<u32>(countOneBits(u_input.b | 49947u), _wgslsmith_add_u32(u_input.b | 52970u, u_input.b), firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 161486u))), func_4(vec3<u32>(_wgslsmith_add_u32(26802u, 1u), ~u_input.b, 8289u | u_input.b), Struct_2(vec3<i32>(23634i, 17320i, global2.a.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_5.d.x, 4294967295u) & vec4<u32>(var_5.d.x, 0u, 0u, var_5.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_5.d.x, 1u, var_5.d.x, var_5.d.x), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4235u))), min(vec4<u32>(var_5.d.x, var_5.d.x, 32460u, 1u), vec4<u32>(var_5.d.x, 23843u, var_5.d.x, var_5.d.x)) ^ abs(vec4<u32>(26872u, var_5.d.x, var_5.d.x, u_input.b))) | vec4<u32>(18760u, 8156u, func_2(global2.a.x, !var_5.c), var_5.d.x), ~_wgslsmith_div_u32(~abs(0u), ~23476u));
}

