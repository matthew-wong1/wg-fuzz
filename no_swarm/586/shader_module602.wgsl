struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = any(vec3<bool>(true, false, true));
    var var_1 = -51063i;
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, ~countOneBits(u_input.b)), ~arg_1.yxx ^ (~vec3<u32>(35813u, 6110u, u_input.b) << (~arg_1.xzy % vec3<u32>(32u)))), firstTrailingBit(arg_2.x));
    var var_3 = ~vec4<u32>(26966u, u_input.c, 21453u, ~(~(~10795u)));
    return select(!select(vec4<bool>(all(vec4<bool>(var_0, true, true, false)), var_0, any(vec3<bool>(var_0, true, true)), false), select(select(vec4<bool>(false, false, true, var_0), vec4<bool>(false, var_0, false, true), var_0), vec4<bool>(true, var_0, false, var_0), select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(false, false, false, var_0), vec4<bool>(false, var_0, var_0, var_0))), true), !vec4<bool>(_wgslsmith_mult_u32(arg_2.x, 0u) != countOneBits(arg_1.x), all(!vec3<bool>(var_0, false, var_0)), -1557f != _wgslsmith_f_op_f32(arg_0 * arg_0), false), !any(select(!vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, var_0), all(vec3<bool>(var_0, false, true)))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_1(select(select(!(!vec4<bool>(false, arg_0, false, true)), select(func_3(-1403f, vec4<u32>(u_input.c, u_input.b, u_input.b, 1u), vec2<u32>(53166u, 18655u)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), select(!vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), arg_0)), select(select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, arg_0, arg_0, true), false), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, false, true, true)), !(!vec4<bool>(false, false, arg_0, arg_0)), vec4<bool>(true, arg_0, arg_0 & false, true)), vec4<bool>(!arg_0, true, false, false)));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(vec4<bool>(true, true, !all(vec4<bool>(arg_0, arg_0, var_0.a.x, arg_0)), true));
    var_0 = Struct_1(vec4<bool>(true, false, true, -65289i == -var_1));
    var var_3 = firstLeadingBit(vec2<i32>(-1i, -27163i) >> (vec2<u32>(reverseBits(u_input.b), 31935u ^ u_input.c) % vec2<u32>(32u))) & ~vec2<i32>(-var_1, -61875i >> (_wgslsmith_clamp_u32(4294967295u, 0u, u_input.c) % 32u));
    return all(!(!(!var_2.a.yzz)));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = 635f;
    let var_1 = false;
    let var_2 = select(!vec2<bool>(any(!vec3<bool>(var_1, var_1, true)), all(select(vec3<bool>(false, true, var_1), vec3<bool>(false, true, false), false))), vec2<bool>(func_2(!(false && var_1)), !any(vec3<bool>(var_1, true, var_1))), !all(select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1)), select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(true, true)), var_1)));
    let var_3 = select(any(vec4<bool>(var_2.x, true, var_1, false)), true, false);
    let var_4 = !select(!all(var_2), var_3, true);
    return firstLeadingBit((reverseBits(_wgslsmith_div_i32(u_input.a, -37665i)) | _wgslsmith_clamp_i32(u_input.a, countOneBits(-2147483647i), -1369i)) | -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(17830i, ~(func_1(1434f, 54213u) << (~(~u_input.b) % 32u)));
    var var_1 = 553f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1058f, -555f) + 745f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(907f, _wgslsmith_div_f32(1683f, 1182f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f + -135f)) + _wgslsmith_f_op_f32(abs(-1092f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, -1260f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1020f, 1235f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(567f, -1502f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-778f, -1256f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-222f, -547f))))) * vec2<f32>(_wgslsmith_f_op_f32(985f * -571f), _wgslsmith_f_op_f32(-1287f * -120f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 319f) + vec2<f32>(-1079f, 943f)))))), !((-246f == _wgslsmith_f_op_f32(round(1114f))) | (u_input.a < _wgslsmith_sub_i32(var_0, u_input.a)))));
    var_1 = 1274f;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + 1743f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 39135u, 1u)), ~vec3<u32>(4294967295u, u_input.c, u_input.c)) | vec3<u32>(59642u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, u_input.b))), _wgslsmith_mod_vec3_u32(vec3<u32>(55755u, 4294967295u, 7425u) ^ ~vec3<u32>(u_input.b, u_input.b, u_input.b), ~(vec3<u32>(4294967295u, 1u, 2895u) ^ vec3<u32>(0u, u_input.c, u_input.b)))), 0u);
}

