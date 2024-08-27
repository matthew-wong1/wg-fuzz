struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(-1347f, 1527f, -808f, -808f)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 21900u), vec4<f32>(1767f, 630f, -567f, -720f)), Struct_3(vec3<u32>(4294967295u, 2585u, 4294967295u), vec4<f32>(-1921f, -1874f, -867f, -555f)), Struct_3(vec3<u32>(27336u, 31386u, 52177u), vec4<f32>(937f, -115f, 877f, 415f)), Struct_3(vec3<u32>(97937u, 0u, 4294967295u), vec4<f32>(-602f, -411f, 489f, 1154f)), Struct_3(vec3<u32>(48677u, 4294967295u, 4294967295u), vec4<f32>(654f, -1849f, 683f, 575f)), Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(1505f, -1148f, 867f, 804f)), Struct_3(vec3<u32>(10696u, 1u, 78820u), vec4<f32>(-294f, -243f, -481f, 252f)), Struct_3(vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-761f, 1209f, 141f, -704f)), Struct_3(vec3<u32>(44556u, 55781u, 0u), vec4<f32>(-1867f, -172f, -234f, -969f)), Struct_3(vec3<u32>(0u, 30532u, 77045u), vec4<f32>(-339f, 542f, -575f, 1241f)), Struct_3(vec3<u32>(0u, 0u, 41513u), vec4<f32>(-400f, 1347f, 723f, -684f)), Struct_3(vec3<u32>(4294967295u, 1u, 1u), vec4<f32>(-1000f, 149f, 558f, 1431f)), Struct_3(vec3<u32>(69963u, 27412u, 11742u), vec4<f32>(-738f, 552f, -232f, -603f)), Struct_3(vec3<u32>(33301u, 1u, 33640u), vec4<f32>(567f, 265f, 784f, 1056f)), Struct_3(vec3<u32>(26129u, 4294967295u, 12927u), vec4<f32>(-1112f, 1530f, 1007f, -2054f)), Struct_3(vec3<u32>(52963u, 39181u, 1u), vec4<f32>(997f, -159f, 303f, -1000f)), Struct_3(vec3<u32>(28175u, 1u, 1u), vec4<f32>(-1649f, 473f, -1173f, -1086f)), Struct_3(vec3<u32>(33645u, 0u, 87267u), vec4<f32>(365f, 620f, 1522f, 1052f)), Struct_3(vec3<u32>(1u, 0u, 1u), vec4<f32>(1570f, -913f, -674f, -541f)), Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(-838f, 427f, 886f, -191f)), Struct_3(vec3<u32>(21053u, 19462u, 18467u), vec4<f32>(985f, 695f, 117f, -709f)), Struct_3(vec3<u32>(1u, 1u, 1u), vec4<f32>(-631f, 1044f, 294f, 258f)), Struct_3(vec3<u32>(41353u, 4294967295u, 0u), vec4<f32>(745f, 1445f, -637f, 1352f)), Struct_3(vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(1863f, -495f, -560f, -238f)), Struct_3(vec3<u32>(4294967295u, 0u, 0u), vec4<f32>(-439f, -278f, -1239f, -1445f)), Struct_3(vec3<u32>(18334u, 4294967295u, 4294967295u), vec4<f32>(570f, 698f, -336f, 225f)), Struct_3(vec3<u32>(38974u, 20682u, 0u), vec4<f32>(1000f, -2684f, 1442f, -1040f)), Struct_3(vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(215f, -1040f, -707f, 684f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_3(u_input.a.wxw | vec3<u32>(abs(~u_input.a.x), 0u, ~reverseBits(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.b.x, -1137f, 326f, arg_0.d.b.x)) + _wgslsmith_f_op_vec4_f32(select(arg_0.d.b, arg_0.d.b, vec4<bool>(arg_2.x, arg_0.c, true, arg_0.c))))) + vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.d.b.x)), -334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1143f)) * _wgslsmith_f_op_f32(round(-243f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1626f))))));
    var var_1 = vec4<i32>(~countOneBits(-19457i << (u_input.d.x % 32u)), u_input.e, arg_0.a, arg_0.a);
    var var_2 = select(_wgslsmith_f_op_f32(step(1084f, 1649f)) == _wgslsmith_f_op_f32(sign(1000f)), arg_0.c, arg_0.c);
    global1 = array<Struct_3, 29>();
    global0 = array<Struct_2, 17>();
    return true;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_1(any(select(vec3<bool>(true, true, all(vec4<bool>(true, false, false, arg_2.c))), vec3<bool>(func_3(arg_2, 84471u, vec3<bool>(arg_1, true, false)), arg_1 | true, true && arg_2.c), !(!vec3<bool>(arg_1, arg_1, false)))), _wgslsmith_dot_vec4_u32(select(~min(vec4<u32>(10789u, 4294967295u, arg_0, arg_0), u_input.a), ~(~arg_2.e), all(vec3<bool>(false, true, false))), arg_2.e), arg_2.d.b.x);
    return countOneBits(max(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-4706i, arg_2.a, 13684i), vec3<i32>(arg_2.a, -1i, arg_2.a))), ~(~arg_2.a)));
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32((_wgslsmith_mult_u32(33996u, _wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, 46906u)) | u_input.a.x) ^ u_input.a.x, ~(~(_wgslsmith_mod_u32(0u, u_input.d.x) << (4294967295u % 32u)))), 17u)];
    global1 = array<Struct_3, 29>();
    var var_1 = all(!vec2<bool>(!var_0.d.a, var_0.a <= 985f));
    let var_2 = -_wgslsmith_sub_i32(-func_2(var_0.b.x, false, Struct_4(u_input.b.x, u_input.a.zyx, false, global1[_wgslsmith_index_u32(u_input.c, 29u)], vec4<u32>(0u, u_input.c, u_input.c, 4294967295u))), countOneBits(4347i)) << (select(_wgslsmith_mod_u32(u_input.a.x, var_0.b.x), ~2557u, var_0.d.a) % 32u);
    global0 = array<Struct_2, 17>();
    return _wgslsmith_dot_vec4_i32(~select(select(abs(vec4<i32>(0i, var_2, var_2, 15524i)), firstTrailingBit(vec4<i32>(-4484i, -60911i, u_input.e, var_2)), vec4<bool>(var_0.d.a, var_0.d.a, var_0.d.a, false)), vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.b.x, -34991i, var_2), reverseBits(var_2), 1i), vec4<bool>(all(vec2<bool>(var_0.d.a, true)), var_0.d.a, all(vec2<bool>(true, false)), any(vec4<bool>(var_0.d.a, true, true, false)))), -_wgslsmith_mult_vec4_i32(vec4<i32>(select(1i, u_input.e, true), ~u_input.b.x, 0i, _wgslsmith_div_i32(1i, var_2)), vec4<i32>(u_input.b.x, max(1i, 16814i), abs(var_2), -103999i >> (u_input.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~_wgslsmith_sub_u32(u_input.d.x, ~(~u_input.d.x));
    let var_2 = u_input.a.yyz;
    let var_3 = vec3<i32>(~(u_input.b.x | _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, -32292i, u_input.e), vec3<i32>(-15613i, 1i, -21266i)), vec3<i32>(u_input.e, u_input.e, 0i))), ~(-(func_1() << (~u_input.d.x % 32u))), func_2(_wgslsmith_clamp_u32(1u, var_2.x, _wgslsmith_mult_u32(u_input.c, 44026u)), false, Struct_4(_wgslsmith_sub_i32(i32(-1i) * -120i, 1i), vec3<u32>(~0u, _wgslsmith_clamp_u32(var_2.x, 4294967295u, u_input.c), 1u), false, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, select(30405u, 1u, false), countOneBits(u_input.c)), 29u)], min(vec4<u32>(var_2.x, 11993u, u_input.c, var_2.x), vec4<u32>(75105u, u_input.c, 1u, var_2.x)))));
    global0 = array<Struct_2, 17>();
    let var_4 = 0u;
    var_1 = var_2.x;
    var var_5 = Struct_4(0i, ~vec3<u32>(max(26335u, 71003u), var_2.x, u_input.a.x << (58983u % 32u)) & u_input.a.zwy, true, global1[_wgslsmith_index_u32(~u_input.c, 29u)], _wgslsmith_div_vec4_u32(max(~vec4<u32>(u_input.d.x, var_2.x, 4294967295u, 1u) ^ ~vec4<u32>(u_input.a.x, 47541u, var_2.x, u_input.c), vec4<u32>(0u >> (var_2.x % 32u), countOneBits(0u), var_2.x, var_4 ^ var_2.x)), ~vec4<u32>(4294967295u & u_input.a.x, ~0u, ~var_4, 8500u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_5.d.b.wx))));
}

