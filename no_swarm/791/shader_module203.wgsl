struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global0 = array<Struct_3, 15>();
    let var_0 = Struct_2(vec2<u32>(0u, _wgslsmith_add_u32(abs(~70925u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 110536u, 11305u, global1.x), vec4<u32>(u_input.b, u_input.b, global1.x, 21464u)), global1.x ^ u_input.b))));
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(81691u, 1u) & var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(2169u, u_input.b, global1.x)) ^ ~1u, ~_wgslsmith_mult_u32(51202u, global1.x)) | _wgslsmith_add_vec3_u32(max(~vec3<u32>(44238u, global1.x, 0u), firstTrailingBit(vec3<u32>(4294967295u, var_0.a.x, 67515u))), firstLeadingBit(vec3<u32>(var_0.a.x, u_input.b, global1.x))), vec3<u32>(((1u >> (var_0.a.x % 32u)) | abs(global1.x)) ^ global1.x, u_input.b, 40146u));
    global0 = array<Struct_3, 15>();
    var var_1 = select(vec2<bool>(true, !(false | arg_0)), !vec2<bool>(false, all(vec2<bool>(false, false))), select(!(!vec2<bool>(false, arg_0)), vec2<bool>(arg_0, true && !arg_0), arg_0));
    return vec2<u32>(abs(0u), global1.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = 1i;
    let var_1 = ~u_input.a;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_sub_u32(47932u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(56549u, arg_1.e, 97347u), vec3<u32>(26598u, 27520u, 0u)) | 34861u) & (_wgslsmith_dot_vec3_u32(~vec3<u32>(31050u, global1.x, global1.x), countOneBits(vec3<u32>(arg_2.x, global1.x, 6992u))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 52746u, 0u), ~vec4<u32>(arg_1.e, var_2.x, 4294967295u, u_input.b)) % 32u)));
    var var_4 = Struct_2(func_3(!(false || !arg_3.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-765f))), _wgslsmith_f_op_f32(1026f + _wgslsmith_f_op_f32(trunc(arg_1.b))), 1098f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -934f), 1439f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1172f, arg_1.a, arg_1.c.x, arg_1.a), _wgslsmith_f_op_vec4_f32(trunc(arg_1.c)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.c, arg_1.c), arg_1.c), select(vec4<bool>(arg_3.x, arg_3.x, false, false), !vec4<bool>(arg_3.x, true, false, arg_3.x), vec4<bool>(true, true, arg_3.x, arg_3.x))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_u32(2885u, 0u);
    var var_1 = Struct_3(vec2<f32>(-1136f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-215f, -1000f), -1256f))))), Struct_1(-1615f, -215f, _wgslsmith_f_op_vec4_f32(func_2(firstTrailingBit(abs(vec3<u32>(83331u, global1.x, global1.x))), Struct_1(_wgslsmith_div_f32(663f, -269f), _wgslsmith_div_f32(-922f, 1342f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1966f, 241f, 1689f, -115f)), abs(u_input.a), global1.x), countOneBits(global1.xx), !select(vec2<bool>(false, true), vec2<bool>(false, false), false))), u_input.a >> (select(min(1u, 12276u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 28769u, global1.x), vec4<u32>(global1.x, 5110u, 43234u, 0u)), true) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 13073u, 0u, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.x, 4294967295u, 4294967295u), vec4<u32>(0u, u_input.b, 0u, 1u))) & global1.x), _wgslsmith_add_u32(firstTrailingBit(0u), max(u_input.b, u_input.b)), Struct_2(vec2<u32>(~(57973u & u_input.b), ~firstTrailingBit(79431u))));
    let var_2 = _wgslsmith_div_u32(0u, ~(~var_1.c));
    var var_3 = Struct_3(var_1.a, var_1.b, 43652u, Struct_2(global1.yy));
    let var_4 = var_1.b.d;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    let var_0 = 37125u;
    var var_1 = false;
    let var_2 = 20421u;
    let var_3 = _wgslsmith_add_u32(func_1(), 1u) << (~firstLeadingBit(_wgslsmith_mod_u32(~global1.x, 104595u)) % 32u);
    var var_4 = Struct_2(min(func_3(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), global1.zx));
    var var_5 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(400f + 1000f) * -1050f), true)) * -680f), _wgslsmith_mod_vec4_i32(abs((vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, 1i, u_input.a, -1i)) | max(vec4<i32>(1i, 1i, u_input.a, 29271i), vec4<i32>(u_input.a, u_input.a, 6688i, 2147483647i))), countOneBits(max(~vec4<i32>(u_input.a, 1055i, u_input.a, 15043i), min(vec4<i32>(3867i, u_input.a, 2147483647i, 30222i), vec4<i32>(0i, u_input.a, -43392i, u_input.a))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 755f)), _wgslsmith_f_op_vec4_f32(func_2(abs(vec3<u32>(1u, 4294967295u, var_0)), Struct_1(-862f, -117f, vec4<f32>(-1125f, -902f, -873f, -396f), 2147483647i, 13381u), vec2<u32>(4294967295u, u_input.b), vec2<bool>(true, false))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f + _wgslsmith_f_op_f32(-595f - -1129f))), false)));
}

