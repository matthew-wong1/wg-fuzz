struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: u32 = 0u;

var<private> global1: Struct_2 = Struct_2(2147483647i, -10604i, Struct_1(vec2<f32>(-849f, 1552f), -245f, vec3<bool>(true, false, true), true, -204f));

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(47010i, 0i, Struct_1(vec2<f32>(746f, 1881f), -1000f, vec3<bool>(false, false, true), false, 323f)), Struct_2(i32(-2147483648), 17359i, Struct_1(vec2<f32>(1613f, 380f), -1432f, vec3<bool>(false, false, true), false, -459f)), Struct_2(-47099i, 28213i, Struct_1(vec2<f32>(-201f, -2007f), 812f, vec3<bool>(true, true, true), false, 1552f)), Struct_2(-12225i, -10919i, Struct_1(vec2<f32>(530f, -298f), -506f, vec3<bool>(true, false, false), false, 343f)), Struct_2(2147483647i, 47182i, Struct_1(vec2<f32>(-1000f, -532f), -1516f, vec3<bool>(false, false, true), false, -189f)), Struct_2(-1i, 0i, Struct_1(vec2<f32>(-1884f, 196f), -1766f, vec3<bool>(false, true, false), true, -476f)), Struct_2(-47081i, 48283i, Struct_1(vec2<f32>(-1097f, -1465f), -312f, vec3<bool>(false, false, true), true, 1080f)), Struct_2(6703i, 18111i, Struct_1(vec2<f32>(1668f, -1616f), 957f, vec3<bool>(true, false, false), false, 381f)), Struct_2(0i, -40655i, Struct_1(vec2<f32>(-207f, -292f), -220f, vec3<bool>(true, true, true), true, 876f)), Struct_2(0i, 27833i, Struct_1(vec2<f32>(1243f, -1485f), -922f, vec3<bool>(true, true, false), false, -630f)), Struct_2(1i, 27004i, Struct_1(vec2<f32>(628f, 499f), 1566f, vec3<bool>(true, false, true), true, -1093f)), Struct_2(3038i, 13954i, Struct_1(vec2<f32>(-408f, 1228f), 635f, vec3<bool>(true, false, true), false, 1000f)), Struct_2(14807i, 644i, Struct_1(vec2<f32>(1316f, 1009f), -716f, vec3<bool>(false, true, false), true, -764f)), Struct_2(1i, 0i, Struct_1(vec2<f32>(-187f, 841f), 1273f, vec3<bool>(true, false, false), false, 631f)), Struct_2(i32(-2147483648), 2147483647i, Struct_1(vec2<f32>(-235f, 1781f), -1037f, vec3<bool>(false, false, false), true, 1951f)), Struct_2(1i, -29604i, Struct_1(vec2<f32>(-312f, 772f), -1266f, vec3<bool>(true, false, false), true, 224f)), Struct_2(1i, 20723i, Struct_1(vec2<f32>(1617f, -420f), -412f, vec3<bool>(true, true, false), true, 895f)), Struct_2(-42003i, -1i, Struct_1(vec2<f32>(411f, 690f), -207f, vec3<bool>(true, false, false), false, 1478f)), Struct_2(-28947i, 22451i, Struct_1(vec2<f32>(-806f, -702f), -307f, vec3<bool>(true, false, true), false, 110f)), Struct_2(-51377i, 53853i, Struct_1(vec2<f32>(824f, 2163f), -755f, vec3<bool>(false, true, true), false, 984f)), Struct_2(-19735i, 2147483647i, Struct_1(vec2<f32>(-1008f, 103f), -1000f, vec3<bool>(false, false, true), true, 634f)), Struct_2(80724i, -29784i, Struct_1(vec2<f32>(1189f, -350f), -1359f, vec3<bool>(true, true, true), false, 398f)), Struct_2(12287i, 1i, Struct_1(vec2<f32>(1522f, -655f), 939f, vec3<bool>(true, true, false), false, -751f)), Struct_2(-13818i, 2147483647i, Struct_1(vec2<f32>(1000f, 599f), -498f, vec3<bool>(true, true, false), false, 329f)), Struct_2(-18870i, 25170i, Struct_1(vec2<f32>(1036f, -392f), -1631f, vec3<bool>(true, true, false), false, 126f)), Struct_2(44203i, -1i, Struct_1(vec2<f32>(2257f, 1065f), -1055f, vec3<bool>(false, false, true), false, -1000f)), Struct_2(1i, 1i, Struct_1(vec2<f32>(713f, 2547f), -634f, vec3<bool>(true, false, false), false, -700f)), Struct_2(-45569i, i32(-2147483648), Struct_1(vec2<f32>(-117f, 1489f), -491f, vec3<bool>(false, true, true), false, -1454f)), Struct_2(4043i, -14220i, Struct_1(vec2<f32>(-982f, 362f), 514f, vec3<bool>(false, true, true), true, 223f)), Struct_2(2147483647i, i32(-2147483648), Struct_1(vec2<f32>(-996f, 895f), -983f, vec3<bool>(false, true, false), false, -1000f)));

var<private> global3: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = countOneBits(abs(select(-vec2<i32>(1i, global1.a), vec2<i32>(countOneBits(-1i), 1i), global1.c.c.x)));
    global2 = array<Struct_2, 30>();
    let var_1 = global1.c;
    let var_2 = Struct_2(-(~(~_wgslsmith_sub_i32(16109i, 35993i))), global1.a, Struct_1(vec2<f32>(var_1.b, var_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(869f * _wgslsmith_f_op_f32(-global1.c.b)))), !vec3<bool>(global1.c.c.x, var_1.d, true), !select(true, !global1.c.c.x, global1.c.d || true), _wgslsmith_f_op_f32(global1.c.a.x * 595f)));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)), 570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1083f, global1.c.e) * global1.c.e)), 1818f)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(max(u_input.c.x, max(38079u, u_input.a.x)))), 30u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    global3 = firstLeadingBit(select(-17927i, var_0.b, any(var_0.c.c)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(177f, global1.c.a.x)) - -1493f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_0.c.e), var_0.c.e) + _wgslsmith_f_op_vec4_f32(func_3()).x), any(select(select(vec3<bool>(var_0.c.d, global1.c.d, var_0.c.d), var_0.c.c, vec3<bool>(global1.c.c.x, true, var_0.c.d)), select(var_0.c.c, vec3<bool>(global1.c.d, false, global1.c.d), var_0.c.c), var_0.c.c)))), -731f, _wgslsmith_f_op_f32(-var_1.x), var_1.x);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1220f, 387f) + _wgslsmith_f_op_f32(round(669f)))))));
    return Struct_1(vec2<f32>(global1.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.e * var_2))))), vec3<bool>(false, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(103649u, 1u), min(arg_0.x, arg_0.x), _wgslsmith_div_u32(66252u, u_input.a.x)) >= arg_0.x, any(!select(var_0.c.c.zy, vec2<bool>(var_0.c.c.x, false), var_0.c.c.x))), -489f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-861f)), _wgslsmith_f_op_f32(step(-221f, 975f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - var_2));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = func_2(vec4<u32>(u_input.c.x, ~57797u, ~(4294967295u >> (u_input.c.x % 32u)), u_input.a.x));
    var var_1 = global1.c;
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, global1.a, 0i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(66030i, arg_0, 5403i)), ~vec3<i32>(12586i, u_input.d, 2147483647i), ~vec3<i32>(20682i, -33964i, u_input.d))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 50803i, u_input.b), ~vec3<i32>(arg_0, u_input.b, u_input.b))), arg_0, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1114f - var_1.a.x))), _wgslsmith_f_op_f32(-global1.c.e)), var_0.a.x, !global1.c.c, any(select(vec4<bool>(global1.c.c.x, global1.c.d, false, false), !vec4<bool>(global1.c.d, var_0.c.x, true, false), !vec4<bool>(false, var_1.d, true, true))), -208f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(select(878f, var_0.b, false))))) - _wgslsmith_div_f32(global1.c.a.x, _wgslsmith_f_op_f32(min(global1.c.a.x, _wgslsmith_f_op_f32(-var_1.e))))), !vec3<bool>(select(false, var_1.d & global1.c.c.x, global1.c.c.x), false, !(-653f == global1.c.e)), true, 574f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 170f, !vec3<bool>(!any(vec2<bool>(true, var_0.d)), all(var_2.c.xx), false), false, _wgslsmith_f_op_f32(1411f * var_1.a.x));
    return vec4<i32>(0i, i32(-1i) * -2147483647i, arg_0, ~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.b, -23133i, -51627i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1155i, 60193i, 22144i, u_input.b), vec4<i32>(arg_0, global1.a, -1i, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global1.c.b, global1.c.b);
    global3 = ~u_input.d;
    var var_1 = 0i;
    var var_2 = ~_wgslsmith_add_i32(global1.b, _wgslsmith_add_i32(u_input.d, -u_input.d));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-10720i, u_input.b, _wgslsmith_clamp_i32(global1.a, _wgslsmith_mult_i32(global1.b, global1.b), global1.a) << (_wgslsmith_div_u32(~4294967295u, 1u) % 32u), select(~1i, max(0i, u_input.b), global1.c.c.x)), select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b, 10100i, global1.b, global1.b), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -9948i, 1i, global1.a), vec4<i32>(global1.a, u_input.d, global1.b, 2147483647i)), firstLeadingBit(vec4<i32>(global1.b, -2147483647i, u_input.b, 0i))), vec4<i32>(global1.a, u_input.d, global1.b, global1.b) ^ ~vec4<i32>(-7629i, global1.b, global1.b, 1i)), vec4<i32>(firstTrailingBit(global1.b), -66267i, ~global1.a, u_input.b), all(select(!vec4<bool>(true, global1.c.c.x, global1.c.d, false), vec4<bool>(global1.c.d, true, false, false), !vec4<bool>(global1.c.d, false, true, false)))), func_1(global1.a & global1.a));
    let var_4 = ~(-1i);
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-464f, global1.c.a.x)))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.c.a)))), -1516f, vec3<bool>(true, func_2(vec4<u32>(u_input.c.x, u_input.a.x, 1u, _wgslsmith_div_u32(u_input.c.x, 1u))).c.x, global1.c.d), !(true || all(!global1.c.c)), 1000f);
    var var_6 = vec2<u32>(31841u, 0u);
    var var_7 = abs(vec4<u32>(_wgslsmith_clamp_u32((var_6.x & var_6.x) << (_wgslsmith_clamp_u32(var_6.x, var_6.x, 0u) % 32u), u_input.a.x, 0u), abs(var_6.x << (min(var_6.x, u_input.a.x) % 32u)), u_input.a.x, countOneBits(43225u)));
    let x = u_input.a;
    s_output = StorageBuffer(-12947i);
}

