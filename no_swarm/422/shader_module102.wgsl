struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(28267u, 0u);

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-807f, -1441f, -1000f, -334f), vec4<f32>(957f, -2073f, 1492f, 301f), vec4<f32>(343f, -258f, -487f, -701f), vec4<f32>(-280f, 1124f, 699f, -241f), vec4<f32>(-1450f, 1633f, -443f, 1035f), vec4<f32>(-1441f, -358f, 1010f, -1099f), vec4<f32>(1267f, 2118f, -693f, -218f), vec4<f32>(-1363f, -676f, -461f, 1372f), vec4<f32>(-2308f, 322f, -1000f, -1088f), vec4<f32>(-633f, -220f, -301f, 146f), vec4<f32>(-1000f, 1830f, -587f, 1351f), vec4<f32>(-1234f, 453f, 191f, 1692f), vec4<f32>(-530f, 910f, -3401f, 1294f), vec4<f32>(-523f, -119f, 335f, 441f), vec4<f32>(316f, -1000f, 767f, 1393f), vec4<f32>(543f, -2321f, 1000f, 626f), vec4<f32>(-246f, -757f, 1563f, -3424f), vec4<f32>(1736f, 168f, -1060f, 1220f), vec4<f32>(1000f, -816f, 195f, -1054f), vec4<f32>(-144f, 910f, 181f, -467f), vec4<f32>(-1011f, -387f, -723f, -1000f), vec4<f32>(-1065f, -961f, -479f, 874f), vec4<f32>(343f, -612f, -1501f, -417f), vec4<f32>(-297f, -225f, -971f, -686f), vec4<f32>(1000f, -1232f, 2197f, -1011f), vec4<f32>(493f, -998f, 185f, 2505f), vec4<f32>(-1896f, -451f, 1136f, -1170f), vec4<f32>(174f, 834f, -410f, 613f), vec4<f32>(220f, 2386f, -548f, -423f), vec4<f32>(3107f, -1030f, -749f, 434f), vec4<f32>(-232f, 1100f, -288f, -1400f));

var<private> global2: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = vec4<i32>(~(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) << (~arg_0.b % 32u)), 13583i, i32(-1i) * -21015i, u_input.c);
    let var_1 = reverseBits(_wgslsmith_div_u32(~(~10794u), ~global0.x));
    var var_2 = arg_0;
    let var_3 = vec2<bool>(true || all(arg_1), true);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_f_op_f32(1f + 1667f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))), arg_1.ywx, !all(select(arg_0.a, vec2<bool>(true, true), vec2<bool>(arg_0.a.x, var_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1683f, arg_2.x, -1000f))) - vec3<f32>(arg_2.x, -736f, -328f)))), vec3<i32>(reverseBits(-_wgslsmith_clamp_i32(u_input.b.x, -2752i, 3112i)), _wgslsmith_dot_vec2_i32(min(select(var_0.wy, vec2<i32>(u_input.c, -1i), var_2.a), vec2<i32>(u_input.b.x, var_0.x)), u_input.b.xy), reverseBits(~u_input.b.x)));
    return !select(arg_0.a, select(select(select(var_3, arg_1.wz, arg_0.a.x), !var_2.a, vec2<bool>(false, var_3.x)), vec2<bool>(true, true), arg_0.a), arg_1.zw);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_2(vec2<bool>(true, true), 7921u ^ (4294967295u ^ _wgslsmith_div_u32(u_input.e & 21237u, 0u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)])));
    var var_2 = func_3(Struct_2(!var_0.a, (global0.x & 6003u) >> (~firstLeadingBit(68971u) % 32u)), select(!vec4<bool>(!var_0.a.x, var_0.a.x, var_0.a.x, u_input.c >= -1i), vec4<bool>(true, !var_0.a.x, !var_0.a.x, var_0.a.x), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(var_1.wy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.wy)) * vec2<f32>(345f, -1550f))))));
    let var_3 = Struct_2(func_3(Struct_2(!select(vec2<bool>(var_0.a.x, true), var_0.a, true), u_input.d.x), select(select(select(vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_2.x, true), vec4<bool>(var_2.x, false, false, var_2.x)), select(vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, true, true, var_2.x), vec4<bool>(var_2.x, false, false, var_0.a.x)), vec4<bool>(true, var_2.x, var_2.x, var_2.x)), vec4<bool>(false, var_2.x, false, var_0.a.x || true), func_3(Struct_2(vec2<bool>(false, true), u_input.d.x), vec4<bool>(var_0.a.x, var_0.a.x, true, true), var_1.zz).x | any(vec3<bool>(false, true, var_2.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(875f, var_1.x) * var_1.yz)))), _wgslsmith_dot_vec3_u32(u_input.d.yxz, vec3<u32>(~1u, u_input.a, 88913u)) | ~abs(_wgslsmith_mod_u32(4294967295u, u_input.d.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, var_1.x, var_1.x, 2509f), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(65515u, 31u)]))), global1[_wgslsmith_index_u32(4294967295u, 31u)], vec4<bool>(!var_0.a.x, true, true, true))) * _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_0.b, 31u)]))));
    return 1156f;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = 301u;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)))));
    let var_3 = select(func_3(Struct_2(select(func_3(Struct_2(vec2<bool>(false, false), global0.x), vec4<bool>(true, true, true, true), vec2<f32>(var_2.x, var_2.x)), vec2<bool>(true, true), vec2<bool>(true, true)), ~1u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))).x, !(!all(vec2<bool>(false, false))), false);
    var_1 = var_3;
    return Struct_2(vec2<bool>(any(select(select(vec4<bool>(var_3, true, true, var_3), vec4<bool>(true, var_3, var_3, var_3), var_3), !vec4<bool>(false, false, var_3, true), var_3 && true)), all(!select(vec4<bool>(true, false, var_3, var_3), vec4<bool>(var_3, var_3, false, var_3), vec4<bool>(false, false, var_3, var_3)))), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(firstTrailingBit(~u_input.d.x), countOneBits(global0.x) >> (~global0.x % 32u), 0u, min(_wgslsmith_clamp_u32(1u, 65948u, u_input.a), _wgslsmith_sub_u32(45245u, global0.x)))));
}

fn func_1() -> u32 {
    var var_0 = true;
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(286f, -125f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), 398f))), -vec4<i32>(-countOneBits(-35009i), _wgslsmith_dot_vec4_i32(u_input.b & u_input.b, -u_input.b), 0i, u_input.b.x));
    let var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(select(u_input.b.yx << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, 4294967295u), vec2<u32>(u_input.a, 30862u)) % vec2<u32>(32u)), -vec2<i32>(42056i, u_input.b.x) & abs(u_input.b.zw), var_1.a.x)), vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-37535i, u_input.c, 58206i) << (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u)), u_input.b.yxz)));
    let var_3 = global1[_wgslsmith_index_u32(37764u, 31u)];
    let var_4 = _wgslsmith_clamp_u32(u_input.a << (countOneBits(global0.x) % 32u), 0u, abs(global0.x));
    return ~min(1u, ~abs(~var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_div_u32(func_1(), u_input.a), abs(~34249u) << (countOneBits(u_input.d.x) % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-778f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-735f))))), _wgslsmith_f_op_f32(f32(-1f) * -213f));
    let var_2 = _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.b.xzz), vec3<i32>(-_wgslsmith_sub_i32(-54675i, 12702i), u_input.c, _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), vec4<i32>(u_input.c, -4825i, u_input.c, u_input.c))) ^ firstTrailingBit(firstLeadingBit(-u_input.b.xxx)));
    var var_3 = func_4(776f, vec4<i32>(firstTrailingBit(abs(var_2.x)), -1i, min(1i, _wgslsmith_mod_i32(~var_2.x, min(60682i, u_input.c))), _wgslsmith_div_i32(var_2.x, var_2.x)));
    var var_4 = var_3.b;
    var var_5 = u_input.b.x;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]))), global1[_wgslsmith_index_u32(max(1u, u_input.a), 31u)]), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(var_3.b, global0.x), _wgslsmith_mod_u32(0u, u_input.e)), 31u)] - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_vec4_f32(exp2(global1[_wgslsmith_index_u32(u_input.a, 31u)])))), false)));
    let var_7 = Struct_2(!vec2<bool>(var_3.a.x, var_3.a.x), 32556u);
    let x = u_input.a;
    s_output = StorageBuffer(550f, -vec4<i32>(select(u_input.b.x, 2147483647i, true) >> ((var_3.b ^ global0.x) % 32u), ~(-49801i), -2147483647i, -17220i));
}

