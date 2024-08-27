struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = Struct_1(select(~_wgslsmith_add_u32(arg_1.a, arg_1.a), reverseBits(~arg_1.a), true) | ~_wgslsmith_mod_u32(abs(arg_1.a), ~10267u), false, true);
    let var_1 = 0u;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(var_0.a, var_0.a) ^ ~4294967295u, ~1u, ~var_2.a), ~_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(32948u, 81595u, 4294967295u)), select(select(vec3<u32>(3261u, 38531u, 1u), vec3<u32>(4533u, arg_1.a, var_2.a), arg_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1.a), vec3<u32>(var_0.a, 4763u, var_2.a)), vec3<bool>(true, true, true))));
    let var_4 = var_0;
    return _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(abs(_wgslsmith_add_i32(countOneBits(u_input.b.x), 2147483647i)), i32(-1i) * -20684i, reverseBits(~u_input.a) | reverseBits(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b))));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(0u, -(func_3(vec2<bool>(true, true), Struct_1(13715u, true, true), -575f) ^ -2147483647i) >= -72257i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-628f)))) > -1000f);
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(max(reverseBits(u_input.a), -16325i), u_input.a), -(~(~arg_0.yx)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 6586i) >> (~vec2<u32>(var_0.a, 69242u) % vec2<u32>(32u)), vec2<i32>(max(-1i, u_input.a), 1i), _wgslsmith_add_vec2_i32(~u_input.b.yz, -vec2<i32>(1i, 20252i))));
    let var_2 = var_1.x;
    var var_3 = (_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 1u, 18713u), countOneBits(vec3<u32>(32845u, var_0.a, 1u)), true), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a, var_0.a, 0u), countOneBits(vec3<u32>(var_0.a, var_0.a, 0u)))) << ((select(vec3<u32>(var_0.a, 18002u, 4294967295u) | vec3<u32>(var_0.a, 0u, var_0.a), max(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(27699u, 61835u, var_0.a)), select(vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.c, false, false), vec3<bool>(false, false, false))) | max(reverseBits(vec3<u32>(4294967295u, 1u, var_0.a)), vec3<u32>(var_0.a, var_0.a, 54670u))) % vec3<u32>(32u))) | ~(~abs(countOneBits(vec3<u32>(var_0.a, var_0.a, var_0.a))));
    var_3 = (vec3<u32>(var_3.x, ~1u, _wgslsmith_clamp_u32(0u, 1u, _wgslsmith_div_u32(26609u, var_3.x))) | vec3<u32>(1u, var_3.x, var_0.a)) << (~countOneBits(~(vec3<u32>(var_3.x, var_3.x, var_0.a) | vec3<u32>(var_3.x, 0u, var_3.x))) % vec3<u32>(32u));
    return var_0.a;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = ~(-(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.a, -29538i), vec4<i32>(u_input.a, u_input.a, 1i, -41668i)) & abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -16573i, -41507i, u_input.a), vec4<i32>(u_input.b.x, u_input.a, 0i, u_input.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(floor(421f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-173f))))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~func_2(var_0.zzy), arg_0.a), min(abs(firstLeadingBit(vec3<u32>(arg_0.a, 4294967295u, arg_0.a))), ~vec3<u32>(arg_0.a, 1u, 1u))), true, false);
    var_0 = vec4<i32>(-1i) * -(~vec4<i32>(-63614i, -3859i, 2147483647i, ~var_0.x));
    let var_3 = !(!all(!(!vec2<bool>(var_2.b, var_2.c))));
    return -30222i;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<u32>(reverseBits(firstLeadingBit(_wgslsmith_div_u32(1u, ~1u))), func_2(firstLeadingBit(vec3<i32>(-40901i, arg_3, arg_2))));
    let var_1 = false;
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_2, arg_3, 56276i), u_input.b, u_input.b), -reverseBits(u_input.b)), u_input.b, -min(max(vec3<i32>(arg_2, arg_3, u_input.a), u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, u_input.a, arg_2), u_input.b))) | ((u_input.b ^ ~vec3<i32>(-39862i, arg_3, arg_3)) << (select(firstLeadingBit(~vec3<u32>(1u, 4294967295u, var_0.x)), firstTrailingBit(countOneBits(vec3<u32>(10075u, 1u, var_0.x))), vec3<bool>(true, var_1, arg_0 & var_1)) % vec3<u32>(32u)));
    var var_3 = var_2.xy;
    var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0.x, ~4294967295u), func_2(u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(select(var_0.x, var_0.x, true), select(var_0.x, 9298u, true)), vec2<u32>(~var_0.x, ~15522u)), vec2<u32>(~(var_0.x & 4294967295u), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, 62579u), reverseBits(var_0.x)))), ~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(59026u, 15624u)) ^ ~vec2<u32>(var_0.x, 105548u), ~(~vec2<u32>(2999u, 0u)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_0.x, 2706u)), abs(vec2<u32>(var_0.x, 48165u)))));
    return Struct_1(countOneBits(select(_wgslsmith_mod_u32(~64868u, var_0.x), ~35916u, true)), arg_0, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = !arg_2.c;
    var_0 = func_4(arg_0.c, all(!vec4<bool>(arg_2.b, true, true, true)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, ~(-45268i)), max(u_input.a >> (arg_2.a % 32u), func_1(arg_2)), -u_input.a) >> (arg_0.a % 32u), u_input.a).b;
    var_0 = arg_0.b;
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(abs(min(~vec3<u32>(arg_0.a, 84280u, 39059u), vec3<u32>(84805u, arg_0.a, arg_2.a) | vec3<u32>(1u, 13879u, arg_2.a))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.a, 0u, arg_2.a), vec3<u32>(arg_1.a, 50714u, arg_1.a))), arg_2.b, all(!(!(!vec4<bool>(arg_1.b, false, false, arg_1.c)))));
    let var_2 = 1000f;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(-100f + 1088f), var_2, 1571f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1070f, 645f, 1047f, 714f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, 1353f, -1121f, 693f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(199f, var_2, var_2, -327f) - vec4<f32>(240f, -1367f, -1280f, 1000f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-348f, var_2, var_2, var_2), vec4<f32>(387f, var_2, var_2, var_2))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1502f, var_2, 191f, var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2, -722f, -718f, var_2), vec4<f32>(729f, 723f, var_2, -244f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, -367f, 1696f, 241f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_5(func_4(func_1(Struct_1(1u, true, true)) == 2147483647i, any(vec2<bool>(true, true)), func_3(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), Struct_1(4294967295u << (0u % 32u), false, 0i <= u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-849f)))), ~func_3(vec2<bool>(true, true), Struct_1(1u, false, true), _wgslsmith_f_op_f32(f32(-1f) * -248f))), Struct_1(~countOneBits(1u), true, func_2(vec3<i32>(u_input.a, u_input.b.x, -27144i)) == 4294967295u), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), abs(vec2<u32>(4294967295u, 22138u))), ~vec2<u32>(1u, 1u)), true, !any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b.x, 35449i), -vec2<i32>(-23634i, 45602i)), u_input.b.xz), u_input.b.zy), max(firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 0i, -1i, 1i), vec4<i32>(-2147483647i, -34926i, -1i, u_input.a))), select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b.x, u_input.a)), u_input.b.x, u_input.a, func_3(vec2<bool>(false, true), Struct_1(4294967295u, false, true), var_1.x)), -select(vec4<i32>(u_input.a, -26093i, -23952i, u_input.b.x), vec4<i32>(30617i, u_input.b.x, -11502i, 0i), vec4<bool>(true, false, false, false)), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(round(var_1.x)), var_1.x, _wgslsmith_f_op_f32(max(-445f, 776f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -1957f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(func_5(func_4(false, -984f < var_1.x, _wgslsmith_div_i32(u_input.a, u_input.b.x), 38091i), Struct_1(_wgslsmith_mult_u32(37044u, 77593u), false, all(vec4<bool>(true, true, false, false))), Struct_1(~10821u, true, true))), !(~4294967295u == _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 48170u, 4294967295u, 54132u), vec4<u32>(4294967295u, 4294967295u, 2160u, 71589u))))));
}

