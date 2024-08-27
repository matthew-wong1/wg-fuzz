struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_2;
    let var_2 = ~vec3<u32>(~arg_2.d, _wgslsmith_clamp_u32(~reverseBits(var_1.d), 1u, 0u), firstTrailingBit(var_0.d));
    var var_3 = Struct_1(-1000f, -vec2<i32>(1i, arg_2.b.x ^ 16326i) >> (~(~_wgslsmith_sub_vec2_u32(u_input.a, var_2.yy)) % vec2<u32>(32u)), all(vec4<bool>(true, false, var_1.c, true)), 1u, true);
    let var_4 = select(select(select(select(!vec4<bool>(true, var_0.e, false, true), vec4<bool>(var_1.c, arg_0.e, var_1.e, arg_0.e), !vec4<bool>(false, var_3.c, true, true)), select(select(vec4<bool>(false, true, arg_0.e, true), vec4<bool>(var_0.e, arg_0.e, var_3.c, false), true), select(vec4<bool>(arg_0.c, false, var_3.e, true), vec4<bool>(var_1.e, arg_2.c, var_1.e, arg_0.c), arg_2.c), arg_0.e), vec4<bool>(any(vec2<bool>(arg_2.e, var_1.e)), all(vec3<bool>(false, arg_0.c, true)), var_3.c && arg_0.c, select(arg_2.e, true, arg_0.e))), !vec4<bool>(true, -7793i > var_0.b.x, arg_0.a < var_1.a, var_0.c), !(!vec4<bool>(true, false, false, var_1.e))), !(!vec4<bool>(arg_0.e && true, true || var_0.e, !var_1.e, all(vec2<bool>(false, true)))), arg_2.c);
    return !var_3.c || true;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = true;
    let var_2 = select(!select(vec2<bool>(false, false), !select(vec2<bool>(var_0.c, true), vec2<bool>(true, var_0.e), true), true), vec2<bool>(all(!select(vec2<bool>(var_0.e, var_1), vec2<bool>(false, false), var_0.c)), var_1), vec2<bool>(select(var_0.e, any(select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(true, true))), true), false));
    var var_3 = select(_wgslsmith_add_vec4_i32(vec4<i32>(-var_0.b.x, -(~var_0.b.x), arg_0.b.x, -1i), (_wgslsmith_sub_vec4_i32(vec4<i32>(31775i, arg_0.b.x, -13877i, var_0.b.x), vec4<i32>(36370i, 32739i, var_0.b.x, 22034i)) | (vec4<i32>(1i, arg_0.b.x, 1i, arg_0.b.x) | vec4<i32>(4599i, 2506i, arg_0.b.x, -20666i))) ^ (~vec4<i32>(1i, -2147483647i, -25692i, var_0.b.x) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, var_0.b.x, arg_0.b.x), vec4<i32>(-27025i, var_0.b.x, 0i, -1i)))), vec4<i32>(_wgslsmith_add_i32(arg_0.b.x, var_0.b.x), _wgslsmith_mult_i32(~var_0.b.x, arg_0.b.x) & arg_0.b.x, var_0.b.x, var_0.b.x), var_1);
    return !any(select(var_2, var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(1040u, 13852u, arg_0.d, arg_0.d), vec4<u32>(16752u, 50390u, 36186u, u_input.a.x)) >= u_input.b));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-550f));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.a.x, ~0u), ~vec4<u32>(_wgslsmith_add_u32(u_input.b, 4294967295u | u_input.b), firstLeadingBit(select(22885u, u_input.a.x, true)), u_input.b, 0u), countOneBits(select(vec4<u32>(u_input.a.x, 70135u, u_input.a.x, countOneBits(61113u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 17769u, u_input.b, 41295u)), vec4<bool>(true, true, true, true))));
    let var_2 = select(u_input.a.x, var_1.x, select(func_4(Struct_1(_wgslsmith_f_op_f32(abs(605f)), vec2<i32>(arg_0, 0i), arg_0 > arg_0, abs(1u), func_3(Struct_1(875f, vec2<i32>(2147483647i, arg_0), true, var_1.x, true), vec2<f32>(-353f, -797f), Struct_1(1000f, vec2<i32>(arg_0, 1i), true, 4294967295u, true), vec2<f32>(-519f, 1121f)))), !(!all(vec2<bool>(false, true))), true));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-382f, 162f, 1u != u_input.b)) + _wgslsmith_f_op_f32(max(-447f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-667f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))))));
    let var_3 = vec2<i32>(arg_0, ~countOneBits(~arg_0 ^ ~arg_0));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(993f - 1095f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(558f)) * -3575f)))), vec2<i32>(-max(1i, var_3.x) ^ 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), var_3.x, -arg_0), ~(-vec3<i32>(var_3.x, var_3.x, -58487i)))), all(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), u_input.b, false);
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(u_input.b, ~u_input.a.x);
    let var_1 = func_2(~_wgslsmith_sub_i32(45262i, _wgslsmith_dot_vec3_i32(arg_0.wxz, vec3<i32>(7228i, 6066i, -38259i)) | -arg_0.x));
    var_0 = 1u;
    var var_2 = func_2(_wgslsmith_dot_vec4_i32(arg_0, arg_0));
    var var_3 = _wgslsmith_dot_vec4_i32(arg_0, countOneBits(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.b.x), var_2.b), 21369i, var_1.b.x, -10545i)));
    return vec2<bool>(!var_2.e, func_2(firstTrailingBit(~var_1.b.x)).c || (var_2.b.x != _wgslsmith_sub_i32(var_1.b.x, _wgslsmith_mult_i32(arg_0.x, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1508f))), max(firstTrailingBit(vec2<i32>(2147483647i, 2147483647i) >> (firstTrailingBit(vec2<u32>(3030u, u_input.a.x)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, 24691i), 1i, ~0i), 112395i)), select(all(func_1(firstLeadingBit(vec4<i32>(5240i, 66087i, -1i, -3410i)))), abs(select(54334u, u_input.a.x, false)) > ~max(0u, u_input.a.x), select(!all(vec2<bool>(true, false)), true, func_2(2147483647i).c)), 29818u, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(395f, 2690f, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1830f, 2052f, var_0.a) - vec3<f32>(var_0.a, var_0.a, -134f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 139f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(258f, 915f, var_0.a), vec3<f32>(var_0.a, var_0.a, 241f), var_0.c)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a - 488f), var_0.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f) - 621f), _wgslsmith_f_op_f32(-131f + 323f)))));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, ~abs(var_0.b.x)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(0i, -2147483647i, -894f, ~37946u & ~(~(~u_input.b)), select(~(reverseBits(vec3<u32>(4294967295u, 0u, var_0.d)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 6150u), vec3<u32>(u_input.a.x, 41878u, 58745u)) % vec3<u32>(32u))), ~(~vec3<u32>(1u, 4294967295u, var_0.d)), all(select(select(vec2<bool>(true, var_0.e), vec2<bool>(false, var_0.c), var_0.c), !vec2<bool>(true, var_0.e), func_1(vec4<i32>(var_0.b.x, 2147483647i, -2920i, var_0.b.x))))));
}

