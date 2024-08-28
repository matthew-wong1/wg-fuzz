struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: f32 = -425f;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, 528f, 39331u, true, vec4<f32>(1223f, 164f, -1000f, -762f)), Struct_1(-6891i, -639f, 4294967295u, true, vec4<f32>(1185f, -1665f, 1995f, 368f)), Struct_1(33291i, 1000f, 4294967295u, true, vec4<f32>(-773f, 936f, -1200f, -1000f)), Struct_1(-22377i, 217f, 49496u, true, vec4<f32>(-1893f, -491f, 231f, 334f)), Struct_1(-32945i, 148f, 4697u, true, vec4<f32>(269f, 109f, 2094f, -1078f)), Struct_1(-1i, -707f, 52272u, true, vec4<f32>(-2017f, 519f, 391f, -458f)), Struct_1(1i, -1710f, 0u, false, vec4<f32>(-363f, 875f, 1750f, -262f)), Struct_1(-8219i, 214f, 57850u, false, vec4<f32>(172f, -956f, 865f, -261f)), Struct_1(i32(-2147483648), 1502f, 4294967295u, false, vec4<f32>(295f, 524f, -1180f, 896f)), Struct_1(-1i, -2504f, 1u, true, vec4<f32>(483f, -703f, -126f, -296f)), Struct_1(1i, 1142f, 32682u, false, vec4<f32>(149f, 301f, 786f, 773f)), Struct_1(11982i, -343f, 40252u, true, vec4<f32>(1313f, -703f, 1826f, 485f)), Struct_1(0i, 734f, 0u, false, vec4<f32>(340f, -748f, -239f, -1153f)), Struct_1(37294i, -1681f, 1u, false, vec4<f32>(-1476f, -551f, -1091f, -1062f)), Struct_1(1i, 574f, 4294967295u, true, vec4<f32>(1000f, -444f, 1000f, 1097f)), Struct_1(27967i, 570f, 42981u, true, vec4<f32>(-251f, -650f, -1166f, 1977f)), Struct_1(-1i, 1000f, 4294967295u, true, vec4<f32>(-196f, -1000f, 1159f, -121f)), Struct_1(-1i, -754f, 4294967295u, false, vec4<f32>(1218f, 566f, 160f, 930f)), Struct_1(19505i, -257f, 110041u, true, vec4<f32>(226f, -147f, 1211f, -617f)), Struct_1(1i, -1135f, 0u, true, vec4<f32>(-1468f, -232f, 735f, 313f)), Struct_1(-11226i, -560f, 1u, false, vec4<f32>(905f, 258f, -850f, 2446f)), Struct_1(-41722i, -1685f, 4294967295u, false, vec4<f32>(-229f, 581f, -1690f, 316f)), Struct_1(-34850i, -959f, 18447u, false, vec4<f32>(-1115f, 339f, 878f, 327f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<u32> {
    global0 = array<Struct_1, 13>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 23u)];
    global3 = array<Struct_1, 23>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 13u)];
    var var_2 = reverseBits(1i);
    return abs(max(vec2<u32>(var_0.c, u_input.a), ~(~(~vec2<u32>(var_1.c, 1u)))));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global2 = array<Struct_2, 26>();
    var var_0 = func_3();
    var var_1 = -66294i;
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c >> (u_input.a % 32u), abs(~u_input.a), 13777u << (1u % 32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, 3846u), vec3<u32>(arg_0.c, u_input.a, arg_0.c)), ~vec3<u32>(0u, 5413u, arg_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, arg_0.b, 1582f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(670f, 313f, 638f) * arg_0.e.ywy))));
    var var_3 = var_0.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.e.zw, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_0.b), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-318f, -723f), arg_0.e.zy))))) * var_2.b.yy) + var_2.b.xz);
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = vec2<f32>(116f, _wgslsmith_f_op_f32(trunc(arg_0.b.x)));
    var var_1 = false;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_mult_i32(~2147483647i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, 1858f))), 34082u, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1016f, arg_0.b.x, 1976f, 653f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, var_0.x, -1243f, -1459f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    global3 = array<Struct_1, 23>();
    let var_0 = 12265u;
    let var_1 = Struct_2(u_input.a, vec3<f32>(-769f, -1049f, arg_1.b));
    var var_2 = global3[_wgslsmith_index_u32(var_1.a, 23u)];
    global2 = array<Struct_2, 26>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 26u)];
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(43765u, ~(~(var_0.a >> (var_0.a % 32u))), ~(~(~u_input.a))), ~vec3<u32>(34630u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 17771u, 4294967295u)), _wgslsmith_mult_u32(~4294967295u, var_0.a & var_0.a)));
    var var_2 = var_0.b.x;
    global3 = array<Struct_1, 23>();
    let var_3 = Struct_1(func_4(firstLeadingBit(var_1), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -16824i), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(func_1(Struct_2(u_input.a, vec3<f32>(var_0.b.x, var_0.b.x, -1988f)))), ~_wgslsmith_div_u32(var_0.a, 86927u), any(vec2<bool>(false, true)), _wgslsmith_div_vec4_f32(vec4<f32>(684f, -171f, 1763f, var_0.b.x), vec4<f32>(-183f, var_0.b.x, 439f, 224f)))), _wgslsmith_f_op_vec2_f32(func_2(global3[_wgslsmith_index_u32(~select(u_input.a, ~0u, true), 23u)])).x, ~u_input.a, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-770f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, var_0.b.x, -692f, 170f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, -927f, -403f, 2348f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.e.x))))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(func_3().x, _wgslsmith_clamp_u32(u_input.a, 0u, var_0.a), 1u, u_input.a), vec4<u32>(~var_3.c, ~var_1.x, _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_1.x, u_input.a, 44797u)), 41410u))));
}

