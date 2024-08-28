struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(4294967295u, vec2<bool>(true, false), vec2<u32>(0u, 1u), vec4<f32>(-430f, 145f, -900f, 202f), -766f), Struct_1(1u, vec2<bool>(true, false), vec2<u32>(4294967295u, 52942u), vec4<f32>(1335f, -496f, 642f, -1017f), -1007f), Struct_1(17171u, vec2<bool>(false, true), vec2<u32>(1u, 9439u), vec4<f32>(636f, 946f, 1709f, -451f), -542f), Struct_1(4294967295u, vec2<bool>(true, true), vec2<u32>(4294967295u, 120794u), vec4<f32>(-949f, 927f, 465f, 414f), -1119f), Struct_1(29037u, vec2<bool>(false, true), vec2<u32>(0u, 13486u), vec4<f32>(1539f, 133f, 1698f, -1000f), 1393f), Struct_1(0u, vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(277f, -896f, 3192f, 1000f), -497f), Struct_1(0u, vec2<bool>(true, true), vec2<u32>(4294967295u, 10647u), vec4<f32>(-1396f, 1157f, 1003f, -266f), -457f), Struct_1(4294967295u, vec2<bool>(true, true), vec2<u32>(53017u, 22007u), vec4<f32>(419f, -373f, -1098f, -1000f), 612f), Struct_1(28692u, vec2<bool>(true, true), vec2<u32>(4184u, 1u), vec4<f32>(640f, -2294f, 420f, 606f), -1647f), Struct_1(29218u, vec2<bool>(false, false), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(836f, -1681f, 976f, 342f), 1640f), Struct_1(12538u, vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-452f, 819f, 508f, 2742f), -863f), Struct_1(4250u, vec2<bool>(true, true), vec2<u32>(1u, 47686u), vec4<f32>(565f, -679f, -489f, 382f), -379f), Struct_1(14049u, vec2<bool>(false, true), vec2<u32>(0u, 1u), vec4<f32>(726f, 710f, -372f, -1084f), 813f), Struct_1(9304u, vec2<bool>(true, false), vec2<u32>(38074u, 0u), vec4<f32>(362f, 841f, 143f, 200f), -765f), Struct_1(0u, vec2<bool>(false, true), vec2<u32>(1u, 0u), vec4<f32>(1580f, 148f, 854f, -552f), -2501f), Struct_1(80975u, vec2<bool>(false, false), vec2<u32>(0u, 4294967295u), vec4<f32>(-470f, -1271f, -1172f, -1115f), 370f), Struct_1(54466u, vec2<bool>(true, false), vec2<u32>(0u, 10432u), vec4<f32>(-752f, -834f, 2220f, -1000f), 755f), Struct_1(1u, vec2<bool>(true, true), vec2<u32>(1u, 16212u), vec4<f32>(-419f, -1202f, 1042f, -1000f), -1920f), Struct_1(28073u, vec2<bool>(true, true), vec2<u32>(17806u, 1u), vec4<f32>(-1220f, -1006f, 106f, 604f), -1000f), Struct_1(1u, vec2<bool>(true, false), vec2<u32>(4158u, 1u), vec4<f32>(-541f, -581f, 436f, 1000f), 1000f), Struct_1(9879u, vec2<bool>(false, false), vec2<u32>(40748u, 1u), vec4<f32>(243f, -244f, -775f, -1399f), -551f), Struct_1(45813u, vec2<bool>(true, false), vec2<u32>(1u, 1u), vec4<f32>(-865f, 660f, -625f, 1000f), -303f), Struct_1(115615u, vec2<bool>(true, true), vec2<u32>(1u, 72523u), vec4<f32>(805f, -551f, 435f, -1253f), 947f), Struct_1(74562u, vec2<bool>(true, true), vec2<u32>(4294967295u, 13914u), vec4<f32>(667f, -628f, -1094f, 253f), 805f), Struct_1(502u, vec2<bool>(false, true), vec2<u32>(53241u, 16900u), vec4<f32>(550f, 2005f, 118f, 1467f), 1331f), Struct_1(1u, vec2<bool>(false, true), vec2<u32>(1u, 20918u), vec4<f32>(-1646f, -1000f, -952f, 1495f), 699f), Struct_1(59331u, vec2<bool>(true, true), vec2<u32>(4294967295u, 73757u), vec4<f32>(-1342f, 294f, -514f, -1301f), 437f), Struct_1(4294967295u, vec2<bool>(false, false), vec2<u32>(1u, 4294967295u), vec4<f32>(-1260f, 148f, 2126f, -544f), -1324f), Struct_1(1u, vec2<bool>(true, true), vec2<u32>(0u, 1u), vec4<f32>(189f, -586f, -1585f, 335f), -486f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(104349u, ~min(22013u, u_input.c), 1u), vec2<bool>(!all(vec4<bool>(true, false, false, true)) | (1u < u_input.a), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), firstLeadingBit(~(~abs(vec2<u32>(1u, u_input.c)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-299f, _wgslsmith_f_op_f32(ceil(1000f)), true)), 102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1790f))), 164f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, 760f, -1601f, 461f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1143f, 688f, -1081f, 2071f), vec4<f32>(538f, -259f, 735f, 200f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1441f, -1781f)), -296f)))));
    var_0 = global0[_wgslsmith_index_u32(u_input.c, 29u)];
    return var_0.c;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.a, vec2<bool>(arg_1.b.x, any(!(!vec4<bool>(true, false, false, arg_1.b.x)))), firstTrailingBit(func_3()), arg_1.d, -336f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-957f, 147f, !arg_0))), _wgslsmith_div_f32(-405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))))), 1805f, arg_1.d.x);
    let var_2 = var_0.b.x;
    global0 = array<Struct_1, 29>();
    var var_3 = arg_1;
    return vec3<bool>((var_3.c.x ^ 0u) > reverseBits(58268u), true, var_0.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec4<u32> {
    global0 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -454f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e - -1000f)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_0.d.x)))), !select(func_2(any(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_0.b.x, false)), Struct_1(34549u, vec2<bool>(arg_1.b.x, true), arg_1.c, arg_0.d, -1408f), _wgslsmith_div_vec3_f32(arg_0.d.wxw, arg_0.d.wxx), arg_3.yz), vec3<bool>(false, 0i > u_input.b.x, arg_0.b.x), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, false)))));
    let var_1 = Struct_1(_wgslsmith_sub_u32(~u_input.a, 12249u), vec2<bool>(!arg_1.b.x, true), arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(select(-756f, 2760f, true)), -562f, _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-118f)) * _wgslsmith_f_op_f32(ceil(-731f))))), 466f), arg_0.d.x);
    var var_2 = var_1;
    let var_3 = Struct_1(select(min(u_input.c, ~26997u), 27907u, true && (_wgslsmith_f_op_f32(trunc(664f)) == _wgslsmith_f_op_f32(-arg_2.x))), !vec2<bool>(!select(var_2.b.x, var_1.b.x, var_1.b.x), select(all(var_2.b), all(vec4<bool>(false, true, false, var_1.b.x)), true)), var_2.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(arg_0.d)))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2516f), -1000f)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.e) * 140f)))));
    return select(vec4<u32>(~31582u, arg_1.a, var_3.c.x, var_3.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~914u, _wgslsmith_div_u32(var_2.c.x, 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(21272u, 32440u, u_input.a, arg_0.c.x), vec4<u32>(u_input.a, 38226u, u_input.c, 13418u)), vec4<u32>(43110u, arg_0.c.x, 67351u, arg_0.c.x) << (vec4<u32>(51619u, arg_0.a, 50949u, 6081u) % vec4<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.a), arg_0.c), 4294967295u | var_2.a), ~var_2.c.x), ~reverseBits(vec4<u32>(0u, arg_0.c.x, u_input.a, 11301u)), _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a, 13521u, 1u, 17499u), vec4<u32>(var_1.c.x, var_2.a, 0u, arg_1.a), vec4<u32>(arg_1.a, u_input.c, var_1.c.x, arg_1.c.x))), abs(vec4<u32>(0u, var_2.a, 16292u, arg_0.c.x)) ^ (vec4<u32>(var_1.c.x, 0u, var_2.a, 18508u) << (vec4<u32>(var_1.c.x, var_2.a, 7468u, u_input.c) % vec4<u32>(32u))))), vec4<bool>(!(!(arg_0.b.x & var_3.b.x)), true, true, var_3.b.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> i32 {
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 19570u)), ~(vec2<u32>(0u, u_input.a) & vec2<u32>(0u, 65586u))), u_input.a);
    let var_1 = vec4<i32>(~abs(_wgslsmith_sub_i32(-25757i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -20878i), vec3<i32>(1i, u_input.b.x, u_input.b.x)))), 0i, -4912i, u_input.b.x & func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, 511f, 405f)), func_1(Struct_1(1u, vec2<bool>(true, false), vec2<u32>(1u, u_input.a), vec4<f32>(348f, -1205f, 1000f, -1449f), -769f), Struct_1(47804u, vec2<bool>(false, false), vec2<u32>(u_input.a, 4294967295u), vec4<f32>(-565f, -163f, 321f, -1280f), -582f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-937f, 1639f, -1938f), vec3<f32>(-1016f, -703f, 1774f))), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i))));
    var var_2 = true;
    let var_3 = ~_wgslsmith_div_u32(u_input.c, u_input.a) >= _wgslsmith_mod_u32(~(~firstTrailingBit(u_input.c)), _wgslsmith_sub_u32(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(12141i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1524f, -1529f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f), -1890f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1962f, -767f), vec2<f32>(-586f, -520f)))))));
}

