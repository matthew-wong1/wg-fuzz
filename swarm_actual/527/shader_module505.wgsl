struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
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

var<private> global0: array<bool, 11> = array<bool, 11>(false, false, true, false, true, false, false, true, true, true, false);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<f32>(529f, 543f), vec2<u32>(1u, 7415u)), Struct_1(vec2<f32>(-1267f, 168f), vec2<u32>(52188u, 1u)), Struct_1(vec2<f32>(-242f, -361f), vec2<u32>(70640u, 98244u)), Struct_1(vec2<f32>(137f, -397f), vec2<u32>(8188u, 1u)), Struct_1(vec2<f32>(-1124f, -872f), vec2<u32>(43595u, 1u)), Struct_1(vec2<f32>(-1561f, 610f), vec2<u32>(5282u, 1u)), Struct_1(vec2<f32>(2118f, 874f), vec2<u32>(25255u, 55292u)), Struct_1(vec2<f32>(-661f, 1378f), vec2<u32>(1u, 101453u)), Struct_1(vec2<f32>(-2853f, -945f), vec2<u32>(4294967295u, 1u)), Struct_1(vec2<f32>(-377f, -431f), vec2<u32>(21779u, 1u)), Struct_1(vec2<f32>(-502f, -1061f), vec2<u32>(34792u, 46525u)), Struct_1(vec2<f32>(-428f, 229f), vec2<u32>(5184u, 0u)), Struct_1(vec2<f32>(908f, 377f), vec2<u32>(0u, 0u)), Struct_1(vec2<f32>(-609f, 837f), vec2<u32>(4188u, 1u)), Struct_1(vec2<f32>(1014f, -333f), vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(-1661f, -449f), vec2<u32>(2120u, 4460u)), Struct_1(vec2<f32>(877f, -438f), vec2<u32>(12401u, 44309u)), Struct_1(vec2<f32>(-470f, -2127f), vec2<u32>(13717u, 0u)), Struct_1(vec2<f32>(1000f, -1411f), vec2<u32>(0u, 51342u)), Struct_1(vec2<f32>(1780f, 975f), vec2<u32>(12730u, 117207u)), Struct_1(vec2<f32>(-2064f, -981f), vec2<u32>(0u, 42963u)), Struct_1(vec2<f32>(-255f, 577f), vec2<u32>(60035u, 52253u)), Struct_1(vec2<f32>(-1614f, 795f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<f32>(-170f, -748f), vec2<u32>(34889u, 47479u)), Struct_1(vec2<f32>(461f, -1000f), vec2<u32>(0u, 25225u)), Struct_1(vec2<f32>(-2106f, -167f), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<f32>(451f, -547f), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<f32>(-671f, 607f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(-1803f, 393f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(443f, 1000f), vec2<u32>(0u, 11513u)));

var<private> global2: array<bool, 4> = array<bool, 4>(true, false, true, true);

var<private> global3: array<vec4<u32>, 9>;

var<private> global4: array<bool, 28> = array<bool, 28>(true, false, false, true, false, true, true, true, false, false, true, true, false, true, false, false, false, false, false, true, false, false, false, true, false, false, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    global0 = array<bool, 11>();
    return vec3<u32>(0u, arg_2.b.b.x, 4294967295u);
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-565f, 912f, 144f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1435f, 845f, -575f), _wgslsmith_div_vec3_f32(vec3<f32>(1064f, 689f, 332f), vec3<f32>(1563f, -1798f, -152f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1175f, 1930f, 964f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1204f, -927f, -521f) - vec3<f32>(2257f, 272f, -244f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(775f, 1788f, -257f), vec3<f32>(-329f, -1149f, 911f))))), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(41519u, 11u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(160f + -2490f), _wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1735f + 1010f)), _wgslsmith_f_op_f32(min(-1243f, _wgslsmith_f_op_f32(trunc(1179f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f * -754f)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1111f))));
    var var_1 = _wgslsmith_dot_vec3_i32(arg_0.yyy, -(~arg_0.xyx));
    global2 = array<bool, 4>();
    let var_2 = 44057i;
    return func_3(987f, Struct_2(global1[_wgslsmith_index_u32(1u, 30u)], Struct_1(var_0.yz, min(u_input.b, vec2<u32>(43536u, 0u))), _wgslsmith_mult_i32(1i, arg_0.x) > 30204i), Struct_2(Struct_1(vec2<f32>(var_0.x, 1058f), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), u_input.b)), global1[_wgslsmith_index_u32(~u_input.b.x, 30u)], select(false, global4[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 4u)]) || !global0[_wgslsmith_index_u32(u_input.a, 11u)])) ^ reverseBits(vec3<u32>(firstTrailingBit(~0u), ~(~u_input.b.x), firstLeadingBit(145444u)));
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    global4 = array<bool, 28>();
    global0 = array<bool, 11>();
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(10862u, 30u)], !all(!(!vec4<bool>(global2[_wgslsmith_index_u32(23858u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * 654f);
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a.b.x, var_0.a.b.x, 30062u)), ~vec3<u32>(4294967295u, 29856u, var_0.a.b.x) ^ vec3<u32>(1u, 31406u, var_0.b.b.x))), u_input.b.x, u_input.a, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, 62067u), vec3<u32>(4294967295u, 4294967295u, var_0.b.b.x)), vec3<u32>(90120u, 56862u, var_0.b.b.x) & vec3<u32>(45229u, var_0.a.b.x, var_0.b.b.x)), ~func_2(vec4<i32>(u_input.c.x, -21186i, -12267i, -67209i)))));
    return ~(~vec3<u32>(0u, ~(u_input.b.x >> (24369u % 32u)), max(~13267u, 0u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    global0 = array<bool, 11>();
    var var_0 = ~(~arg_1.x);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-925f, 1207f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-282f + -832f))))), vec2<u32>(0u, arg_2.x));
    global3 = array<vec4<u32>, 9>();
    var var_2 = Struct_2(Struct_1(var_1.a, ~max(vec2<u32>(1u, 1u), vec2<u32>(u_input.b.x, 27060u))), global1[_wgslsmith_index_u32(~4294967295u, 30u)], ~u_input.c.x < (16213i & ~u_input.c.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(sign(var_2.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -332f))) * 943f), -1578f) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(func_4(vec4<i32>(-47590i, u_input.c.x, u_input.c.x, 0i), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b.x, u_input.b.x)), func_1(vec4<f32>(136f, -1654f, -1000f, -833f)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)], global4[_wgslsmith_index_u32(4294967295u, 28u)], true), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 28u)], false, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 11u)], false)))))), _wgslsmith_f_op_f32(-1104f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(289f * 1131f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-451f, -914f))))));
    global0 = array<bool, 11>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 30u)];
    global3 = array<vec4<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, 22936u) << (~var_1.b.x % 32u));
}

