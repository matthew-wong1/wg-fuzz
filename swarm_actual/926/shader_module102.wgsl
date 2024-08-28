struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(414f, 420f, 394f, -1000f), vec4<f32>(-124f, -1000f, -1982f, -294f), vec4<f32>(-217f, -1412f, -1448f, -906f), vec4<f32>(512f, 548f, -1000f, -111f), vec4<f32>(891f, 244f, -345f, 726f), vec4<f32>(-1000f, -1612f, 551f, -689f), vec4<f32>(1044f, -163f, 712f, 712f), vec4<f32>(-1072f, 529f, 1113f, 696f), vec4<f32>(-1000f, 1000f, -1327f, -670f), vec4<f32>(1000f, 1000f, 1067f, 954f), vec4<f32>(1343f, 115f, -431f, -579f), vec4<f32>(-1286f, -1789f, -967f, 141f), vec4<f32>(272f, -709f, 426f, -1325f), vec4<f32>(1000f, -1654f, -995f, -897f), vec4<f32>(307f, -355f, -264f, 657f), vec4<f32>(105f, 107f, 908f, 1324f), vec4<f32>(-1314f, -569f, 1386f, 1867f), vec4<f32>(184f, 733f, -325f, -1532f), vec4<f32>(-141f, 882f, -658f, -458f), vec4<f32>(319f, 664f, -791f, 150f), vec4<f32>(416f, 515f, -1633f, -1000f), vec4<f32>(-622f, 2086f, 1000f, -377f));

var<private> global1: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(33751u, arg_3.a), vec2<u32>(4294967295u, arg_3.a)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 10343u) | vec2<u32>(0u, arg_3.a), firstTrailingBit(vec2<u32>(59292u, 31433u))) % vec2<u32>(32u))));
    let var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, ~(-1i), _wgslsmith_dot_vec3_i32(u_input.c | vec3<i32>(u_input.c.x, u_input.b, 0i), select(vec3<i32>(15706i, -6753i, 1701i), vec3<i32>(49108i, 53867i, u_input.c.x), arg_0)), _wgslsmith_div_i32(~u_input.a, u_input.a ^ u_input.a)), -min(max(vec4<i32>(0i, u_input.a, u_input.c.x, 2147483647i), vec4<i32>(u_input.a, -22113i, u_input.c.x, 5502i)), vec4<i32>(u_input.a, -23216i, 0i, u_input.c.x)));
    let var_2 = _wgslsmith_f_op_f32(340f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * -1557f), arg_1, arg_0)), arg_1, select(select(arg_2.x, true, false), 39488u >= var_0.x, true)))));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(10618u, arg_3.a | 95361u, var_0.x), vec3<u32>(arg_3.a, var_0.x, arg_3.a));
    let var_4 = Struct_2(_wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, 14898i, 0i), ~max(vec3<i32>(1i, u_input.a, -53855i), u_input.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-803f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-201f, var_2)))))), 14038u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-217f)), -169f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) + arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-var_2)))), Struct_1(reverseBits(min(firstLeadingBit(1u), var_3.x ^ 1u))));
    return arg_3.a;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    var var_0 = -581f;
    global1 = ~0u >> ((~(func_3(false, 239f, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), Struct_1(4294967295u)) ^ _wgslsmith_add_u32(63338u, 25110u)) & max(0u, 1u)) % 32u);
    global1 = _wgslsmith_add_u32(~select(~countOneBits(4294967295u), _wgslsmith_sub_u32(~988u, min(36654u, 68420u)), any(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)) || arg_2.x), 0u);
    var var_1 = vec4<i32>(~2147483647i, ~(~12388i), arg_0, 2147483647i);
    global0 = array<vec4<f32>, 22>();
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    var var_0 = min(1u, ~_wgslsmith_div_u32(abs(firstTrailingBit(9819u)), func_2(~u_input.b, 43854i, select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    let var_1 = select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(select(~select(vec4<u32>(77777u, 2384u, 1u, 88819u), vec4<u32>(0u, 3867u, 45672u, 16115u), vec4<bool>(false, false, false, false)), firstLeadingBit(~vec4<u32>(14425u, 4294967295u, 14583u, 23025u)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), vec4<u32>(~1u, 70068u, 1u, _wgslsmith_div_u32(1u, 1u))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)));
    var_0 = max(766u, _wgslsmith_add_u32(var_1.x, ~var_1.x));
    let var_2 = false;
    return Struct_1(~(~_wgslsmith_sub_u32(firstTrailingBit(var_1.x), max(43878u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_u32(4686u, 0u) | select(34088u, 1u, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))));
    let var_1 = ~u_input.c.x;
    let var_2 = 1f;
    var var_3 = true;
    global0 = array<vec4<f32>, 22>();
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, vec3<u32>(_wgslsmith_sub_u32(func_3(true, _wgslsmith_f_op_f32(-var_2), vec4<bool>(false, true, false, false), func_1()), var_0.a ^ var_4.a), _wgslsmith_dot_vec2_u32(vec2<u32>(57809u, var_0.a) | _wgslsmith_add_vec2_u32(vec2<u32>(var_4.a, 57776u), vec2<u32>(var_0.a, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(59469u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_4.a, 1u)))), 0u), _wgslsmith_div_vec4_i32(vec4<i32>(var_1, _wgslsmith_div_i32(~(-16638i), -var_1), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(u_input.b, 1i)), var_1, u_input.a | u_input.c.x), -17798i), vec4<i32>(_wgslsmith_add_i32(49260i, var_1), 1i, -var_1, _wgslsmith_sub_i32(-48926i, u_input.a)) >> (_wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, var_0.a, 7124u, 1u), vec4<u32>(16927u, var_4.a, var_4.a, var_4.a)), ~vec4<u32>(4294967295u, 17192u, var_0.a, var_4.a)) % vec4<u32>(32u))));
}

