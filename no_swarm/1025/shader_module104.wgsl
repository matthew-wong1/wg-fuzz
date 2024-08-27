struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(22286i, 39203i, -21462i, i32(-2147483648), i32(-2147483648), 2147483647i, 10729i, 45238i, -47040i, i32(-2147483648), 1i, i32(-2147483648), -21062i, 2147483647i, -17019i, -30663i, 0i, 29475i, 0i, i32(-2147483648), -30287i, 1i, 7811i, 33884i, -46872i, 0i, -68i, -11296i, -1i);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_2(countOneBits(vec2<i32>(u_input.d.x, ~_wgslsmith_div_i32(62596i, 1645i))), vec2<bool>(true, global1.x), !(!select(global1.xyw, global1.zwz, global1.x & global1.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, 1113f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-526f, 1361f) - vec2<f32>(-210f, 2609f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1305f, -823f), vec2<f32>(1635f, 658f)))))))));
    global1 = !select(select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(global1.x, true, var_0.b.x, var_0.b.x), vec4<bool>(global1.x, false, true, false), true), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(var_0.c.x, true, global1.x, false), vec4<bool>(global1.x, global1.x, var_0.c.x, true), vec4<bool>(global1.x, var_0.c.x, var_0.b.x, var_0.c.x))), vec4<bool>(var_0.c.x, all(vec3<bool>(global1.x, var_0.b.x, true)), true, true)), vec4<bool>(true, !(!global1.x), any(select(vec3<bool>(global1.x, false, var_0.b.x), vec3<bool>(false, true, true), global1.wxw)), !var_0.c.x), !(!select(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.c.x, true, true), var_0.b.x)));
    var var_2 = firstLeadingBit(arg_2.x);
    let var_3 = 20905i;
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    global0 = array<i32, 29>();
    global1 = !vec4<bool>(true, !func_3(vec4<i32>(-1i, -1i, global0[_wgslsmith_index_u32(u_input.b, 29u)], 14977i), 9350i, vec2<u32>(4294967295u, arg_0.x)), true, !(!select(false, true, global1.x)));
    var var_0 = ~1i;
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(abs(arg_1))))), !global1.wyw, abs(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(52204u, arg_0.x), 29u)]) << (4294967295u % 32u));
    let var_2 = Struct_3(6714i, select(select(select(vec4<bool>(true, global1.x, true, true), select(vec4<bool>(global1.x, false, var_1.c.x, true), vec4<bool>(false, var_1.c.x, var_1.c.x, false), false), select(vec4<bool>(var_1.c.x, global1.x, global1.x, global1.x), vec4<bool>(var_1.c.x, global1.x, false, var_1.c.x), var_1.c.x)), !select(vec4<bool>(global1.x, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(global1.x, global1.x, var_1.c.x, global1.x), vec4<bool>(false, true, true, true)), global1.x), !vec4<bool>(false, true && var_1.c.x, any(var_1.c), !global1.x), vec4<bool>(any(select(vec2<bool>(true, var_1.c.x), vec2<bool>(global1.x, var_1.c.x), global1.x)), true, (29585i < u_input.a) || (var_1.c.x | global1.x), true)));
    return Struct_1(-select(vec3<i32>(firstTrailingBit(0i), 1i, i32(-1i) * -2147483647i), ~(-u_input.d), var_2.b.wyw), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(!(!(!vec3<bool>(var_1.c.x, false, var_2.b.x))), !select(!var_1.c, vec3<bool>(false, true, var_2.b.x), true), !var_1.c), ~10661i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = Struct_3(~_wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_1.e.x, u_input.d.x, arg_2.a, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-18037i, 2770i, arg_1.c.a.x, -1i), vec4<i32>(1i, 17121i, 21214i, arg_2.a))), -firstTrailingBit(vec4<i32>(arg_1.e.x, arg_1.c.d, 46853i, global0[_wgslsmith_index_u32(u_input.c, 29u)]))), select(select(arg_2.b, select(select(arg_1.a.b, arg_1.a.b, arg_2.b), vec4<bool>(false, true, arg_2.b.x, arg_0.c.x), true), select(select(vec4<bool>(arg_2.b.x, arg_1.b, arg_2.b.x, global1.x), vec4<bool>(global1.x, false, true, false), vec4<bool>(true, true, true, false)), !vec4<bool>(global1.x, arg_2.b.x, arg_0.c.x, arg_2.b.x), select(vec4<bool>(arg_2.b.x, true, global1.x, arg_2.b.x), vec4<bool>(false, false, arg_2.b.x, arg_0.c.x), arg_2.b))), arg_1.a.b, arg_2.b));
    let var_1 = all(vec4<bool>(select(true, !(global0[_wgslsmith_index_u32(u_input.b, 29u)] >= 2147483647i), false), arg_1.d.x, any(vec2<bool>(true, any(var_0.b))), arg_1.d.x));
    global1 = vec4<bool>(true, !((u_input.b ^ ~320u) != 31094u), true, false);
    global1 = arg_2.b;
    global1 = !(!vec4<bool>(!(!arg_1.d.x), !any(vec2<bool>(true, true)), global1.x, true));
    return vec4<bool>(func_2(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(20334u, u_input.c, 31655u), vec3<u32>(64122u, 94248u, 16194u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 6285u, u_input.b) ^ vec3<u32>(u_input.c, u_input.c, 38117u), ~vec3<u32>(71995u, u_input.b, 44105u)), func_3(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], arg_2.a, 20420i, arg_1.e.x) | vec4<i32>(1i, 3100i, global0[_wgslsmith_index_u32(u_input.c, 29u)], 1i), var_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 28806u), vec2<u32>(u_input.c, u_input.b)))), _wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(arg_1.c.b * 1170f)))).c.x, var_0.b.x, true, all(!arg_1.a.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> StorageBuffer {
    global1 = !(!select(vec4<bool>(global1.x, !global1.x, true, true), vec4<bool>(false, 30409i > u_input.d.x, true, global1.x), !(!vec4<bool>(false, true, global1.x, true))));
    global1 = vec4<bool>(!(-u_input.d.x < -(-40967i >> (1u % 32u))), !(!(!(!global1.x))), global1.x, global1.x);
    var var_0 = Struct_3(-(i32(-1i) * -2147483647i), func_4(func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 169332u, u_input.b), vec3<u32>(26283u, u_input.b, 0u)), -794f), Struct_4(Struct_3(abs(arg_0.x), vec4<bool>(false, global1.x, true, false)), false, func_2(vec3<u32>(u_input.c, 73840u, u_input.c), -939f), vec2<bool>(global1.x && global1.x, global1.x), ~vec2<i32>(1i, -22939i)), Struct_3(u_input.a, select(!vec4<bool>(global1.x, false, false, global1.x), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, global1.x, false, false), global1.x), !global1.x))));
    var var_1 = var_0.b.wz;
    global1 = select(select(!vec4<bool>(true, !var_1.x, var_1.x, any(vec4<bool>(var_1.x, true, false, false))), vec4<bool>(true, all(vec2<bool>(true, false)), !func_3(vec4<i32>(0i, arg_0.x, u_input.d.x, 2147483647i), arg_0.x, vec2<u32>(u_input.c, u_input.b)), ~(-1i) <= abs(arg_0.x)), var_0.b), !vec4<bool>(true, any(func_2(vec3<u32>(u_input.b, u_input.c, 73389u), -1562f).c.zy), func_2(_wgslsmith_add_vec3_u32(vec3<u32>(17657u, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 4294967295u)), _wgslsmith_f_op_f32(2468f - 620f)).c.x, false), true);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, -1181f, 788f) - vec3<f32>(-652f, 1172f, -410f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1452f, 125f, 763f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1329f, 709f, 108f))))))), 97920u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u >> (u_input.c % 32u), _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 5599u), vec4<u32>(1u, u_input.c, 4294967295u, 1u))), 4294967295u), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(24150u, u_input.b, u_input.b), vec3<u32>(26065u, 9348u, u_input.b)) | (vec3<u32>(2760u, u_input.c, u_input.c) >> (vec3<u32>(u_input.b, 1u, 0u) % vec3<u32>(32u))), vec3<u32>(u_input.b, u_input.b, u_input.c), max(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(29711u, u_input.c, u_input.c), vec3<u32>(21242u, u_input.c, u_input.b), vec3<u32>(u_input.c, u_input.c, u_input.b))))), vec3<u32>(27179u << ((1u ^ u_input.b) % 32u), 47664u, 0u), vec3<u32>(1u, ~(~(~u_input.b)), firstLeadingBit(_wgslsmith_add_u32(u_input.b, u_input.b)) << (_wgslsmith_sub_u32(u_input.c, 25869u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1f)), -1125f));
    global1 = !(!(!(!select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), true))));
    let x = u_input.a;
    s_output = func_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], 0i, u_input.a, u_input.d.x), global1.x), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.c, 29u)], 40994i, -1i)), global0[_wgslsmith_index_u32(u_input.b | ~0u, 29u)], i32(-1i) * -1i), -4128i);
}

