struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-156f, -390f, -1000f, -1000f), vec4<f32>(-559f, -386f, 913f, 368f), vec4<f32>(-2305f, 1177f, -839f, -643f), vec4<f32>(-605f, -1051f, 1542f, 978f), vec4<f32>(907f, 184f, -836f, 1138f), vec4<f32>(677f, 107f, 729f, -920f), vec4<f32>(603f, 103f, -2316f, -787f), vec4<f32>(1075f, -1417f, -984f, -1000f), vec4<f32>(-1152f, 142f, 354f, -1272f), vec4<f32>(-1000f, -1000f, -575f, 144f), vec4<f32>(-182f, -211f, 1095f, 1155f), vec4<f32>(-1033f, -862f, 613f, 338f), vec4<f32>(-134f, 202f, -303f, -116f), vec4<f32>(-539f, 1114f, -549f, 847f));

var<private> global1: i32 = 1i;

var<private> global2: Struct_1 = Struct_1(29470u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.d.yy;
    let var_1 = u_input.a.x;
    var var_2 = Struct_3(u_input.a, select(arg_1.d, arg_1.b.wzz, !select(select(arg_1.d, arg_1.d, vec3<bool>(var_0.x, arg_1.d.x, arg_1.b.x)), arg_1.b.zzw, arg_1.d)));
    global0 = array<vec4<f32>, 14>();
    var var_3 = -234i;
    return select(!arg_1.b, !arg_1.b, !vec4<bool>(arg_1.b.x, true, _wgslsmith_f_op_f32(floor(arg_1.a)) <= _wgslsmith_f_op_f32(-arg_0), true));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec4<bool> {
    return !select(!vec4<bool>(arg_2.x, true, !arg_0, !arg_2.x), select(vec4<bool>(true, arg_2.x, arg_2.x & true, true), select(func_3(2138f, Struct_2(551f, vec4<bool>(true, true, arg_0, false), Struct_1(global2.a), arg_2), Struct_1(arg_1.x)), select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_0), arg_0), arg_2.x & arg_0), !select(vec4<bool>(arg_2.x, arg_0, false, true), vec4<bool>(true, true, false, true), vec4<bool>(arg_2.x, false, false, arg_0))), func_3(-113f, Struct_2(_wgslsmith_f_op_f32(234f * 2376f), !vec4<bool>(false, true, arg_2.x, false), Struct_1(global2.a), !arg_2), Struct_1(14770u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32) -> Struct_4 {
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    let var_0 = 1i;
    let var_1 = i32(-1i) * -arg_0.b.x;
    return Struct_4((_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.c, arg_0.d), u_input.b.x) | select(global2.a, 67791u, var_1 != arg_0.b.x)) | ~u_input.b.x, ~(-arg_0.b), arg_0.d, vec3<u32>(_wgslsmith_mult_u32(arg_1.x >> (54020u % 32u), reverseBits(~0u)), 4294967295u, global2.a), Struct_2(_wgslsmith_f_op_f32(-arg_2), select(select(func_2(arg_0.e.b.x, vec4<u32>(arg_0.e.c.a, 3038u, arg_1.x, u_input.b.x), vec3<bool>(false, true, arg_0.e.d.x)), arg_0.e.b, arg_0.e.b), !vec4<bool>(arg_0.e.b.x, arg_0.e.b.x, false, arg_0.e.b.x), !select(arg_0.e.b, arg_0.e.b, false)), Struct_1(1u), vec3<bool>(func_2(arg_0.e.d.x, vec4<u32>(0u, 38124u, 19832u, global2.a), arg_0.e.b.zxy).x, true, false)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    var var_0 = arg_0.d;
    var var_1 = !(!all(select(!vec4<bool>(true, arg_0.e.d.x, arg_2.x, arg_2.x), func_1(arg_0, arg_0.d.zx, arg_3).e.b, arg_2)));
    var var_2 = -1284f;
    global0 = array<vec4<f32>, 14>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, -495f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 383f), _wgslsmith_f_op_f32(f32(-1f) * -130f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, 299f))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(f32(-1f) * -772f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(1259f, arg_0.e.a))))));
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_3)))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))) > _wgslsmith_f_op_f32(select(arg_1, -953f, true)), true, all(func_2(true, firstTrailingBit(vec4<u32>(u_input.b.x, 96490u, var_0.x, 17771u)), !vec3<bool>(arg_0.e.b.x, arg_0.e.d.x, arg_2.x)).ww), false), arg_0.e.c, !arg_0.e.b.yxy);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 14>();
    var var_0 = ~vec3<u32>(~arg_0.a, func_4(func_1(func_1(arg_0, vec2<u32>(42818u, arg_0.c.x), arg_2.x), firstTrailingBit(vec2<u32>(4294967295u, arg_0.e.c.a)), func_1(Struct_4(1u, arg_0.b, vec3<u32>(4294967295u, arg_1.x, arg_0.c.x), vec3<u32>(69354u, 1u, 22352u), Struct_2(-884f, arg_0.e.b, arg_0.e.c, arg_0.e.b.wxx)), arg_0.c.yz, 296f).e.a), -251f, arg_0.e.b, _wgslsmith_f_op_f32(trunc(arg_2.x))).c.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a, arg_0.a, u_input.b.x, 1u) >> (vec4<u32>(u_input.b.x, 1u, 0u, 0u) % vec4<u32>(32u)), vec4<u32>(global2.a, 1u, 29959u, 46839u)), ~vec4<u32>(u_input.b.x, arg_3.a, 96372u, 0u)));
    global1 = i32(-1i) * -arg_0.b.x;
    let var_1 = (abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 3862u, arg_0.e.c.a), vec3<u32>(0u, global2.a, arg_1.x)), vec3<u32>(0u, 4294967295u, 1u) ^ vec3<u32>(17511u, 4294967295u, arg_0.a))) & reverseBits(vec3<u32>(1u, ~0u, arg_0.e.c.a))) ^ (~(~vec3<u32>(u_input.b.x, global2.a, 100586u)) | _wgslsmith_div_vec3_u32(select(arg_1, ~arg_1, func_3(arg_0.e.a, arg_0.e, Struct_1(64483u)).yww), arg_0.c));
    var var_2 = ~(~u_input.a.x);
    return func_1(arg_0, u_input.b, arg_0.e.a).e.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global2 = func_5(Struct_4(~26709u | u_input.b.x, u_input.a, firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(14281u, u_input.b.x), ~4294967295u, global2.a)), vec3<u32>(4294967295u, 0u, global2.a) & (vec3<u32>(53548u, u_input.b.x, 38627u) | (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) & vec3<u32>(u_input.b.x, 50527u, global2.a))), func_4(func_1(Struct_4(17275u, u_input.a, vec3<u32>(51699u, u_input.b.x, u_input.b.x), vec3<u32>(1u, 4294967295u, u_input.b.x), Struct_2(149f, vec4<bool>(false, true, false, true), Struct_1(30268u), vec3<bool>(true, true, false))), vec2<u32>(0u, global2.a), _wgslsmith_f_op_f32(742f + 341f)), func_1(Struct_4(0u, vec4<i32>(28353i, u_input.a.x, 0i, 1i), vec3<u32>(global2.a, 4294967295u, global2.a), vec3<u32>(32315u, global2.a, 1u), Struct_2(-240f, vec4<bool>(true, true, false, true), Struct_1(18811u), vec3<bool>(true, false, true))), min(u_input.b, vec2<u32>(global2.a, u_input.b.x)), _wgslsmith_f_op_f32(-1013f - 874f)).e.a, !func_2(false, vec4<u32>(u_input.b.x, 74087u, 4294967295u, 14639u), vec3<bool>(true, false, false)), 231f)), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1945u, 14856u, u_input.b.x), select(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(3227u, 4294967295u, 0u), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-527f, 416f, -1962f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-889f, -1662f, -1000f) + vec3<f32>(-216f, 345f, -2227f))))), func_1(func_1(func_1(Struct_4(13734u, u_input.a, vec3<u32>(global2.a, global2.a, 4294967295u), vec3<u32>(1u, global2.a, 4294967295u), Struct_2(1073f, vec4<bool>(false, false, false, false), Struct_1(65103u), vec3<bool>(true, true, false))), vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(24736u, 94934u), _wgslsmith_f_op_f32(-298f * -587f)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global2.a), ~u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -556f)), u_input.b, _wgslsmith_f_op_f32(func_1(Struct_4(15484u, u_input.a, vec3<u32>(u_input.b.x, global2.a, u_input.b.x), vec3<u32>(32315u, u_input.b.x, 73054u), Struct_2(269f, vec4<bool>(false, false, true, true), Struct_1(0u), vec3<bool>(false, false, true))), vec2<u32>(u_input.b.x, 31936u), 1f).e.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -672f), _wgslsmith_f_op_f32(f32(-1f) * -2377f))))).e.c);
    var var_0 = global2.a;
    var var_1 = func_1(Struct_4(u_input.b.x, ~select(vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), u_input.a ^ vec4<i32>(u_input.a.x, u_input.a.x, -10321i, u_input.a.x), false), ~vec3<u32>(0u, _wgslsmith_mod_u32(1u, u_input.b.x), ~u_input.b.x), min(min(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(4294967295u, 37132u, 44957u) ^ vec3<u32>(1910u, u_input.b.x, u_input.b.x)), countOneBits(vec3<u32>(u_input.b.x, global2.a, 43880u) << (vec3<u32>(4294967295u, 47828u, 21713u) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f + -468f)), vec4<bool>(func_1(Struct_4(80412u, vec4<i32>(-2147483647i, u_input.a.x, -32031i, u_input.a.x), vec3<u32>(u_input.b.x, 4294967295u, 15000u), vec3<u32>(10293u, global2.a, 1u), Struct_2(654f, vec4<bool>(true, false, false, false), Struct_1(34405u), vec3<bool>(false, false, true))), vec2<u32>(global2.a, u_input.b.x), -273f).e.b.x, true, true, any(vec3<bool>(true, false, true))), Struct_1(1u), vec3<bool>(true, true, true))), vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a, 1u), global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f - -1000f))))).e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(func_1(Struct_4(global2.a, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec3<u32>(48699u, 4294967295u, 105984u), vec3<u32>(var_1.c.a, 1u, u_input.b.x), Struct_2(-290f, var_1.b, Struct_1(u_input.b.x), var_1.b.xwx)), u_input.b, var_1.a), _wgslsmith_f_op_f32(-2241f - 231f), func_2(true, vec4<u32>(4294967295u, 55003u, 1u, 0u), vec3<bool>(false, var_1.d.x, true)), _wgslsmith_f_op_f32(max(var_1.a, 969f))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, var_1.a))), u_input.a.x);
}

