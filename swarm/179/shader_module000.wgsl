struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1000f, -431f), vec2<f32>(123f, -1280f), vec2<f32>(-1000f, 685f), vec2<f32>(856f, -2411f), vec2<f32>(1516f, 1161f), vec2<f32>(1000f, 429f), vec2<f32>(-1071f, -305f), vec2<f32>(326f, 1248f), vec2<f32>(674f, 1000f), vec2<f32>(3041f, 748f), vec2<f32>(787f, 680f), vec2<f32>(-1730f, 1000f), vec2<f32>(-134f, 1000f), vec2<f32>(1707f, 526f), vec2<f32>(602f, -256f), vec2<f32>(-213f, 670f), vec2<f32>(858f, 406f), vec2<f32>(226f, 229f), vec2<f32>(-361f, -1000f), vec2<f32>(-2124f, 684f), vec2<f32>(-2789f, -627f), vec2<f32>(296f, 1000f), vec2<f32>(859f, 1310f), vec2<f32>(885f, -347f), vec2<f32>(898f, 1056f));

var<private> global3: array<Struct_1, 25>;

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(true, Struct_1(4294967295u), vec4<f32>(336f, -865f, -560f, 1736f), vec2<bool>(false, true), false), Struct_2(true, Struct_1(1u), vec4<f32>(-659f, -1676f, 181f, -1000f), vec2<bool>(true, false), false), Struct_2(false, Struct_1(0u), vec4<f32>(327f, 150f, 440f, 1030f), vec2<bool>(false, false), false), Struct_2(false, Struct_1(0u), vec4<f32>(-1265f, 562f, 996f, -668f), vec2<bool>(true, false), true), Struct_2(false, Struct_1(0u), vec4<f32>(614f, -492f, 995f, 379f), vec2<bool>(false, false), false), Struct_2(false, Struct_1(20939u), vec4<f32>(-3368f, -1707f, 1548f, -869f), vec2<bool>(true, true), true), Struct_2(false, Struct_1(4294967295u), vec4<f32>(-1400f, 755f, -203f, 1111f), vec2<bool>(true, true), true), Struct_2(false, Struct_1(4294967295u), vec4<f32>(357f, 1989f, -205f, 403f), vec2<bool>(false, false), false), Struct_2(false, Struct_1(0u), vec4<f32>(507f, 408f, -832f, -1825f), vec2<bool>(false, false), true), Struct_2(false, Struct_1(36894u), vec4<f32>(-111f, -1151f, 1053f, -1202f), vec2<bool>(true, true), true), Struct_2(true, Struct_1(1u), vec4<f32>(-145f, -1000f, 158f, -1675f), vec2<bool>(true, true), true), Struct_2(false, Struct_1(0u), vec4<f32>(-1235f, 2274f, 752f, 267f), vec2<bool>(true, true), false), Struct_2(true, Struct_1(1u), vec4<f32>(-578f, -671f, -1000f, 1430f), vec2<bool>(false, true), true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    global3 = array<Struct_1, 25>();
    var var_0 = Struct_2(!(!arg_0.x & (arg_0.x && arg_0.x)), Struct_1(_wgslsmith_mult_u32(firstTrailingBit(abs(u_input.a)), 4294967295u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1002f - -1215f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(965f * -262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-342f, 574f))), -1500f))), select(arg_0.zx, arg_0.zx, select(arg_0.yz, arg_0.yy, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, -2147483647i)), abs(-2147483647i)), vec2<i32>(-1i) * -vec2<i32>(-13207i, -15667i)) < -47014i);
    global4 = array<Struct_2, 13>();
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(ceil(var_0.c.x))) + var_0.c.x))));
    return -(i32(-1i) * -27476i);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(u_input.a);
    let var_1 = Struct_2(false, global3[_wgslsmith_index_u32(13363u, 25u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, 752f, -1689f, -163f)))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), !vec2<bool>(true, all(vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(false, true, false, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), any(vec3<bool>(false, true, false))))), true);
    global2 = array<vec2<f32>, 25>();
    var var_2 = vec2<i32>(-77442i, (select(func_3(vec3<bool>(false, true, var_1.d.x), 4294967295u), -1i, var_1.e | var_1.a) << (var_0.a % 32u)) ^ (i32(-1i) * -(1i >> (0u % 32u))));
    let var_3 = ~_wgslsmith_dot_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.a, 37535u), vec2<u32>(var_0.a, u_input.b))), vec2<u32>(~var_1.b.a, u_input.a));
    return _wgslsmith_f_op_f32(-903f + var_1.c.x);
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f - _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(112f - 933f)))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(-1489f, var_0)))))), _wgslsmith_f_op_f32(-821f * var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-var_0))), 1113f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1379f + var_0), 1f)))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1017f, var_1.x, var_0)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 25u)];
    let var_1 = Struct_2(true, global3[_wgslsmith_index_u32(min(var_0.a, 30283u), 25u)], _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, 283f, arg_1.x, arg_1.x))))))), vec2<bool>(true, true), true);
    global4 = array<Struct_2, 13>();
    global2 = array<vec2<f32>, 25>();
    var var_2 = global1[_wgslsmith_index_u32(~arg_2.a, 30u)];
    return 37899u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_clamp_vec3_i32(max(~(-vec3<i32>(-1i, 20913i, -25226i)), select(vec3<i32>(0i, -32358i, -1i) << (vec3<u32>(0u, u_input.b, u_input.a) % vec3<u32>(32u)), vec3<i32>(11927i, 19433i, -1i), vec3<bool>(true, false, true))), firstLeadingBit(-min(vec3<i32>(-9519i, 2147483647i, -1i), vec3<i32>(48920i, -60455i, 1i))), countOneBits(~vec3<i32>(1i, 1i, 1i))));
    global2 = array<vec2<f32>, 25>();
    var var_1 = vec3<u32>(func_4((vec3<u32>(58730u, 0u, u_input.b) & vec3<u32>(1u, u_input.b, 4294967295u)) >> (~vec3<u32>(4294967295u, 9582u, u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_1()), Struct_1(_wgslsmith_add_u32(2488u, u_input.b))) | u_input.a, _wgslsmith_div_u32(func_4(vec3<u32>(~25962u, countOneBits(u_input.b), ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-266f, -114f, -1748f), vec3<f32>(2375f, -301f, 292f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(101f, 840f, 1260f), vec3<f32>(-1878f, 1376f, -1000f)))), Struct_1(_wgslsmith_mod_u32(50497u, u_input.b))), func_4(vec3<u32>(u_input.a, u_input.b, u_input.a) >> (select(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(12678u, 4294967295u, 4294967295u), vec3<bool>(false, true, true)) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-189f - -1478f), _wgslsmith_f_op_f32(abs(-1091f)), -533f), Struct_1(u_input.b & 41911u))), _wgslsmith_mod_u32(~abs(u_input.a), 1u));
    var_0 = -firstTrailingBit(max((vec3<i32>(2147483647i, -15281i, var_0.x) & vec3<i32>(var_0.x, var_0.x, -1i)) << (~vec3<u32>(u_input.b, 42595u, 1u) % vec3<u32>(32u)), vec3<i32>(var_0.x, var_0.x, 16814i) ^ vec3<i32>(-72262i, -2147483647i, var_0.x)));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(~(-1i), -_wgslsmith_mult_i32(select(var_0.x, var_0.x, false), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(var_0.x, -1i)))), firstLeadingBit(countOneBits(var_0.x)), var_0.x);
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(1342f)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~4294967295u, 39233u ^ var_1.x), ~min(var_1.x, var_1.x)), func_4(firstTrailingBit(vec3<u32>(28513u, u_input.a, 5795u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_1.x, 4294967295u), vec3<u32>(1u, 1u, u_input.a)), vec3<f32>(-892f, _wgslsmith_f_op_f32(-986f * -292f), _wgslsmith_f_op_f32(trunc(-1253f))), Struct_1(_wgslsmith_mult_u32(u_input.b, u_input.a))), var_1.x));
}

