struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    var var_0 = select(abs((_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, 2147483647i)) << ((u_input.a.xx << (u_input.a.zx % vec2<u32>(32u))) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 29714u), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(28225u, 48295u))) % vec2<u32>(32u))), abs(min(vec2<i32>(~(-1i), ~(-60650i)), abs(-vec2<i32>(-37378i, 2147483647i)))), !(!(!(!vec2<bool>(false, arg_0.a.x)))));
    var var_1 = Struct_1(arg_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(464f - 1314f), _wgslsmith_f_op_f32(sign(1067f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1046f, -1000f) - vec2<f32>(-1006f, 838f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, -123f) * vec2<f32>(-898f, 1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, -1227f)))))), arg_1.yy)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(518f, _wgslsmith_f_op_f32(min(391f, 2012f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, -217f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-800f, -573f), vec2<f32>(-417f, 757f), arg_0.a)), all(vec2<bool>(var_1.a.x, arg_1.x))))), var_1.a.x)));
    var var_3 = 508f;
    return _wgslsmith_mod_i32(max(-16898i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.x, -2147483647i), var_0.x, ~var_0.x)), ~abs(-var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = !vec3<bool>(true, !arg_0.a.x, false);
    let var_1 = -vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-25868i, 2147483647i), vec2<i32>(arg_2.x, arg_2.x) | arg_2.zy), func_3(Struct_1(var_0.xx), !var_0), 1i, 15841i) | select(arg_2, arg_2, select(select(!vec4<bool>(var_0.x, arg_0.a.x, var_0.x, true), !vec4<bool>(arg_0.a.x, arg_0.a.x, var_0.x, var_0.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true)), select(!vec4<bool>(arg_0.a.x, var_0.x, true, true), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(arg_0.a.x, true, false, false)), any(select(var_0, vec3<bool>(true, true, true), true))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f * -285f))))) != _wgslsmith_div_f32(501f, 821f);
    var var_2 = Struct_1(arg_0.a);
    let var_3 = arg_1;
    return Struct_1(vec2<bool>(arg_0.a.x, true));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(func_2(Struct_1(vec2<bool>(!arg_0.a.x, true)), countOneBits(-1i), reverseBits(vec4<i32>(35069i, 2147483647i, -12540i, -1i)) | min(vec4<i32>(0i, -15916i, 0i, 29650i) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i))).a);
    let var_1 = func_2(arg_0, 0i, _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(-2147483647i, 1i, 1i, -2147483647i), vec4<i32>(-2147483647i, -2183i, -7302i, 0i), vec4<bool>(false, false, var_0.a.x, false)) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(firstTrailingBit(-2147483647i)), abs(reverseBits(-4044i)), 49903i, abs(min(1i, 38554i)))));
    var_0 = func_2(func_2(Struct_1(vec2<bool>(any(vec2<bool>(arg_0.a.x, arg_0.a.x)), var_0.a.x || false)), -2147483647i, vec4<i32>(-(~8957i), 1i, 5409i, 1i)), _wgslsmith_sub_i32(-countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1i, 51851i), vec4<i32>(39393i, 35118i, -2147483647i, -1i))), 1i), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(max(vec4<i32>(0i, 0i, 6919i, 2147483647i), vec4<i32>(0i, -1i, -10365i, 22897i)), select(vec4<i32>(-1i, -1i, 77134i, -1i), vec4<i32>(33638i, 0i, 67756i, -1i), true))), vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-28486i, 20850i), vec2<i32>(31694i, 1i))), func_3(var_1, select(vec3<bool>(arg_0.a.x, false, true), vec3<bool>(false, false, false), false)), ~(~0i), 38800i)));
    var_0 = arg_0;
    let var_2 = var_1;
    return all(select(select(vec3<bool>(var_0.a.x && var_2.a.x, true, true), select(select(vec3<bool>(var_1.a.x, true, true), vec3<bool>(true, var_2.a.x, false), vec3<bool>(arg_0.a.x, var_0.a.x, arg_0.a.x)), select(vec3<bool>(false, true, var_2.a.x), vec3<bool>(false, true, var_1.a.x), vec3<bool>(arg_0.a.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(false, true, var_0.a.x), vec3<bool>(var_1.a.x, var_2.a.x, true), vec3<bool>(var_2.a.x, var_2.a.x, false))), false), vec3<bool>(true, false, true), vec3<bool>(true, true, all(vec4<bool>(false, var_0.a.x, true, arg_0.a.x)))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_div_f32(767f, 1000f)) + 2286f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1431f)))))));
    var var_1 = select(!(func_4(func_2(Struct_1(vec2<bool>(false, true)), 1i, vec4<i32>(15243i, -30345i, 28629i, -19262i))) & true), any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, true, false), false), true)), select((~1u | ~u_input.a.x) <= 4294967295u, true, true));
    global0 = all(vec4<bool>(all(vec2<bool>(true, true)), func_4(func_2(Struct_1(vec2<bool>(false, true)), 66709i, vec4<i32>(-1i, 1i, -15817i, -1i))) && any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), true, true));
    let var_2 = ~(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 6691u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(25808u, 0u, 1u, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u))), u_input.a.x, countOneBits(1u), 124187u) | select(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(25726u, 17601u, 1u, 87844u), vec4<u32>(135u, 4294967295u, 27816u, 5258u), vec4<u32>(1u, 651u, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) << (vec4<u32>(123568u, u_input.a.x, 2622u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), true));
    return countOneBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!all(vec3<bool>(all(vec2<bool>(true, true)), true, true)));
    global0 = (func_1() ^ _wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(1u, u_input.a.x, u_input.a.x))) <= 0u;
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-35753i, 1i << (~u_input.a.x % 32u)) | _wgslsmith_sub_i32(2147483647i, 1i), 8598i);
    let var_1 = Struct_1(func_2(func_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), -1i, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-49979i, -9435i, -28279i, -1i), vec4<i32>(34179i, 2147483647i, -15641i, 1i), vec4<i32>(1836i, -2147483647i, 9438i, -32825i))), 14050i, vec4<i32>(-1i) * -vec4<i32>(2147483647i, 22504i, 1i, 0i)).a);
    var var_2 = func_2(Struct_1(vec2<bool>(true, all(!vec4<bool>(var_1.a.x, false, true, var_1.a.x)))), 1i >> (firstLeadingBit(48703u) % 32u), _wgslsmith_div_vec4_i32(~select(vec4<i32>(-7070i, -41566i, 1i, 1i), firstLeadingBit(vec4<i32>(1i, 3715i, -1i, -8307i)), false), select(~(~vec4<i32>(1212i, 11452i, -15526i, 38560i)), _wgslsmith_mod_vec4_i32(vec4<i32>(31956i, -1i, -1142i, 2147483647i), vec4<i32>(-38245i, -51121i, 2147483647i, -38163i) >> (vec4<u32>(1u, 0u, u_input.a.x, 69672u) % vec4<u32>(32u))), !select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(true, false, false, var_1.a.x), var_1.a.x))));
    let var_3 = ~firstLeadingBit(-min(countOneBits(vec3<i32>(0i, 29699i, 1018i)), vec3<i32>(-1i, -13348i, -36792i)));
    var var_4 = abs(~max(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(9145i, 52634i, var_3.x, -11836i), vec4<i32>(55045i, -2147483647i, var_3.x, var_3.x)), vec4<i32>(var_3.x, 0i, var_3.x, var_3.x), vec4<i32>(var_3.x, -2147483647i, var_3.x, var_3.x) ^ vec4<i32>(var_3.x, -2147483647i, -30400i, var_3.x)), vec4<i32>(~0i, 0i, reverseBits(-2147483647i), 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(723f, 930f), max(vec3<i32>(var_4.x, var_4.x, var_4.x), reverseBits(~(~var_3))), var_4.x, 43391u);
}

