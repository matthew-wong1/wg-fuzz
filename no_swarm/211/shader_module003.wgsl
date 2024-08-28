struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(313f, Struct_1(vec2<bool>(false, false), vec3<f32>(-1455f, 319f, 1741f), 2073f, vec3<u32>(0u, 52094u, 62287u)), Struct_1(vec2<bool>(true, true), vec3<f32>(173f, -869f, 232f), -1311f, vec3<u32>(0u, 74994u, 53972u))), Struct_2(-1000f, Struct_1(vec2<bool>(false, false), vec3<f32>(-1133f, 610f, -2015f), -124f, vec3<u32>(4294967295u, 6378u, 0u)), Struct_1(vec2<bool>(false, false), vec3<f32>(-606f, -903f, 938f), -461f, vec3<u32>(15550u, 4294967295u, 32296u))), Struct_2(172f, Struct_1(vec2<bool>(false, false), vec3<f32>(-1122f, -407f, 1551f), -607f, vec3<u32>(72325u, 1u, 0u)), Struct_1(vec2<bool>(true, true), vec3<f32>(-792f, 852f, -200f), 365f, vec3<u32>(498u, 4294967295u, 55098u))), Struct_2(848f, Struct_1(vec2<bool>(false, true), vec3<f32>(1217f, -723f, 1383f), 463f, vec3<u32>(74553u, 33643u, 0u)), Struct_1(vec2<bool>(false, true), vec3<f32>(-1701f, 1548f, 828f), 276f, vec3<u32>(17451u, 15775u, 1u))), Struct_2(-519f, Struct_1(vec2<bool>(true, true), vec3<f32>(692f, 721f, -352f), 494f, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1063f, -489f, -760f), -1001f, vec3<u32>(17903u, 64437u, 42410u))), Struct_2(-2629f, Struct_1(vec2<bool>(false, false), vec3<f32>(772f, -1139f, -379f), -1000f, vec3<u32>(0u, 19836u, 59974u)), Struct_1(vec2<bool>(false, false), vec3<f32>(-971f, 308f, -619f), -2735f, vec3<u32>(251u, 75153u, 1u))), Struct_2(1649f, Struct_1(vec2<bool>(true, true), vec3<f32>(1505f, -1000f, -266f), 1000f, vec3<u32>(1008u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec3<f32>(1854f, 523f, 1000f), 1648f, vec3<u32>(69071u, 12270u, 63883u))), Struct_2(-1626f, Struct_1(vec2<bool>(false, false), vec3<f32>(-524f, 1025f, -492f), -704f, vec3<u32>(0u, 22494u, 40733u)), Struct_1(vec2<bool>(false, true), vec3<f32>(-308f, -229f, 768f), 852f, vec3<u32>(43806u, 4294967295u, 0u))), Struct_2(-2796f, Struct_1(vec2<bool>(true, true), vec3<f32>(848f, -906f, -1350f), -354f, vec3<u32>(87487u, 4294967295u, 93611u)), Struct_1(vec2<bool>(true, true), vec3<f32>(949f, -1314f, -386f), -237f, vec3<u32>(110596u, 51771u, 6882u))), Struct_2(715f, Struct_1(vec2<bool>(true, false), vec3<f32>(-833f, 482f, 661f), 283f, vec3<u32>(74690u, 1u, 3784u)), Struct_1(vec2<bool>(false, false), vec3<f32>(-1000f, -2294f, -585f), -1401f, vec3<u32>(1u, 4294967295u, 39593u))));

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

var<private> global3: f32;

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstTrailingBit(~953u), 49349u, 4294967295u), _wgslsmith_mod_vec4_u32(~(~(~u_input.c)), abs(u_input.c))), 8u)];
    var var_1 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.b.c + var_0.c.c), var_0.c, arg_2);
    var var_3 = u_input.a.xwx;
    global4 = array<Struct_2, 8>();
    return _wgslsmith_div_i32(countOneBits(8217i), -arg_1);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    return _wgslsmith_sub_i32(~71751i, func_3(vec2<bool>(true, true), 1i, Struct_1(global2[_wgslsmith_index_u32(u_input.d, 1u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-270f, arg_1, arg_1), vec3<f32>(arg_1, 503f, arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - arg_1))), u_input.c.yyw)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-877f, _wgslsmith_f_op_f32(floor(-280f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(834f)));
    let var_1 = Struct_1(!global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, _wgslsmith_mult_u32(1u, 0u)), 1u)], vec3<f32>(-1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(117f)) + _wgslsmith_f_op_f32(-427f * 184f)), -949f), _wgslsmith_f_op_f32(floor(549f)), ~max(u_input.b, vec3<u32>(1u, u_input.c.x, ~4316u)));
    global2 = array<vec2<bool>, 1>();
    var var_2 = vec3<i32>(-(~9577i), func_2(-vec2<i32>(1i, u_input.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1303f + _wgslsmith_div_f32(-885f, 268f))))), -1769i);
    global1 = array<Struct_2, 10>();
    return reverseBits(var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-418f * 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f * -1172f))))), -1034f));
    global1 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-751f, _wgslsmith_f_op_f32(sign(806f)))), 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(-521f * 1000f)) + -155f)));
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(~func_1(), 1u)], _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), 693f, _wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1747f, var_0, 1582f), vec3<f32>(1602f, -385f, 216f), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, var_0)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(trunc(var_0))))), _wgslsmith_f_op_f32(-var_0), u_input.b);
    var var_2 = global4[_wgslsmith_index_u32(711u, 8u)];
    let var_3 = true;
    var var_4 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -913f, 816f))) - _wgslsmith_f_op_vec3_f32(select(var_1.b, var_1.b, vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)])))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_2.c.b)), vec3<f32>(346f, -411f, var_1.c), !vec3<bool>(false, false, var_1.a.x))) - _wgslsmith_f_op_vec3_f32(exp2(var_1.b))))), 990f, ~select(~(~vec3<u32>(5682u, var_2.c.d.x, 30334u)), u_input.c.xwx, all(vec2<bool>(var_1.a.x, false)) && (true & var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.a.x, u_input.a.x | 15002i), min(vec2<i32>(1i, -28859i), vec2<i32>(1i, u_input.a.x)) | vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.wx));
}

