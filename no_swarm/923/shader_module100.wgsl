struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-1i, 34706i, 78686i, 69236i), vec4<i32>(2147483647i, 1i, -1i, 1i), vec4<i32>(1i, -49705i, -6933i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 30436i), vec4<i32>(21305i, -15330i, 2147483647i, i32(-2147483648)), vec4<i32>(2796i, 1i, -9928i, -66078i), vec4<i32>(35356i, i32(-2147483648), 1i, 12100i), vec4<i32>(2147483647i, -7475i, 2147483647i, 41336i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, arg_1), vec4<u32>(global1.a.x, 4294967295u, global1.a.x, global1.a.x))) | (_wgslsmith_sub_vec4_u32(~global1.a, ~vec4<u32>(global1.a.x, arg_1, 1u, arg_1)) & countOneBits(vec4<u32>(0u, 1u, arg_1, 62831u))), select(global1.a.x, min(~select(1u, arg_1, global1.c), _wgslsmith_mod_u32(reverseBits(35800u), 7925u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(-1i, u_input.a.x, -34900i, -1i)), -u_input.a.x) <= -1i), global1.b <= arg_1, 58898u >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(select(12211u, global1.d, true), 1u), ~_wgslsmith_div_u32(arg_1, 0u)) % 32u));
    global1 = Struct_1(global1.a, countOneBits(_wgslsmith_mult_u32(~6130u ^ arg_1, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1.a.zxx, vec3<u32>(66010u, global1.b, 70158u)), firstTrailingBit(vec3<u32>(12737u, arg_1, 1u))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-286f))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(291f))) - 1f), 85595u);
    let var_0 = Struct_1(global1.a, global1.d >> (44067u % 32u), !(!global1.c), select(countOneBits(~_wgslsmith_sub_u32(4294967295u, 70002u)), abs(firstTrailingBit(16926u) << (20106u % 32u)), arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-842f)), -1000f)));
    var var_2 = var_0;
    return min(79160u, _wgslsmith_dot_vec4_u32(abs(var_0.a), ~var_2.a));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))) - arg_3);
    let var_1 = arg_1.zzw;
    var var_2 = arg_2;
    global1 = Struct_1(~arg_2.a, 0u, arg_2.c, _wgslsmith_sub_u32(135348u | max(~1u, ~arg_0), ~(_wgslsmith_mult_u32(var_2.d, arg_0) | min(4294967295u, var_2.d))));
    let var_3 = Struct_1(arg_2.a, _wgslsmith_mod_u32(firstTrailingBit(~4294967295u), 1u) & (_wgslsmith_div_u32(global1.d, func_3(var_1, var_2.b)) & ~(~20138u)), true, arg_0 << (global1.a.x % 32u));
    return 14896u;
}

fn func_4(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(sign(-433f));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<u32>(global1.b >> (global1.b % 32u), func_2(global1.d, vec4<bool>(true, global1.c, global1.c, true), Struct_1(global1.a, 11115u, global1.c, global1.a.x), -1784f), ~global1.d, ~1u), ~(~global1.b), select(!global1.c, false, global1.c), ~1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(240f)))), 582f, 1136f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(global1.a, global1.d, false, 1u))) - _wgslsmith_div_f32(-166f, var_0.x)) - var_0.x)));
    var var_1 = vec3<i32>(-10470i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-9872i, select(-38550i, u_input.a.x, global1.c), u_input.a.x), vec3<i32>(u_input.a.x, ~1i, -_wgslsmith_mult_i32(u_input.a.x, -10724i))), firstLeadingBit(i32(-1i) * -802i));
    let var_2 = vec3<u32>(select(_wgslsmith_mod_u32(global1.d, min(select(41920u, global1.d, global1.c), global1.a.x)), 1u, true), _wgslsmith_add_u32(reverseBits(~global1.a.x & 1u), func_2(global1.b, !select(vec4<bool>(false, global1.c, global1.c, global1.c), vec4<bool>(global1.c, false, false, false), global1.c), Struct_1(_wgslsmith_mod_vec4_u32(global1.a, global1.a), abs(global1.d), !global1.c, global1.b), -415f)), global1.b);
    var var_3 = abs(vec4<u32>(75526u, global1.d, 56035u, global1.d));
    return Struct_1(global1.a, global1.b, true, 4294967295u);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    let var_0 = func_1();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x * arg_3.x))), 618f)));
    var var_1 = func_1();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(trunc(1165f))), arg_3.x, 442f);
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-8273i, -46116i, u_input.a.x), i32(-1i) * -1i)), firstLeadingBit(select(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~u_input.a.x, any(vec2<bool>(arg_2, global1.c))))) << (~var_0.b % 32u);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 2078f;
    var var_1 = _wgslsmith_div_i32(u_input.a.x, 2147483647i) < arg_2;
    var var_2 = vec2<u32>(func_3(arg_0.wwx, ~arg_1.x) ^ _wgslsmith_sub_u32(_wgslsmith_add_u32(global1.a.x, func_1().d), global1.b), 115780u);
    var var_3 = _wgslsmith_clamp_vec4_u32(countOneBits(countOneBits(select(vec4<u32>(0u, 4294967295u, arg_1.x, 48148u), vec4<u32>(global1.b, 20313u, arg_3.a.x, 0u), vec4<bool>(true, true, false, arg_3.c)))), _wgslsmith_div_vec4_u32(arg_3.a, vec4<u32>(31710u, 1u, ~_wgslsmith_mult_u32(18844u, var_2.x), ~func_2(0u, vec4<bool>(arg_3.c, true, false, false), arg_3, -643f))), vec4<u32>(~_wgslsmith_div_u32(var_2.x, arg_3.a.x), global1.a.x | max(global1.a.x, 1u), 4294967295u, ~_wgslsmith_dot_vec2_u32(arg_1.wz, arg_1.wy)) & abs(vec4<u32>(abs(global1.d), 57089u, firstLeadingBit(1u), _wgslsmith_mod_u32(27917u, 4294967295u))));
    var_1 = var_0 >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1946f, -486f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2514f))))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(-244f, -1000f);
    let var_0 = func_6(vec4<bool>(any(!select(vec3<bool>(true, global1.c, true), vec3<bool>(true, global1.c, true), false)), true, global1.c, !global1.c), global1.a, firstLeadingBit(func_5(~_wgslsmith_mod_vec4_u32(vec4<u32>(71223u, global1.d, 0u, 1u), global1.a), func_1(), any(vec2<bool>(global1.c, global1.c)) | global1.c, vec4<f32>(-1315f, -241f, _wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_f_op_f32(-1832f + -227f)))), func_1());
    global1 = func_6(select(!select(select(vec4<bool>(true, true, global1.c, false), vec4<bool>(true, global1.c, false, global1.c), global1.c), vec4<bool>(true, true, false, false), !vec4<bool>(global1.c, global1.c, false, false)), vec4<bool>(false, true, _wgslsmith_clamp_u32(global1.b, 0u, global1.b) < global1.a.x, true), vec4<bool>(var_0.c, true, all(vec4<bool>(false, var_0.c, false, false)), any(select(vec4<bool>(var_0.c, true, true, global1.c), vec4<bool>(global1.c, false, false, false), true)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 181u, global1.b, 0u), var_0.a), _wgslsmith_add_vec4_u32(global1.a, vec4<u32>(26599u, 0u, 0u, 39557u))) | (~reverseBits(global1.a) & func_1().a), select(min(u_input.a.x, -18606i), _wgslsmith_dot_vec2_i32(-(u_input.a.xx ^ vec2<i32>(2147483647i, 104i)), countOneBits(u_input.a.yx)), global1.c), func_6(select(!vec4<bool>(true, var_0.c, global1.c, var_0.c), !vec4<bool>(var_0.c, false, global1.c, global1.c), !select(vec4<bool>(true, true, global1.c, true), vec4<bool>(global1.c, var_0.c, false, global1.c), var_0.c)), vec4<u32>(36345u, _wgslsmith_mod_u32(global1.a.x, var_0.d >> (var_0.d % 32u)), global1.b, var_0.a.x), _wgslsmith_mod_i32(func_5(firstLeadingBit(global1.a), func_1(), true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(498f, 523f, -643f, -1000f)))), reverseBits(-u_input.a.x)), func_1()));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    global1 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global1.d, 814u, 82745u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d, var_0.b, global1.b, 0u), vec4<u32>(1u, global1.d, 8204u, global1.b))), var_0.a << (func_6(vec4<bool>(false, true, true, var_0.c), vec4<u32>(4294967295u, global1.d, global1.d, global1.d), u_input.a.x, Struct_1(var_0.a, 33373u, var_0.c, 100715u)).a % vec4<u32>(32u))), ~global1.a), 61098u, true, ~(~global1.a.x));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1u, 460f);
}

