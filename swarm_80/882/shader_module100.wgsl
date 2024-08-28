struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(2411f, -1002f, -2110f, 3241f), vec3<i32>(3880i, 27869i, 1i), true), Struct_1(vec4<f32>(-547f, -433f, 176f, -461f), vec3<i32>(40822i, -28695i, 23095i), true), Struct_1(vec4<f32>(-1703f, -103f, -762f, -720f), vec3<i32>(-13346i, i32(-2147483648), -3936i), true), Struct_1(vec4<f32>(-868f, -301f, 671f, 2541f), vec3<i32>(i32(-2147483648), -4445i, 28857i), false), Struct_1(vec4<f32>(1333f, -2031f, 1430f, -148f), vec3<i32>(-1i, 0i, 46560i), true), Struct_1(vec4<f32>(-2236f, -1984f, 2152f, -491f), vec3<i32>(-11078i, -76415i, -40922i), true), Struct_1(vec4<f32>(-1389f, 913f, 179f, -1761f), vec3<i32>(66893i, 0i, 2147483647i), false), Struct_1(vec4<f32>(-1778f, 1330f, -306f, 243f), vec3<i32>(-48194i, -3894i, 61271i), false), Struct_1(vec4<f32>(-430f, 1000f, -239f, -664f), vec3<i32>(-57906i, 3121i, 2147483647i), false), Struct_1(vec4<f32>(1672f, -482f, 758f, -1006f), vec3<i32>(30525i, 2147483647i, -16907i), true), Struct_1(vec4<f32>(229f, -1075f, -1077f, -187f), vec3<i32>(i32(-2147483648), 1i, -1i), false), Struct_1(vec4<f32>(-1348f, 429f, -1000f, 1198f), vec3<i32>(22464i, 29752i, 1i), true), Struct_1(vec4<f32>(-1440f, -2056f, -2191f, 1359f), vec3<i32>(i32(-2147483648), -1i, 67075i), false), Struct_1(vec4<f32>(-810f, 1962f, -178f, -1000f), vec3<i32>(-78075i, -38597i, i32(-2147483648)), false), Struct_1(vec4<f32>(-1377f, 978f, -928f, 1047f), vec3<i32>(-10932i, 4337i, i32(-2147483648)), true), Struct_1(vec4<f32>(332f, -196f, 797f, 115f), vec3<i32>(2147483647i, -41798i, 34714i), false), Struct_1(vec4<f32>(798f, 1012f, 124f, -1714f), vec3<i32>(9469i, 1i, 34891i), true), Struct_1(vec4<f32>(-462f, 855f, 1307f, 141f), vec3<i32>(15671i, 2147483647i, 1i), false), Struct_1(vec4<f32>(-206f, -464f, -2133f, 1870f), vec3<i32>(-3557i, 2147483647i, 80516i), true));

var<private> global1: bool;

var<private> global2: vec4<f32> = vec4<f32>(-324f, 815f, 1524f, -657f);

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<f32>(-163f, 387f, 1000f, -537f), vec3<i32>(1i, 1i, 1i), false), Struct_1(vec4<f32>(1000f, -343f, 494f, -2915f), vec3<i32>(-1i, -59438i, 6190i), true), Struct_1(vec4<f32>(1611f, -1954f, 367f, -481f), vec3<i32>(2147483647i, -60979i, -1i), false), Struct_1(vec4<f32>(2511f, -1000f, -1579f, -843f), vec3<i32>(2147483647i, -1i, -22514i), true), Struct_1(vec4<f32>(748f, 1000f, -1000f, 1593f), vec3<i32>(-1i, 12469i, i32(-2147483648)), false), Struct_1(vec4<f32>(-529f, -1664f, 1270f, 1357f), vec3<i32>(2147483647i, i32(-2147483648), 1i), true), Struct_1(vec4<f32>(1000f, 972f, 844f, -1849f), vec3<i32>(i32(-2147483648), 2147483647i, 0i), false), Struct_1(vec4<f32>(526f, 1071f, -306f, -824f), vec3<i32>(-46799i, -19330i, -1i), false), Struct_1(vec4<f32>(129f, -153f, -630f, 3703f), vec3<i32>(70357i, i32(-2147483648), 2147483647i), true), Struct_1(vec4<f32>(-569f, -583f, 232f, -1000f), vec3<i32>(0i, -60692i, 2147483647i), false), Struct_1(vec4<f32>(1948f, -1272f, -234f, -1000f), vec3<i32>(1i, 2147483647i, 10158i), true), Struct_1(vec4<f32>(-636f, 154f, -1212f, -672f), vec3<i32>(2147483647i, 0i, 17148i), true), Struct_1(vec4<f32>(425f, 203f, -1045f, 2308f), vec3<i32>(-28372i, -14823i, -30592i), false), Struct_1(vec4<f32>(1257f, -1651f, 606f, 1005f), vec3<i32>(39548i, 58851i, -1i), true), Struct_1(vec4<f32>(-1865f, -667f, -347f, -194f), vec3<i32>(-1i, -1i, 2147483647i), true), Struct_1(vec4<f32>(-1173f, -882f, 159f, 757f), vec3<i32>(-31154i, 60495i, -4250i), false), Struct_1(vec4<f32>(1339f, 1614f, 2091f, -651f), vec3<i32>(19227i, -7432i, 4535i), true), Struct_1(vec4<f32>(-622f, 1078f, 1000f, 421f), vec3<i32>(2147483647i, 1i, i32(-2147483648)), false), Struct_1(vec4<f32>(-814f, 1727f, -861f, -1000f), vec3<i32>(0i, 1i, 41938i), true), Struct_1(vec4<f32>(-584f, 241f, 995f, -899f), vec3<i32>(2147483647i, -32835i, 31897i), false), Struct_1(vec4<f32>(-918f, 2536f, -363f, -1106f), vec3<i32>(-13796i, -1800i, -12370i), true), Struct_1(vec4<f32>(1344f, -411f, -1552f, 487f), vec3<i32>(35315i, -56169i, 20425i), false), Struct_1(vec4<f32>(200f, 181f, 200f, -500f), vec3<i32>(-1i, -26184i, -13378i), true), Struct_1(vec4<f32>(-618f, -1000f, 1785f, -1662f), vec3<i32>(22640i, -10436i, i32(-2147483648)), true), Struct_1(vec4<f32>(-403f, -996f, 816f, -1561f), vec3<i32>(i32(-2147483648), 1i, 1i), true), Struct_1(vec4<f32>(1249f, -1000f, -429f, 648f), vec3<i32>(0i, 36826i, 2147483647i), false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    global0 = array<Struct_1, 19>();
    global2 = vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1417f, global2.x)))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))))), _wgslsmith_f_op_f32(-565f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -1167f)))));
    var var_0 = -arg_0.x;
    let var_1 = vec3<bool>(arg_2, arg_1.x, arg_2);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f + -382f))));
    return 59259i;
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global2 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(495f, _wgslsmith_f_op_f32(-arg_0.a.x))))), _wgslsmith_div_f32(arg_0.a.x, 198f), global2.x);
    var var_0 = ~_wgslsmith_sub_vec2_i32(abs(abs(arg_0.b.xx)), vec2<i32>(1i, ~arg_0.b.x)) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.a, 1u), ~11246u) % vec2<u32>(32u));
    var_0 = ~arg_0.b.xy;
    var var_1 = arg_0;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * vec4<f32>(_wgslsmith_f_op_f32(-2199f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-381f)) * _wgslsmith_div_f32(var_1.a.x, -516f))), _wgslsmith_div_f32(-300f, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 560f))), var_1.a.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, var_1.a.x, global2.x) + var_1.a)))) * var_1.a);
}

fn func_2() -> StorageBuffer {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 223f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1485f, global2.x, -249f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, 586f, -2153f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -726f, 1302f, 646f))))))) - _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(27979u, 19u)])));
    var var_0 = Struct_2(u_input.c, any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), u_input.a, true, global0[_wgslsmith_index_u32(1u, 19u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-981f, global2.x, global2.x) - vec3<f32>(var_0.e.a.x, -1471f, global2.x)), global2.zxz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.wyy) + vec3<f32>(global2.x, 1382f, global2.x)), var_0.b)))));
    global3 = array<Struct_1, 26>();
    var var_2 = ~(~max(vec2<u32>(~u_input.a, var_0.c), ~vec2<u32>(var_0.c, u_input.b)));
    return StorageBuffer(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_mult_u32(u_input.b, u_input.b));
    var var_1 = 2147483647i;
    var var_2 = vec3<bool>((-func_1(u_input.c, vec3<bool>(true, false, false), true) << (14006u % 32u)) < u_input.c.x, abs(firstTrailingBit(var_0)) <= 1u, false);
    global0 = array<Struct_1, 19>();
    let var_3 = u_input.b >> (reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 14051u, var_0, var_0) & vec4<u32>(1u, var_0, 93890u, u_input.a), _wgslsmith_add_vec4_u32(min(vec4<u32>(19314u, u_input.b, 108203u, 4294967295u), vec4<u32>(u_input.a, u_input.b, 4294967295u, u_input.a)), min(vec4<u32>(26171u, var_0, 0u, 16976u), vec4<u32>(4294967295u, var_0, 0u, u_input.b))))) % 32u);
    let x = u_input.a;
    s_output = func_2();
}

