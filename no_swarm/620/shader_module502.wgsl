struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-11175i, -29847i), vec2<i32>(-13211i, -8089i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -4664i), vec2<i32>(0i, 30575i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-49013i, 2147483647i), vec2<i32>(-33164i, 0i), vec2<i32>(-1i, 37186i), vec2<i32>(-24781i, -18458i), vec2<i32>(1i, -4441i), vec2<i32>(-9597i, i32(-2147483648)), vec2<i32>(14222i, 2147483647i), vec2<i32>(10318i, 1i), vec2<i32>(-58965i, -1i), vec2<i32>(3466i, i32(-2147483648)), vec2<i32>(33624i, -1i), vec2<i32>(39103i, -14255i), vec2<i32>(-47659i, 2147483647i), vec2<i32>(14420i, 1i), vec2<i32>(1585i, 0i), vec2<i32>(-52544i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-20804i, 1i), vec2<i32>(2147483647i, -28783i), vec2<i32>(14077i, i32(-2147483648)), vec2<i32>(12295i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(-1i, 36869i));

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_1((vec3<i32>(1720i, _wgslsmith_mult_i32(u_input.b, -1i), -50810i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-62525i, 29061i, u_input.b), -vec3<i32>(u_input.b, u_input.b, -20258i), vec3<i32>(u_input.b, 1i, -24704i) ^ vec3<i32>(-25569i, 2147483647i, u_input.b))) << ((reverseBits(u_input.d) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-769f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))))));
    let var_1 = true;
    global0 = array<vec2<i32>, 31>();
    let var_2 = vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(0i, _wgslsmith_add_i32(u_input.b, u_input.b), -32158i)));
    global1 = select(vec4<bool>(arg_0.x, !select(u_input.b < var_2.x, any(vec4<bool>(false, arg_0.x, global1.x, true)), var_1), var_0.a.x > _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.b, 0i), vec3<i32>(-23520i, 2147483647i, u_input.b)), var_0.a.x, 1i), true), select(!(!(!vec4<bool>(false, true, false, global1.x))), vec4<bool>(true, true, all(!vec3<bool>(global1.x, global1.x, false)), true), false), all(vec4<bool>(all(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, arg_0.x, arg_0.x))), !global1.x, !all(vec2<bool>(false, true)), true)));
    return select(true & select(true & global1.x, any(select(global1.xz, vec2<bool>(global1.x, true), true)), ~u_input.c <= ~u_input.d.x), var_1, false);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_1(-(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(81729i, 14655i, arg_2), ~vec3<i32>(-1i, arg_2, -2147483647i), vec3<i32>(-2147483647i, -32059i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(456f - -1035f))))));
    let var_1 = !vec4<bool>(true, !global1.x, func_3(select(vec2<bool>(false, true), arg_3.yy, true)), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1429f * var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, -1000f), vec2<f32>(763f, var_0.b), -1368f < var_0.b)) + vec2<f32>(-2019f, _wgslsmith_f_op_f32(exp2(var_0.b))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(select(1282f, _wgslsmith_div_f32(2326f, var_0.b), true))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.b), vec2<f32>(var_0.b, var_0.b))))))));
    global0 = array<vec2<i32>, 31>();
    global0 = array<vec2<i32>, 31>();
    return -1i;
}

fn func_1() -> vec4<u32> {
    global1 = vec4<bool>((func_2(true, ~u_input.d.xy, -1i, global1.wzw) > u_input.b) && func_3(!(!global1.zw)), !all(select(global1.xy, vec2<bool>(global1.x, false), global1.zz)), (!all(vec3<bool>(global1.x, global1.x, false)) || (global1.x & any(vec2<bool>(false, global1.x)))) & true, !global1.x);
    let var_0 = ~vec4<i32>(-30689i, -(~u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, _wgslsmith_mod_i32(u_input.b, u_input.b), -2147483647i), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, 17434i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, -1548i, 1i, 11591i), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)))), ~(-(i32(-1i) * -62932i)));
    global0 = array<vec2<i32>, 31>();
    var var_1 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-119f * -736f))))) >= -267f) || global1.x;
    var var_2 = Struct_1(~select(~(var_0.zxx << (u_input.d % vec3<u32>(32u))), vec3<i32>(u_input.b, 0i, var_0.x), !global1.wzw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(276f * 315f), _wgslsmith_f_op_f32(trunc(-1820f))))))));
    return select(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.a), u_input.a << (~u_input.a % 32u), _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(32142u, u_input.a)), max(~4294967295u, 4294967295u)) & vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 4294967295u, u_input.d.x), ~80283u), _wgslsmith_div_u32(abs(u_input.c), 76155u), _wgslsmith_mod_u32(~75936u, 16898u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, ~4294967295u, select(u_input.d.x, u_input.a, global1.x), u_input.c)), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, u_input.d.x, u_input.c, u_input.a), vec4<u32>(100408u, 8115u, u_input.d.x, u_input.c), vec4<bool>(global1.x, global1.x, global1.x, false)), ~vec4<u32>(4294967295u, u_input.d.x, u_input.c, 82955u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.c, u_input.c) & vec4<u32>(u_input.a, 27634u, u_input.d.x, u_input.c), max(vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 4294967295u), vec4<u32>(1u, u_input.d.x, 4294967295u, 69013u)))), vec4<bool>(any(!global1.xz), select(all(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, false, true, global1.x))), any(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), global1.x)), !global1.x), true, true & !(16112u >= u_input.d.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = !(!(!(!vec4<bool>(global1.x, global1.x, false, global1.x))));
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1111f, -410f), vec2<f32>(355f, arg_1.b)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, arg_1.b), vec2<f32>(-2109f, arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, 429f) * vec2<f32>(arg_1.b, arg_1.b))))))));
    let var_1 = select(1u != _wgslsmith_dot_vec4_u32(~vec4<u32>(61831u, u_input.a, 86353u, 1u), countOneBits(vec4<u32>(arg_0.x, 0u, u_input.d.x, u_input.c))), true, !func_3(select(global1.yz, vec2<bool>(global1.x, false), global1.yy))) || all(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, u_input.b <= 0i, select(global1.x, false, false)), vec4<bool>(false, global1.x, !global1.x, true)));
    var var_2 = Struct_1(vec3<i32>(u_input.b | -70062i, -u_input.b, arg_1.a.x), 868f);
    let var_3 = func_2(!global1.x, max(~_wgslsmith_div_vec2_u32(countOneBits(arg_0.zz), ~vec2<u32>(arg_0.x, 24051u)), firstLeadingBit(vec2<u32>(~arg_0.x, _wgslsmith_div_u32(arg_0.x, arg_0.x)))), _wgslsmith_mult_i32(arg_1.a.x ^ _wgslsmith_sub_i32(~(-1i), max(-1i, 36960i)), 0i), vec3<bool>(false, true, true));
    return Struct_1(abs(vec3<i32>(reverseBits(1i), abs(arg_1.a.x | 0i), _wgslsmith_dot_vec2_i32(var_2.a.yy, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.a.x), arg_1.a.yx)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global1.x, all(select(global1.xyz, !global1.xxy, global1.xxw)), global1.x);
    var var_1 = func_4(~func_1(), Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.b), vec3<i32>(u_input.b, -23918i, -55717i), vec3<i32>(u_input.b, u_input.b, u_input.b)) | vec3<i32>(-1i, -1i, u_input.b)), 1f));
    let var_2 = firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.a.x, -2678i), reverseBits(var_1.a.x), -18463i), ~(~u_input.b), _wgslsmith_add_i32(-u_input.b, -var_1.a.x), firstLeadingBit(u_input.b << (7277u % 32u)))) | ~(~(~firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, -64037i, -16347i))));
    let var_3 = -1226f;
    global0 = array<vec2<i32>, 31>();
    var_1 = func_4(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(35495u, 17647u, 72251u, u_input.a), select(vec4<u32>(u_input.a, u_input.d.x, u_input.c, u_input.a), vec4<u32>(64683u, u_input.c, 4294967295u, u_input.a), var_0.x)), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(40217u, 1805u, 22309u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a, 62325u, 35390u), vec4<u32>(65627u, 0u, 9032u, u_input.d.x)) << (~vec4<u32>(4294967295u, u_input.d.x, 75044u, u_input.c) % vec4<u32>(32u)))), Struct_1(-select(vec3<i32>(2147483647i, var_2.x, var_2.x), var_1.a, global1.xwx) ^ _wgslsmith_mult_vec3_i32(~vec3<i32>(-616i, -2147483647i, -13227i), vec3<i32>(var_1.a.x, var_2.x, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.b)))))));
    var_1 = func_4(~(~(vec4<u32>(u_input.a, u_input.c, u_input.a, 6172u) >> (vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, u_input.c) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(113591u, u_input.d.x, u_input.a, 14452u), vec4<u32>(u_input.c, 55444u, u_input.c, 10192u)) % vec4<u32>(32u))), Struct_1(-var_1.a, 1f));
    var var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.a, 96401u) | vec4<u32>(6527u, u_input.a, u_input.c, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1966u, 1u, 4294967295u))), ~0u) ^ reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.d.x, u_input.d.x))), ~vec4<u32>(u_input.d.x, 4294967295u, 7641u, ~u_input.a));
    let var_5 = func_4(~vec4<u32>(var_4.x, select(countOneBits(34409u), var_4.x, false), ~(~15858u), firstTrailingBit(var_4.x)), func_4(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, u_input.d.x, u_input.c, 18705u), vec4<u32>(1u, 1u, u_input.d.x, var_4.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.d.x, u_input.a, var_4.x), select(vec4<u32>(var_4.x, 52343u, u_input.a, 4294967295u), vec4<u32>(u_input.c, var_4.x, 4294967295u, u_input.a), vec4<bool>(true, true, false, var_0.x)))), func_4(~max(vec4<u32>(u_input.a, u_input.c, var_4.x, 7884u), vec4<u32>(var_4.x, 18523u, var_4.x, 4294967295u)), func_4(max(vec4<u32>(var_4.x, 7112u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.c, 35193u, var_4.x, 4294967295u)), func_4(vec4<u32>(u_input.c, var_4.x, u_input.a, var_4.x), Struct_1(var_2.wxz, var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 1u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, -1153f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1795f, -1236f), vec2<f32>(-314f, var_1.b))))))), vec3<u32>(54424u, 166500u, var_4.x));
}

