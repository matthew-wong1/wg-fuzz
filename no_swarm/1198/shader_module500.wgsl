struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(822f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -879f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -164f))))), false, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 1u, 1u, ~0u & abs(arg_0.x)), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, arg_0.x, 39674u) | vec4<u32>(u_input.a, 56778u, 0u, arg_0.x)), vec4<u32>(arg_0.x, 11673u, u_input.b.x, arg_0.x) << (firstLeadingBit(vec4<u32>(99383u, u_input.a, 4294967295u, 9197u)) % vec4<u32>(32u))), ~(~select(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x), vec4<u32>(u_input.a, 5140u, 4056u, 1u), vec4<bool>(true, true, false, true)))), max(select(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, arg_0.x, 1u)), 73177u), firstTrailingBit(u_input.b.yz), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<u32>(~arg_0.x, 57575u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x))), 679f, var_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - var_0.a.x), var_0.b))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))))), 122f, var_1.x), any(!vec3<bool>(true, all(vec4<bool>(var_0.b, var_0.b, false, false)), var_0.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(min(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 74606u | var_0.c.x), 11778u, 4294967295u, 77825u >> (_wgslsmith_sub_u32(u_input.a, var_0.c.x) % 32u)), _wgslsmith_sub_vec4_u32(~firstTrailingBit(var_0.c), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, var_0.d.x, arg_0.x, var_0.d.x), var_0.c, ~vec4<u32>(22877u, 4294967295u, u_input.a, arg_0.x))), vec4<u32>(~92135u, ~13933u, abs(~1u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, 11358u), vec3<u32>(1u, 26925u, 1u)), vec3<u32>(var_0.c.x, 64229u, 4294967295u)))), firstTrailingBit(~_wgslsmith_div_vec2_u32(arg_0, vec2<u32>(u_input.a, 4294967295u))) << (vec2<u32>(1u, ~reverseBits(48479u)) % vec2<u32>(32u)));
    var var_3 = var_0.a.x;
    let var_4 = select(vec2<bool>(true, any(!(!vec2<bool>(true, var_2.b)))), vec2<bool>(true, true), true);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(floor(var_2.a.x)), all(vec3<bool>(var_4.x, true, false))))) - var_1.x)));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(arg_0.x, 30599u), 24325i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(180f + 977f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(var_0, 1267f)))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 * 1f))), var_0, -1931f), any(vec4<bool>(true, true, true, true)), vec4<u32>(1u, ~(~arg_0.x), arg_0.x, abs(~28473u)), u_input.b.zz);
    return u_input.c;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_dot_vec2_i32((vec2<i32>(arg_2.x, -arg_2.x) | arg_2) << (~vec2<u32>(~0u, var_0.d.x) % vec2<u32>(32u)), vec2<i32>(arg_2.x, func_2(~var_0.c.xyy)));
    return all(select(select(select(vec2<bool>(true, var_0.b), vec2<bool>(false, false), false), vec2<bool>(false, var_0.b), select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, false), vec2<bool>(true, arg_1.b))), !(!vec2<bool>(arg_1.b, false)), vec2<bool>(true, true))) || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -1005f)), -970f) == _wgslsmith_f_op_f32(select(-1429f, -171f, false)), true, !select(select(true, false, false), func_1(258f, Struct_1(vec3<f32>(-997f, -2246f, 113f), true, vec4<u32>(u_input.b.x, 4294967295u, 40868u, 0u), u_input.b.xy), vec2<i32>(u_input.c, 1i)), true)), !select(vec3<bool>(false, true, true), vec3<bool>(u_input.c <= u_input.c, true, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))));
    let var_1 = select(var_0, select(select(var_0, !select(var_0, vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(u_input.c <= -48283i, !var_0.x, var_0.x)), var_0, var_0), select(var_0, !vec3<bool>(false, true, !var_0.x), !var_0.x));
    var var_2 = ~min(u_input.b.x, ~_wgslsmith_add_u32(~u_input.b.x, u_input.b.x));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, 17025u)), -32178i & u_input.c)))), -649f), _wgslsmith_f_op_f32(select(-420f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-633f * _wgslsmith_f_op_f32(f32(-1f) * -1260f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1206f))))));
    var_2 = 0u << (~(~u_input.b.x) % 32u);
    var var_4 = abs(_wgslsmith_mod_vec2_i32(~(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 2147483647i)) | -vec2<i32>(u_input.c, 23295i)), vec2<i32>((u_input.c | 4741i) & ~u_input.c, abs(u_input.c))));
    let var_5 = -878f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, firstTrailingBit(firstTrailingBit(4294967295u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), ~u_input.b.xx) % 32u), 1u), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 72006u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x))), select(vec4<u32>(15930u, 30479u, u_input.b.x, 0u), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x)), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, false, true, true), var_0.x))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11599u, 53428u, 4294967295u, u_input.a), vec4<u32>(21286u, 3429u, 1u, u_input.a)), firstLeadingBit(113182u), ~u_input.a, u_input.b.x ^ u_input.a)), -647f);
}

