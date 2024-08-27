struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec3_u32(~abs(~(vec3<u32>(global0.a, arg_0.a, global0.a) & vec3<u32>(global0.a, arg_0.a, arg_0.a))), _wgslsmith_div_vec3_u32(vec3<u32>(global0.a, reverseBits(~94258u), 65265u), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 19802u, global0.a), vec3<u32>(arg_0.a, 8724u, global0.a)), max(vec3<u32>(arg_0.a, 0u, arg_0.a), vec3<u32>(global0.a, 71601u, 62820u))), 1u)));
    var var_1 = 271f;
    let var_2 = vec4<f32>(1f, 1f, 1f, 1f);
    global0 = arg_0;
    var var_3 = arg_2 || arg_1.x;
    return countOneBits(~(vec3<u32>(global0.a, ~83595u, 45518u) & vec3<u32>(16609u, global0.a, global0.a)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(-24840i, -18643i, 1i, vec3<i32>(u_input.c, countOneBits(~u_input.a), u_input.a)), Struct_1(abs(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, global0.a, global0.a)), func_3(Struct_1(global0.a), vec3<bool>(true, true, false), true)))), false, Struct_1((global0.a << (firstTrailingBit(global0.a) % 32u)) << ((~14689u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, 0u), vec3<u32>(4294967295u, global0.a, 4294967295u)) % 32u)) % 32u)));
    var_0 = Struct_4(Struct_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 2147483647i, u_input.c), vec4<i32>(var_0.a.d.x, u_input.c, 1i, u_input.c)), _wgslsmith_add_i32(-var_0.a.d.x, u_input.a), -24499i, vec3<i32>(max(-u_input.b, select(11801i, u_input.c, true)), var_0.a.a, min(~u_input.b, var_0.a.a))), Struct_1(global0.a), var_0.c, Struct_1(~(~global0.a)));
    let var_1 = -1000f;
    var var_2 = var_0.b;
    return Struct_2(~((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a, var_0.b.a), vec2<u32>(global0.a, 1u)) << (reverseBits(global0.a) % 32u)) ^ max(28359u, ~global0.a)), Struct_1(var_2.a), var_0.b, !(!vec4<bool>(!var_0.c, arg_0.x == var_1, false, true)), _wgslsmith_add_vec3_i32(vec3<i32>(-23411i, max(var_0.a.d.x, select(var_0.a.a, -2147483647i, false)), -23646i), countOneBits(vec3<i32>(1i, var_0.a.b, var_0.a.b) << (firstLeadingBit(vec3<u32>(0u, var_2.a, var_0.d.a)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 1130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-206f * -177f), 1277f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(f32(-1f) * -712f))))));
    var var_1 = var_0.b;
    var var_2 = firstTrailingBit(var_1.a | reverseBits(61257u & _wgslsmith_sub_u32(var_1.a, 4294967295u)));
    var_1 = Struct_1(30459u);
    let var_3 = _wgslsmith_f_op_f32(min(569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-461f, _wgslsmith_f_op_f32(floor(-509f)))) - _wgslsmith_f_op_f32(floor(-214f))) * 2330f)));
    return func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(step(var_3, 1073f)), any(var_0.d.ww))), _wgslsmith_f_op_f32(-1f), 1392f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, var_3, var_3))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1142f, var_3, -1283f, var_3) - vec4<f32>(var_3, var_3, -1111f, 2028f)))), any(var_0.d.ywx))), !vec4<bool>(any(var_0.d.wz), var_0.d.x, var_0.d.x, false)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-u_input.a);
    var var_0 = true;
    let var_1 = Struct_3(countOneBits(u_input.b) >> (~global0.a % 32u), select(select(i32(-1i) * -1i, -17176i, true), u_input.a, true), ~max(-58052i, u_input.a), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-14674i, 0i, -2147483647i), countOneBits(vec3<i32>(u_input.a, u_input.b, -1i))), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.a))), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, u_input.a, u_input.a), abs(vec3<i32>(10923i, u_input.a, -1i)))));
    var var_2 = min(abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, global0.a, 1u, 0u), vec4<u32>(4294967295u, 57494u, 4294967295u, 12713u)))), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(2751u, global0.a, global0.a, global0.a) ^ countOneBits(vec4<u32>(21038u, 39714u, global0.a, global0.a)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a, global0.a, 18649u, 0u) | vec4<u32>(global0.a, global0.a, global0.a, global0.a), vec4<u32>(37858u, global0.a, global0.a, global0.a) << (vec4<u32>(2614u, 0u, global0.a, global0.a) % vec4<u32>(32u))))));
    global0 = Struct_1(abs(0u));
    let var_3 = var_1;
    var var_4 = var_1.a;
    let var_5 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(181f + -612f), _wgslsmith_f_op_f32(sign(489f)))), -767f), _wgslsmith_f_op_f32(min(421f, -348f)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -select(var_3.a ^ var_3.d.x, -var_1.d.x, true), 1i, ~firstLeadingBit(vec4<u32>(4294967295u, global0.a, 26568u, global0.a)) ^ select(vec4<u32>(var_2.x, var_2.x, var_2.x, 53559u), ~vec4<u32>(global0.a, 4294967295u, 4294967295u, 35794u), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(139f, var_5))), vec2<f32>(-1338f, var_5), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5, 1000f) - vec2<f32>(var_5, 1748f)))))));
}

