struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-875f, 196f, -858f), vec3<f32>(-286f, -627f, -427f), vec3<f32>(136f, 1117f, -577f), vec3<f32>(1000f, -389f, -1159f), vec3<f32>(580f, 984f, -402f), vec3<f32>(-1930f, -702f, 117f), vec3<f32>(946f, 881f, -961f), vec3<f32>(-796f, -887f, 919f), vec3<f32>(-2311f, -1001f, 373f), vec3<f32>(1108f, -169f, 1232f), vec3<f32>(985f, 556f, 661f), vec3<f32>(1000f, -1000f, -519f), vec3<f32>(-1000f, -1493f, 243f), vec3<f32>(473f, 1319f, -325f), vec3<f32>(-772f, -245f, -165f), vec3<f32>(-1305f, -393f, 1913f), vec3<f32>(-1222f, -586f, 1179f));

var<private> global1: Struct_3 = Struct_3(Struct_1(1396f, vec4<f32>(1622f, -142f, 1000f, -134f)));

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(20116u, 4294967295u), vec2<u32>(0u, 30171u), vec2<u32>(1u, 19714u), vec2<u32>(0u, 27521u), vec2<u32>(7818u, 1u), vec2<u32>(0u, 17776u), vec2<u32>(4294967295u, 19545u), vec2<u32>(73236u, 57765u), vec2<u32>(0u, 50823u), vec2<u32>(77342u, 0u), vec2<u32>(21098u, 105632u), vec2<u32>(0u, 36667u), vec2<u32>(12083u, 1u), vec2<u32>(1u, 57944u), vec2<u32>(53157u, 10608u), vec2<u32>(1u, 10623u), vec2<u32>(1u, 4294967295u), vec2<u32>(50565u, 0u), vec2<u32>(0u, 0u), vec2<u32>(70502u, 74532u), vec2<u32>(39893u, 1u), vec2<u32>(1u, 63966u), vec2<u32>(4294967295u, 1u), vec2<u32>(7147u, 1u), vec2<u32>(105415u, 11374u), vec2<u32>(30461u, 11995u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 51254u), vec2<u32>(1u, 19722u));

var<private> global3: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = 586f;
    return ~_wgslsmith_mod_u32(u_input.d, ~(u_input.c >> (u_input.c % 32u)) | ~(~0u));
}

fn func_2() -> Struct_1 {
    let var_0 = global1.a.b.x;
    let var_1 = global3[_wgslsmith_index_u32(~select(35402u, func_3(), true), 24u)];
    var var_2 = ~vec4<u32>(43211u, firstLeadingBit(_wgslsmith_div_u32(u_input.d, u_input.d)), ~u_input.b, ~4294967295u);
    let var_3 = global1.a.a;
    let var_4 = !(!var_1.x);
    return Struct_1(global1.a.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.b))))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = -478f;
    let var_1 = true;
    global1 = Struct_3(Struct_1(271f, vec4<f32>(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x * 982f)), _wgslsmith_f_op_f32(-1771f - -259f), 197f)));
    global1 = Struct_3(func_2());
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, ~u_input.b), ~global2[_wgslsmith_index_u32(0u, 30u)]);
    return Struct_3(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), any(vec2<bool>(true, true))), global1.a.a == global1.a.a));
    global3 = array<vec4<bool>, 24>();
    var var_0 = Struct_5(vec2<bool>(false, _wgslsmith_clamp_i32(24132i, u_input.e >> (u_input.b % 32u), 12522i) >= _wgslsmith_add_i32(firstTrailingBit(u_input.e), reverseBits(u_input.e))), _wgslsmith_f_op_vec2_f32(global1.a.b.xx - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(713f, 183f) - global1.a.b.xy)), vec2<f32>(1f, global1.a.a), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f * 183f) * _wgslsmith_f_op_f32(step(global1.a.b.x, global1.a.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(false, true, false)).a.b * global1.a.b) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.a.b))))));
    var var_1 = firstTrailingBit(_wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.a.x, u_input.e, -27605i)), ~u_input.a.yxw >> (~vec3<u32>(u_input.c, 0u, u_input.b) % vec3<u32>(32u))));
    let var_2 = vec3<u32>(~u_input.c, ~(~countOneBits(u_input.b)), u_input.b);
    var var_3 = 2147483647i;
    var var_4 = global1.a;
    var var_5 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x ^ var_1.x, _wgslsmith_add_i32(-18016i, 2629i), var_1.x & u_input.a.x, _wgslsmith_clamp_i32(var_1.x, 1i, var_1.x)), u_input.a) ^ var_1.x, -1i, var_1.x);
    var var_6 = global1.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(610f * 248f), _wgslsmith_f_op_f32(-global1.a.a)))), var_4.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.c.b.x)), _wgslsmith_f_op_f32(-global1.a.b.x), u_input.a.x < 2147483647i)) + _wgslsmith_f_op_f32(f32(-1f) * -410f)), var_4.a), ~firstLeadingBit(vec4<u32>(u_input.c, u_input.d, min(4294967295u, 4294967295u), 47593u)));
}

