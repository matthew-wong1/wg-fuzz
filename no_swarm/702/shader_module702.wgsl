struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<u32> {
    return ~(_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(45881u, 1u, 4294967295u)), ~(vec3<u32>(u_input.d, 44486u, u_input.d) | vec3<u32>(8010u, u_input.e, u_input.d))) ^ ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, 38864u), vec3<u32>(0u, 0u, u_input.e))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(vec3<i32>(u_input.b, -3244i, max(33854i, ~_wgslsmith_mod_i32(u_input.a.x, 27337i))), arg_0, select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, true, false), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))), select(vec4<bool>(select(true, false, true), false, any(vec4<bool>(false, false, false, false)), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))), !any(vec3<bool>(false, false, true))));
    var var_1 = Struct_1(-var_0.a, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, _wgslsmith_div_u32(u_input.e | u_input.d, arg_0.x)), arg_0), vec4<bool>(false, var_0.c.x, false, false));
    var var_2 = Struct_1(-vec3<i32>(var_0.a.x, 0i, u_input.b & var_1.a.x), firstLeadingBit(~(~vec2<u32>(var_1.b.x, u_input.d)) << (~(~vec2<u32>(0u, 6289u)) % vec2<u32>(32u))), select(var_1.c, vec4<bool>(var_1.c.x, all(var_1.c.xyx) && any(vec2<bool>(var_0.c.x, false)), !select(false, false, var_0.c.x), !var_0.c.x && !var_0.c.x), vec4<bool>(var_1.a.x <= -var_0.a.x, true, true, !(arg_0.x <= var_1.b.x))));
    let var_3 = all(!(!var_1.c.xw));
    let var_4 = func_2().x;
    return var_2.c.x;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = vec3<i32>(u_input.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(3109i, -1i, u_input.c), vec3<i32>(u_input.a.x, u_input.c, 51124i) | vec3<i32>(11394i, -1i, u_input.c)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-13405i, -58148i, u_input.a.x, -1i), vec4<i32>(u_input.b, -28227i, -14142i, 9907i)), ~vec4<i32>(0i, u_input.a.x, 0i, -1i)), _wgslsmith_mod_i32(-u_input.a.x, u_input.a.x)), reverseBits(~(-16824i))) >> (select(vec3<u32>(~13291u, u_input.e, u_input.d & 0u), func_2(), vec3<bool>((arg_0.x != 101f) | any(vec2<bool>(false, true)), !func_3(vec2<u32>(75591u, u_input.d)), true)) % vec3<u32>(32u));
    let var_1 = select(countOneBits(abs(vec2<u32>(4294967295u, u_input.e) ^ vec2<u32>(u_input.e, u_input.d)) ^ (vec2<u32>(55069u, u_input.e) << (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)))), vec2<u32>(u_input.e & ~(~u_input.d), _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.e, max(u_input.d, 886u)), ~u_input.e)), true);
    var var_2 = Struct_1(firstTrailingBit(abs(_wgslsmith_div_vec3_i32(select(vec3<i32>(17525i, var_0.x, var_0.x), vec3<i32>(var_0.x, 2147483647i, 0i), vec3<bool>(true, false, false)), vec3<i32>(u_input.c, 1i, u_input.a.x) | vec3<i32>(18152i, 1i, var_0.x)))), ~func_2().yz, !vec4<bool>(true, true, -18489i > (u_input.c >> (u_input.e % 32u)), false));
    let var_3 = vec4<bool>(var_2.c.x, false, true, var_2.c.x);
    let var_4 = 24428i << (_wgslsmith_dot_vec2_u32(~var_1, ~(abs(vec2<u32>(0u, var_2.b.x)) | ~vec2<u32>(87469u, u_input.e))) % 32u);
    return !vec2<bool>(true, any(var_2.c.xyz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)), any(func_1(vec2<f32>(1080f, 785f))), true, func_1(vec2<f32>(1043f, -945f)).x | true), vec4<bool>(!all(vec2<bool>(true, true)), true, select(true, true, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.c) == firstTrailingBit(-22568i)), all(vec3<bool>(true, true, true))), select(vec4<bool>((u_input.b >> (6670u % 32u)) == 0i, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_1 = vec2<bool>(var_0.x, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-2070f)))) > -961f));
    var var_2 = ~(-u_input.a.x);
    var_0 = select(!vec4<bool>(!any(var_0.wx), false, var_1.x, true), vec4<bool>(any(vec4<bool>(var_0.x, !var_1.x, var_1.x, select(false, var_1.x, false))), !func_1(vec2<f32>(-1000f, -1183f)).x, !var_1.x, false), true);
    let var_3 = Struct_1(~vec3<i32>(u_input.c, firstTrailingBit(_wgslsmith_mod_i32(1i, u_input.b)), reverseBits(25250i)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.d), _wgslsmith_add_u32(u_input.e, 38170u)), ~abs(vec2<u32>(u_input.e, 67513u))), !select(select(vec4<bool>(true, var_1.x, var_1.x, true), !vec4<bool>(var_1.x, var_0.x, false, false), !vec4<bool>(var_0.x, true, false, var_0.x)), vec4<bool>(true, all(var_0.zzw), !var_1.x, false), select(vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(var_1.x, var_0.x, true, var_1.x), vec4<bool>(true, var_0.x, var_0.x, var_1.x), vec4<bool>(var_1.x, true, var_0.x, var_1.x)), select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_0.x, var_0.x, var_1.x, true), vec4<bool>(var_0.x, var_1.x, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1147f))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-113f))), _wgslsmith_f_op_f32(f32(-1f) * -1531f), 280f));
}

