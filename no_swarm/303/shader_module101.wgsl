struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(max(~firstLeadingBit(49654u), ~1u), vec2<u32>(1u, countOneBits(~4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 34048u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))));
    var var_1 = all(vec4<bool>(false, !any(vec2<bool>(false, false)), all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !((u_input.a != u_input.a) && all(vec3<bool>(true, false, false)))));
    var var_2 = reverseBits(_wgslsmith_clamp_i32(10686i, _wgslsmith_clamp_i32(abs(24314i), u_input.a, u_input.a), (-23735i << (0u % 32u)) ^ ~u_input.a)) >> (59651u % 32u);
    var var_3 = Struct_1(_wgslsmith_mod_u32(var_0.b.x, var_0.b.x) << (abs(1u) % 32u), vec2<u32>(var_0.a, ~6656u));
    var_3 = Struct_1(88439u, _wgslsmith_sub_vec2_u32(~(~(vec2<u32>(0u, var_3.b.x) << (var_0.b % vec2<u32>(32u)))), vec2<u32>(4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, var_0.b.x, var_3.a, var_0.a), vec4<u32>(var_3.b.x, var_0.a, 32186u, 0u))))));
    return countOneBits(var_0.b);
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 50188u, 7847u), vec3<u32>(1u, 1u, 1u), all(vec2<bool>(false, false))), max(select(vec3<u32>(1u, 22810u, 53699u), vec3<u32>(12310u, 13234u, 7454u), vec3<bool>(true, true, true)), vec3<u32>(1u, 1u, 1u))) >> (_wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(66196u, 1u, 10171u), vec3<u32>(57322u, 107896u, 1u), vec3<bool>(false, true, false))), vec3<u32>(max(0u, 0u), _wgslsmith_div_u32(4792u, 4294967295u), 52097u)) % 32u), abs(~vec2<u32>(10067u, 1u) << ((vec2<u32>(13253u, 4294967295u) & func_3()) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = ~vec4<u32>(max(arg_1, 32600u) & arg_1, ~68634u, arg_0.a, arg_1 >> (40127u % 32u));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_mult_u32(select(var_0.x | ~1u, arg_0.b.x, !select(true, true, true)), arg_1);
    let var_3 = _wgslsmith_dot_vec2_i32(-(reverseBits(-vec2<i32>(u_input.a, 2147483647i)) & vec2<i32>(abs(-2147483647i), min(-1i, u_input.a))), vec2<i32>(((u_input.a << (4294967295u % 32u)) >> (~arg_1 % 32u)) << (~(~1u) % 32u), ~countOneBits(i32(-1i) * -6531i)));
    var_1 = i32(-1i) * -u_input.a;
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    var var_0 = func_4(func_2(), 58299u);
    var var_1 = func_2();
    var var_2 = -15630i;
    var_0 = Struct_1(~abs(~1u) >> (var_0.a % 32u), abs(~_wgslsmith_div_vec2_u32(func_3(), max(vec2<u32>(var_1.a, 31953u), vec2<u32>(var_0.a, var_1.b.x)))));
    var_2 = u_input.a;
    return -(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~select(abs(4294967295u), ~0u, false) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(44227u, 0u, 4294967295u), vec3<u32>(0u, 19629u, 62114u)), vec3<u32>(5771u, 1u, 4931u)), _wgslsmith_clamp_u32(~1u, 0u, ~1u)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, u_input.a | u_input.a), ~func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(737f, -270f, 393f, -1000f) - vec4<f32>(-1123f, -1000f, 699f, -1562f)), -u_input.a), 1i);
    var_1 = ~u_input.a;
    let var_2 = Struct_1(4294967295u, countOneBits(vec2<u32>(func_2().b.x, ~_wgslsmith_sub_u32(var_0, var_0))));
    let var_3 = vec3<u32>(~var_2.a, max(var_2.b.x, reverseBits(1u)), var_2.b.x);
    let var_4 = all(vec3<bool>(1428u > _wgslsmith_sub_u32(1u, var_0), false, true)) | true;
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(-1i & (u_input.a | u_input.a))), vec3<u32>(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_0, 1u), ~var_3), abs(abs(countOneBits(4294967295u)))), 49772i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1623f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -889f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - vec2<f32>(-1789f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(378f, -499f) + 658f))));
}

