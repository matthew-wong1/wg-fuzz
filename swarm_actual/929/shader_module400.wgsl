struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    return arg_0;
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = u_input.a.x >= 0u;
    let var_1 = _wgslsmith_mult_i32(1i, select(min(~1i, _wgslsmith_div_i32(u_input.b.x, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, 47346i), vec4<i32>(u_input.c.x, u_input.c.x, 0i, -2147483647i)) | ~0i, !var_0 && false)) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(38495u, u_input.a.x) & u_input.a) & vec2<u32>(min(94115u, u_input.a.x), 0u), u_input.a) % 32u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f), 212f), 1452f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 488f, arg_0))))));
    let var_4 = Struct_2(Struct_1(vec2<bool>(var_0 | !var_0, true)), Struct_1(vec2<bool>(var_0, var_0)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, _wgslsmith_f_op_f32(-arg_0), 375f, _wgslsmith_f_op_f32(arg_0 * 820f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, 156f, arg_0, var_3.x))))), vec4<f32>(_wgslsmith_f_op_f32(-2182f + _wgslsmith_f_op_f32(383f * -550f)), -333f, var_3.x, -386f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(select(arg_2.a, arg_0.a, !(!arg_0.a)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) - 2511f), _wgslsmith_f_op_f32(abs(arg_1.x)), !(abs(u_input.a.x) == ~4294967295u))), arg_1.x);
    let var_2 = false;
    var_1 = arg_1.xy;
    var_1 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(arg_1.x)));
    return select(vec3<bool>(true, false, false), !select(vec3<bool>(!var_0.a.x, any(vec2<bool>(arg_0.a.x, true)), !var_0.a.x), vec3<bool>(arg_2.a.x, arg_1.x >= arg_1.x, false), vec3<bool>(false, true, arg_0.a.x || false)), vec3<bool>(true, true, true));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = ~_wgslsmith_div_vec3_u32(abs(abs(vec3<u32>(u_input.a.x, 51269u, u_input.a.x))), ~(~vec3<u32>(1u, u_input.a.x, u_input.d) << (~vec3<u32>(u_input.d, u_input.d, u_input.a.x) % vec3<u32>(32u))));
    let var_1 = vec4<u32>(~51355u, ~firstLeadingBit(var_0.x), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(reverseBits(u_input.a.x), var_0.x)), 5331u);
    let var_2 = firstTrailingBit(~(~firstLeadingBit(0u)));
    var var_3 = select(func_4(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-123f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1129f, 304f, 409f, -1516f), vec4<f32>(615f, 400f, 1027f, -2152f))))), arg_2), !select(select(func_4(arg_2, vec4<f32>(831f, 1864f, -1000f, -681f), Struct_1(arg_0.xy)), func_4(Struct_1(arg_2.a), vec4<f32>(-319f, 511f, 848f, -1271f), Struct_1(vec2<bool>(arg_2.a.x, false))), arg_0), !(!arg_0), true), !any(select(vec3<bool>(arg_2.a.x, false, arg_2.a.x), arg_0, select(false, false, arg_2.a.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(507f, -129f, 1032f, -749f) + vec4<f32>(-410f, -401f, 700f, -956f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, -1489f, -1216f, -2063f))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1386f)), _wgslsmith_f_op_f32(floor(447f)))), _wgslsmith_f_op_f32(abs(-683f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-255f, -295f)) * -2603f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1173f, 337f)) - -1087f)))));
    return StorageBuffer(vec2<u32>(~u_input.d >> (var_1.x % 32u), 7837u), var_4.zyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (i32(-1i) * -max(u_input.b.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), vec3<i32>(15646i, u_input.c.x, 30801i)))) & -(-1i | countOneBits(max(u_input.c.x, u_input.b.x)));
    let var_1 = u_input.b;
    var var_2 = !select(true, false, !((u_input.a.x <= 1u) & true));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(534f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-607f, -115f)))), _wgslsmith_f_op_f32(f32(-1f) * -286f));
    var_2 = any(select(vec4<bool>(false, any(vec2<bool>(true, true)), select(false, false, true), all(vec3<bool>(true, false, true))), vec4<bool>(var_3.x == -1000f, true, all(vec3<bool>(false, true, true)), true), false)) && (_wgslsmith_f_op_f32(-var_3.x) > _wgslsmith_f_op_f32(ceil(-1721f)));
    let x = u_input.a;
    s_output = func_2(vec3<bool>(false, true, true), -select(vec3<i32>(-2147483647i >> (u_input.d % 32u), var_1.x, func_1(u_input.c.x, vec3<u32>(2250u, u_input.a.x, 4294967295u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, 1i), vec3<i32>(var_1.x, 46612i, -47407i) >> (vec3<u32>(u_input.d, 112029u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(-1i, u_input.c.x, var_1.x)), false), Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))))));
}

