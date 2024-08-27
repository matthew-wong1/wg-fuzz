struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(!vec3<bool>(all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, true, true, true))), ~vec3<u32>(u_input.a, 16313u, u_input.a));
    let var_1 = 1i;
    var var_2 = 745f;
    let var_3 = Struct_1(-1530f);
    var var_4 = select(select(vec4<bool>(all(select(vec4<bool>(false, var_0.a.x, var_0.a.x, false), vec4<bool>(true, var_0.a.x, true, var_0.a.x), var_0.a.x)), true, var_0.a.x, var_0.a.x), select(!(!vec4<bool>(false, true, var_0.a.x, false)), select(!vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, false, false, false), all(vec4<bool>(var_0.a.x, var_0.a.x, false, true))), !var_0.a.x), select(select(select(vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, false)), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x)), vec4<bool>(true, !var_0.a.x, !var_0.a.x, !var_0.a.x), true)), vec4<bool>(true, !all(!vec4<bool>(var_0.a.x, var_0.a.x, false, false)), false, any(select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, true)), !vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), false || var_0.a.x))), any(select(select(!vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(true, true, false, var_0.a.x)), vec4<bool>(true, false, !var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x | true, true, true && var_0.a.x, var_0.a.x))));
    return vec4<i32>(max(0i, 18947i), var_1 << (~(~(~1u)) % 32u), countOneBits(firstLeadingBit(var_1 << (firstLeadingBit(34786u) % 32u))), 17951i);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    let var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2162f, 215f, var_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-762f, -1238f, 1214f), vec3<f32>(arg_1.a, arg_1.a, 781f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(913f, arg_1.a, var_0))))));
    var var_2 = vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, -34623i, 1i), vec4<i32>(-1i, 0i, 0i, 2147483647i))), ~_wgslsmith_mod_i32(-abs(0i), ~_wgslsmith_sub_i32(0i, 2147483647i)), -20027i);
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(func_3(), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.x, 855i, 2147483647i), vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x))), var_2.x ^ 2147483647i);
    var var_4 = Struct_2(select(vec3<bool>(!arg_2.a.x, _wgslsmith_f_op_f32(select(-501f, -969f, arg_2.a.x)) <= _wgslsmith_f_op_f32(-arg_1.a), any(arg_2.a)), arg_2.a, vec3<bool>(any(!vec2<bool>(arg_2.a.x, true)), true, !(!arg_0))), countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.b.x, 21311u, 1u), ~vec3<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x) & select(arg_2.b, vec3<u32>(arg_3.x, arg_2.b.x, 1u), vec3<bool>(false, arg_2.a.x, false)))));
    return ~(~(~94796u));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<u32>(~select(_wgslsmith_mult_u32(min(u_input.a, u_input.a), u_input.a), _wgslsmith_mod_u32(4294967295u >> (u_input.a % 32u), func_2(true, arg_0, Struct_2(vec3<bool>(true, true, false), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec2<u32>(u_input.a, 1u))), !any(vec2<bool>(false, true))), u_input.a);
    let var_1 = -firstTrailingBit(~(17872i >> (u_input.a % 32u))) & 1i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(502f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(331f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(951f - 1534f) + _wgslsmith_f_op_f32(ceil(arg_0.a)))))) * arg_0.a);
    var_2 = -1434f;
    var_0 = (~(~vec2<u32>(var_0.x, u_input.a) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.a, u_input.a))) << (~(~countOneBits(vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47294u, var_0.x), ~vec2<u32>(var_0.x, u_input.a)), 14663u), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), var_0.x));
    return reverseBits(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(var_0.x >> (0u % 32u), firstLeadingBit(0u), countOneBits(20396u)), max(u_input.a | 0u, _wgslsmith_clamp_u32(47720u, var_0.x, var_0.x)) ^ _wgslsmith_div_u32(select(1u, 20532u, false), reverseBits(0u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: i32) -> StorageBuffer {
    let var_0 = Struct_2(select(select(vec3<bool>(true, arg_1, arg_1), !(!vec3<bool>(arg_1, arg_1, arg_1)), arg_1), vec3<bool>(true, !(!arg_1), !arg_1 == arg_1), false), abs(arg_0));
    var var_1 = vec2<i32>(~select(~48447i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, -1i), vec2<i32>(-2147483647i, arg_2)), vec2<i32>(39696i, 0i)), var_0.a.x || arg_1), arg_2);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(558f - -313f), -540f)))), _wgslsmith_f_op_f32(sign(250f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-143f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-704f)) + _wgslsmith_f_op_f32(sign(-825f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(565f, -1463f))))))));
    var var_3 = select(vec4<u32>(~u_input.a, var_0.b.x, 1u, u_input.a << (var_0.b.x % 32u)), vec4<u32>(u_input.a, ~(~var_0.b.x), 1u, u_input.a), vec4<bool>(!var_0.a.x, !arg_1, any(!select(vec2<bool>(arg_1, var_0.a.x), var_0.a.zy, vec2<bool>(false, false))), true));
    var var_4 = var_0.a.x;
    return StorageBuffer(21796i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-491f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-324f, -778f, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-388f, -1330f)) + _wgslsmith_f_op_f32(-1316f - -1000f)))));
    var_0 = Struct_1(362f);
    var var_1 = -1i;
    let var_2 = Struct_2(vec3<bool>(true, 1000f <= var_0.a, all(vec2<bool>(true, false))), vec3<u32>(u_input.a, u_input.a, ~abs(u_input.a)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1286f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
    var var_3 = vec4<bool>(var_2.a.x, !(!(!all(vec4<bool>(true, var_2.a.x, false, var_2.a.x)))), true, true);
    let x = u_input.a;
    s_output = func_4(vec3<u32>(~72592u, var_2.b.x & var_2.b.x, ~func_1(Struct_1(var_0.a)) >> (abs(120793u) % 32u)), !var_2.a.x, -688i);
}

