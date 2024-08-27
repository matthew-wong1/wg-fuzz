struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> i32 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = Struct_3(vec2<i32>(i32(-1i) * -22810i, ~u_input.b | 1i), -(~vec3<i32>(u_input.b, 2147483647i, u_input.c) >> (abs(vec3<u32>(44646u, 0u, 16415u)) % vec3<u32>(32u))) >> (arg_0.ywz % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f * -1000f)), 1f))), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(16722u, 14u)], all(vec4<bool>(false, true, arg_1, false)), !arg_1, false), select(reverseBits(max(vec3<i32>(-24429i, 2147483647i, u_input.c), vec3<i32>(-1i, 35474i, u_input.b))), ~vec3<i32>(u_input.c, -42046i, u_input.c), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_1, false), vec3<bool>(true, false, false), vec3<bool>(true, arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), select(vec3<bool>(false, global0[_wgslsmith_index_u32(88522u, 14u)], true), vec3<bool>(true, false, true), true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 14u)]))), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c, 2147483647i), u_input.b, u_input.b))), vec3<u32>(3112u, ~(~(~0u)), select(0u, _wgslsmith_add_u32(u_input.a.x, select(arg_0.x, 12664u, arg_1)), true)));
    let var_1 = vec4<u32>(~countOneBits(4294967295u), firstLeadingBit(~arg_0.x), ~(~4294967295u), _wgslsmith_add_u32(_wgslsmith_div_u32(~arg_0.x, arg_0.x), 30348u)) >> ((_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, ~arg_0), arg_0 >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.x, u_input.a.x, var_0.e.x, arg_0.x), u_input.a) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(21708u, 9070u, u_input.a.x, var_0.e.x)), select(arg_0, vec4<u32>(4294967295u, arg_0.x, 2237u, 62464u), false), var_0.d.a)) << (~arg_0 % vec4<u32>(32u))) % vec4<u32>(32u));
    return var_0.d.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<bool, 14>();
    let var_0 = -1000f;
    global0 = array<bool, 14>();
    let var_1 = 951f;
    let var_2 = arg_1;
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = abs(~(~firstTrailingBit(arg_0.e)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(589f)))), _wgslsmith_f_op_f32(961f + -270f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-839f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-338f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2460f, -1439f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = func_2(vec2<i32>(6058i, arg_1.a.d), Struct_1(vec4<bool>(all(vec4<bool>(arg_3.x, true, arg_3.x, false)), arg_1.c.b.x == _wgslsmith_dot_vec3_i32(arg_1.e.d.b, vec3<i32>(20072i, 18051i, -49835i)), false, true), abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-36945i, -2147483647i, u_input.b), vec3<i32>(arg_1.a.d, -2147483647i, -22586i), vec3<i32>(2147483647i, -7311i, arg_1.c.b.x))), _wgslsmith_dot_vec3_i32(arg_1.c.b, arg_1.c.b)), arg_1.d.x).b.x;
    let var_1 = -301f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)));
    var var_3 = !select(select(arg_3.wwy, select(!vec3<bool>(true, arg_1.c.a.x, arg_3.x), !vec3<bool>(global0[_wgslsmith_index_u32(5099u, 14u)], global0[_wgslsmith_index_u32(2506u, 14u)], arg_3.x), false), vec3<bool>(arg_3.x, !arg_1.a.b, arg_1.a.b)), arg_1.e.d.a.zzw, true);
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(4294967295u, 1u, 0u, 12927u), u_input.a), ~firstTrailingBit(vec4<u32>(arg_2.x, 26528u, 4294967295u, arg_1.d.x))), abs(reverseBits(~u_input.a.x))), ~(~u_input.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(37333u), _wgslsmith_add_u32(4294967295u, u_input.a.x)), u_input.a.ww));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(-select(max(vec4<i32>(-1i, arg_1.a.c, arg_1.e.d.b.x, 8536i), vec4<i32>(26129i, u_input.b, 10430i, -21552i)), -vec4<i32>(-2147483647i, -5184i, arg_1.a.d, 0i), true), firstTrailingBit(-abs(vec4<i32>(arg_1.a.c, 33951i, -2556i, 2147483647i)))), -1i, -1i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: u32) -> bool {
    global0 = array<bool, 14>();
    let var_0 = 125203u;
    global0 = array<bool, 14>();
    let var_1 = !vec3<bool>(!arg_0.a.x, arg_1.d.a.x, all(arg_0.a.zw));
    global0 = array<bool, 14>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-939f)) * _wgslsmith_f_op_f32(step(309f, -1000f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(615f - -802f), _wgslsmith_f_op_f32(f32(-1f) * -326f)))), -302f)), -424f);
    var var_1 = vec3<i32>(abs(u_input.b), 2147483647i, func_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(23237u, 31961u, u_input.a.x, 20072u) ^ vec4<u32>(115167u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), global0[_wgslsmith_index_u32(abs(4294967295u), 14u)]));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -1460f, -123f, var_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-510f, 1031f, 265f, -1100f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, var_0, 746f, -747f) * vec4<f32>(-391f, 657f, -808f, 142f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(492f, var_0, var_0, -461f)))))));
    var var_3 = u_input.a.xy;
    let var_4 = func_5(func_2(select(var_1.yy, var_1.zz, vec2<bool>(true, true)) & (var_1.zx >> (u_input.a.xx % vec2<u32>(32u))), Struct_1(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(24590u, 14u)], global0[_wgslsmith_index_u32(var_3.x, 14u)], global0[_wgslsmith_index_u32(3339u, 14u)]), true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(39227u, 14u)], false, false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(92089u, 14u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false, true)), select(vec3<i32>(var_1.x, var_1.x, 1i), ~vec3<i32>(34713i, u_input.c, u_input.b), global0[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.c), reverseBits(~1u)), Struct_3(_wgslsmith_div_vec2_i32(~vec2<i32>(var_1.x, -2147483647i), var_1.yz), func_4(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], var_1.x, u_input.b, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec2<i32>(2147483647i, 1i) ^ var_1.yz)), Struct_4(Struct_2(u_input.a.x, global0[_wgslsmith_index_u32(6891u, 14u)], 39667i, var_1.x, u_input.a.wxz), ~u_input.a.x, func_2(vec2<i32>(var_1.x, 0i), Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(5630u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false), vec3<i32>(-2147483647i, -63447i, u_input.c), u_input.b), u_input.a.x), reverseBits(vec3<u32>(4294967295u, 4294967295u, 16217u)), Struct_3(var_1.yx, vec3<i32>(u_input.c, var_1.x, var_1.x), -467f, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], true, false, false), vec3<i32>(15807i, -1422i, u_input.c), 47697i), u_input.a.xww)), ~(~vec4<u32>(var_3.x, u_input.a.x, 1u, 0u)), vec4<bool>(true, var_0 < var_2.x, -2147483647i >= u_input.c, global0[_wgslsmith_index_u32(var_3.x, 14u)])), _wgslsmith_f_op_f32(-var_2.x), func_2(var_1.xy, Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(5648u, 14u)], global0[_wgslsmith_index_u32(9162u, 14u)], true, global0[_wgslsmith_index_u32(89909u, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(33683u, 14u)], true, true, global0[_wgslsmith_index_u32(8299u, 14u)])), _wgslsmith_add_vec3_i32(vec3<i32>(55916i, 2147483647i, 2147483647i), vec3<i32>(u_input.c, var_1.x, var_1.x)), i32(-1i) * -1i), ~(~var_3.x)), firstTrailingBit(_wgslsmith_sub_vec3_u32(~u_input.a.wxw, ~vec3<u32>(u_input.a.x, 40224u, u_input.a.x)))), (_wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.x, var_1.x), ~var_1.yz) << ((select(u_input.a.yz, vec2<u32>(8784u, 18915u), global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) & vec2<u32>(67733u, var_3.x)) % vec2<u32>(32u))) << (u_input.a.zz % vec2<u32>(32u)), ~reverseBits(_wgslsmith_sub_u32(var_3.x, 46162u)));
    var var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~41098u), var_3.x, _wgslsmith_add_vec4_i32(select(~(~vec4<i32>(8855i, -2147483647i, u_input.c, -1i)), min(abs(vec4<i32>(2147483647i, -22532i, -15228i, -2147483647i)), vec4<i32>(37595i, var_1.x, 7226i, var_1.x)), !vec4<bool>(true, var_4, var_4, var_4)), firstLeadingBit(-reverseBits(vec4<i32>(u_input.b, 33393i, var_1.x, 1i)))), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(~18739u, var_3.x & 38072u, u_input.a.x)), u_input.a.ywy));
}

