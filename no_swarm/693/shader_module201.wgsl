struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec4<i32>(-_wgslsmith_mod_i32(-1i, firstLeadingBit(select(-2147483647i, 73173i, arg_0.x))), -31771i, ~firstTrailingBit(1i), i32(-1i) * -_wgslsmith_sub_i32(-26518i, 8535i));
    let var_1 = ~var_0.x;
    var var_2 = 254f;
    let var_3 = Struct_2(Struct_1(!arg_0, abs(var_0.x), _wgslsmith_add_i32(firstLeadingBit(var_0.x) ^ var_0.x, ~firstLeadingBit(0i))), vec3<u32>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.a, 56997u), vec2<u32>(u_input.a, u_input.a), arg_0.x), countOneBits(max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 4294967295u)))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 72239u, u_input.a), vec3<u32>(41079u, u_input.a, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)))), ~_wgslsmith_clamp_u32(abs(u_input.a), u_input.a, ~u_input.a)));
    let var_4 = Struct_1(vec2<bool>(var_3.a.a.x || var_3.a.a.x, false), _wgslsmith_dot_vec3_i32(var_0.xzy, ~(-_wgslsmith_clamp_vec3_i32(var_0.ywz, vec3<i32>(var_0.x, -1i, -2147483647i), var_0.yxy))), max(-44686i, var_0.x));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = vec3<i32>(arg_0, ~(~arg_0), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, arg_0, arg_0), vec3<bool>(true, false, false)), ~vec3<i32>(-2147483647i, arg_0, arg_0)) & 16422i);
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_2(Struct_1(select(var_1.zy, select(var_1.xx, select(vec2<bool>(false, var_1.x), var_1.yz, var_1.zz), var_1.x & var_1.x), var_1.zy), -arg_0, ~arg_0), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(arg_1, arg_1, arg_1)), vec3<u32>(1u, abs(0u), func_3(var_1.yz))));
    let var_3 = arg_0;
    let var_4 = var_1.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(774f + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f - _wgslsmith_div_f32(-1600f, -266f)))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2.a;
    let var_1 = firstTrailingBit(arg_2.b.x);
    var var_2 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f + arg_1.x) + -1479f))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) * -568f) + _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-29771i, arg_2.a.c, arg_2.a.c, var_0.c), vec4<i32>(var_0.c, arg_2.a.b, -5097i, arg_2.a.c)), ~1u))))));
    var_2 = arg_1.x;
    return arg_2;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = !vec3<bool>(-272f <= arg_0, true, false);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    var var_3 = Struct_1(!select(!(!var_0.zx), var_0.xz, select(!vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), all(vec2<bool>(var_0.x, false)))), i32(-1i) * -2147483647i, ~(-(i32(-1i) * -2147483647i)));
    let var_4 = func_4(!all(vec2<bool>(true, !var_3.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(func_2(-(~var_3.c), 27809u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(526f, var_2), _wgslsmith_f_op_f32(step(var_2, 393f)), !var_3.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2)))))), Struct_2(Struct_1(vec2<bool>(true, true), 12228i, select(firstLeadingBit(var_3.c), var_3.c, !var_0.x)), vec3<u32>(firstLeadingBit(1u), select(2359u, ~0u, var_3.c <= -1i), ~0u)));
    return false;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> StorageBuffer {
    var var_0 = vec4<f32>(arg_3, -391f, _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - arg_3)), true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3)))), _wgslsmith_f_op_f32(-arg_3), true)));
    var var_1 = !(!(!vec3<bool>(arg_1.x, arg_1.x, true)));
    var var_2 = vec3<u32>(reverseBits(firstLeadingBit(1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_4(arg_1.x, vec3<f32>(209f, 260f, var_0.x), Struct_2(Struct_1(arg_1.xw, arg_2, 33469i), vec3<u32>(u_input.a, u_input.a, u_input.a))).b << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(20174u, 4294967295u, arg_0)) % vec3<u32>(32u)), abs(countOneBits(vec3<u32>(arg_0, 0u, 0u)))), 0u | _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 19102u, 1640u), countOneBits(vec3<u32>(u_input.a, 1u, arg_0)))), _wgslsmith_add_u32(~1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0, 61600u, arg_0), vec4<u32>(0u, u_input.a, u_input.a, 1u)), 74086u));
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - var_0.x), -115f)), var_2.xz, max(~(vec4<u32>(u_input.a, var_2.x, var_2.x, arg_0) ^ vec4<u32>(arg_0, 20380u, u_input.a, var_2.x)), vec4<u32>(1u, max(u_input.a, var_2.x), select(u_input.a, 0u, arg_1.x), 43822u)) << ((vec4<u32>(reverseBits(arg_0), var_2.x, 0u, u_input.a | 1u) ^ min(firstLeadingBit(vec4<u32>(var_2.x, 92945u, 4294967295u, var_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 2343u, 14126u, 26827u), vec4<u32>(0u, 1u, u_input.a, arg_0)))) % vec4<u32>(32u)), ~vec4<i32>(-abs(-1i), _wgslsmith_mod_i32(arg_2, select(arg_2, arg_2, false)), arg_2, 49126i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, -1104f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(263f, 1265f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + 1865f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1125f, -699f, 1062f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1389f, 434f, -1270f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-826f, -1211f, 573f)))))));
    var var_1 = firstLeadingBit(~4294967295u);
    var var_2 = ~(-2147483647i);
    var_1 = abs(min(4294967295u, 37265u)) << (~_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u) % 32u);
    var_1 = 4294967295u;
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, var_0.x, -860f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-440f, var_0.x, 249f)))))))));
    let x = u_input.a;
    s_output = func_5(4294967295u, select(vec4<bool>(func_1(_wgslsmith_f_op_f32(max(-577f, 2172f))), true, true, any(vec4<bool>(false, true, true, true)) && any(vec4<bool>(false, true, true, true))), select(vec4<bool>(any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, 19707u < u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), vec4<bool>(_wgslsmith_f_op_f32(abs(1000f)) > _wgslsmith_f_op_f32(abs(var_0.x)), true, !all(vec2<bool>(false, false)), !all(vec2<bool>(false, false)))), i32(-1i) * -1i, var_0.x);
}

