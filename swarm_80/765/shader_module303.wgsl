struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec2<i32> = vec2<i32>(32171i, -30965i);

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 10464u, 4294967295u, 0u);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<u32>(1u, 0u, 46931u, 87678u), vec2<i32>(2147483647i, -1i), -923f), Struct_1(vec4<u32>(1u, 11875u, 4294967295u, 38525u), vec2<i32>(-1i, -41018i), -1702f), Struct_1(vec4<u32>(0u, 13341u, 4294967295u, 68698u), vec2<i32>(i32(-2147483648), i32(-2147483648)), -133f), Struct_1(vec4<u32>(24078u, 17098u, 0u, 12994u), vec2<i32>(-10201i, -18264i), 2727f), Struct_1(vec4<u32>(37115u, 8466u, 1u, 61355u), vec2<i32>(-14519i, 1i), -1560f), Struct_1(vec4<u32>(0u, 3181u, 69264u, 32617u), vec2<i32>(i32(-2147483648), i32(-2147483648)), 468f), Struct_1(vec4<u32>(26695u, 12204u, 0u, 1u), vec2<i32>(-1i, 0i), -294f), Struct_1(vec4<u32>(41561u, 4294967295u, 4298u, 0u), vec2<i32>(-1i, 1i), -360f), Struct_1(vec4<u32>(1u, 10675u, 14717u, 0u), vec2<i32>(0i, i32(-2147483648)), -337f), Struct_1(vec4<u32>(0u, 0u, 47055u, 4294967295u), vec2<i32>(40471i, i32(-2147483648)), -169f), Struct_1(vec4<u32>(87696u, 1u, 1u, 1u), vec2<i32>(6285i, 2147483647i), 1375f), Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec2<i32>(-20674i, 0i), -504f), Struct_1(vec4<u32>(32872u, 4294967295u, 22423u, 1u), vec2<i32>(1i, 1i), 390f), Struct_1(vec4<u32>(21015u, 62401u, 71623u, 4294967295u), vec2<i32>(-1i, 0i), 821f), Struct_1(vec4<u32>(1u, 71033u, 3375u, 6176u), vec2<i32>(-11538i, 1i), -1488f), Struct_1(vec4<u32>(1u, 0u, 46214u, 36273u), vec2<i32>(1i, -61105i), -1558f), Struct_1(vec4<u32>(1u, 112552u, 3567u, 4294967295u), vec2<i32>(-13622i, i32(-2147483648)), 1724f), Struct_1(vec4<u32>(10253u, 21481u, 43912u, 20735u), vec2<i32>(1i, 0i), 1000f), Struct_1(vec4<u32>(0u, 0u, 1u, 0u), vec2<i32>(0i, 52322i), 1525f), Struct_1(vec4<u32>(1u, 1u, 26340u, 1u), vec2<i32>(-29427i, 2147483647i), -249f), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u), vec2<i32>(0i, -1i), 1497f), Struct_1(vec4<u32>(1u, 1u, 19287u, 20951u), vec2<i32>(i32(-2147483648), 15200i), 327f), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u), vec2<i32>(2147483647i, -22309i), 448f), Struct_1(vec4<u32>(1u, 87940u, 15287u, 23643u), vec2<i32>(73931i, -1i), -520f), Struct_1(vec4<u32>(0u, 41956u, 1u, 1u), vec2<i32>(-8540i, 1i), 2341f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(global2.xxx, firstLeadingBit(~vec3<u32>(global2.x, u_input.b, global2.x))), vec3<u32>(abs(global2.x) << (u_input.b % 32u), 17989u, _wgslsmith_clamp_u32(global2.x | global2.x, select(~u_input.b, u_input.b, select(false, true, false)), u_input.b))), 3u)];
    global0 = array<Struct_1, 3>();
    global1 = u_input.a.zy;
    var var_1 = ~(vec2<i32>(23878i, firstLeadingBit(-2147483647i) | -var_0.b.x) >> (global2.xy % vec2<u32>(32u)));
    return -(~(-global1.x) ^ global1.x);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_clamp_i32(global1.x, -22704i, -_wgslsmith_add_i32(-2147483647i | global1.x, -2147483647i));
    let var_1 = Struct_1(~vec4<u32>(0u, abs(1u), 3978u, ~(~1u)), vec2<i32>(~max(_wgslsmith_mod_i32(global1.x, global1.x), _wgslsmith_div_i32(u_input.c, global1.x)), min(u_input.a.x, firstLeadingBit(global1.x)) | -2147483647i), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1253f * -346f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1245f, -1277f))))));
    var var_2 = global3[_wgslsmith_index_u32(abs(~(_wgslsmith_div_u32(0u, global2.x) << (firstTrailingBit(11389u) % 32u)) & ~(~max(var_1.a.x, 40938u))), 25u)];
    let var_3 = vec2<bool>(!(!any(vec2<bool>(true, true))), any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true | (var_2.a.x > 1u))));
    global2 = firstTrailingBit(abs(~(~var_2.a)));
    return min(select(var_1.b.x, u_input.c, true), ~_wgslsmith_clamp_i32(-(~(-23750i)), firstTrailingBit(var_1.b.x << (79682u % 32u)), _wgslsmith_add_i32(~1i, -22690i)));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec3<f32> {
    global3 = array<Struct_1, 25>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global3 = array<Struct_1, 25>();
    let var_0 = firstLeadingBit(~(~(~vec4<u32>(global2.x, global2.x, u_input.b, 130362u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(select(-488f, -1093f, true)), _wgslsmith_f_op_f32(select(1017f, -282f, true)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1184f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(trunc(-242f))), vec3<f32>(_wgslsmith_f_op_f32(max(-1075f, 676f)), _wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(447f + 1000f))) - vec3<f32>(-1109f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-521f)))), 122f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = abs(~(_wgslsmith_mult_i32(29152i, func_2()) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(global2.x, arg_2.a.x), _wgslsmith_div_u32(1u, 1u)) % 32u)));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(func_3(), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))));
    global1 = -abs(vec2<i32>(~arg_0.b.x, -14739i | arg_2.b.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(var_1.a.x, 0u, 0u, u_input.b))), select(~arg_0.a.x, ~14607u, select(true, arg_1.x, true))), _wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_0.a.x, arg_0.a.x), select(arg_0.a.yy, global2.xw, arg_1.x)), firstLeadingBit(vec2<u32>(10042u, 0u))), ~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u));
    var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, arg_2.c, -590f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, 175f) * vec3<f32>(var_2.x, var_2.x, var_2.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_1.c) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c, 1019f, var_2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-973f, -1000f, 517f), vec3<f32>(1820f, var_2.x, arg_2.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1000f, arg_0.c) * vec3<f32>(var_2.x, -1358f, -1555f)))))));
    return !(!(!select(vec4<bool>(false, false, arg_1.x, arg_1.x), !vec4<bool>(false, false, true, arg_1.x), select(false, true, false))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2.x, ~(~u_input.b)), 3u)];
    var var_1 = abs(-select(_wgslsmith_div_vec4_i32(~u_input.a, u_input.a), vec4<i32>(-1i) * -u_input.a, !select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, false))));
    let var_2 = global2.ywx;
    let var_3 = vec2<bool>(false, arg_0.x);
    let var_4 = global2.x;
    return Struct_1(~(~(~select(vec4<u32>(1u, u_input.b, var_2.x, 4294967295u), var_0.a, true))), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.a.ww), abs(max(vec2<i32>(arg_1.x, u_input.a.x), firstTrailingBit(arg_1.xx)))), 1128f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = vec4<f32>(401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1686f))))), -1626f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-809f + -908f), 295f)));
    let var_1 = func_5(vec3<bool>(all(func_1(Struct_1(vec4<u32>(4294967295u, 60917u, global2.x, 7603u), vec2<i32>(global1.x, global1.x), var_0.x), select(vec2<bool>(false, true), vec2<bool>(false, true), true), Struct_1(vec4<u32>(1u, global2.x, 0u, 63861u), u_input.a.wy, var_0.x))), false | select(false, true, global2.x >= global2.x), true), ~_wgslsmith_mod_vec3_i32(u_input.a.www << (global2.zyy % vec3<u32>(32u)), vec3<i32>(-u_input.a.x, global1.x, global1.x)));
    var var_2 = false;
    var var_3 = u_input.c;
    let var_4 = !(!func_1(var_1, vec2<bool>(true, true), var_1).wx);
    global1 = ~((firstLeadingBit(vec2<i32>(u_input.c, 15409i)) >> (~select(vec2<u32>(15532u, u_input.b), vec2<u32>(0u, 17042u), true) % vec2<u32>(32u))) | vec2<i32>((-1i ^ u_input.a.x) | func_3(), u_input.a.x));
    var_2 = any(vec2<bool>(var_4.x, select(true || var_4.x, (u_input.c <= 12698i) & false, var_4.x)));
    global3 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.wy);
}

