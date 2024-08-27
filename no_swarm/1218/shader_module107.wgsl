struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(1u, 0u), Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(0u, 4294967295u))), Struct_2(vec4<bool>(true, true, false, true), vec2<u32>(25651u, 18968u), Struct_1(vec3<bool>(false, true, false), false, vec2<u32>(36312u, 0u))), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(17398u, 32212u), Struct_1(vec3<bool>(false, true, false), true, vec2<u32>(3446u, 4816u))), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(8974u, 58668u), Struct_1(vec3<bool>(false, true, false), false, vec2<u32>(4294967295u, 38764u))), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 4050u), Struct_1(vec3<bool>(false, true, false), false, vec2<u32>(11349u, 1u))), Struct_2(vec4<bool>(false, false, false, false), vec2<u32>(20885u, 26464u), Struct_1(vec3<bool>(true, true, true), false, vec2<u32>(4294967295u, 105182u))), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 83866u), Struct_1(vec3<bool>(true, true, true), false, vec2<u32>(8868u, 1u))), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(19605u, 4294967295u), Struct_1(vec3<bool>(false, false, true), false, vec2<u32>(0u, 26554u))), Struct_2(vec4<bool>(true, false, false, false), vec2<u32>(86738u, 62630u), Struct_1(vec3<bool>(false, false, false), false, vec2<u32>(1880u, 4294967295u))), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 11889u), Struct_1(vec3<bool>(true, false, true), false, vec2<u32>(4113u, 0u))), Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(0u, 0u), Struct_1(vec3<bool>(true, false, true), true, vec2<u32>(38108u, 27383u))), Struct_2(vec4<bool>(false, true, true, false), vec2<u32>(74611u, 69174u), Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(27644u, 1u))), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(18654u, 0u), Struct_1(vec3<bool>(true, true, true), true, vec2<u32>(4294967295u, 1u))), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(31119u, 110248u), Struct_1(vec3<bool>(true, true, false), false, vec2<u32>(54629u, 45243u))), Struct_2(vec4<bool>(true, true, false, true), vec2<u32>(1u, 60714u), Struct_1(vec3<bool>(true, false, true), false, vec2<u32>(0u, 1u))), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(1667u, 4294967295u), Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(42714u, 1u))), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(17540u, 34003u), Struct_1(vec3<bool>(false, false, true), false, vec2<u32>(5679u, 4294967295u))), Struct_2(vec4<bool>(false, true, true, false), vec2<u32>(97389u, 0u), Struct_1(vec3<bool>(false, true, false), true, vec2<u32>(25753u, 1u))), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(21093u, 36644u), Struct_1(vec3<bool>(false, true, false), true, vec2<u32>(4294967295u, 23060u))), Struct_2(vec4<bool>(false, false, true, true), vec2<u32>(1u, 2789u), Struct_1(vec3<bool>(false, true, false), true, vec2<u32>(77165u, 0u))), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(81886u, 4294967295u), Struct_1(vec3<bool>(false, true, false), false, vec2<u32>(30844u, 13514u))), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(1u, 57090u), Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(34145u, 21411u))), Struct_2(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 0u), Struct_1(vec3<bool>(false, true, true), true, vec2<u32>(3958u, 4214u))), Struct_2(vec4<bool>(false, false, false, true), vec2<u32>(8467u, 60982u), Struct_1(vec3<bool>(true, false, true), false, vec2<u32>(51817u, 0u))), Struct_2(vec4<bool>(false, true, true, true), vec2<u32>(0u, 4294967295u), Struct_1(vec3<bool>(true, false, true), false, vec2<u32>(25905u, 1u))), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(9606u, 0u), Struct_1(vec3<bool>(true, false, true), false, vec2<u32>(1u, 4294967295u))), Struct_2(vec4<bool>(true, false, true, true), vec2<u32>(1u, 4294967295u), Struct_1(vec3<bool>(true, false, false), true, vec2<u32>(4294967295u, 115221u))), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 28673u), Struct_1(vec3<bool>(false, false, false), false, vec2<u32>(68897u, 4294967295u))), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(58086u, 1u), Struct_1(vec3<bool>(false, false, false), true, vec2<u32>(4294967295u, 0u))), Struct_2(vec4<bool>(true, false, false, false), vec2<u32>(7890u, 2005u), Struct_1(vec3<bool>(false, true, true), true, vec2<u32>(0u, 21239u))));

var<private> global1: array<Struct_5, 26>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(false, true, true), true, vec2<u32>(1u, 9317u)), Struct_1(vec3<bool>(false, false, false), false, vec2<u32>(63289u, 4294967295u)), Struct_1(vec3<bool>(false, true, true), true, vec2<u32>(65670u, 0u)), Struct_1(vec3<bool>(false, false, false), false, vec2<u32>(34057u, 0u)), Struct_1(vec3<bool>(true, false, false), false, vec2<u32>(9910u, 1u)), Struct_1(vec3<bool>(false, true, false), true, vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> bool {
    let var_0 = vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1494f - -1600f) + 553f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), 353f))))));
    let var_1 = global1[_wgslsmith_index_u32(~1u, 26u)];
    var var_2 = -1458f;
    global3 = array<Struct_1, 6>();
    var var_3 = vec3<i32>(~_wgslsmith_mod_i32(countOneBits(~(-31352i)), 41118i >> (global2.x % 32u)), ~u_input.c.x, firstLeadingBit(var_1.c.x) << (~(~firstTrailingBit(10289u)) % 32u));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(-11555i ^ countOneBits(arg_1), ~(i32(-1i) * -23691i), ~firstLeadingBit(-4497i)), vec3<i32>(-u_input.c.x, 2147483647i, ~u_input.c.x), -vec3<i32>(i32(-1i) * -1i, ~(-4671i), -34480i)), Struct_2(select(!select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, true, arg_0.x, true), vec4<bool>(true, false, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, false, false, false), !vec4<bool>(true, arg_0.x, true, true), func_3(true, -1466f, vec2<f32>(-1086f, 569f))), vec4<bool>(true, true, any(vec2<bool>(false, false)), arg_0.x || arg_0.x)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 0u), u_input.a.ww), ~u_input.a.wx), Struct_1(!vec3<bool>(arg_0.x, arg_0.x, true), false, ~u_input.a.zx)), 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -227f) - -319f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1325f + -1241f), _wgslsmith_f_op_f32(floor(2047f)))))));
    var var_1 = -var_0.c;
    let var_2 = Struct_4(vec3<i32>(-arg_1 ^ -2223i, max(_wgslsmith_dot_vec3_i32(u_input.b.yxx, vec3<i32>(u_input.b.x, var_0.a.x, u_input.b.x)), -12537i), -select(arg_1, reverseBits(arg_1), var_0.b.a.x)), Struct_2(vec4<bool>((1u ^ u_input.d) < 26549u, var_0.e.x >= -1411f, any(vec2<bool>(true, false)) | (arg_0.x || var_0.b.a.x), true), ~vec2<u32>(~var_0.b.c.c.x, reverseBits(26547u)), Struct_1(var_0.b.a.zyw, true, ~global2.xx)), -_wgslsmith_dot_vec2_i32(~u_input.b.yz, vec2<i32>(arg_1 ^ -14662i, ~(-33474i))), var_0.d, var_0.e);
    var var_3 = 25838i;
    global1 = array<Struct_5, 26>();
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(select(arg_1.a, select(arg_1.a, arg_1.a, vec4<bool>(false, any(vec4<bool>(arg_1.c.b, arg_1.c.a.x, true, true)), true, true)), vec4<bool>(true, select(arg_1.c.a.x, arg_1.c.a.x, false) == false, false, false)), ~vec2<u32>(global2.x, 4294967295u), Struct_1(arg_1.c.a, any(arg_1.a.wz), ~u_input.a.xw));
    global2 = u_input.a.wyy;
    global3 = array<Struct_1, 6>();
    var var_1 = -829f;
    global1 = array<Struct_5, 26>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-806f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -265f, var_0.c.b)))), _wgslsmith_f_op_f32(round(1587f)))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(249f * _wgslsmith_f_op_f32(f32(-1f) * -1292f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-421f * -1000f)))))));
    var var_1 = _wgslsmith_f_op_f32(func_4(27122u, func_2(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(false, true, false)), true)), i32(-1i) * -_wgslsmith_mod_i32(u_input.b.x, 0i))));
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    var var_3 = _wgslsmith_f_op_f32(-var_0);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_div_f32(var_0, var_0))));
    return 1679f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, _wgslsmith_f_op_f32(func_1()) < 592f));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -502f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(814f + 874f))))))));
    var var_2 = min(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.c.x, -25956i, 1i), ~vec4<i32>(u_input.b.x, u_input.c.x, -13994i, 13940i) ^ u_input.b), _wgslsmith_mod_vec4_i32(abs(u_input.b), u_input.b)), select(vec4<i32>(-u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.b.yxy, firstLeadingBit(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x))), _wgslsmith_sub_i32(1i << (global2.x % 32u), -u_input.b.x), _wgslsmith_clamp_i32(u_input.c.x, 31393i, 1i) | -u_input.b.x), -vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, u_input.c.x), u_input.b.zxy), u_input.c.x, -2147483647i), vec4<bool>(true, false, false, true)));
    var var_3 = Struct_3(248f, _wgslsmith_div_u32(~_wgslsmith_add_u32(func_2(vec2<bool>(var_0, false), var_2.x).c.c.x, 0u), u_input.d), false, u_input.a.xw, !(!vec3<bool>(global2.x == 2075u, true, true)));
    let var_4 = _wgslsmith_mod_vec2_u32(max(vec2<u32>(min(~var_3.b, _wgslsmith_mod_u32(1u, global2.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.x, u_input.d, 108764u, 1u), vec4<u32>(global2.x, 1u, u_input.d, global2.x))), ~_wgslsmith_sub_vec2_u32(u_input.a.zx << (global2.yy % vec2<u32>(32u)), ~var_3.d)), vec2<u32>(u_input.a.x, ~global2.x));
    global0 = array<Struct_2, 30>();
    var var_5 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(min(4294967295u, ~8714u), global2.x, ~var_3.b), var_3.b), 26u)];
    var var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1521f, _wgslsmith_f_op_f32(-var_6.a), u_input.b.x, min(var_6.d.x, firstTrailingBit(~(~var_3.b))));
}

