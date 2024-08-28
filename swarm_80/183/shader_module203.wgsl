struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = select(vec2<bool>(!(u_input.c >= u_input.c) && (~23013u > u_input.c), true), vec2<bool>(!all(vec4<bool>(false, true, true, false)), true), vec2<bool>(true, all(vec4<bool>(true, any(vec2<bool>(false, false)), true, true))));
    var_0 = select(select(!vec2<bool>(var_0.x, var_0.x), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x)), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x), !var_0.x), select(!vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), all(vec4<bool>(false, false, var_0.x, true))))), !select(select(vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, true), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), true)), !select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), false), !vec2<bool>(true, var_0.x)), vec2<bool>(!select(all(vec4<bool>(var_0.x, true, var_0.x, true)), var_0.x, var_0.x), false));
    var_0 = vec2<bool>(true, all(vec4<bool>(false, true, true, var_0.x)));
    var_0 = select(select(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(var_0.x, true), select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), true)), vec2<bool>(all(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x))), _wgslsmith_f_op_f32(sign(499f)) > -166f), vec2<bool>(true, false)), vec2<bool>(var_0.x, var_0.x), var_0.x);
    var var_1 = min(abs(48242u), 1u);
    return 584f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-887f, -633f), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, -1i, arg_0.x, u_input.a)))), vec2<f32>(-565f, 1532f))) + vec2<f32>(_wgslsmith_f_op_f32(271f - -425f), 224f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-353f, -1325f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-286f, -929f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1400f, -504f))), true))));
    let var_1 = Struct_2(Struct_1(firstLeadingBit(~59168u), firstTrailingBit(u_input.c ^ arg_1.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 0u, 22911u), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, arg_1.x)) >> (arg_1.x % 32u), _wgslsmith_sub_u32(60161u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), -293f), ~56399u, u_input.a);
    var var_2 = vec3<i32>(arg_0.x, -_wgslsmith_sub_i32(u_input.a, reverseBits(var_1.c)) & -54236i, min(_wgslsmith_mult_i32(firstTrailingBit(-86599i & arg_0.x), -2147483647i), min(arg_0.x, 0i)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, var_1.a.d))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-653f, -146f)) * _wgslsmith_f_op_f32(-var_1.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f + 544f))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + -401f)))));
    let var_3 = var_1.a;
    return var_1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = (arg_1.x ^ select(-37162i, ~48080i, ~u_input.b.x > u_input.c)) ^ u_input.a;
    var var_1 = vec3<bool>(false, true, true);
    var var_2 = ~abs(arg_1.x);
    var_1 = vec3<bool>(!var_1.x, true, var_1.x);
    let var_3 = Struct_2(func_2(arg_1.xx, select(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 29321u, u_input.c), vec3<u32>(u_input.b.x, 22828u, 1u)), vec3<u32>(~4294967295u, arg_2 >> (u_input.c % 32u), 5086u), any(!var_1.xy))), ~1u, u_input.a | 14374i);
    return func_2(vec2<i32>(u_input.a, var_3.c), ~(~(~(~vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = -1i;
    let var_1 = ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 8490u, 38819u) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)))));
    var var_2 = Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(-1891f * _wgslsmith_f_op_f32(select(1248f, 101f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f * 590f))), _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(1i, u_input.a, 13620i)), vec3<i32>(~u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a), max(vec3<i32>(0i, u_input.a, u_input.a) | vec3<i32>(-17275i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, 1i))), u_input.b.x), u_input.b.x, firstTrailingBit(i32(-1i) * -(~u_input.a)));
    let var_3 = var_2.a;
    var var_4 = ~24223i & _wgslsmith_clamp_i32(34765i, ~abs(u_input.a) << (var_1.x % 32u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-firstLeadingBit(reverseBits(-4519i)), i32(-1i) * -var_2.c, 34372i), 0i, vec2<f32>(-604f, func_2(abs(reverseBits(vec2<i32>(u_input.a, -2147483647i))), ~(~var_1)).d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-4018f, 168f) - vec2<f32>(-420f, var_2.a.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-977f, var_3.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-206f, -968f), vec2<f32>(var_3.d, 521f))))) - vec2<f32>(var_3.d, -1519f)));
}

