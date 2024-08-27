struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1000f, -2364f, -361f), 1u, true), Struct_1(vec3<bool>(false, true, true), vec3<f32>(178f, -571f, -928f), 4294967295u, true), Struct_1(vec3<bool>(false, true, false), vec3<f32>(122f, -224f, 634f), 5389u, true), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-107f, -1310f, -1760f), 7480u, false), Struct_1(vec3<bool>(true, true, false), vec3<f32>(207f, -284f, -1028f), 33038u, false), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-680f, 217f, 408f), 4294967295u, false), Struct_1(vec3<bool>(false, false, true), vec3<f32>(258f, -996f, -2119f), 4067u, false), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1174f, -102f, -1038f), 43115u, true), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-179f, 623f, 1540f), 17679u, false), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1000f, -842f, 1248f), 56649u, true), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-285f, 1148f, -1239f), 17717u, true), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-309f, 895f, 915f), 0u, false), Struct_1(vec3<bool>(true, false, false), vec3<f32>(665f, 276f, -844f), 1u, true), Struct_1(vec3<bool>(true, true, true), vec3<f32>(631f, -1018f, -231f), 86554u, false), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-452f, 390f, -227f), 0u, true), Struct_1(vec3<bool>(false, true, false), vec3<f32>(744f, 243f, -857f), 0u, true), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-779f, -1528f, -645f), 82975u, true), Struct_1(vec3<bool>(true, true, false), vec3<f32>(1000f, -413f, -735f), 107272u, false), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-871f, 613f, 450f), 14076u, false), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1574f, 1196f, -1000f), 1u, true));

var<private> global1: u32;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<bool>(false, false, false), vec3<f32>(923f, -1217f, -343f), 10423u, false), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1434f, -2035f, -447f), 18833u, false), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-220f, 595f, -1042f), 4294967295u, true), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1000f, 1883f, 738f), 41087u, false), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-644f, 974f, -864f), 0u, true), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1670f, -682f, -1083f), 5958u, true), Struct_1(vec3<bool>(true, false, false), vec3<f32>(759f, -373f, 2372f), 60792u, true), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1447f, 1199f, 175f), 1u, false), Struct_1(vec3<bool>(true, true, true), vec3<f32>(357f, -925f, 363f), 4294967295u, false), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1829f, 1000f, -1325f), 10978u, false), Struct_1(vec3<bool>(true, false, false), vec3<f32>(307f, -165f, 648f), 1u, false), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1000f, -2738f, -278f), 0u, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    global1 = _wgslsmith_mult_u32(0u, firstTrailingBit(u_input.b));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(17399u, 29348u, 1u))), _wgslsmith_div_vec3_u32(select(vec3<u32>(51479u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 77939u), vec3<bool>(true, true, true)) ^ vec3<u32>(u_input.b, 1u, u_input.b), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))), countOneBits(_wgslsmith_add_u32(~select(1u, 0u, true), 98367u))), 12u)];
    let var_1 = select(reverseBits(vec4<i32>(~_wgslsmith_sub_i32(-13214i, u_input.a), max(_wgslsmith_dot_vec3_i32(arg_1.wyw, vec3<i32>(arg_0, 1i, -55893i)), -arg_0), (u_input.a & arg_1.x) ^ _wgslsmith_sub_i32(arg_2, u_input.a), arg_1.x)), arg_1, select(select(vec4<bool>(var_0.d, false, var_0.c > 49332u, true), select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), select(vec4<bool>(var_0.d, true, var_0.d, var_0.d), vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(true, true, var_0.d, false)), select(vec4<bool>(true, var_0.a.x, true, true), vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.d, false, true))), var_0.a.x), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.d, var_0.d, var_0.d, true), vec4<bool>(true, var_0.a.x, var_0.d, false))), all(!vec4<bool>(false, true, var_0.a.x, var_0.a.x))));
    let var_2 = vec4<bool>(true, select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3.x, 1092f)))) < var_0.b.x, var_0.d, !var_0.a.x || var_0.d), select(!var_0.a.x, true, all(!vec4<bool>(true, true, var_0.a.x, true))), any(var_0.a.xz));
    let var_3 = Struct_1(!var_0.a, _wgslsmith_div_vec3_f32(var_0.b, var_0.b), var_0.c, all(var_2));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(vec3<bool>(false, false, all(vec3<bool>(false, 28646u > u_input.b, true))), vec3<f32>(_wgslsmith_f_op_f32(func_3(~0i, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 57087i, -36663i, -1i), vec4<i32>(32980i, -53439i, 1i, u_input.a), vec4<i32>(u_input.a, arg_2, -340i, 2147483647i)), ~vec4<i32>(u_input.a, u_input.a, arg_2, 15959i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -2147483647i, u_input.a, -95652i) & vec4<i32>(u_input.a, arg_2, u_input.a, arg_2), vec4<i32>(53800i, u_input.a, arg_2, 2147483647i)), arg_1.xy)), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f * 290f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.x)), arg_1.x)))), ~(~(~u_input.b)), true);
    var var_1 = global2[_wgslsmith_index_u32(var_0.c, 12u)];
    global2 = array<Struct_1, 12>();
    var_0 = global0[_wgslsmith_index_u32(2u, 20u)];
    var var_2 = Struct_1(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b.x, 564f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-217f - 1732f)))), var_1.b), 20139u, var_0.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1703f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + var_1.b.x), _wgslsmith_f_op_f32(-var_2.b.x))))) + -1295f));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(282f, 1066f, 1059f, 216f), vec4<f32>(-1254f, 1570f, -1000f, -262f))), _wgslsmith_div_vec4_f32(vec4<f32>(127f, -797f, 792f, 1145f), vec4<f32>(-237f, 1447f, 446f, 1029f)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1016f, 139f, 555f, -764f), vec4<f32>(-241f, 487f, -1430f, 221f)))), vec4<f32>(-1318f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-426f, -1000f)), _wgslsmith_f_op_f32(max(1049f, -1120f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-455f, -1828f)) - _wgslsmith_f_op_f32(f32(-1f) * -1185f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(func_2(1u, vec4<f32>(-940f, -645f, 460f, 266f), -1i, vec2<f32>(-512f, -1224f)))))), arg_0)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = var_1.x;
    let var_3 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0, false), vec3<bool>(false, arg_0, arg_0), true)), vec3<bool>(false, all(vec3<bool>(false, false, false)), select(any(vec2<bool>(true, arg_0)), any(vec4<bool>(true, false, arg_0, false)), select(arg_0, arg_0, arg_0))), !select(!vec3<bool>(arg_0, true, false), vec3<bool>(true, true, false), true == arg_0)), var_0.yzz, 45885u, true);
    let var_4 = -205f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(false, _wgslsmith_sub_u32(39564u, 95057u >> (u_input.b % 32u)) > ~6125u, true, true));
    var var_1 = Struct_1(vec3<bool>(func_1(!all(vec4<bool>(false, false, false, true))), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec2<bool>(true, any(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -553f, -1755f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-303f, -243f, 291f))))), 0u, select(~_wgslsmith_mult_u32(u_input.b, u_input.b) >= u_input.b, any(vec3<bool>(true, false, true)), !select(true, true, func_1(false))));
    var var_2 = min(~(~(vec3<u32>(4294967295u, var_1.c, 0u) << (vec3<u32>(10368u, var_1.c, 4597u) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 29047u), vec3<u32>(4294967295u, 1u, var_1.c)), var_1.c, ~4294967295u)), abs(vec3<u32>(1u, u_input.b, 12078u)));
    var_1 = global2[_wgslsmith_index_u32(~15301u, 12u)];
    let var_3 = vec3<u32>((_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, var_1.c), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(11223u, 0u))) | var_2.x) & abs(reverseBits(14191u)), ~min((101504u ^ var_1.c) >> (select(17716u, u_input.b, false) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(3859u, var_2.x, var_2.x, 39929u), select(vec4<u32>(4294967295u, 7613u, 74896u, u_input.b), vec4<u32>(var_2.x, var_2.x, 0u, 4294967295u), vec4<bool>(var_1.d, true, false, false)))), ~(~var_2.x));
    var var_4 = var_1.d;
    var_4 = var_1.d;
    var var_5 = Struct_1(select(select(!var_1.a, var_1.a, all(!vec3<bool>(false, var_1.d, false))), var_1.a, any(var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) - var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), -1157f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.b * var_1.b)))), ~23020u, !var_1.d | var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(-u_input.a, u_input.a ^ -_wgslsmith_mod_i32(1i, u_input.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.x, var_1.b.x, var_5.b.x, var_1.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-334f, var_1.b.x, var_1.b.x, var_5.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1665f)), _wgslsmith_f_op_f32(floor(var_5.b.x)), var_1.b.x, _wgslsmith_f_op_f32(exp2(var_1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-990f, 430f) - var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, -664f))), -158f))));
}

