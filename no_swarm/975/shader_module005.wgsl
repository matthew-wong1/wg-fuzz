struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(2147483647i, -6798i, 8063i, i32(-2147483648)), vec3<f32>(-1000f, 1690f, 1286f)), Struct_1(vec4<i32>(-1i, 32710i, 12576i, i32(-2147483648)), vec3<f32>(1031f, -1315f, -1166f)), Struct_1(vec4<i32>(39716i, 30079i, -1592i, 79403i), vec3<f32>(-1376f, -1000f, -703f)), Struct_1(vec4<i32>(30926i, -1i, 29587i, -19265i), vec3<f32>(184f, -1744f, -1934f)), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, -18210i), vec3<f32>(1000f, 1372f, -1194f)), Struct_1(vec4<i32>(-40674i, 1i, 17988i, 2147483647i), vec3<f32>(538f, -561f, 956f)), Struct_1(vec4<i32>(-39983i, 1i, i32(-2147483648), -1i), vec3<f32>(1095f, 1003f, -144f)), Struct_1(vec4<i32>(4244i, 1i, 17052i, i32(-2147483648)), vec3<f32>(-668f, -331f, 774f)), Struct_1(vec4<i32>(1i, -1i, 16481i, 63714i), vec3<f32>(1000f, 147f, 171f)), Struct_1(vec4<i32>(-34159i, 1i, 40988i, -7727i), vec3<f32>(163f, 1000f, -1506f)), Struct_1(vec4<i32>(i32(-2147483648), 60538i, 2147483647i, i32(-2147483648)), vec3<f32>(-404f, -863f, -1000f)), Struct_1(vec4<i32>(6304i, -456i, -1i, -80951i), vec3<f32>(-1060f, -1000f, 129f)), Struct_1(vec4<i32>(1i, 27940i, 1i, 1i), vec3<f32>(-415f, -806f, -231f)), Struct_1(vec4<i32>(2147483647i, -35974i, 2147483647i, -1767i), vec3<f32>(-201f, 202f, 669f)), Struct_1(vec4<i32>(i32(-2147483648), -21175i, -1i, -42126i), vec3<f32>(1003f, 1028f, -933f)), Struct_1(vec4<i32>(-1i, -61629i, -4525i, 2147483647i), vec3<f32>(1411f, 1047f, -558f)), Struct_1(vec4<i32>(11442i, -42305i, 0i, i32(-2147483648)), vec3<f32>(839f, 181f, -487f)), Struct_1(vec4<i32>(-22610i, i32(-2147483648), 22517i, 1i), vec3<f32>(974f, -704f, 555f)), Struct_1(vec4<i32>(1i, 22921i, 15494i, -1i), vec3<f32>(-1234f, -1946f, 744f)), Struct_1(vec4<i32>(-39975i, 1i, 1i, -22026i), vec3<f32>(275f, 1000f, 1000f)), Struct_1(vec4<i32>(-43235i, -1i, 1i, -1i), vec3<f32>(-230f, 311f, 2383f)), Struct_1(vec4<i32>(22205i, -1i, 2147483647i, -1i), vec3<f32>(-1073f, 2163f, 1217f)), Struct_1(vec4<i32>(2147483647i, 75930i, -1i, 61424i), vec3<f32>(760f, -1315f, -3156f)), Struct_1(vec4<i32>(-5479i, 1i, 10933i, 48799i), vec3<f32>(848f, -250f, 304f)), Struct_1(vec4<i32>(-27111i, 5365i, -4362i, 37668i), vec3<f32>(-186f, -1699f, -124f)), Struct_1(vec4<i32>(0i, i32(-2147483648), -21683i, i32(-2147483648)), vec3<f32>(-619f, -615f, -1386f)), Struct_1(vec4<i32>(45013i, -23080i, 2147483647i, 0i), vec3<f32>(-831f, 286f, -729f)), Struct_1(vec4<i32>(-13924i, -31158i, -1i, 13025i), vec3<f32>(476f, -312f, -397f)));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, 1636i, -23948i, 50961i), vec3<f32>(-734f, 217f, 121f));

var<private> global2: array<vec3<bool>, 21>;

var<private> global3: bool = false;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = max(5138i, ~(abs(1i) >> (~u_input.a % 32u))) > global4.a.x;
    return global4.a.x;
}

fn func_1(arg_0: i32) -> f32 {
    global3 = any(global2[_wgslsmith_index_u32(u_input.a, 21u)]);
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(~(-23049i)), 2147483647i), _wgslsmith_add_i32(global4.a.x << (1u % 32u), _wgslsmith_div_i32(arg_0, 1i)) ^ global4.a.x, _wgslsmith_add_i32(func_2(vec2<u32>(15185u, u_input.a)), global4.a.x) ^ (global4.a.x >> (~u_input.a % 32u)), countOneBits(_wgslsmith_clamp_i32(global1.a.x, select(global1.a.x, global1.a.x, false), 65220i))), global1.b);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, -767f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + 321f) + _wgslsmith_f_op_f32(min(-1478f, -712f))))));
    var var_1 = firstTrailingBit(vec2<u32>(u_input.a, u_input.a));
    let var_2 = Struct_1(firstTrailingBit(global1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -811f), -1000f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(760f - var_2.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(trunc(-1200f)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global1 = Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global4.b))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-295f, arg_2.b.x)), _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(trunc(global1.b.x)))));
    global2 = array<vec3<bool>, 21>();
    global2 = array<vec3<bool>, 21>();
    var var_1 = 812f;
    return global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 12348u)), u_input.a, 106780u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(33675u, 110510u, 50455u) % vec3<u32>(32u)), vec3<u32>(16269u, u_input.a, 16975u) >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_1(select(_wgslsmith_sub_vec4_i32(max(global4.a, vec4<i32>(global1.a.x, 0i, 47437i, global4.a.x)), ~vec4<i32>(0i, global4.a.x, global4.a.x, -46145i)), global4.a, 39208u == u_input.a), vec3<f32>(601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_i32(global1.a.x, global4.a.x))))), false, Struct_1(vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(global4.a.zzw, vec3<i32>(-21656i, global4.a.x, global4.a.x)), -(~global4.a.x), -(global1.a.x | global1.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.b - _wgslsmith_f_op_vec3_f32(-global1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, -2043f, global4.b.x) * _wgslsmith_f_op_vec3_f32(-global1.b)))));
    let var_1 = max(_wgslsmith_div_u32(u_input.a, (0u ^ u_input.a) >> (u_input.a % 32u)), _wgslsmith_sub_u32(48356u, select(u_input.a, 4294967295u, true) >> (max(1u, 0u) % 32u))) & u_input.a;
    let var_2 = Struct_1(select(-(~func_3(Struct_1(vec4<i32>(var_0.a.x, 44746i, global1.a.x, 1i), global1.b), false, Struct_1(global4.a, vec3<f32>(1183f, global4.b.x, -772f))).a), global4.a, true), vec3<f32>(global4.b.x, -1000f, func_3(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1452f, 1000f, global4.b.x), vec3<f32>(1311f, global1.b.x, 722f), true))), global1.a.x <= (global4.a.x ^ var_0.a.x), global0[_wgslsmith_index_u32(min(var_1, 4294967295u) | ~0u, 28u)]).b.x));
    var var_3 = abs(var_2.a.x) | 26596i;
    var var_4 = var_0;
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u), var_0.b.x, vec3<u32>(~92526u, 0u, ~(~var_1) | 12641u));
}

