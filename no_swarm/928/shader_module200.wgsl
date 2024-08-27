struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec4<f32>(-971f, -348f, -199f, 2859f), vec3<u32>(25153u, 49571u, 0u), vec4<f32>(-1221f, 194f, 433f, 1489f)), Struct_3(vec4<f32>(-1989f, 2208f, -2487f, 666f), vec3<u32>(4294967295u, 39275u, 3476u), vec4<f32>(1000f, 1271f, 1938f, -836f)), Struct_3(vec4<f32>(392f, -1000f, 869f, -1442f), vec3<u32>(1u, 4294967295u, 1u), vec4<f32>(1023f, -705f, 940f, -954f)), Struct_3(vec4<f32>(1149f, -137f, -1103f, -1093f), vec3<u32>(68976u, 4294967295u, 1u), vec4<f32>(-1254f, -267f, -1028f, 657f)), Struct_3(vec4<f32>(-1323f, -862f, 718f, -1487f), vec3<u32>(1u, 44126u, 0u), vec4<f32>(-785f, -1223f, 623f, -1447f)), Struct_3(vec4<f32>(101f, -948f, -194f, 447f), vec3<u32>(4294967295u, 60589u, 1u), vec4<f32>(-1069f, 577f, 1202f, -1000f)), Struct_3(vec4<f32>(295f, 1239f, -769f, 444f), vec3<u32>(4069u, 34155u, 73246u), vec4<f32>(288f, 1000f, 1000f, -142f)), Struct_3(vec4<f32>(-247f, 396f, 1593f, -985f), vec3<u32>(4294967295u, 38753u, 4294967295u), vec4<f32>(-1000f, 695f, -215f, 489f)), Struct_3(vec4<f32>(776f, 133f, -808f, -183f), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<f32>(1207f, -2802f, -1126f, -2510f)), Struct_3(vec4<f32>(1843f, 799f, -269f, -162f), vec3<u32>(3905u, 6395u, 51651u), vec4<f32>(-1000f, -1026f, -504f, 1227f)), Struct_3(vec4<f32>(1147f, 1057f, -1247f, 807f), vec3<u32>(81198u, 0u, 28810u), vec4<f32>(-476f, -799f, 567f, -1279f)), Struct_3(vec4<f32>(928f, -1197f, 841f, 127f), vec3<u32>(62235u, 0u, 33708u), vec4<f32>(398f, 344f, 213f, -1547f)), Struct_3(vec4<f32>(371f, -137f, -265f, -622f), vec3<u32>(18601u, 10588u, 51048u), vec4<f32>(465f, 185f, -478f, -331f)));

var<private> global2: u32 = 5826u;

var<private> global3: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), all(vec2<bool>(true, true))), select(vec3<bool>(true, all(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))), vec3<bool>(true, !(u_input.c.x < -global0.a.a.x), true), vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), false && ((83300u ^ arg_0.a) <= ~0u), true));
    var var_1 = !(!(false & var_0.x));
    global1 = array<Struct_3, 13>();
    global3 = _wgslsmith_add_i32(u_input.d.x, select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.d), vec2<i32>(-13674i, 6380i)), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_div_i32(global0.a.a.x, u_input.b), arg_0.b >> (u_input.a.x % 32u)), arg_0.c.x), ~abs(abs(arg_0.b)), var_0.x));
    var var_2 = (~arg_0.c | _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(global0.a.a, arg_0.c)), ~(arg_0.c >> (vec4<u32>(0u, 49121u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))) ^ vec4<i32>(u_input.b, arg_0.b << (firstLeadingBit(~20257u) % 32u), _wgslsmith_sub_i32(-(u_input.e & global0.a.a.x), 1i), firstTrailingBit(49071i));
    return _wgslsmith_mult_vec2_u32(global0.a.b, ~u_input.a.yy);
}

fn func_2() -> Struct_2 {
    let var_0 = global0.a.a.wzy;
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 1i, 41003i, 55514i), vec4<i32>(_wgslsmith_div_i32(-19466i, u_input.d.x), countOneBits(-10022i), min(32749i, -2147483647i), _wgslsmith_dot_vec2_i32(global0.a.a.yw, var_0.zz))), func_3(Struct_4(u_input.a.x, _wgslsmith_add_i32(u_input.e, global0.a.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -36761i, -2147483647i, var_0.x), vec4<i32>(-31689i, -1i, u_input.c.x, var_0.x), vec4<i32>(-1i, 2147483647i, -40520i, var_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.a.b, ~u_input.a.xz), 13u)])));
    var var_2 = u_input.d.x;
    let var_3 = var_1.a.b;
    var var_4 = Struct_4(_wgslsmith_add_u32(u_input.a.x, ~var_3.x), -2147483647i, reverseBits(-(-global0.a.a >> (_wgslsmith_add_vec4_u32(vec4<u32>(58542u, 74340u, 19168u, 4294967295u), vec4<u32>(u_input.a.x, var_1.a.b.x, var_1.a.b.x, 1u)) % vec4<u32>(32u)))));
    return Struct_2(Struct_1(min(vec4<i32>(~(-8067i), _wgslsmith_mod_i32(u_input.b, var_0.x), u_input.c.x, var_4.b), _wgslsmith_mult_vec4_i32(-vec4<i32>(-5393i, 2147483647i, -41297i, var_4.c.x), var_1.a.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, ~var_3.x), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1.a.b.x), vec2<u32>(1u, var_3.x))))));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    var var_1 = all(vec4<bool>(true, true, true, true)) || false;
    var var_2 = var_0.a;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1762f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 13>();
    let var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(415f)) + _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(-460f * -2050f))));
    global0 = Struct_2(Struct_1(~vec4<i32>(2861i, -26621i, max(u_input.c.x, u_input.c.x), -32662i & global0.a.a.x), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(abs(global0.a.b), ~u_input.a.zx), global0.a.b)));
    global1 = array<Struct_3, 13>();
    global2 = ~global0.a.b.x;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -346f), 402f), _wgslsmith_f_op_f32(sign(-442f)), ((45276u > global0.a.b.x) == any(vec2<bool>(true, true))) | all(vec3<bool>(true, true, false))))));
    var var_2 = _wgslsmith_div_f32(-425f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_f32(228f * 1326f)));
    let var_3 = -global0.a.a;
    global1 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(1226f, 1627f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1468f)))), _wgslsmith_f_op_f32(-1817f + _wgslsmith_div_f32(-1263f, _wgslsmith_f_op_f32(-var_1)))), 668f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, -1027f, _wgslsmith_f_op_f32(round(var_0))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 377f, 170f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -311f, var_1), vec3<f32>(var_1, 468f, 275f), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_1, var_0), vec3<f32>(var_1, var_0, -964f)), false)))), ~vec2<u32>(_wgslsmith_mult_u32(global0.a.b.x, u_input.a.x | 3237u), global0.a.b.x), var_0);
}

