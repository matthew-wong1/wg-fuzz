struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<f32>(791f, -1596f, -311f, 269f), vec4<bool>(true, false, true, false), false), Struct_2(vec4<f32>(-941f, -217f, -1029f, 627f), vec4<bool>(true, false, false, false), true), Struct_2(vec4<f32>(298f, -1615f, 1956f, -371f), vec4<bool>(false, true, true, true), true), Struct_2(vec4<f32>(-716f, 276f, 456f, -425f), vec4<bool>(true, true, false, false), false));

var<private> global1: bool = false;

var<private> global2: array<u32, 1>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<f32>(-909f, -910f), vec4<f32>(-630f, -122f, 1167f, 615f), 4294967295u), Struct_3(vec2<f32>(-614f, 1523f), vec4<f32>(-803f, 1075f, 686f, 1000f), 40288u), Struct_3(vec2<f32>(1226f, -691f), vec4<f32>(464f, -411f, -1349f, -1541f), 84319u), Struct_3(vec2<f32>(345f, 1071f), vec4<f32>(-506f, 392f, 245f, -141f), 85923u), Struct_3(vec2<f32>(-388f, 1444f), vec4<f32>(-1000f, -1010f, -256f, -1236f), 42934u), Struct_3(vec2<f32>(-729f, -793f), vec4<f32>(-464f, 225f, -1490f, -453f), 25452u), Struct_3(vec2<f32>(1185f, -178f), vec4<f32>(-1254f, -937f, 135f, -532f), 1u), Struct_3(vec2<f32>(-1453f, -1971f), vec4<f32>(-655f, 1122f, -1000f, 540f), 0u), Struct_3(vec2<f32>(1029f, -278f), vec4<f32>(782f, -1000f, 775f, 691f), 5119u), Struct_3(vec2<f32>(1442f, 2279f), vec4<f32>(521f, -284f, 739f, 1400f), 1u), Struct_3(vec2<f32>(-2066f, -846f), vec4<f32>(1022f, 214f, 1008f, -701f), 4294967295u), Struct_3(vec2<f32>(295f, -1000f), vec4<f32>(-499f, 554f, -542f, 1548f), 30698u), Struct_3(vec2<f32>(-1395f, -104f), vec4<f32>(1324f, 585f, 342f, 1856f), 0u), Struct_3(vec2<f32>(1369f, 629f), vec4<f32>(462f, 1157f, -1526f, 1594f), 4446u), Struct_3(vec2<f32>(-1000f, 284f), vec4<f32>(1000f, 1703f, 1000f, 688f), 57623u), Struct_3(vec2<f32>(-429f, 690f), vec4<f32>(-1080f, 590f, 433f, -403f), 21104u), Struct_3(vec2<f32>(364f, 1011f), vec4<f32>(138f, -665f, 780f, 202f), 12554u), Struct_3(vec2<f32>(357f, -265f), vec4<f32>(1467f, 114f, -1106f, -889f), 12575u), Struct_3(vec2<f32>(1298f, 879f), vec4<f32>(371f, -1027f, -367f, -1011f), 4294967295u), Struct_3(vec2<f32>(1062f, 884f), vec4<f32>(279f, -887f, 2151f, -802f), 24294u), Struct_3(vec2<f32>(-151f, 1262f), vec4<f32>(162f, -120f, 534f, -193f), 1u), Struct_3(vec2<f32>(879f, -200f), vec4<f32>(276f, -2410f, 893f, 1139f), 1u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_i32(arg_1, arg_2.x);
    let var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_1, 0i), arg_2.xzx);
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48735u, 1u)], 1u)], 1u)], 1u)], firstTrailingBit(max(u_input.b, u_input.a.x))), u_input.b), 22u)];
    var var_3 = firstLeadingBit(vec4<i32>(-22482i, -18910i, -_wgslsmith_dot_vec2_i32(arg_2.zx >> (vec2<u32>(21830u, 90469u) % vec2<u32>(32u)), reverseBits(var_1.yz)), ~(-12741i)));
    let var_4 = any(select(arg_0.b, !select(arg_0.b, vec4<bool>(arg_3.a, false, arg_3.a, false), !arg_0.b), arg_0.b.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x + -1000f), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2253f, -1000f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b, 1u)]), 4u)], -2147483647i, vec4<i32>(2147483647i, 14741i, 1i, -2147483647i), Struct_1(true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) - -1223f))), vec4<bool>(true, !all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), !(_wgslsmith_mod_u32(58947u, global2[_wgslsmith_index_u32(select(81280u, 0u, false), 1u)]) == 42733u));
    let var_1 = vec3<bool>(var_0.b.x, true, !(true & all(!var_0.b.xw)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(391f * var_0.a.x), 1097f), _wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(935f * var_0.a.x) < _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-813f, 1886f) * _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(-263f)), 224f, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(min(var_0.a.x, 716f)))), vec4<bool>(var_1.x, any(select(vec3<bool>(var_1.x, true, var_1.x), var_0.b.zyy, vec3<bool>(var_1.x, true, true))), !all(var_1), select(false, var_1.x, !var_1.x)))), select(select(var_0.b, vec4<bool>(all(var_0.b), false, var_0.c || false, any(var_1)), any(vec4<bool>(false, var_0.c, var_1.x, var_1.x))), !var_0.b, vec4<bool>(any(var_1.yx), var_0.c, var_0.b.x, var_0.b.x)), any(select(var_1.zz, var_0.b.xx, var_0.c)) & !var_0.c);
    let var_4 = 5741i;
    return 0u;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    var var_0 = arg_0.b.wzx;
    var var_1 = !arg_2.c;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, -572f, 495f, var_0.x), vec4<f32>(arg_0.a.x, 417f, var_0.x, -2203f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, arg_0.a.x, 1844f, -627f) * vec4<f32>(678f, var_0.x, arg_0.b.x, -1441f)), arg_2.b))))), countOneBits(func_2()));
    var var_3 = arg_0;
    var var_4 = arg_0.b.zzx;
    return global3[_wgslsmith_index_u32(18980u, 22u)];
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    let var_0 = select(!(!(!vec2<bool>(arg_1, true))), !select(!select(vec2<bool>(true, arg_1), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), arg_1)), select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, true), vec2<bool>(true, arg_1), vec2<bool>(false, true)), true)), select(vec2<bool>(all(select(vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1))), false), !vec2<bool>(arg_1, false), true && !arg_1));
    var var_1 = ~(_wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(62284i, 2147483647i, 10294i, -22458i), vec4<i32>(-22643i, -842i, -4481i, -1i), vec4<bool>(false, var_0.x, true, true))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))) & -_wgslsmith_sub_i32(~32580i, reverseBits(-2147483647i)));
    var var_2 = 1i >= _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-91675i, _wgslsmith_div_i32(1i, ~(-2147483647i)), ~1i), abs(~(~(-8882i))));
    var var_3 = Struct_2(vec4<f32>(-772f, -623f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f) + _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f - arg_0.a.x))))), !vec4<bool>(var_0.x, true, false, false), var_0.x);
    var_2 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(arg_0.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(step(var_3.a.x, arg_0.a.x))))) * _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~1u, 4u)], ~(1i >> (0u % 32u)), abs(countOneBits(vec4<i32>(1i, 1i, 1i, 1i))), Struct_1(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(-1123f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(415f, 786f))) + _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_1(global3[_wgslsmith_index_u32(u_input.b, 22u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 4u)], -54662i), all(vec2<bool>(false, false)), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(45395u, 1u)]))), 286f)), 1f), !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, false), !(reverseBits(_wgslsmith_sub_i32(-10107i, 23700i)) > ((i32(-1i) * -16001i) >> (u_input.b % 32u))));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), -1045f, func_1(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1163f)), var_0.a, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.b, 1u)], 0u), global0[_wgslsmith_index_u32(func_1(func_1(global3[_wgslsmith_index_u32(35701u, 22u)], 0u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49499u, 1u)], 1u)], 1u)], 4u)], 35347i), global2[_wgslsmith_index_u32(141139u, 1u)] & global2[_wgslsmith_index_u32(87553u, 1u)], Struct_2(var_0.a, var_0.b, true), -1i).c, 4u)], -_wgslsmith_add_i32(-2147483647i, 2147483647i)).b.x, _wgslsmith_f_op_f32(func_4(func_1(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], 4294967295u, global0[_wgslsmith_index_u32(~4294967295u, 4u)], 41553i), select(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21280u, 1u)], 1u)], var_0.c) == 33964u, vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b, 1u)], 31627u), _wgslsmith_div_u32(57320u, 4294967295u))))), select(!var_0.b, select(var_0.b, vec4<bool>(true, true, all(vec4<bool>(true, false, var_0.b.x, var_0.c)), false), var_0.b), true), var_0.c);
    var var_2 = -_wgslsmith_clamp_vec2_i32(-reverseBits(-vec2<i32>(72729i, 6595i)), _wgslsmith_div_vec2_i32(~(-vec2<i32>(66568i, 18477i)), vec2<i32>(1i, 1i)), ~vec2<i32>(1i, 1i));
    var var_3 = global0[_wgslsmith_index_u32(1u >> (_wgslsmith_clamp_u32(select((1u | u_input.b) | ~u_input.b, ~(~u_input.b), var_1.c), _wgslsmith_mod_u32(77279u, _wgslsmith_sub_u32(26697u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(79104u, u_input.a.x), 1u)])), u_input.a.x) % 32u), 4u)];
    var var_4 = ~(~u_input.a.x);
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, var_2.x), vec3<i32>(1i, 34396i, var_2.x)), var_2.x), _wgslsmith_mod_i32(firstLeadingBit(var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.x, -2147483647i), vec3<i32>(var_2.x, 55515i, 2427i))))), ~countOneBits(var_2.x << (~0u % 32u)), u_input.a, -_wgslsmith_div_i32(44645i & (var_2.x | 16488i), var_2.x));
}

