struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: array<i32, 13> = array<i32, 13>(-42472i, 0i, -7046i, -11933i, 6925i, -1i, -11618i, -24644i, -1i, 1i, 1i, -1i, -8707i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-612f)))), _wgslsmith_f_op_f32(346f * 573f), _wgslsmith_f_op_f32(round(129f)), -623f), !(all(vec4<bool>(true, true, false, false)) || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))));
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(346f + var_0.x) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(347f)) - 1012f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    var var_1 = reverseBits(min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<i32>(1i, u_input.b)), -(~vec2<i32>(-18380i, u_input.c))), 1i));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -102f, _wgslsmith_f_op_f32(min(var_0.x, -1676f)), var_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>) -> u32 {
    global1 = array<i32, 13>();
    var var_0 = Struct_4(4294967295u, Struct_1(vec3<bool>(false, !any(vec4<bool>(true, arg_0.x, arg_0.x, false)), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - arg_1)), ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(15265u, 5867u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, u_input.d, u_input.a.x, 1u)), vec4<u32>(1u, u_input.a.x, 18028u, 1u) ^ vec4<u32>(u_input.a.x, 88696u, 1u, u_input.d)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-503f, 443f, arg_1.x, 249f), arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, -1000f, arg_1.x, arg_1.x))), vec4<f32>(615f, arg_1.x, -1099f, arg_1.x))), ~((vec3<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(1u, 13u)]) << (u_input.a % vec3<u32>(32u))) | ~vec3<i32>(-2147483647i, -2147483647i, u_input.c))));
    global1 = array<i32, 13>();
    global0 = array<vec2<u32>, 25>();
    var_0 = Struct_4(9966u, Struct_1(select(vec3<bool>(false, !var_0.b.a.x, arg_0.x & true), !(!vec3<bool>(true, var_0.b.a.x, false)), true), arg_1, var_0.b.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.x, var_0.b.d.x, -1101f, -143f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~45104i, countOneBits(24254i), firstLeadingBit(global1[_wgslsmith_index_u32(11084u, 13u)])), ~vec3<i32>(var_0.b.e.x, global1[_wgslsmith_index_u32(var_0.b.c.x, 13u)], -7128i))));
    return ~0u;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    let var_0 = ~func_4(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(arg_1 - arg_1) != _wgslsmith_f_op_f32(max(-327f, arg_1))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1189f, 564f, 611f, -689f), vec4<f32>(arg_1, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(func_3()))));
    let var_1 = !vec4<bool>(false, arg_1 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), false, false);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), arg_1, -167f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(609f, 1384f, arg_1, -347f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -317f, arg_1) * vec4<f32>(arg_1, -1085f, -539f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1544f, arg_1, 594f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -295f, 621f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-944f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1101f, arg_1, arg_1, arg_1), vec4<f32>(343f, -120f, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -822f, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, -155f, -149f))), select(vec4<bool>(false, true, var_1.x, true), var_1, vec4<bool>(true, var_1.x, false, false))))));
    global1 = array<i32, 13>();
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(1485f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(var_2.x + 359f))), arg_1)));
    return u_input.a.x;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(-274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f + 176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1560f - 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1434f))))));
    global1 = array<i32, 13>();
    var var_1 = var_0.x;
    global0 = array<vec2<u32>, 25>();
    global1 = array<i32, 13>();
    return all(!select(!vec4<bool>(arg_0, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, true, false, arg_0), !vec4<bool>(true, arg_0, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, arg_0), vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = array<vec2<u32>, 25>();
    var var_0 = -(~(~(~(-12252i))));
    var var_1 = vec2<bool>(any(select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), any(vec3<bool>(arg_2.x, arg_2.x, false)))) & arg_2.x, func_5(all(vec4<bool>(true, true, false, any(vec3<bool>(arg_2.x, true, false)))), (vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 13u)], -12812i, 2147483647i) << (arg_0 % vec3<u32>(32u))) << (vec3<u32>(func_2(vec2<u32>(8093u, u_input.a.x), 1981f), arg_0.x, _wgslsmith_mod_u32(1u, 4294967295u)) % vec3<u32>(32u))));
    global0 = array<vec2<u32>, 25>();
    global1 = array<i32, 13>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) * vec4<f32>(1825f, arg_1.x, arg_1.x, -643f)), 19366u >= arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 256f, 789f, arg_1.x) + vec4<f32>(969f, arg_1.x, arg_1.x, arg_1.x)) + vec4<f32>(arg_1.x, arg_1.x, 578f, arg_1.x)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-187f, 175f, arg_1.x, -2301f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-350f, arg_1.x, arg_1.x, 317f), vec4<f32>(arg_1.x, -235f, arg_1.x, -1309f), vec4<bool>(false, var_1.x, false, false)))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1138f, arg_1.x, arg_1.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2420f, 1000f, arg_1.x, -328f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -332f, arg_1.x, 503f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-809f, arg_1.x, -1000f, arg_1.x) * vec4<f32>(447f, arg_1.x, -164f, arg_1.x)))))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<u32>, 25>();
    let var_0 = abs(firstLeadingBit(-min(~u_input.c, countOneBits(u_input.c))));
    global1 = array<i32, 13>();
    global0 = array<vec2<u32>, 25>();
    global0 = array<vec2<u32>, 25>();
    return Struct_1(!vec3<bool>(true, func_5(true, vec3<i32>(u_input.b, 2147483647i, var_0) ^ vec3<i32>(-1i, var_0, var_0)), !(u_input.a.x != 45629u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1479f, _wgslsmith_f_op_f32(f32(-1f) * -966f)) - arg_0))), vec4<u32>(u_input.a.x, reverseBits(~u_input.d), u_input.a.x, u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1041f, arg_0.x, -1418f) * vec4<f32>(-938f, arg_0.x, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(_wgslsmith_f_op_f32(1000f - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(trunc(1214f))))), ~(-(~(vec3<i32>(var_0, var_0, -39038i) ^ vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 13u)], -2147483647i, -6684i)))));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_3 {
    return Struct_3(countOneBits(-7358i), _wgslsmith_f_op_f32(f32(-1f) * -1741f), func_6(_wgslsmith_f_op_vec4_f32(-arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-21742i & u_input.c);
    var var_1 = abs(~firstLeadingBit(u_input.a.x)) & u_input.a.x;
    global0 = array<vec2<u32>, 25>();
    let var_2 = func_7(func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1298f, 1498f, 550f) + _wgslsmith_f_op_vec4_f32(func_1(u_input.a, vec3<f32>(146f, -2414f, 894f), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 970f, -875f, -429f)))))), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), true || ((var_0 ^ -5496i) <= var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(var_2.c.e.yy, var_2.c.e.zx));
}

