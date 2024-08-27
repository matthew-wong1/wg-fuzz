struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1873f, 547f, 1093f), vec3<f32>(-463f, 1000f, 207f), vec3<f32>(-1547f, 414f, 2071f), vec3<f32>(1617f, -347f, -293f), vec3<f32>(614f, 644f, -213f), vec3<f32>(1232f, -1883f, -950f), vec3<f32>(798f, -657f, -352f), vec3<f32>(-1393f, 1293f, 256f), vec3<f32>(-424f, -896f, 166f), vec3<f32>(109f, 530f, -172f), vec3<f32>(399f, -1090f, -1000f), vec3<f32>(1644f, -259f, -417f), vec3<f32>(-1605f, 1299f, -353f), vec3<f32>(761f, -129f, -470f), vec3<f32>(191f, -612f, 946f), vec3<f32>(-1010f, -316f, 597f), vec3<f32>(-423f, -1283f, -334f), vec3<f32>(-927f, 1052f, 1000f), vec3<f32>(-1660f, 1691f, -126f), vec3<f32>(682f, -810f, 865f), vec3<f32>(-1537f, 1119f, 1000f), vec3<f32>(150f, -1089f, 375f), vec3<f32>(794f, 954f, -229f), vec3<f32>(1000f, 309f, -621f), vec3<f32>(-827f, -1205f, 184f), vec3<f32>(-1225f, -1112f, -445f), vec3<f32>(-542f, -2342f, 1549f), vec3<f32>(915f, 162f, 623f), vec3<f32>(-882f, 181f, 321f), vec3<f32>(1203f, 768f, 400f), vec3<f32>(-387f, 550f, -844f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_dot_vec3_i32(max(~vec3<i32>(firstTrailingBit(-68487i), _wgslsmith_dot_vec3_i32(vec3<i32>(64531i, 1i, 49514i), vec3<i32>(27571i, -1i, 12713i)), 1i), _wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, -1i, -3545i), vec3<i32>(_wgslsmith_add_i32(24817i, -18035i), _wgslsmith_clamp_i32(19928i, 2147483647i, -32123i), 1i))), _wgslsmith_sub_vec3_i32(max(select(vec3<i32>(13577i, -28218i, 0i), vec3<i32>(1i, 6405i, -3126i), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)])), vec3<i32>(2147483647i, 13051i, 1i)) | ~vec3<i32>(-1i, -17540i, -39962i), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 37030i, 1i), vec3<i32>(1i, 2147483647i, -1i)), countOneBits(-2147483647i), _wgslsmith_div_i32(2147483647i, 31303i)))));
    let var_1 = _wgslsmith_add_vec2_i32(-select(vec2<i32>(~var_0, ~(-22389i)), max(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 2147483647i)), false), _wgslsmith_div_vec2_i32(min(vec2<i32>(-var_0, 7125i), ~vec2<i32>(-1i, var_0)), abs(vec2<i32>(_wgslsmith_div_i32(var_0, 0i), _wgslsmith_div_i32(-1i, 13134i)))));
    var var_2 = reverseBits(~(~select(vec4<u32>(1u, u_input.b, u_input.b, u_input.a), ~vec4<u32>(75718u, u_input.a, u_input.b, u_input.b), !vec4<bool>(false, global0[_wgslsmith_index_u32(38918u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)]))));
    global0 = array<bool, 22>();
    let var_3 = ~(~(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 64529u, 1u, 87994u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, 0u, var_2.x), vec4<u32>(14976u, 1u, 1u, 0u)))));
    return global0[_wgslsmith_index_u32(25600u, 22u)];
}

fn func_2() -> Struct_4 {
    var var_0 = 16936i;
    var var_1 = 9324i;
    var var_2 = Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 318u), vec2<u32>(u_input.b, 4294967295u)), u_input.b, func_3()), u_input.b), 22u)], true, any(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 22u)], func_3(), global0[_wgslsmith_index_u32(9759u, 22u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(9580u, 22u)])))), func_3() | true), 3224u);
    let var_3 = ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 39941u, 4294967295u), vec3<u32>(var_2.b, var_2.b, 0u)), vec3<u32>(u_input.b, u_input.a, 3399u) & vec3<u32>(u_input.b, var_2.b, 1u), vec3<u32>(34404u, 31610u, 4294967295u)), vec3<u32>(10356u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, u_input.a), vec2<u32>(47749u, 45625u)), _wgslsmith_add_u32(1u, 85845u))) | ~vec3<u32>(max(min(var_2.b, u_input.b), 1780u), _wgslsmith_div_u32(abs(u_input.b), var_2.b), _wgslsmith_mod_u32(1u, 47771u));
    global0 = array<bool, 22>();
    return Struct_4(vec4<bool>(!(global0[_wgslsmith_index_u32(10972u & var_3.x, 22u)] & true), any(vec2<bool>(global0[_wgslsmith_index_u32(var_3.x, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)])) || select(var_2.a.x, true, any(var_2.a.xx)), false, true), _wgslsmith_mult_u32(u_input.a & 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_2.b) ^ var_3, var_3)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_4 {
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_1 {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    global1 = array<vec3<f32>, 31>();
    let var_0 = Struct_3(Struct_2(Struct_1(~max(vec2<i32>(-16254i, 2147483647i), vec2<i32>(-29925i, 2147483647i)), ~(~7513i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, -502f))), arg_2.zz)), 1509f, !arg_1.a)), _wgslsmith_div_vec2_u32(~max(vec2<u32>(u_input.a, arg_1.b), _wgslsmith_div_vec2_u32(vec2<u32>(114645u, 29679u), vec2<u32>(arg_0, 15508u))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b, 31540u), vec2<u32>(0u, ~1u))), vec4<bool>(!(-764f <= _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))), arg_0 <= _wgslsmith_mod_u32(68488u, 1123u), false, any(func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -3328f), global0[_wgslsmith_index_u32(func_4(Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 22u)], false, global0[_wgslsmith_index_u32(arg_0, 22u)], false), arg_1.b), arg_2.x, arg_1.a.x, 18799i).b, 22u)], 29209i).a.xww)), vec2<f32>(_wgslsmith_f_op_f32(-619f * -1331f), 1646f));
    var var_1 = vec3<bool>(!(!var_0.c.x || !var_0.a.a.e.x), false, !arg_1.a.x);
    return var_0.a.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<bool, 22>();
    let var_0 = reverseBits(0u);
    let var_1 = arg_0.e.x;
    let var_2 = true;
    var var_3 = arg_3;
    return arg_3.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = func_6(func_5(19998u, func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1432f) + 422f), true, abs(firstTrailingBit(7514i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)], vec3<f32>(-160f, -1303f, -420f)), _wgslsmith_div_vec3_f32(vec3<f32>(-631f, -316f, 295f), vec3<f32>(-981f, 813f, -1095f)), true)) - global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(15780u, u_input.b) ^ u_input.b, 31u)])), func_2().a.xxw, func_5(abs(60107u), Struct_4(func_5(~u_input.b, Struct_4(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], false), 36433u), _wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(9678u, 31u)]))).e, ~(u_input.b ^ u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(max(-581f, _wgslsmith_f_op_f32(f32(-1f) * -1104f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1063f))))), Struct_2(Struct_1(vec2<i32>(1i, 1i), countOneBits(~2147483647i), _wgslsmith_f_op_vec2_f32(-func_5(u_input.a, Struct_4(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], arg_0.x), u_input.b), global1[_wgslsmith_index_u32(u_input.a, 31u)]).c), -1409f, func_4(func_2(), _wgslsmith_f_op_f32(-1054f + -349f), !arg_0.x, -2147483647i).a)));
    let var_1 = false;
    var var_2 = Struct_3(Struct_2(func_6(func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 24977u, 4294967295u), vec3<u32>(u_input.a, 31817u, u_input.a)), Struct_4(var_0.e, 4294967295u), global1[_wgslsmith_index_u32(u_input.b ^ u_input.b, 31u)]), vec3<bool>(true, var_0.d != var_0.d, any(vec3<bool>(arg_0.x, false, false))), Struct_1(vec2<i32>(2147483647i, var_0.a.x) & var_0.a, var_0.a.x, vec2<f32>(var_0.c.x, -789f), var_0.c.x, !var_0.e), Struct_2(func_5(u_input.b, Struct_4(var_0.e, u_input.a), vec3<f32>(-654f, 1952f, 1642f))))), min(reverseBits(vec2<u32>(u_input.a, 31959u)), ~vec2<u32>(0u, 24276u)) & abs(vec2<u32>(max(u_input.b, 14483u), ~72839u)), !var_0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1087f)), var_0.c, vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(18330u, 22u)] | var_0.e.x)))));
    var var_3 = !vec3<bool>(any(func_5(var_2.b.x, Struct_4(vec4<bool>(var_1, var_1, false, arg_0.x), var_2.b.x), global1[_wgslsmith_index_u32(1u, 31u)]).e), func_3(), !global0[_wgslsmith_index_u32(~0u | func_4(Struct_4(vec4<bool>(var_2.a.a.e.x, arg_0.x, true, var_0.e.x), 1u), 1000f, global0[_wgslsmith_index_u32(6838u, 22u)], 2147483647i).b, 22u)]);
    let var_4 = ~abs(_wgslsmith_mod_vec4_i32(firstLeadingBit(min(vec4<i32>(2147483647i, -1i, 0i, var_2.a.a.b), vec4<i32>(var_0.b, 0i, 28301i, var_2.a.a.a.x))), vec4<i32>(countOneBits(var_2.a.a.a.x), 21701i, 68379i, var_0.b)));
    return Struct_3(var_2.a, ~var_2.b, vec4<bool>((var_0.d > var_0.d) && func_6(func_5(4294967295u, Struct_4(var_0.e, 0u), global1[_wgslsmith_index_u32(u_input.a, 31u)]), var_0.e.zxx, func_5(0u, Struct_4(vec4<bool>(var_0.e.x, true, false, var_0.e.x), 0u), global1[_wgslsmith_index_u32(5522u, 31u)]), Struct_2(var_2.a.a)).e.x, global0[_wgslsmith_index_u32(41590u, 22u)], var_3.x, !(func_4(Struct_4(var_0.e, 0u), var_2.a.a.c.x, false, 1i).a.x && true)), var_0.c);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec3<i32>(-3259i, (abs(-2147483647i) & arg_1.a.a.b) ^ 30980i, ~(-2147483647i));
    var var_1 = 2147483647i;
    let var_2 = Struct_2(arg_0.a.a);
    var var_3 = Struct_2(func_6(func_5(u_input.b, Struct_4(!vec4<bool>(var_2.a.e.x, arg_0.a.a.e.x, true, false), _wgslsmith_dot_vec4_u32(vec4<u32>(23920u, 118435u, 4294967295u, u_input.a), vec4<u32>(1u, 21687u, arg_0.b.x, u_input.b))), vec3<f32>(arg_1.a.a.c.x, _wgslsmith_f_op_f32(-471f - var_2.a.c.x), _wgslsmith_f_op_f32(-arg_0.d.x))), func_5(abs(_wgslsmith_add_u32(arg_0.b.x, 3542u)), func_2(), vec3<f32>(_wgslsmith_f_op_f32(min(-759f, 2157f)), _wgslsmith_f_op_f32(round(1378f)), _wgslsmith_f_op_f32(step(1469f, var_2.a.c.x)))).e.zxy, func_5(arg_1.b.x, Struct_4(var_2.a.e, ~49812u), global1[_wgslsmith_index_u32(~4294967295u, 31u)]), Struct_2(var_2.a)));
    let var_4 = Struct_1(_wgslsmith_mult_vec2_i32(var_0.yz, vec2<i32>(func_6(Struct_1(vec2<i32>(-1i, var_3.a.b), arg_2.a.a.x, vec2<f32>(-1000f, arg_1.a.a.d), -100f, vec4<bool>(false, true, arg_1.a.a.e.x, arg_1.a.a.e.x)), select(vec3<bool>(false, var_3.a.e.x, false), var_3.a.e.wxx, var_3.a.e.x), arg_0.a.a, Struct_2(Struct_1(arg_0.a.a.a, 24894i, var_2.a.c, arg_0.d.x, var_3.a.e))).a.x, 1i)), var_0.x, arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(min(-1064f, arg_1.d.x))))), arg_0.a.a.e);
    return Struct_1(countOneBits(select(vec2<i32>(0i, var_4.b), var_3.a.a, !var_2.a.e.x)), -2147483647i, vec2<f32>(_wgslsmith_div_f32(var_2.a.d, arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-337f - var_4.c.x), _wgslsmith_div_f32(var_3.a.d, arg_1.a.a.c.x)))), arg_0.d.x, select(!var_2.a.e, var_3.a.e, false));
}

fn func_8(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> i32 {
    var var_0 = func_1(func_6(Struct_1(-arg_0.a, -(arg_0.b << (arg_1.x % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.c.x)), arg_0.d, !func_6(Struct_1(arg_0.a, arg_0.a.x, arg_0.c, arg_0.d, arg_0.e), arg_0.e.yxx, arg_0, Struct_2(arg_0)).e), !func_4(Struct_4(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.x, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]), arg_1.x), arg_0.c.x, true, -4525i).a.wwz, Struct_1(arg_0.a, arg_0.a.x, arg_0.c, func_6(Struct_1(arg_0.a, arg_2, vec2<f32>(-164f, arg_0.c.x), 250f, vec4<bool>(false, true, global0[_wgslsmith_index_u32(75500u, 22u)], arg_0.e.x)), vec3<bool>(false, false, false), arg_0, func_1(arg_0.e.wz).a).d, arg_0.e), Struct_2(func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 23931u), vec4<u32>(arg_1.x, 19719u, arg_1.x, arg_1.x)), Struct_4(arg_0.e, 20796u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.d, arg_0.c.x, arg_0.c.x), vec3<f32>(-1000f, 899f, arg_0.c.x)))))).e.yy).a;
    let var_1 = _wgslsmith_dot_vec2_i32(~func_7(func_1(var_0.a.e.zz), func_1(vec2<bool>(true, var_0.a.e.x)), func_1(func_4(Struct_4(vec4<bool>(false, arg_0.e.x, true, false), u_input.b), -1883f, true, arg_0.a.x).a.xz).a).a, var_0.a.a);
    let var_2 = !vec3<bool>(all(var_0.a.e.yy), !(!func_6(var_0.a, var_0.a.e.wxx, var_0.a, Struct_2(arg_0)).e.x), !func_6(func_7(Struct_3(Struct_2(arg_0), arg_1.xx, var_0.a.e, var_0.a.c), Struct_3(Struct_2(Struct_1(vec2<i32>(-39582i, var_0.a.a.x), arg_0.b, var_0.a.c, arg_0.d, vec4<bool>(arg_0.e.x, false, false, arg_0.e.x))), arg_1.xy, vec4<bool>(global0[_wgslsmith_index_u32(64842u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], false, false), var_0.a.c), Struct_2(arg_0)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.e.x, true), arg_0, func_1(arg_0.e.ww).a).e.x);
    global0 = array<bool, 22>();
    var var_3 = Struct_2(arg_0);
    return func_6(func_5(arg_1.x, func_4(func_2(), -836f, all(func_7(Struct_3(Struct_2(arg_0), arg_1.xy, var_0.a.e, var_3.a.c), Struct_3(Struct_2(var_3.a), arg_1.zz, vec4<bool>(global0[_wgslsmith_index_u32(12420u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], var_2.x, true), vec2<f32>(arg_0.c.x, var_0.a.d)), Struct_2(var_3.a)).e), -_wgslsmith_add_i32(-59030i, var_1)), vec3<f32>(764f, _wgslsmith_f_op_f32(abs(1939f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(511f, -523f))))), vec3<bool>(true | all(vec2<bool>(var_0.a.e.x, true)), false, var_0.a.e.x), Struct_1(vec2<i32>(-1i, var_3.a.b >> (1u % 32u)), _wgslsmith_add_i32(2147483647i, ~var_0.a.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a.c - func_5(1u, Struct_4(var_3.a.e, arg_1.x), global1[_wgslsmith_index_u32(1u, 31u)]).c)), _wgslsmith_f_op_f32(var_3.a.d * 603f), !(!vec4<bool>(arg_0.e.x, global0[_wgslsmith_index_u32(12540u, 22u)], true, false))), Struct_2(var_3.a)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 31>();
    let var_0 = Struct_1(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_div_vec2_i32(min(vec2<i32>(24625i, 27982i), vec2<i32>(-53696i, 6853i)), vec2<i32>(1i, 1i)))), func_8(func_7(func_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)])), func_1(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 22u)])), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), -20150i, vec2<f32>(668f, -1556f), -1002f, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(70825u, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)])))), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), 2147483647i) ^ 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, -429f))))), 1979f, select(func_5(1u >> (~u_input.a % 32u), Struct_4(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 22u)], false, false), 1u), vec3<f32>(_wgslsmith_f_op_f32(step(-109f, 653f)), -698f, -106f)).e, vec4<bool>(func_4(func_4(Struct_4(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 22u)], true, global0[_wgslsmith_index_u32(4294967295u, 22u)]), 4294967295u), 950f, global0[_wgslsmith_index_u32(4294967295u, 22u)], 0i), 847f, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], false)), _wgslsmith_clamp_i32(41231i, 16304i, 15852i)).a.x, global0[_wgslsmith_index_u32(firstLeadingBit(82327u), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.a, u_input.b) | vec2<u32>(u_input.b, 23371u)), 22u)], 20561i == func_7(Struct_3(Struct_2(Struct_1(vec2<i32>(-2147483647i, 0i), -1i, vec2<f32>(719f, 676f), -833f, vec4<bool>(true, false, global0[_wgslsmith_index_u32(4804u, 22u)], true))), vec2<u32>(u_input.a, u_input.b), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]), vec2<f32>(-617f, 550f)), Struct_3(Struct_2(Struct_1(vec2<i32>(-1679i, -24890i), 1i, vec2<f32>(929f, 982f), -1676f, vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(20405u, 22u)]))), vec2<u32>(u_input.a, 0u), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 22u)], true, global0[_wgslsmith_index_u32(u_input.a, 22u)]), vec2<f32>(1176f, -1000f)), Struct_2(Struct_1(vec2<i32>(57255i, -14556i), -99052i, vec2<f32>(-258f, -358f), -1000f, vec4<bool>(false, false, true, false)))).b), select(func_6(func_6(Struct_1(vec2<i32>(-17277i, -1i), -19464i, vec2<f32>(729f, 1165f), 1016f, vec4<bool>(global0[_wgslsmith_index_u32(29726u, 22u)], global0[_wgslsmith_index_u32(5724u, 22u)], global0[_wgslsmith_index_u32(26950u, 22u)], false)), vec3<bool>(true, false, true), Struct_1(vec2<i32>(-26889i, 1i), 10766i, vec2<f32>(428f, 326f), 1054f, vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], false, global0[_wgslsmith_index_u32(u_input.b, 22u)], true)), Struct_2(Struct_1(vec2<i32>(43168i, 14522i), 35783i, vec2<f32>(2025f, 287f), 123f, vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 22u)], false)))), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_1(vec2<i32>(-18562i, 1i), 1i, vec2<f32>(-827f, -438f), -1518f, vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec2<i32>(-1i, -2147483647i), 2147483647i, vec2<f32>(612f, 942f), 254f, vec4<bool>(global0[_wgslsmith_index_u32(39176u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], false)))).e, func_2().a, func_7(func_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 22u)], true)), Struct_3(Struct_2(Struct_1(vec2<i32>(6272i, 6454i), 2147483647i, vec2<f32>(421f, 756f), -785f, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]))), vec2<u32>(u_input.b, 5921u), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 22u)], false), vec2<f32>(-1000f, -163f)), Struct_2(Struct_1(vec2<i32>(1i, 19778i), -1i, vec2<f32>(785f, -510f), 1066f, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])))).e)));
    let var_1 = ~(~(vec2<u32>(_wgslsmith_mod_u32(12105u, u_input.a), u_input.b << (18313u % 32u)) ^ (max(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.a, u_input.b)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 0u)) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * var_0.d)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))));
    let var_3 = _wgslsmith_f_op_f32(-var_2);
    global0 = array<bool, 22>();
    let var_4 = func_4(Struct_4(vec4<bool>(true, false, true, _wgslsmith_div_f32(var_0.d, -984f) > 312f), (58112u & var_1.x) << (~(~u_input.a) % 32u)), var_2, func_7(Struct_3(func_1(var_0.e.yz).a, ~var_1, vec4<bool>(var_0.e.x, u_input.a <= u_input.a, all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 22u)])), var_0.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 498f) + vec2<f32>(-304f, -348f)))), Struct_3(func_1(var_0.e.yy).a, vec2<u32>(4294967295u, ~4294967295u), !func_1(var_0.e.ww).c, vec2<f32>(-310f, -155f)), Struct_2(var_0)).e.x, 57023i & var_0.b);
    global0 = array<bool, 22>();
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d)) + -115f))), -24470i, vec3<f32>(-455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, -1429f))) + _wgslsmith_f_op_f32(ceil(func_6(Struct_1(vec2<i32>(0i, 1i), var_5.b, vec2<f32>(1102f, -1339f), var_3, vec4<bool>(true, var_0.e.x, true, true)), var_0.e.wwy, var_0, Struct_2(var_0)).d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + var_3) - -835f)), -1332f, var_5.a);
}

