struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 4294967295u, 20653u, 53787u, 0u, 0u, 1u, 57474u, 0u, 66461u, 4294967295u, 45598u, 12981u, 26251u, 1u, 76801u, 37995u, 4294967295u, 1u, 89664u, 4294967295u, 67422u, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = arg_1;
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_1 = var_0;
    let var_2 = _wgslsmith_sub_i32(countOneBits(max(arg_0, _wgslsmith_sub_i32(-2147483647i, -arg_1.c.x))), reverseBits(_wgslsmith_mult_i32(~(-1i), -22241i)));
    return vec4<i32>(~(-6360i), _wgslsmith_add_i32(select(_wgslsmith_dot_vec2_i32(var_1.c.yz, arg_1.c.yy), arg_2.b, var_1.a) >> (~(0u & u_input.a.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(39579i << (1u % 32u), -20938i), -30842i)), arg_0 & arg_2.b, var_2);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(true, 1i, vec3<i32>(~(-13389i), 10978i, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-60739i, -2147483647i), vec2<i32>(-2147483647i, -1i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 9289u), vec3<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(1u, 23u)])) % 32u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(218f, -543f)), _wgslsmith_f_op_f32(ceil(798f)))), _wgslsmith_f_op_f32(319f + -1125f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(min(-1401f, 885f))))), 32055i);
    global0 = array<u32, 23>();
    var var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_clamp_u32(13677u, ~0u, _wgslsmith_sub_u32(u_input.b, 18902u)) << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 23u)] >> (u_input.a.x % 32u), global0[_wgslsmith_index_u32(26670u, 23u)]) % 32u)), firstLeadingBit(u_input.b));
    global0 = array<u32, 23>();
    return (_wgslsmith_mult_vec3_i32(min(vec3<i32>(var_0.b, var_0.e, var_0.c.x) | var_0.c, countOneBits(vec3<i32>(-21489i, 38248i, 0i))), vec3<i32>(-var_0.c.x, -5309i, var_0.c.x | -17242i)) & var_0.c) | _wgslsmith_sub_vec3_i32(var_0.c, vec3<i32>(abs(0i), -30308i, var_0.c.x));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(true, _wgslsmith_dot_vec4_i32(abs(func_2(-41400i, Struct_1(true, -2462i, vec3<i32>(-8873i, 0i, -1i), vec2<f32>(862f, 1224f), 2147483647i), Struct_1(true, 2147483647i, vec3<i32>(2147483647i, -2147483647i, 28940i), vec2<f32>(953f, -1192f), 1i), vec4<f32>(918f, -187f, -1000f, -341f)) | -vec4<i32>(-2147483647i, -12331i, -1i, -27299i)), vec4<i32>(-(~(-2147483647i)), ~(-45501i), 1i, -reverseBits(-2147483647i))), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(1783i, 1i, 2147483647i)), _wgslsmith_sub_vec3_i32(func_3(), ~vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(-383f, -2408f)), 271f))), -15888i);
    var var_1 = ~countOneBits(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 5749u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 47533u), vec4<u32>(4294967295u, 16621u, 39599u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(13649u, 23u)], u_input.a.x, 50904u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38927u, 23u)], 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31538u, 23u)], 23u)]), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 23u)], 0u, 0u))), max(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], u_input.a.x, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], 23u)], 23u)]) ^ vec4<u32>(53154u, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 43386u, u_input.b), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 49335u)), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(true, true, false, var_0.a), vec4<bool>(false, var_0.a, true, true)), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))));
    let var_2 = 4294967295u | u_input.b;
    var var_3 = false;
    let var_4 = _wgslsmith_mult_i32(var_0.e, -var_0.b);
    return var_0.b >> (firstLeadingBit(var_1.x) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<u32, 23>();
    var var_0 = Struct_1(true, 3721i, arg_0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-578f + -1707f), arg_0.d.x)))), -(~(arg_0.e >> (global0[_wgslsmith_index_u32(arg_1.x, 23u)] % 32u)) << (0u % 32u)));
    var_0 = Struct_1(!(true | all(vec4<bool>(true, var_0.a, var_0.a, arg_0.a))), min(_wgslsmith_add_i32(-(~(-34795i)), _wgslsmith_add_i32(-var_0.c.x, -1i)), var_0.b), abs(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.c.x, -50561i), var_0.c), _wgslsmith_mod_i32(func_2(-1i, Struct_1(true, 1i, arg_0.c, vec2<f32>(-552f, -1762f), var_0.b), Struct_1(var_0.a, arg_0.b, var_0.c, vec2<f32>(217f, var_0.d.x), arg_0.c.x), vec4<f32>(191f, -151f, arg_0.d.x, -424f)).x, -1i), -1i)), _wgslsmith_f_op_vec2_f32(trunc(var_0.d)), -func_3().x);
    global0 = array<u32, 23>();
    var_0 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(true, 3009i, vec3<i32>(0i, ~abs(-30832i), -func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1075f, 660f)))), 5716i), u_input.a, vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)) || (false || any(vec2<bool>(false, false))), !(any(vec3<bool>(false, false, false)) & any(vec3<bool>(false, true, false)))));
    var var_1 = select(vec3<bool>(var_0.a, any(vec3<bool>(any(vec2<bool>(var_0.a, var_0.a)), func_4(Struct_1(var_0.a, var_0.c.x, vec3<i32>(-8844i, -14151i, 2147483647i), vec2<f32>(732f, -1000f), var_0.e), u_input.a, vec2<bool>(var_0.a, var_0.a)).a, true)), true), select(vec3<bool>(_wgslsmith_f_op_f32(round(397f)) == _wgslsmith_div_f32(1650f, var_0.d.x), true, !(!var_0.a)), vec3<bool>(!var_0.a, !var_0.a, true), false != var_0.a), true);
    var var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~global0[_wgslsmith_index_u32(44974u, 23u)], u_input.a.x), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(u_input.b, 23u)])), vec3<u32>(1u, 1u, 1u))), global0[_wgslsmith_index_u32(35147u, 23u)]));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(abs(func_4(Struct_1(var_1.x, -2147483647i, vec3<i32>(-52865i, var_0.e, -10760i), var_0.d, -27324i), vec2<u32>(74949u, var_2.x), var_1.yz).d.x)))), 994f);
    var_1 = select(select(vec3<bool>(true, any(select(vec3<bool>(true, var_1.x, var_0.a), vec3<bool>(var_0.a, false, var_1.x), var_0.a)), all(!var_1.yz)), vec3<bool>(var_0.a, true, false), !select(vec3<bool>(false, var_1.x, var_1.x), !vec3<bool>(var_0.a, false, false), true)), vec3<bool>(any(vec3<bool>(var_1.x, var_0.a & false, true)), false, false), !all(!select(vec3<bool>(var_1.x, var_0.a, true), vec3<bool>(false, var_0.a, var_0.a), true)));
    let var_4 = func_4(func_4(Struct_1(!(var_0.c.x >= var_0.c.x), ~(-1i), vec3<i32>(-1i) * -vec3<i32>(var_0.c.x, var_0.b, var_0.c.x), _wgslsmith_f_op_vec2_f32(floor(var_3)), _wgslsmith_clamp_i32(-1i, var_0.e, _wgslsmith_mod_i32(22143i, var_0.c.x))), reverseBits(max(u_input.a, u_input.a) | vec2<u32>(u_input.a.x, u_input.b)), !(!vec2<bool>(var_1.x, true))), firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.a << (min(vec2<u32>(1u, 65351u), vec2<u32>(25234u, var_2.x)) % vec2<u32>(32u)), ~(u_input.a | u_input.a))), !select(select(!vec2<bool>(var_0.a, var_1.x), !vec2<bool>(var_0.a, false), !var_1.xx), !select(var_1.yx, vec2<bool>(true, var_1.x), var_1.zz), var_0.a));
    var_2 = ~(~vec2<u32>(~8924u & max(global0[_wgslsmith_index_u32(4294967295u, 23u)], 1u), (u_input.b >> (var_2.x % 32u)) << (var_2.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_4.c.x, var_4.c.x, 40672i), var_0.c), vec3<i32>(func_3().x, var_0.c.x, _wgslsmith_sub_i32(1i, var_0.e))) | _wgslsmith_mod_i32(71227i, var_0.e), var_4.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), var_4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.d.x, -941f, var_1.x)))) * vec3<f32>(-842f, _wgslsmith_f_op_f32(-var_0.d.x), 1205f)), ~max(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57191u, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(30787u, 23u)], u_input.a.x, var_2.x), firstTrailingBit(vec4<u32>(u_input.b, 1u, 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 23u)]))) << (~abs(vec4<u32>(1u, 0u, 1u, global0[_wgslsmith_index_u32(72465u, 23u)]) << (vec4<u32>(0u, 25854u, 43138u, 9835u) % vec4<u32>(32u))) % vec4<u32>(32u)), 1u);
}

