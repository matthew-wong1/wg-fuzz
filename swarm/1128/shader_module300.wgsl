struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(4971u, 4294967295u, 0u)), Struct_1(vec3<u32>(108469u, 0u, 36u)), Struct_1(vec3<u32>(1u, 10003u, 3455u)), Struct_1(vec3<u32>(0u, 0u, 83462u)), Struct_1(vec3<u32>(64813u, 44441u, 1u)), Struct_1(vec3<u32>(0u, 31535u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 42480u, 32493u)), Struct_1(vec3<u32>(0u, 15265u, 112678u)), Struct_1(vec3<u32>(44938u, 859u, 4294967295u)), Struct_1(vec3<u32>(27014u, 30312u, 1u)));

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(arg_1.a));
    var var_1 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, global1.x, 43353u, arg_1.a.x), vec4<u32>(global1.x, arg_1.a.x, 13398u, global1.x) | vec4<u32>(global1.x, var_0.a.x, var_0.a.x, global1.x)), ~(arg_1.a.x ^ arg_1.a.x), ~934u, 80044u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(arg_0, arg_0))))), _wgslsmith_f_op_f32(ceil(-800f)));
    let var_3 = ~var_0.a;
    global1 = var_1.yz;
    return var_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    global1 = ~(vec2<u32>(_wgslsmith_add_u32(global1.x, 1u) >> (_wgslsmith_sub_u32(28539u, arg_1) % 32u), select(abs(global1.x), arg_2.a.x, true)) | ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), arg_2.a.xy));
    global1 = firstLeadingBit(~arg_2.a.yy);
    var var_0 = arg_3.yyw;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(157f)))), _wgslsmith_f_op_f32(step(955f, _wgslsmith_f_op_f32(sign(-1152f)))));
    return ~_wgslsmith_mod_i32(~reverseBits(-30603i | var_0.x), firstLeadingBit(~var_0.x));
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, global1.x, global1.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(83154u, 1u, global1.x), ~vec3<u32>(global1.x, global1.x, global1.x))), 150249u, global1.x, global1.x << (0u % 32u)), vec4<u32>(global1.x, 25206u, global1.x & max(~global1.x, reverseBits(0u)), global1.x)), 10u)];
    var var_1 = func_2(_wgslsmith_f_op_f32(183f * 1156f), Struct_1(var_0.a));
    let var_2 = vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, func_3(vec2<i32>(-1i, u_input.a), 1u, global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<i32>(u_input.a, u_input.a, u_input.a, -17283i))), 2147483647i), firstLeadingBit(2147483647i), 0i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(~7882i), ~_wgslsmith_mult_i32(u_input.a, -1i), -61151i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(18823i, u_input.a, 21627i), vec3<i32>(21889i, u_input.a, 2147483647i)), ~vec3<i32>(u_input.a, -2147483647i, u_input.a))));
    let var_3 = func_2(1180f, global0[_wgslsmith_index_u32(21843u, 10u)]);
    global1 = firstLeadingBit(~(~var_1.a.xx));
    return _wgslsmith_dot_vec4_i32(var_2, var_2) ^ abs(_wgslsmith_clamp_i32(-26005i, _wgslsmith_mod_i32(~(-2147483647i), i32(-1i) * -3839i), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1() >> (~4294967295u % 32u);
    var var_1 = func_2(-1176f, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(320f)))), func_2(_wgslsmith_f_op_f32(trunc(-1021f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 12303u), vec2<u32>(22805u, 32656u)), max(global1.x, 66832u)), 10u)])));
    let var_2 = func_2(1000f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1425f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -665f))), func_2(-148f, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(13376u, global1.x), 10u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 5509i, u_input.a), ~vec3<i32>(u_input.a, -670i, -1i), abs(vec3<i32>(u_input.a, u_input.a, u_input.a))) | vec3<i32>(u_input.a | -1i, u_input.a, 10895i)));
}

