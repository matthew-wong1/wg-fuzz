struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_2 {
    var var_0 = 12100u;
    let var_1 = Struct_1(global0.x & (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-968f * -134f))) != -984f), -2147483647i);
    var var_2 = any(vec4<bool>(any(vec2<bool>(var_1.a, false)), global0.x, false, true));
    var var_3 = Struct_2(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1227f))));
    let var_4 = var_3.a;
    return Struct_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)) * -1096f)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> Struct_2 {
    return func_2();
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> i32 {
    global0 = select(vec4<bool>(arg_0.a.a, true, ~(~arg_0.a.b) == _wgslsmith_mod_i32(firstLeadingBit(arg_0.a.b), -49201i), global0.x), !vec4<bool>(func_2().a.a, arg_1 <= arg_0.b, true, true), vec4<bool>((_wgslsmith_mod_u32(u_input.b, 22129u) | _wgslsmith_mod_u32(u_input.a.x, u_input.b)) > abs(0u), func_2().a.a | (-926f > _wgslsmith_f_op_f32(-arg_2)), false, global0.x));
    let var_0 = func_1(func_2().a, (~(-48874i >> (u_input.b % 32u)) | -(arg_0.a.b & 2168i)) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(~0u, u_input.b), 1u) % 32u), _wgslsmith_f_op_f32(trunc(arg_0.b)));
    global0 = select(!select(vec4<bool>(global0.x && var_0.a.a, true, -45835i > var_0.a.b, !arg_0.a.a), vec4<bool>(all(global0.zw), global0.x, global0.x, arg_0.a.a), !select(vec4<bool>(true, false, global0.x, var_0.a.a), vec4<bool>(global0.x, var_0.a.a, false, global0.x), arg_0.a.a)), select(vec4<bool>(arg_0.a.a, all(!vec4<bool>(false, false, var_0.a.a, global0.x)), true, false), vec4<bool>(var_0.a.a, (true & global0.x) || select(false, true, var_0.a.a), !select(arg_0.a.a, false, var_0.a.a), true), var_0.a.a), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1490f, arg_1, 878f), vec3<f32>(-1092f, arg_2, -106f), global0.x))))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(var_0.a, var_0.a.b | ~0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + 2090f), var_1.x)).b) * 178f);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(func_1(Struct_1(global0.x, 6465i), -11759i, var_0.b).a.b, i32(-1i) * -1i), -firstTrailingBit(-2147483647i), ~(-2147483647i)), ~firstTrailingBit(countOneBits(vec3<i32>(arg_0.a.b, var_0.a.b, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var_0 = abs(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), func_3(func_1(Struct_1(global0.x, 67772i), -42489i, 1293f), 1209f, 1000f)) ^ 1i);
    global0 = vec4<bool>(true, !global0.x, any(select(select(vec4<bool>(global0.x, false, global0.x, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, true, false), vec4<bool>(false, true, global0.x, global0.x)), global0.x), select(vec4<bool>(true, global0.x, true, true), vec4<bool>(true, true, true, true), !global0.x), !vec4<bool>(false, global0.x, global0.x, true))), true);
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(~func_1(Struct_1(global0.x, -2147483647i), ~(-2147483647i), _wgslsmith_f_op_f32(-2382f + -3398f)).a.b, ~1i, reverseBits(func_1(func_1(Struct_1(global0.x, -44548i), 2147483647i, 636f).a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(46243i, 7032i)), _wgslsmith_f_op_f32(abs(-618f))).a.b), min(-_wgslsmith_div_i32(-1i, -1i), -10948i)), _wgslsmith_sub_vec4_i32(min(~vec4<i32>(16241i, 0i, 1i, 16099i), max(vec4<i32>(-1i, -56461i, -2147483647i, -30680i), vec4<i32>(1i, 0i, 37044i, -1i))), vec4<i32>(abs(-24418i), ~(-1i), -47127i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(78706i, -2147483647i)))) ^ vec4<i32>(1i, firstLeadingBit(func_2().a.b), 488i, 11739i));
    let var_2 = func_2();
    let var_3 = vec4<i32>(0i, ~var_2.a.b, ~_wgslsmith_mult_i32(~var_2.a.b >> ((4294967295u | u_input.a.x) % 32u), var_1.x), (61160i & var_1.x) >> (_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u));
    var var_4 = global0.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_add_vec4_u32(~(abs(vec4<u32>(1u, u_input.a.x, 92840u, u_input.a.x)) >> (~vec4<u32>(1u, 1u, 4294967295u, 33895u) % vec4<u32>(32u))), ~vec4<u32>(1u, firstTrailingBit(56846u), abs(u_input.a.x), ~u_input.b)), ~vec4<u32>(~56841u, ~0u, u_input.a.x, abs(1u)), u_input.a | ~u_input.a);
}

