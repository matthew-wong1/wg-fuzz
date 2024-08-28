struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
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

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(2147483647i, 1i, 1i), vec3<f32>(-496f, 447f, -745f), 354f, 984f), Struct_1(vec3<i32>(48398i, 11460i, 0i), vec3<f32>(-919f, -1000f, -357f), -1280f, 1000f), Struct_1(vec3<i32>(1i, 41891i, -23704i), vec3<f32>(1346f, -771f, 937f), 1000f, 383f), Struct_1(vec3<i32>(2147483647i, -1i, 19083i), vec3<f32>(1179f, 1000f, 1663f), -994f, 1000f), Struct_1(vec3<i32>(71546i, 1i, 2147483647i), vec3<f32>(909f, 164f, -1469f), -620f, 1176f), Struct_1(vec3<i32>(-31505i, 0i, 2147483647i), vec3<f32>(1872f, -1000f, 344f), 340f, -373f), Struct_1(vec3<i32>(1i, 1i, i32(-2147483648)), vec3<f32>(275f, -1613f, -390f), -1211f, -1157f), Struct_1(vec3<i32>(1i, -1i, 6681i), vec3<f32>(1679f, 1609f, -874f), -213f, -1127f), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -22657i), vec3<f32>(1254f, 715f, 110f), -705f, -192f), Struct_1(vec3<i32>(46880i, 42400i, 27103i), vec3<f32>(-326f, 755f, 726f), -440f, -1197f), Struct_1(vec3<i32>(2147483647i, 1i, -29612i), vec3<f32>(-1255f, -561f, 415f), 1276f, -1132f), Struct_1(vec3<i32>(i32(-2147483648), 24964i, 36267i), vec3<f32>(423f, 888f, -389f), 144f, 455f), Struct_1(vec3<i32>(3035i, -49594i, 0i), vec3<f32>(-339f, 1498f, 1107f), 558f, 1115f), Struct_1(vec3<i32>(-25988i, i32(-2147483648), 2147483647i), vec3<f32>(-1000f, -462f, 805f), -1754f, -759f), Struct_1(vec3<i32>(-1i, 2147483647i, -22756i), vec3<f32>(212f, 825f, 1000f), -1000f, -1629f), Struct_1(vec3<i32>(1i, -42189i, -1i), vec3<f32>(-1000f, 649f, -897f), -847f, -1000f), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), vec3<f32>(1000f, 389f, -396f), 2106f, 1332f), Struct_1(vec3<i32>(1i, i32(-2147483648), 46170i), vec3<f32>(1742f, -1386f, 1226f), 396f, -162f), Struct_1(vec3<i32>(0i, 0i, 1i), vec3<f32>(-173f, 1124f, -682f), -1407f, -197f), Struct_1(vec3<i32>(2147483647i, 55396i, -61183i), vec3<f32>(-192f, 1166f, -130f), -982f, -1738f), Struct_1(vec3<i32>(i32(-2147483648), 1i, 1i), vec3<f32>(1108f, -1740f, -1000f), 2122f, 851f), Struct_1(vec3<i32>(-59878i, 2147483647i, 39038i), vec3<f32>(814f, 429f, -1040f), 654f, 1841f), Struct_1(vec3<i32>(i32(-2147483648), -1373i, 22331i), vec3<f32>(1287f, -118f, -1358f), -1000f, -768f), Struct_1(vec3<i32>(-31140i, 0i, 52719i), vec3<f32>(872f, -167f, -1364f), -1645f, -427f), Struct_1(vec3<i32>(10381i, 14530i, 1i), vec3<f32>(964f, 400f, -1093f), 1399f, 856f), Struct_1(vec3<i32>(-47075i, 2147483647i, -8755i), vec3<f32>(2345f, 1103f, 118f), -288f, -686f), Struct_1(vec3<i32>(0i, 36163i, 2147483647i), vec3<f32>(1000f, 882f, 535f), 1145f, 347f), Struct_1(vec3<i32>(-64434i, 8280i, 2147483647i), vec3<f32>(156f, 116f, -195f), -962f, -677f));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 34422i, 1i), vec3<f32>(400f, -624f, 545f), -342f, 1000f);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-50206i, -18528i, 2147483647i), vec3<f32>(-1187f, 1591f, 439f), -1000f, 390f);

var<private> global3: array<vec4<i32>, 25>;

var<private> global4: array<i32, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(arg_1, (global2.a & vec3<i32>(global1.a.x, -23014i, -2147483647i)) >> (arg_0.zyx % vec3<u32>(32u))) | (-vec3<i32>(-37016i, 20110i, -3274i) ^ -global2.a), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * -651f)))) * -700f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1578f, -2353f, true)) - -1000f)));
    global0 = array<Struct_1, 28>();
    let var_1 = global0[_wgslsmith_index_u32(~(~arg_0.x) | u_input.b, 28u)];
    var var_2 = !vec2<bool>(abs(~arg_2.x) > var_0.a.x, !all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(-var_1.b.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = 1u;
    global4 = array<i32, 6>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.b.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(669f - global1.b.x) + _wgslsmith_div_f32(arg_2.b.x, -309f)), _wgslsmith_f_op_f32(-1530f * _wgslsmith_f_op_f32(select(360f, global2.b.x, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(-global1.c)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, arg_3, 20651u, arg_3), -arg_2.a, global2.a.yy << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), global2.a.x))))), global2.b.x);
    let var_2 = arg_0.yz;
    global1 = Struct_1(global2.a, global1.b, global1.d, _wgslsmith_f_op_f32(abs(-443f)));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(global2.a.x, 0i, arg_0.a.x), _wgslsmith_f_op_vec3_f32(min(global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.x, global1.d, -1513f), global1.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global2.b.x) * arg_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.d, 790f)))))), -354f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, global2.d))));
    let var_1 = select(true, true == (func_2(vec4<bool>(true, true, true, true), _wgslsmith_div_u32(u_input.b, u_input.b), Struct_1(global1.a, global2.b, var_0.b.x, arg_0.d), 10623u) > u_input.b), true);
    let var_2 = u_input.b;
    var var_3 = vec3<i32>(22775i, global4[_wgslsmith_index_u32(0u, 6u)], abs(-(~global1.a.x))) >> (abs(select(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, 1u, 24616u)), vec3<u32>(0u, var_2, u_input.b)), vec3<u32>(~var_2, 93628u, ~1588u), _wgslsmith_div_f32(var_0.c, arg_0.c) >= global1.d)) % vec3<u32>(32u));
    var var_4 = ~var_0.a.x;
    return global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_sub_u32(var_2, firstTrailingBit(u_input.b) & _wgslsmith_add_u32(31189u, u_input.b))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(23265u, 28u)];
    global4 = array<i32, 6>();
    var var_0 = func_1(global0[_wgslsmith_index_u32(~(u_input.b & 27536u), 28u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x));
    var_0 = Struct_1(vec3<i32>(_wgslsmith_add_i32(1i, var_0.a.x), -_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(0u, 25u)] & vec4<i32>(global1.a.x, 58245i, u_input.a, 0i), global3[_wgslsmith_index_u32(~7819u, 25u)]), -1i), global2.b, global2.d, _wgslsmith_f_op_f32(-var_0.c));
    let var_2 = i32(-1i) * -42516i;
    var var_3 = func_1(Struct_1(vec3<i32>(-1i, var_2, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(48375u, 6u)], u_input.a) << ((u_input.b | u_input.b) % 32u)), global2.b, var_0.c, _wgslsmith_f_op_f32(-345f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f - 1000f)))));
    var var_4 = global0[_wgslsmith_index_u32(~select(~(~44598u) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b)), min(~(~u_input.b), _wgslsmith_mod_u32(max(55891u, u_input.b), ~83306u)), false), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, 1742f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1, -349f, true)))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_4.d, global2.c), var_4.d))));
}

