struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<i32>(638i, -28181i, -603i, 1i), vec2<f32>(-326f, -857f), 645f), Struct_1(vec4<i32>(-66596i, 1i, 2349i, 0i), vec2<f32>(-268f, 249f), 437f), Struct_1(vec4<i32>(-43699i, 53422i, -1i, -28690i), vec2<f32>(-1516f, -2351f), 202f), Struct_1(vec4<i32>(0i, -10840i, 4366i, 35599i), vec2<f32>(-328f, 157f), -799f), Struct_1(vec4<i32>(0i, -37101i, 2147483647i, 0i), vec2<f32>(-562f, -1699f), -1310f), Struct_1(vec4<i32>(-12261i, 40116i, -26624i, 0i), vec2<f32>(851f, 648f), 562f), Struct_1(vec4<i32>(27023i, 2147483647i, 0i, -27025i), vec2<f32>(-1830f, -2311f), -1341f), Struct_1(vec4<i32>(i32(-2147483648), -23225i, -36209i, 15758i), vec2<f32>(626f, 1223f), -412f), Struct_1(vec4<i32>(42303i, -61426i, -28187i, 13355i), vec2<f32>(-646f, 1475f), 1280f), Struct_1(vec4<i32>(-21496i, -1i, 11922i, -1i), vec2<f32>(1347f, 347f), 1815f), Struct_1(vec4<i32>(22207i, 1i, 1i, -1i), vec2<f32>(495f, -943f), 378f), Struct_1(vec4<i32>(15586i, -4384i, 12162i, 1i), vec2<f32>(-1691f, -734f), 185f), Struct_1(vec4<i32>(2147483647i, 2147483647i, -52516i, 4315i), vec2<f32>(-2232f, 256f), -550f), Struct_1(vec4<i32>(-4437i, i32(-2147483648), 0i, i32(-2147483648)), vec2<f32>(847f, 216f), -694f), Struct_1(vec4<i32>(2147483647i, -1i, 29568i, -1i), vec2<f32>(1182f, 1468f), -586f), Struct_1(vec4<i32>(i32(-2147483648), 24226i, -13350i, 1i), vec2<f32>(-731f, -116f), 643f), Struct_1(vec4<i32>(i32(-2147483648), 1i, 13962i, 2147483647i), vec2<f32>(-930f, 1000f), 1532f), Struct_1(vec4<i32>(20236i, -1i, 2147483647i, -27122i), vec2<f32>(205f, 1000f), -982f), Struct_1(vec4<i32>(-65705i, 2147483647i, -1i, -8149i), vec2<f32>(-773f, 432f), 1844f), Struct_1(vec4<i32>(-2298i, i32(-2147483648), -22900i, -66127i), vec2<f32>(-1000f, -1240f), 126f), Struct_1(vec4<i32>(-45217i, 34508i, 24485i, 2147483647i), vec2<f32>(-330f, 1049f), 904f), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), -54665i), vec2<f32>(2073f, 923f), -246f), Struct_1(vec4<i32>(-12219i, 13980i, 0i, 2147483647i), vec2<f32>(325f, -100f), 2062f), Struct_1(vec4<i32>(37831i, 1i, -6918i, -1i), vec2<f32>(1103f, -212f), 1525f), Struct_1(vec4<i32>(2220i, -1i, 1i, -1i), vec2<f32>(-1075f, -1517f), -1033f), Struct_1(vec4<i32>(-9532i, 29120i, 0i, -1i), vec2<f32>(-1258f, -1817f), 861f), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, i32(-2147483648)), vec2<f32>(1253f, -599f), 266f), Struct_1(vec4<i32>(51931i, 1i, 0i, 10867i), vec2<f32>(635f, -1251f), 258f), Struct_1(vec4<i32>(-1i, 42466i, 1i, -47485i), vec2<f32>(-1548f, -3441f), 281f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = firstTrailingBit(countOneBits(max(~vec4<i32>(-2147483647i, 8367i, -1i, -2147483647i), vec4<i32>(arg_0, arg_0, arg_0, arg_0))) >> (~abs(vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
    var var_1 = Struct_1(reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, 20230i, var_0.x, 26522i), _wgslsmith_mult_vec4_i32(-var_0, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-507f, 2363f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, 1123f)), vec2<f32>(399f, -1444f), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-804f, 470f), vec2<f32>(173f, -201f))))))), -242f);
    var_1 = global1[_wgslsmith_index_u32(~arg_1, 29u)];
    return 1u << (~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, u_input.a.x, global0.x)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.a.x, 7534u, arg_1, 1u), vec4<u32>(54733u, 1u, global0.x, global0.x)), vec4<u32>(u_input.b.x, global0.x, arg_1, global0.x))) % 32u);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 29>();
    var var_0 = vec3<u32>(global0.x, ~u_input.b.x, global0.x);
    let var_1 = vec4<u32>(func_3(~abs(~(-1i)), 4294967295u), _wgslsmith_add_u32(~119u, ~abs(~0u)), ~4294967295u, ~u_input.b.x);
    global0 = vec3<u32>(~global0.x, 3077u, _wgslsmith_div_u32(global0.x, ~global0.x)) >> (var_1.wwy % vec3<u32>(32u));
    let var_2 = true;
    return Struct_1(abs(vec4<i32>(1i, 1i, 1i, 1i) << (var_1 % vec4<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(383f, -1973f), -1024f), _wgslsmith_f_op_f32(f32(-1f) * -302f));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = u_input.a.x ^ global0.x;
    let var_1 = -240f;
    let var_2 = func_2();
    var var_3 = arg_1.b;
    let var_4 = var_2;
    return vec4<u32>(global0.x, 19605u, ~(~_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, global0.x))) >> (~u_input.b.x % 32u), _wgslsmith_mult_u32(1u >> (reverseBits(min(0u, 33642u)) % 32u), func_3(firstLeadingBit(i32(-1i) * -1i), _wgslsmith_div_u32(~global0.x, ~0u))));
}

fn func_1() -> vec3<bool> {
    var var_0 = vec3<i32>(~0i << (global0.x % 32u), -2147483647i, _wgslsmith_add_i32(~(-79902i), select(1i, -52453i, true))) << (u_input.a % vec3<u32>(32u));
    var var_1 = vec2<f32>(2210f, _wgslsmith_f_op_f32(f32(-1f) * -1057f));
    var var_2 = vec4<u32>(min(19982u, firstTrailingBit(1u)), ~u_input.b.x, ~1u, global0.x);
    var_2 = func_4(_wgslsmith_mult_u32(~(~0u), ~(~var_2.x)) != 17642u, func_2(), select(vec3<i32>(-(var_0.x ^ 19965i), -2147483647i, -(~var_0.x)), vec3<i32>(1i, 1i, max(var_0.x, 1i)) ^ vec3<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(var_0.x, var_0.x), _wgslsmith_mult_i32(-28970i, 2845i)), false));
    global0 = ~(~(~var_2.ywz) & firstTrailingBit(firstTrailingBit(vec3<u32>(96865u, u_input.b.x, global0.x)))) | ~vec3<u32>(_wgslsmith_dot_vec2_u32(global0.yy >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u)), vec2<u32>(var_2.x, 4294967295u)), ~(~var_2.x), 2335u);
    return select(select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, var_1.x != var_1.x, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, true, false)), var_1.x == -927f, true), !any(vec3<bool>(false, true, true))), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), !all(vec3<bool>(true, true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    var var_0 = ~(-_wgslsmith_clamp_i32(-2147483647i, -(~(-1i)), 0i));
    global1 = array<Struct_1, 29>();
    var var_1 = true;
    var var_2 = func_1();
    global0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(func_4(false, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(552u, u_input.a.x), 29u)], vec3<i32>(-51606i, -4332i, -1i)).ywy, vec3<u32>(global0.x >> (global0.x % 32u), _wgslsmith_clamp_u32(global0.x, global0.x, u_input.b.x), ~4294967295u))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 66377u, 7001u) << (u_input.b % vec3<u32>(32u)), abs(u_input.b))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, ~(~u_input.b.x)), 29u)];
    global1 = array<Struct_1, 29>();
    let var_4 = Struct_1(vec4<i32>(-var_3.a.x, var_3.a.x, var_3.a.x, 1i & firstTrailingBit(var_3.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.b.x, 708f)) * _wgslsmith_f_op_f32(var_3.b.x - var_3.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x * var_3.b.x), _wgslsmith_f_op_f32(floor(-228f)), -745f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1087f, var_4.c, var_3.c))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(717f, 154f, var_4.b.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b.x, -539f, var_3.b.x) - vec3<f32>(-1853f, -200f, 1545f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, var_4.b.x, 1133f)))), any(vec2<bool>(var_2.x != false, var_2.x)))), ~4294967295u, -(~57922i | _wgslsmith_sub_i32(~(-31470i), select(1i, 74078i, var_2.x))), vec2<i32>(_wgslsmith_clamp_i32(var_3.a.x, 13525i, 0i), _wgslsmith_dot_vec3_i32(~(-var_3.a.zwz), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_4.a.x, -13080i) << (vec3<u32>(4294967295u, global0.x, 0u) % vec3<u32>(32u)), vec3<i32>(-5033i, -2422i, 2147483647i)))));
}

