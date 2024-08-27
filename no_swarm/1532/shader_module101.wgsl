struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(2147483647i, 59211i), vec2<i32>(0i, 31769i), vec2<i32>(-1i, -24921i), vec2<i32>(-12430i, 2147483647i), vec2<i32>(194i, -1i), vec2<i32>(-6126i, -18391i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-13540i, -1i), vec2<i32>(1i, 1i), vec2<i32>(-14485i, 0i), vec2<i32>(6523i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(-79843i, -39354i), vec2<i32>(-29770i, i32(-2147483648)), vec2<i32>(3893i, 0i), vec2<i32>(20316i, -1i), vec2<i32>(2147483647i, -50373i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, -42679i), vec2<i32>(1i, -45773i), vec2<i32>(-13180i, -44457i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(57537i, 2147483647i), vec2<i32>(0i, -33048i), vec2<i32>(0i, -6439i), vec2<i32>(17884i, -1i), vec2<i32>(37311i, 2147483647i), vec2<i32>(i32(-2147483648), -28746i), vec2<i32>(-1i, 43134i));

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(vec4<f32>(-187f, -579f, 927f, 1383f), vec3<i32>(2147483647i, -1i, 1i))), Struct_3(Struct_2(vec4<f32>(1000f, -488f, 1466f, 388f), vec3<i32>(-1i, 1i, -6668i))), Struct_3(Struct_2(vec4<f32>(-269f, -521f, 1000f, 1000f), vec3<i32>(-3400i, -50309i, i32(-2147483648)))), Struct_3(Struct_2(vec4<f32>(1395f, -1150f, -1089f, -729f), vec3<i32>(40119i, 4856i, -1i))), Struct_3(Struct_2(vec4<f32>(960f, 346f, 1363f, -100f), vec3<i32>(-7155i, 21167i, -5908i))), Struct_3(Struct_2(vec4<f32>(-1819f, -1333f, -1000f, -418f), vec3<i32>(8999i, -38246i, 1i))), Struct_3(Struct_2(vec4<f32>(-204f, 106f, -570f, -368f), vec3<i32>(-1722i, -1i, -23831i))), Struct_3(Struct_2(vec4<f32>(-599f, -964f, -635f, -195f), vec3<i32>(0i, 11528i, -29103i))), Struct_3(Struct_2(vec4<f32>(1000f, -1634f, 452f, -276f), vec3<i32>(-19831i, 0i, 0i))), Struct_3(Struct_2(vec4<f32>(438f, -1933f, 1048f, -104f), vec3<i32>(i32(-2147483648), i32(-2147483648), 44710i))), Struct_3(Struct_2(vec4<f32>(1103f, 224f, 679f, 1577f), vec3<i32>(-5407i, 6229i, 2147483647i))), Struct_3(Struct_2(vec4<f32>(-1141f, -801f, 117f, 378f), vec3<i32>(39245i, -3488i, 1i))), Struct_3(Struct_2(vec4<f32>(602f, -1675f, 589f, -1060f), vec3<i32>(82998i, 9056i, -32862i))), Struct_3(Struct_2(vec4<f32>(930f, 1318f, -858f, -497f), vec3<i32>(-21256i, i32(-2147483648), -9301i))), Struct_3(Struct_2(vec4<f32>(-318f, 610f, 928f, 434f), vec3<i32>(2147483647i, 0i, 52498i))), Struct_3(Struct_2(vec4<f32>(374f, 787f, -908f, 721f), vec3<i32>(127372i, 5876i, -34307i))), Struct_3(Struct_2(vec4<f32>(575f, -890f, 1059f, -814f), vec3<i32>(-22270i, 12087i, 15813i))), Struct_3(Struct_2(vec4<f32>(1000f, -840f, 1000f, 1211f), vec3<i32>(2147483647i, -7587i, -37095i))), Struct_3(Struct_2(vec4<f32>(-834f, -1220f, -775f, 690f), vec3<i32>(-1i, -1i, 10809i))), Struct_3(Struct_2(vec4<f32>(742f, 842f, -320f, 1000f), vec3<i32>(6522i, 32922i, -58271i))), Struct_3(Struct_2(vec4<f32>(-1000f, -335f, 226f, -607f), vec3<i32>(i32(-2147483648), -80064i, i32(-2147483648)))), Struct_3(Struct_2(vec4<f32>(-2172f, 903f, 215f, -483f), vec3<i32>(26461i, 0i, -9176i))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    global1 = array<Struct_3, 22>();
    global0 = array<vec2<i32>, 30>();
    global1 = array<Struct_3, 22>();
    let var_0 = false;
    let var_1 = -754f;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(-var_1))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(u_input.a.x, 15537u)), 22u)];
    let var_1 = Struct_1(var_0.a.b.x, var_0.a.b.x);
    let var_2 = global1[_wgslsmith_index_u32(2144u, 22u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), -1544f));
    let var_4 = var_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a.xy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-964f, 358f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.a.x)) - _wgslsmith_f_op_f32(exp2(var_3)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, var_3), vec2<f32>(-325f, arg_0.x)))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(select(20206i, _wgslsmith_mult_i32(-min(0i, arg_0), -arg_0), !(arg_2 & true)), 23548i, _wgslsmith_add_i32(-(arg_0 ^ arg_0), arg_0) ^ _wgslsmith_sub_i32(arg_0, arg_0));
    let var_1 = Struct_1(-(~(~(-5366i) << (_wgslsmith_sub_u32(4759u, u_input.a.x) % 32u))), ~2147483647i);
    var var_2 = vec4<u32>(abs(~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x))), u_input.a.x, ~firstLeadingBit(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 37631u))), firstLeadingBit(u_input.a.x));
    let var_3 = global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mult_u32(~1u, min(1u, 1u) ^ _wgslsmith_mult_u32(1u, var_2.x))), 22u)];
    let var_4 = var_3.a;
    return Struct_1(firstLeadingBit(-1i), arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = 2147483647i;
    let var_1 = func_4(~var_0 ^ -53468i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x * -1533f), 1f), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.a.zx))), arg_0.x < ~min(_wgslsmith_add_u32(0u, arg_0.x), abs(arg_0.x)), arg_2.a.a.x);
    let var_2 = Struct_2(vec4<f32>(1054f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_2.a.a.x)))), arg_1.a.x, 1581f), ~vec3<i32>(34251i, select(i32(-1i) * -36456i, i32(-1i) * -12351i, any(vec2<bool>(true, true))), arg_1.b.x));
    let var_3 = !vec4<bool>(false, select(true, true, any(vec2<bool>(true, true))), true, false);
    global0 = array<vec2<i32>, 30>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec3_u32(u_input.a.xwz ^ _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 26843u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(26022u, 4294967295u, 28058u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(746f, 1193f, -839f, 138f))), vec4<f32>(_wgslsmith_f_op_f32(-596f * 434f), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-1205f * 1530f), _wgslsmith_f_op_f32(select(-837f, 667f, true)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(8023i, 0i, -1i), vec3<i32>(1i, -14267i, -16956i)), vec3<i32>(~2147483647i, firstTrailingBit(1i), 1982i))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, u_input.a.x), 22u)]);
    global1 = array<Struct_3, 22>();
    let var_1 = true;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 22u)];
    global1 = array<Struct_3, 22>();
    let var_3 = vec3<bool>(true, (var_2.a.b.x != -30268i) || !(u_input.a.x <= u_input.a.x), true);
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(55151u, u_input.a.x)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, firstLeadingBit(u_input.a.x), min(10998u, 49386u))), 40539u), u_input.a, ~select(firstTrailingBit(min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.yww)), u_input.a.zxw, var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090f * var_2.a.a.x)) * 1502f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.a.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.a.x), _wgslsmith_div_f32(var_2.a.a.x, var_2.a.a.x), false)))), _wgslsmith_mult_u32(1u ^ u_input.a.x, firstLeadingBit(25915u)));
}

