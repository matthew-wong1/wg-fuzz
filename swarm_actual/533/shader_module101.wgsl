struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-1716f, 450f, -950f), vec3<f32>(-2556f, 1555f, -480f), vec3<f32>(-2092f, -707f, -1589f), vec3<f32>(1259f, 590f, 1001f), vec3<f32>(218f, -790f, -884f), vec3<f32>(213f, -1483f, 1663f), vec3<f32>(-1000f, 1244f, -1013f), vec3<f32>(-346f, -1096f, -1000f), vec3<f32>(-1398f, -1003f, -448f), vec3<f32>(-805f, -1644f, 368f), vec3<f32>(1814f, 1453f, 300f), vec3<f32>(-1376f, -376f, -187f), vec3<f32>(246f, -2348f, 578f), vec3<f32>(-961f, -539f, 1080f), vec3<f32>(545f, 406f, -649f), vec3<f32>(1000f, -882f, -949f), vec3<f32>(-313f, 1326f, -1168f), vec3<f32>(804f, -1784f, 1000f), vec3<f32>(-893f, 381f, -1000f), vec3<f32>(1426f, -692f, -1952f), vec3<f32>(1532f, 102f, 2483f), vec3<f32>(1591f, -1611f, -174f), vec3<f32>(-1002f, 1718f, -1123f), vec3<f32>(-385f, -2108f, -341f), vec3<f32>(290f, 477f, 1000f), vec3<f32>(-711f, 507f, -1205f));

var<private> global1: array<vec3<i32>, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = ~1i;
    var var_1 = Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(var_0 >= var_0, all(vec3<bool>(true, true, false)), false)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), true)), var_0);
    global0 = array<vec3<f32>, 26>();
    global1 = array<vec3<i32>, 21>();
    var var_2 = Struct_3(Struct_2(vec3<u32>(~(0u & u_input.a), firstTrailingBit(u_input.a & u_input.b.x), ~(~4294967295u)), select(var_1.a, vec3<bool>(var_1.a.x & var_1.a.x, all(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), true), vec3<bool>(true, true, var_1.a.x)), Struct_1(var_1.a, -(~(-27952i)))), vec2<i32>(2147483647i & var_1.b, 0i));
    return 1i;
}

fn func_4(arg_0: u32, arg_1: i32) -> vec2<u32> {
    global0 = array<vec3<f32>, 26>();
    let var_0 = u_input.b.x;
    global1 = array<vec3<i32>, 21>();
    global0 = array<vec3<f32>, 26>();
    global0 = array<vec3<f32>, 26>();
    return u_input.b.yy;
}

fn func_2() -> f32 {
    let var_0 = vec2<bool>(false, all(vec3<bool>(true, true, true)));
    var var_1 = ~u_input.b;
    let var_2 = func_4(var_1.x, _wgslsmith_mult_i32(-2147483647i, i32(-1i) * -func_3()));
    return _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-361f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1388f) * _wgslsmith_div_f32(717f, -700f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(337f, 1169f, false)))))));
}

fn func_1() -> i32 {
    global1 = array<vec3<i32>, 21>();
    var var_0 = false;
    var var_1 = true;
    let var_2 = ~(-firstLeadingBit(-12905i));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-840f, _wgslsmith_f_op_f32(func_2())));
    return var_2 >> (51995u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-909f * _wgslsmith_f_op_f32(abs(-1530f))), _wgslsmith_f_op_f32(-257f * 208f)))));
    global1 = array<vec3<i32>, 21>();
    let var_1 = -vec2<i32>(min(~5948i, 6041i), func_1());
    var var_2 = Struct_3(Struct_2(u_input.b.yyx, vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, true, true), (var_1.x & -2147483647i) & ~(-22024i))), var_1);
    global1 = array<vec3<i32>, 21>();
    var var_3 = max(countOneBits(var_1.x), -31232i & (firstTrailingBit(1i) & firstTrailingBit(select(-1i, 0i, true))));
    var var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(40368u, _wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, 23960u))), 81762u), ~(~(~vec2<u32>(56784u, 4294967295u)))));
}

