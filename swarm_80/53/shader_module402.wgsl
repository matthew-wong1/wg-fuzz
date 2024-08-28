struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 4>;

var<private> global3: bool = true;

var<private> global4: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-650f, 310f, -2203f), vec3<f32>(1180f, -664f, -388f), vec3<f32>(724f, 192f, 625f), vec3<f32>(1681f, 581f, -1000f), vec3<f32>(780f, -1283f, -1171f), vec3<f32>(-835f, -371f, -413f), vec3<f32>(2061f, -1082f, -367f), vec3<f32>(-996f, -744f, -1082f), vec3<f32>(144f, 698f, -2239f), vec3<f32>(-530f, -663f, 189f), vec3<f32>(-179f, -213f, -504f), vec3<f32>(192f, 2155f, 169f), vec3<f32>(-1000f, -1000f, -1084f), vec3<f32>(-1318f, 452f, 311f), vec3<f32>(344f, -593f, 295f), vec3<f32>(1032f, -1049f, 861f), vec3<f32>(-1493f, 165f, 1399f), vec3<f32>(-389f, 203f, -1154f), vec3<f32>(-361f, -567f, 305f), vec3<f32>(-265f, 826f, -1236f), vec3<f32>(1066f, -1000f, 412f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_1(countOneBits(~reverseBits(u_input.a.ywz) ^ ~(~vec3<u32>(4294967295u, 0u, u_input.a.x))), global0.b, min(_wgslsmith_mult_i32(~(-19955i), 0i), _wgslsmith_mod_i32(global0.c, ~global0.c)));
    global4 = array<vec3<f32>, 21>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(max(496f, 702f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(282f + 1000f))) + 236f));
    let var_0 = global0.c;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~global0.a, ~(~vec3<u32>(17665u, 63872u, 4294967295u))), ~vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 29078u), abs(global0.a.x), 49117u)), vec2<bool>(global0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1641f, -1172f)), _wgslsmith_div_f32(-163f, 180f), any(vec3<bool>(true, global0.b.x, global0.b.x)))) != _wgslsmith_f_op_f32(f32(-1f) * -519f)), min(firstLeadingBit(select(1i, 2147483647i, true)), -25461i));
    return vec2<bool>(false, true);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    let var_0 = vec3<bool>(global0.b.x, false, arg_2.b.x && true);
    global3 = true;
    var var_1 = ~(global0.a.xx & arg_1.a.yy);
    global2 = array<vec3<f32>, 4>();
    let var_2 = arg_1.b.x;
    return !(!arg_1.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec4<f32> {
    global2 = array<vec3<f32>, 4>();
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1260f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(552f)) - 1f))))));
    let var_0 = arg_3;
    var var_1 = select(vec4<bool>(false, arg_1, func_3(min(vec4<i32>(var_0.c, global0.c, 1i, global0.c), -vec4<i32>(-4843i, -6701i, arg_3.c, global0.c)), Struct_1(u_input.a.wyw, arg_0, global0.c), var_0, -var_0.c).x, arg_0.x), vec4<bool>(arg_3.b.x, -888f == _wgslsmith_f_op_f32(floor(386f)), all(vec4<bool>(true, arg_3.b.x, false, false)) & arg_1, !(-1701f > _wgslsmith_f_op_f32(floor(481f)))), all(vec2<bool>(false, false)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_f_op_f32(f32(-1f) * -121f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f * 788f)), _wgslsmith_f_op_f32(f32(-1f) * -1224f)))), -129f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(170f)), -198f), 1f)), _wgslsmith_div_f32(-1249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2074f)) * _wgslsmith_f_op_f32(select(-248f, 1450f, global0.b.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = min(~arg_2.c, 46098i);
    let var_1 = all(vec3<bool>(all(vec2<bool>(arg_0.b.x, true)), true, arg_0.b.x)) || !arg_1.b.x;
    let var_2 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(arg_2.c), _wgslsmith_div_i32(arg_0.c, var_0), arg_0.c), max(vec3<i32>(arg_2.c, global0.c, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(38932i, var_0, 2147483647i), vec3<i32>(-10089i, -2392i, var_0))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_2.c, -2147483647i, arg_1.c), vec3<i32>(-5585i, -36956i, 1i)), vec3<i32>(-16047i, -12022i, arg_0.c)));
    var var_3 = 1u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(select(func_2(), arg_1.b, arg_0.b), !any(global0.b), !arg_0.b.x, Struct_1(u_input.a.yww, func_3(vec4<i32>(-56443i, arg_1.c, -1i, 7982i), Struct_1(u_input.a.xwz, arg_1.b, arg_0.c), arg_0, -1i), -34471i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, 145f, -1000f, 126f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1555f, -1381f, 361f, -1026f) - vec4<f32>(-226f, 1598f, 516f, -914f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 590f, -829f, -1046f))))))));
    return select(45240u, arg_1.a.x, all(select(vec2<bool>(true, arg_2.b.x), !arg_2.b, global0.b))) ^ ~86686u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-748f, _wgslsmith_f_op_f32(floor(arg_2))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(firstLeadingBit(u_input.a.x), arg_3.a.x, _wgslsmith_add_u32(arg_1, arg_1)), global0.a, reverseBits(abs(~vec3<u32>(78328u, global0.a.x, 2816u)))), select(global0.b, global0.b, arg_3.b), countOneBits(_wgslsmith_mod_i32(-(-2147483647i << (u_input.a.x % 32u)), min(0i, global0.c))));
    let var_2 = arg_3;
    var var_3 = select(global0.c | ~global0.c, -var_2.c, global0.b.x);
    var var_4 = var_2;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, ~(-1i), -var_4.c), ~reverseBits(vec4<i32>(var_1.c, arg_3.c, max(-95377i, var_2.c), _wgslsmith_add_i32(var_4.c, var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1657f)))));
    let var_0 = min(-_wgslsmith_sub_vec4_i32(firstTrailingBit(select(vec4<i32>(-14900i, global0.c, -2147483647i, global0.c), vec4<i32>(global0.c, 12746i, -15355i, global0.c), vec4<bool>(false, global0.b.x, global0.b.x, false))), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, 0i, 2147483647i, 0i), vec4<i32>(4390i, global0.c, 1i, 0i) & vec4<i32>(5200i, 16672i, global0.c, -2147483647i))), _wgslsmith_mult_vec4_i32(func_5(_wgslsmith_mod_u32(u_input.a.x, global0.a.x), func_1(Struct_1(u_input.a.wwz, global0.b, global0.c), Struct_1(global0.a, global0.b, global0.c), Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x), global0.c)), _wgslsmith_f_op_f32(1124f * -1000f), Struct_1(vec3<u32>(1u, global0.a.x, 8231u), vec2<bool>(true, false), global0.c)), vec4<i32>(-1i) * -vec4<i32>(-31116i, 1i, global0.c, global0.c)) >> (select(select(~vec4<u32>(28916u, u_input.a.x, 0u, 35106u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 5439u, 12899u, 0u), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(82151u, 1298u, 1u, 14510u)), ~vec4<u32>(global0.a.x, u_input.a.x, u_input.a.x, 5241u)), vec4<bool>(all(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), true, any(vec3<bool>(true, false, global0.b.x)), !global0.b.x)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(global0.b.x, false), true, true, Struct_1(vec3<u32>(global0.a.x, u_input.a.x, global0.a.x), vec2<bool>(true, global0.b.x), 0i))).x * _wgslsmith_f_op_f32(1513f - -310f)), _wgslsmith_f_op_f32(-2799f + _wgslsmith_f_op_f32(ceil(291f)))), 1632f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(202f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1241f), -1156f, global0.a.x >= 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1007f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1064f * 1057f), _wgslsmith_f_op_f32(trunc(1661f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1075f, 1000f, -355f, 190f), vec4<f32>(-1000f, -712f, 310f, 2493f), false)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-755f, -1453f, -344f, 1136f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.zy);
    global4 = array<vec3<f32>, 21>();
    var var_3 = Struct_1(countOneBits(~(~min(global0.a, vec3<u32>(60987u, 1u, u_input.a.x)))), vec2<bool>(global0.b.x, global0.b.x), -max(global0.c, 28545i << (select(477u, 0u, true) % 32u)));
    let var_4 = var_3.b.x || global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_2.x)))), -481f, _wgslsmith_f_op_vec4_f32(func_4(!var_3.b, !func_2().x, !(!var_4), Struct_1(vec3<u32>(1u, var_3.a.x, u_input.a.x), !global0.b, 0i))).x));
}

