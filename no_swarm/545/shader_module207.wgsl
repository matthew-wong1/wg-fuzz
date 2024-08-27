struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -884f;

var<private> global1: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1314f + 1163f))))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -116f))))) * -978f)));
    var var_1 = Struct_1(u_input.b, !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(566f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1587f, -561f)), -621f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-690f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1164f);
    return ~select(~vec2<u32>(_wgslsmith_sub_u32(0u, 0u), 0u), vec2<u32>(1u, 15257u), !any(!vec2<bool>(var_1.b.x, true)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-265f, -823f)), -1481f))) > -2046f, false);
    let var_1 = min(_wgslsmith_clamp_vec2_u32(func_3(), firstLeadingBit(firstLeadingBit(vec2<u32>(42323u, 0u))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))) ^ ~_wgslsmith_add_vec2_u32(~vec2<u32>(27939u, 58572u), min(vec2<u32>(1u, 0u), vec2<u32>(0u, 0u))), ~vec2<u32>(1u, 1u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1605f * -198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1705f)))) + 672f));
    global1 = all(!(!(!vec2<bool>(false, var_0.x))));
    global1 = false;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = func_2(Struct_2(~u_input.c));
    global1 = false;
    var var_1 = (vec2<u32>(~17918u, 4294967295u << (max(0u, 0u) % 32u)) | select(vec2<u32>(abs(46870u), 0u), vec2<u32>(1u, 1u), true)) ^ vec2<u32>(~firstLeadingBit(4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13884u, 0u, 37323u), vec4<u32>(0u, 0u, 1u, 31970u)), ~4294967295u) << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(75680u, 15384u, 4294967295u), vec3<u32>(25392u, 1u, 1u), false), abs(vec3<u32>(3773u, 4294967295u, 40090u))) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0), vec3<f32>(972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) - _wgslsmith_f_op_f32(-arg_0.x))), -2018f)));
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(max(arg_0.x, 853f)))) > -779f);
    return ~10268u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(1u, _wgslsmith_mod_u32(~1u ^ firstTrailingBit(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, firstTrailingBit(4294967295u)), vec2<u32>(27297u, func_1(vec3<f32>(-1164f, 3568f, 199f))))), firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(64858u, 4294967295u, 41688u))));
    var var_1 = _wgslsmith_div_vec3_i32(firstTrailingBit(firstLeadingBit(~u_input.b.zyx | vec3<i32>(u_input.a, u_input.c.x, 1i))), (abs(select(u_input.b.xzz, u_input.b.yyy, vec3<bool>(true, true, true))) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c.x, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, -1i)) << (vec3<u32>(4294967295u, 24716u, 72979u) % vec3<u32>(32u)))) ^ max(select(-u_input.b.yxy, -u_input.b.wyw, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), vec3<i32>(-13206i, _wgslsmith_mult_i32(u_input.b.x, 1i), 1i)));
    var var_2 = ~_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(4486u, var_0.x, var_0.x, var_0.x), ~vec4<u32>(var_0.x, 64115u, 4294967295u, 30778u)), ~(~vec4<u32>(var_0.x, 2425u, var_0.x, var_0.x)) >> ((abs(vec4<u32>(4294967295u, var_0.x, 0u, var_0.x)) ^ (vec4<u32>(var_0.x, var_0.x, var_0.x, 24718u) << (vec4<u32>(1u, 29532u, var_0.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global1 = any(vec2<bool>(true, true)) && (true | !all(vec3<bool>(true, true, true)));
    var_2 = vec4<u32>(10409u, ~(~min(~25020u, reverseBits(var_2.x))), select(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, var_2.x), vec4<u32>(1u, 4294967295u, 12330u, var_2.x)) ^ ~var_2.x, abs(select(901u, var_2.x, true))), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.x, 1u), 13295u), max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-231f)), _wgslsmith_f_op_f32(-108f * -987f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -624f))), 25136u & var_2.x);
    var_1 = -u_input.b.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3171f), -810f, true)))) - -1996f), var_0.xy, _wgslsmith_f_op_f32(min(138f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, 380f, true)), _wgslsmith_f_op_f32(min(151f, -874f)), true))))), reverseBits(abs(firstLeadingBit(reverseBits(vec2<u32>(25920u, var_0.x))))));
}

