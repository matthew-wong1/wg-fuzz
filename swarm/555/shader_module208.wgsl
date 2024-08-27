struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-643f - arg_0.a.x), arg_0.a.x)), _wgslsmith_f_op_f32(select(-1395f, -1000f, true))) + vec2<f32>(1f, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-501f, -1151f)), _wgslsmith_div_f32(arg_0.a.x, -719f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.a.xx)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, -1122f)), arg_0.a.zx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(arg_0.a.zz * arg_0.a.yz)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 125f, var_0.x))))), -(~arg_0.b), arg_0.c, vec2<i32>(~36018i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-arg_0.d.x, -2147483647i, _wgslsmith_div_i32(u_input.a.x, -25617i)), arg_0.b.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), 849f, _wgslsmith_div_f32(-1735f, var_1.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, var_0.x, 1471f))))), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, var_1.d.x, u_input.a.x, 8495i) >> (vec4<u32>(4294967295u, 58735u, 28807u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(7392i, u_input.a.x, var_1.b.x, 0i), arg_0.b)), select(_wgslsmith_sub_vec4_i32(arg_0.b, var_1.b), ~vec4<i32>(var_1.d.x, 0i, var_1.d.x, var_1.d.x), vec4<bool>(true, var_1.c.x, true, true)) & vec4<i32>(arg_0.d.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_0.d.x, 2147483647i, -2147483647i)), _wgslsmith_div_i32(arg_0.d.x, var_1.b.x), ~3692i)), arg_0.c, firstLeadingBit(-vec2<i32>(-10234i, 1i)));
    var_1 = arg_0;
    let var_2 = _wgslsmith_add_vec3_i32(var_1.b.ywz, var_1.b.xyz);
    return 49760u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = !arg_3;
    let var_1 = vec4<bool>(all(select(vec4<bool>(var_0.x == var_0.x, arg_0, true, arg_3.x), vec4<bool>(all(arg_1.c), any(arg_1.c), arg_1.c.x, true), vec4<bool>(arg_3.x, all(vec3<bool>(false, true, arg_3.x)), true, !arg_3.x))), !(_wgslsmith_f_op_f32(f32(-1f) * -694f) != _wgslsmith_f_op_f32(-1405f * arg_2.x)), false, func_3(arg_1) != _wgslsmith_mod_u32(1u, ~45770u));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(185f + 781f), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, -404f, false))), -3088f, 337f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.a.x, arg_2.x, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_2.x, arg_2.x, -429f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -559f, arg_2.x, arg_2.x), vec4<f32>(487f, arg_2.x, 1457f, -2277f)), !vec4<bool>(var_0.x, true, var_1.x, true)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.a.x, 695f, arg_2.x) + vec4<f32>(arg_2.x, arg_1.a.x, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(121f, arg_2.x, arg_1.a.x, arg_2.x), vec4<f32>(-1000f, arg_2.x, 336f, arg_1.a.x))))), vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -116f)), true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(var_2));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<f32> {
    let var_0 = arg_0;
    var var_1 = ~vec3<u32>(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a)), -vec4<i32>(-2147483647i, var_0.b.x, u_input.a.x, 53553i), func_2(var_0.c.x, Struct_1(vec3<f32>(-1130f, -763f, -696f), vec4<i32>(-1i, var_0.d.x, 2147483647i, -11745i), vec3<bool>(var_0.c.x, var_0.c.x, true), var_0.d), arg_0.a, arg_0.c.yy).c, arg_0.d)), arg_2, 4294967295u);
    var var_2 = arg_0;
    var_2 = var_0;
    var var_3 = -(_wgslsmith_add_vec4_i32(vec4<i32>(-32424i << (var_1.x % 32u), var_0.d.x, arg_0.b.x, arg_0.b.x), ~_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(0i, var_2.b.x, -2147483647i, arg_0.b.x))) >> ((select(firstLeadingBit(vec4<u32>(40471u, 0u, 15240u, var_1.x)), abs(vec4<u32>(arg_2, 26629u, 4294967295u, var_1.x)), vec4<bool>(arg_0.c.x, false, var_2.c.x, true)) & abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 24062u), vec4<u32>(var_1.x, var_1.x, 4274u, 12399u)))) % vec4<u32>(32u)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(!(arg_0.a.x >= -609f), func_2(true, func_2(var_2.c.x, Struct_1(arg_0.a, arg_0.b, vec3<bool>(false, false, var_2.c.x), var_0.b.zw), vec3<f32>(-479f, 359f, 1363f), var_0.c.yx), var_2.a, vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec3<f32>(var_0.a.x, var_0.a.x, -924f), select(var_0.c, var_0.c, arg_0.c.x))), !vec2<bool>(false, var_2.c.x)).a), _wgslsmith_f_op_vec3_f32(-var_2.a));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(func_2(true, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, -287f, -227f) - vec3<f32>(1448f, 1000f, -200f)), min(vec4<i32>(-1i, -16187i, 21623i, u_input.a.x), vec4<i32>(-1162i, arg_0, u_input.a.x, u_input.a.x)), vec3<bool>(true, true, false), abs(vec2<i32>(0i, -2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-149f, -1627f, 210f), vec3<f32>(-695f, 1000f, 1312f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-411f, 470f, 328f))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(select(-1367f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(816f, -720f))), any(func_2(true, Struct_1(vec3<f32>(1179f, 1004f, 207f), vec4<i32>(u_input.a.x, arg_0, arg_0, arg_0), vec3<bool>(false, false, false), u_input.a.xz), vec3<f32>(-423f, -444f, -670f), vec2<bool>(false, false)).c.xx))), ~(~reverseBits(7827u)))), select(-func_2(true, Struct_1(vec3<f32>(445f, 433f, 1037f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 36140i), vec3<bool>(false, false, false), vec2<i32>(1i, 1i)), vec3<f32>(1206f, -213f, 1000f), vec2<bool>(true, true)).b, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), true) ^ func_2(any(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1404f, -101f, 286f), vec3<f32>(2348f, 480f, -1000f))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 29183i, -51386i, u_input.a.x), vec4<i32>(0i, -69409i, 0i, -32157i)), vec3<bool>(true, true, true), u_input.a.xz), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(665f, -1101f, 1075f), vec3<f32>(-1000f, -1000f, 1624f))))), vec2<bool>(func_2(true, Struct_1(vec3<f32>(1530f, 212f, -113f), vec4<i32>(u_input.a.x, 2147483647i, 11161i, -2147483647i), vec3<bool>(true, true, true), u_input.a.zx), vec3<f32>(499f, 1019f, 463f), vec2<bool>(false, true)).c.x, all(vec2<bool>(true, true)))).b, vec3<bool>(true, true, true), firstTrailingBit(vec2<i32>(u_input.a.x, -u_input.a.x)));
    let var_1 = func_2(true, func_2(var_0.b.x >= ~(-8282i), func_2(var_0.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, var_0.a.x, 815f))), _wgslsmith_div_vec4_i32(vec4<i32>(-7094i, -12927i, arg_0, -26369i), var_0.b), vec3<bool>(false, true, true), select(var_0.b.zy, vec2<i32>(31881i, -176i), true)), var_0.a, vec2<bool>(false, true && var_0.c.x)), _wgslsmith_f_op_vec3_f32(-var_0.a), var_0.c.zz), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - 550f), func_2(true, Struct_1(vec3<f32>(var_0.a.x, 924f, -635f), vec4<i32>(var_0.b.x, 70395i, arg_0, u_input.a.x), vec3<bool>(var_0.c.x, var_0.c.x, true), vec2<i32>(var_0.d.x, 2147483647i)), vec3<f32>(1000f, 282f, var_0.a.x), !var_0.c.yx).a.x) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(func_2(var_0.c.x, Struct_1(vec3<f32>(3066f, var_0.a.x, 341f), vec4<i32>(var_0.b.x, -1i, 1i, -9801i), var_0.c, vec2<i32>(-2147483647i, -2147483647i)), var_0.a, vec2<bool>(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.a.x), ~42811u)).x, func_2(false, Struct_1(vec3<f32>(var_0.a.x, -801f, var_0.a.x), var_0.b, var_0.c, var_0.b.xx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, 636f) - vec3<f32>(var_0.a.x, var_0.a.x, -156f)), !var_0.c.zx).a.x, 1000f)), var_0.c.yz);
    var_0 = Struct_1(var_1.a, (vec4<i32>(_wgslsmith_sub_i32(-1i, -36298i), u_input.a.x >> (4294967295u % 32u), var_0.b.x, u_input.a.x | u_input.a.x) >> ((select(vec4<u32>(37770u, 4294967295u, 50715u, 1u), vec4<u32>(4294967295u, 89636u, 46007u, 1u), var_1.c.x) << (select(vec4<u32>(45656u, 40278u, 0u, 0u), vec4<u32>(51696u, 1u, 71167u, 3290u), vec4<bool>(var_0.c.x, var_0.c.x, false, var_1.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<i32>(-max(var_1.b.x, 49316i), arg_0, ~2147483647i, min(abs(arg_0), _wgslsmith_div_i32(15546i, var_1.b.x))), var_0.c, ~vec2<i32>(max(_wgslsmith_div_i32(u_input.a.x, var_1.b.x), 2147483647i), u_input.a.x));
    let var_2 = !vec4<bool>(any(vec3<bool>(var_0.c.x, var_1.c.x, !var_1.c.x)), any(var_1.c.yz), any(!select(var_0.c.zy, var_0.c.zz, var_0.c.xz)), var_1.c.x);
    return !var_0.c.xx;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = true || (!(-1000f <= _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<f32>(-942f, -426f, 908f), vec4<i32>(arg_1.x, 50827i, u_input.a.x, -1i), vec3<bool>(arg_2.x, false, false), arg_1), -424f, arg_0)).x) & true);
    let var_1 = 0u;
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, -133f, -218f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-2152f, 340f, -1655f)))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x >> (1u % 32u), u_input.a.x << (0u % 32u), arg_1.x, -1i) | vec4<i32>(reverseBits(u_input.a.x), arg_1.x & 1880i, arg_1.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), func_2(arg_2.x, Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1588f, 1511f, 150f), vec3<f32>(-1006f, -117f, -1195f))), -vec4<i32>(-5034i, -1i, arg_1.x, -21466i), vec3<bool>(arg_2.x, true, arg_2.x), -vec2<i32>(2147483647i, arg_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1258f, 1533f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, -1175f, -1163f))), !func_2(true, Struct_1(vec3<f32>(1596f, 329f, 244f), vec4<i32>(-2147483647i, -4713i, u_input.a.x, u_input.a.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_1), vec3<f32>(-518f, -1516f, -937f), vec2<bool>(arg_2.x, false)).c.xx).b), vec3<bool>(true, _wgslsmith_sub_i32(u_input.a.x, -40289i) > (u_input.a.x << (~63438u % 32u)), all(vec4<bool>(u_input.a.x <= -34941i, any(arg_2), arg_2.x, any(vec3<bool>(arg_2.x, true, arg_2.x))))), ~u_input.a.xx);
    var_0 = !select(var_2.c.x, _wgslsmith_f_op_f32(select(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + -192f), var_2.c.x)) < _wgslsmith_f_op_f32(-1187f + _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, var_2.c.x))), any(!vec4<bool>(true, arg_2.x, var_2.c.x, false)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.a.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(327f - var_2.a.x), _wgslsmith_f_op_f32(-1560f + var_2.a.x)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, -1i, -1i) << (firstTrailingBit(vec3<u32>(4294967295u, 25394u, arg_0)) % vec3<u32>(32u)), -u_input.a >> (~vec3<u32>(60047u, arg_0, arg_0) % vec3<u32>(32u))), u_input.a.x, 2147483647i, u_input.a.x), var_2.c, -_wgslsmith_mod_vec2_i32(min(countOneBits(vec2<i32>(u_input.a.x, -28835i)), vec2<i32>(-1i, u_input.a.x)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(_wgslsmith_sub_u32(abs(abs(1u)), ~select(46874u, ~24644u, true)), u_input.a.zz, select(vec2<bool>(true, false), vec2<bool>(true, var_0), select(select(func_1(-11686i), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), vec2<bool>(true, true)), select(func_1(-84716i), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), vec2<bool>(true, true)), !select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), var_0))));
    var var_2 = func_2(var_1.c.x, func_5(~(~1u), abs((vec2<i32>(var_1.d.x, 0i) & u_input.a.yy) << (~vec2<u32>(0u, 2389u) % vec2<u32>(32u))), !select(func_5(69970u, vec2<i32>(0i, u_input.a.x), vec2<bool>(var_1.c.x, var_1.c.x)).c.zz, vec2<bool>(false, var_1.c.x), vec2<bool>(var_0, true))), _wgslsmith_f_op_vec3_f32(func_4(func_2(!var_1.c.x, func_5(_wgslsmith_add_u32(4294967295u, 0u), vec2<i32>(var_1.b.x, 1i), var_1.c.zx), func_5(~4294967295u, -vec2<i32>(-78651i, var_1.d.x), var_1.c.yz).a, vec2<bool>(true, any(vec2<bool>(var_0, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f + -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * var_1.a.x)), 0u)), !vec2<bool>(select(false, var_1.c.x && var_0, any(var_1.c)), var_0));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), max(vec4<i32>(select(-var_1.d.x, -9112i >> (0u % 32u), var_2.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, u_input.a.x), vec2<i32>(27049i, u_input.a.x)) ^ abs(var_2.d.x), 8635i, abs(1i)), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), firstTrailingBit(var_2.b.x), var_1.d.x, -var_2.b.x) | -vec4<i32>(1i, 1i, var_1.b.x, -2147483647i)), func_2(func_1(var_1.b.x).x && any(!vec4<bool>(false, var_0, var_1.c.x, var_2.c.x)), func_2(!var_0, func_5(min(0u, 21180u), vec2<i32>(-932i, var_2.b.x), var_2.c.zz), vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, 118f, true)), _wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(-var_2.a.x)), var_2.c.xx), vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x - -1000f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(350f - -424f), -1552f)), vec2<bool>(false, false && (var_1.d.x < u_input.a.x))).c, ~(~var_1.d));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.b.x, 1i), var_2.d.x) < _wgslsmith_add_i32(46044i, _wgslsmith_add_i32(func_5(firstLeadingBit(110563u), var_1.d, !vec2<bool>(var_0, false)).b.x, 1i | (var_1.d.x >> (0u % 32u))));
    var var_4 = select(~firstLeadingBit(var_1.d.x), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_mod_i32(~func_5(1u, vec2<i32>(var_1.b.x, -1i), var_2.c.xx).b.x, u_input.a.x)), !(!(any(var_2.c) & !var_0)));
    var_3 = func_2(true, func_5(1u, ~var_1.d, vec2<bool>(any(var_1.c.yx), !var_1.c.x)), var_1.a, func_5(~_wgslsmith_div_u32(~0u, ~0u), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 9311i), -vec2<i32>(-2147483647i, var_1.b.x))), select(var_1.c.zz, !func_5(1379u, var_1.b.ww, vec2<bool>(false, var_0)).c.zz, vec2<bool>(var_1.c.x || true, var_1.c.x))).c.xz).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-3352i)), var_1.b.zwy ^ u_input.a, _wgslsmith_sub_i32(-(39127i ^ (-23223i & u_input.a.x)), countOneBits(var_1.d.x)), var_2.b.xy);
}

