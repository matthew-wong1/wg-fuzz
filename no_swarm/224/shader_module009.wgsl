struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(794f, 821f), 56792i, false, vec3<i32>(10697i, -12275i, 1606i), vec3<f32>(2475f, -1732f, 226f));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec2<f32>, 22>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(vec2<f32>(-1958f, 315f), i32(-2147483648), false, vec3<i32>(-1i, -59470i, -16791i), vec3<f32>(801f, 353f, -1375f)), false), Struct_3(Struct_1(vec2<f32>(-2346f, 1000f), 2147483647i, false, vec3<i32>(-43283i, 1i, -471i), vec3<f32>(-720f, -2049f, 946f)), true), Struct_3(Struct_1(vec2<f32>(888f, 1000f), -1i, false, vec3<i32>(1i, -5362i, 22614i), vec3<f32>(-143f, -878f, -795f)), true), Struct_3(Struct_1(vec2<f32>(1000f, 1277f), -46122i, true, vec3<i32>(26334i, 0i, -15695i), vec3<f32>(-1472f, -1296f, -522f)), true), Struct_3(Struct_1(vec2<f32>(263f, 283f), 1i, true, vec3<i32>(14529i, i32(-2147483648), 10711i), vec3<f32>(860f, 578f, -1074f)), true), Struct_3(Struct_1(vec2<f32>(-828f, 742f), 10884i, false, vec3<i32>(-29229i, 1i, 2147483647i), vec3<f32>(733f, 714f, -487f)), true), Struct_3(Struct_1(vec2<f32>(634f, 719f), 30821i, true, vec3<i32>(-38243i, 2147483647i, -1i), vec3<f32>(928f, -999f, -1685f)), true), Struct_3(Struct_1(vec2<f32>(-1344f, 619f), -4337i, true, vec3<i32>(12870i, 2147483647i, 17991i), vec3<f32>(-774f, 226f, 1683f)), false), Struct_3(Struct_1(vec2<f32>(625f, -683f), -43303i, true, vec3<i32>(-41438i, -4233i, 5520i), vec3<f32>(129f, -152f, 120f)), false), Struct_3(Struct_1(vec2<f32>(1895f, -967f), 6219i, true, vec3<i32>(0i, 2147483647i, 1i), vec3<f32>(2650f, -315f, 905f)), true), Struct_3(Struct_1(vec2<f32>(566f, 611f), -45432i, true, vec3<i32>(37420i, 26568i, 22472i), vec3<f32>(427f, -1000f, 1150f)), true), Struct_3(Struct_1(vec2<f32>(-1188f, -513f), 1i, true, vec3<i32>(-25216i, -25982i, 29247i), vec3<f32>(827f, 943f, 597f)), false), Struct_3(Struct_1(vec2<f32>(1000f, 156f), 0i, true, vec3<i32>(-34617i, 10990i, i32(-2147483648)), vec3<f32>(634f, 135f, 978f)), true), Struct_3(Struct_1(vec2<f32>(-819f, 1022f), 15886i, false, vec3<i32>(i32(-2147483648), 28227i, i32(-2147483648)), vec3<f32>(465f, 1268f, -466f)), false), Struct_3(Struct_1(vec2<f32>(-546f, 1145f), 41156i, false, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<f32>(-1777f, 568f, 233f)), false), Struct_3(Struct_1(vec2<f32>(166f, -1297f), 2147483647i, true, vec3<i32>(-1i, -35698i, 2147483647i), vec3<f32>(-692f, 358f, -486f)), true), Struct_3(Struct_1(vec2<f32>(464f, 1000f), -10320i, false, vec3<i32>(12856i, 15918i, -25163i), vec3<f32>(-603f, -151f, -501f)), true), Struct_3(Struct_1(vec2<f32>(-1219f, -301f), -13670i, true, vec3<i32>(-41716i, 9619i, 25871i), vec3<f32>(294f, 939f, 1131f)), true), Struct_3(Struct_1(vec2<f32>(1647f, 442f), 2147483647i, false, vec3<i32>(i32(-2147483648), -44334i, -44785i), vec3<f32>(-616f, 566f, -443f)), false), Struct_3(Struct_1(vec2<f32>(-408f, -508f), 0i, false, vec3<i32>(24044i, 0i, 2147483647i), vec3<f32>(-1000f, -1319f, 1057f)), true), Struct_3(Struct_1(vec2<f32>(1000f, 516f), 1i, true, vec3<i32>(-1i, -1i, 40958i), vec3<f32>(1211f, 723f, -1000f)), true), Struct_3(Struct_1(vec2<f32>(-189f, -1533f), 1i, true, vec3<i32>(37138i, 0i, 3903i), vec3<f32>(-1668f, 1009f, -396f)), true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> bool {
    global3 = array<Struct_3, 22>();
    global0 = Struct_1(global0.e.zy, max(abs(global0.d.x), global0.d.x), global0.c, u_input.b.xxx, global0.e);
    var var_0 = global0.c;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - -1000f), global0.a.x)), ~u_input.a.x, global0.c, -u_input.b.wxx | ~firstTrailingBit(-vec3<i32>(24037i, -12048i, global0.d.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.e.x - -478f), global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f - -990f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.e * global0.e)))));
    var_0 = true;
    return false;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    let var_0 = vec3<u32>(1u, 41349u, ~(4294967295u & firstTrailingBit(~1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.a.x, 507f, false)) * _wgslsmith_div_f32(arg_1, arg_0.a.e.x))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2472f, arg_0.a.a.x) + vec2<f32>(-774f, -530f))))))), arg_0.a.b, !any(!vec4<bool>(true, true, false, arg_0.a.c)), abs(~firstTrailingBit(-vec3<i32>(1i, global0.d.x, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-787f, arg_1)), _wgslsmith_f_op_f32(ceil(761f)))), -290f, arg_0.a.e.x));
    var var_2 = _wgslsmith_clamp_i32(-76468i, ~(_wgslsmith_clamp_i32(1i, var_1.d.x, u_input.a.x & 17181i) >> (arg_2.x % 32u)), _wgslsmith_clamp_i32(firstTrailingBit(2147483647i), abs(_wgslsmith_sub_i32(15500i >> (arg_2.x % 32u), -2147483647i)), arg_0.a.d.x));
    var var_3 = Struct_1(global0.a, _wgslsmith_clamp_i32(min(~(~u_input.b.x), var_1.b >> (~arg_2.x % 32u)), firstTrailingBit(reverseBits(-25521i)), var_1.b), all(vec2<bool>(arg_0.a.c, false)), reverseBits(select(global0.d, global0.d, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-382f, 769f, 698f)))));
    let var_4 = firstLeadingBit(-_wgslsmith_mult_vec3_i32(-(~vec3<i32>(var_1.b, var_3.b, -9042i)), var_3.d));
    return 57984u;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = !(false | !(func_2() | (true | global0.c)));
    global3 = array<Struct_3, 22>();
    let var_1 = func_3(Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.x)), 2147483647i, arg_2.x == arg_2.x, ~vec3<i32>(global0.b, u_input.b.x, global0.d.x), global0.e)), arg_1.x, ~vec3<u32>(~4294967295u, ~(~1u), ~(~1u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, arg_0) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 1184f), _wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(880f, -239f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.e.yx)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(arg_1.x - 403f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(855f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -684f), vec2<f32>(-638f, arg_1.x))))));
    global2 = array<vec2<f32>, 22>();
    return ~firstTrailingBit(~(~vec3<u32>(var_1, 0u, var_1) >> (vec3<u32>(var_1, 38621u, 52164u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(43801u, 22u)], global0.e.xx) - vec2<f32>(1269f, global0.e.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, global0.d.x, 111531i), u_input.b) >> (4294967295u % 32u), -u_input.a.x), global0.c, _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, -42105i, u_input.a.x) ^ global0.d, ~vec3<i32>(-10740i, u_input.a.x, global0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.e.x, global0.e.x)) * global0.e)), global0.c);
    global0 = var_0.a;
    let var_1 = Struct_3(var_0.a, true);
    let var_2 = true;
    global0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec2<u32>(21649u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), firstTrailingBit(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(24180u, 5591u)), ~(~vec2<u32>(3769u, 66142u)))), func_1(_wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(f32(-1f) * -1604f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.e.x))), _wgslsmith_f_op_f32(-804f - 636f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x + 1219f) - var_1.a.a.x)), vec2<bool>(global0.c, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.a, global2[_wgslsmith_index_u32(1u, 22u)], vec2<bool>(false, var_1.a.c))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.a.a, vec2<f32>(1939f, -1250f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1326f, global0.e.x), vec2<f32>(-862f, var_1.a.a.x))))))));
}

