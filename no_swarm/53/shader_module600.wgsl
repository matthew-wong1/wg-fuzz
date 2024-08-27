struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(27855u);

var<private> global1: array<f32, 6>;

var<private> global2: array<vec2<i32>, 7>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(10746u, ~(arg_0.a & global0.a)), 6u)] * _wgslsmith_f_op_f32(-1280f + -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<u32> {
    global0 = Struct_1(18580u);
    global2 = array<vec2<i32>, 7>();
    let var_0 = ~(~(vec4<i32>(~u_input.a, u_input.a & u_input.a, u_input.a << (arg_3.a % 32u), ~arg_1) | vec4<i32>(-38931i, ~(-2147483647i), firstTrailingBit(10567i), ~u_input.a)));
    var var_1 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)));
    global2 = array<vec2<i32>, 7>();
    return ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, 77391u) >> (vec2<u32>(global0.a, 0u) % vec2<u32>(32u)), abs(vec2<u32>(arg_3.a, global0.a)), vec2<u32>(global0.a, global0.a)) ^ select(~vec2<u32>(arg_3.a, arg_3.a), abs(vec2<u32>(85002u, 16699u)), false), select(~vec2<u32>(arg_3.a, global0.a), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.a, 18134u), vec2<u32>(global0.a, 0u), vec2<u32>(1u, arg_3.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a, global0.a), vec2<u32>(arg_3.a, global0.a))), !(!vec2<bool>(var_1.x, var_1.x))), !(!(!vec2<bool>(var_1.x, false))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<u32> {
    global1 = array<f32, 6>();
    let var_0 = reverseBits(func_4(vec2<f32>(-489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a))) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a, 6u)]))), ~(~_wgslsmith_mod_i32(14035i, 20413i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-2753f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a, 6u)] * 946f), -668f, global1[_wgslsmith_index_u32(min(4294967295u, 7795u), 6u)])), Struct_1(countOneBits(1u) >> (global0.a % 32u))));
    global2 = array<vec2<i32>, 7>();
    let var_1 = Struct_1(_wgslsmith_sub_u32(73770u >> (1u % 32u), var_0.x));
    var var_2 = select(!select(arg_0.zw, select(arg_0.yw, !arg_1.xz, false), true), !(!arg_1.wy), arg_0.wx);
    return ~(~vec3<u32>(firstLeadingBit(~0u), ~countOneBits(2830u), var_1.a));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(~_wgslsmith_add_u32(72210u, ~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(69400u, arg_1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, 1u), arg_1.zz))));
    var_0 = Struct_1((_wgslsmith_mult_u32(var_0.a >> (4294967295u % 32u), 4294967295u) & 34021u) << (arg_0.x % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(reverseBits(21417u)), 6u)]), global1[_wgslsmith_index_u32(~(abs(var_0.a & arg_1.x) | countOneBits(_wgslsmith_mod_u32(106133u, var_0.a))), 6u)]);
    var var_2 = 1u >> (arg_1.x % 32u);
    let var_3 = vec3<i32>(u_input.a, _wgslsmith_div_i32(-1i, ~select(reverseBits(u_input.a), u_input.a, true)), select(-_wgslsmith_sub_i32(-u_input.a, abs(-32383i)), firstTrailingBit(_wgslsmith_div_i32(min(u_input.a, -2147483647i), ~u_input.a)), false));
    return _wgslsmith_mod_i32(~reverseBits(var_3.x), -(~var_3.x) << (26549u % 32u));
}

fn func_1() -> bool {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -14896i, abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(7344i, 2147483647i, 15146i), vec3<i32>(u_input.a, -2147483647i, u_input.a)))), -24897i, func_5(~func_2(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), -vec2<i32>(u_input.a, 24335i)), select(vec3<u32>(min(61510u, 0u), _wgslsmith_add_u32(global0.a, global0.a), 4294967295u), ~vec3<u32>(global0.a, 88165u, global0.a) << (reverseBits(vec3<u32>(0u, 20200u, global0.a)) % vec3<u32>(32u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), u_input.a);
    var var_1 = Struct_1(15456u);
    var_0 = ~vec4<i32>(var_0.x, max(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(36479i, 61046i), vec2<i32>(var_0.x, u_input.a) & vec2<i32>(u_input.a, var_0.x))), select(-1i, min(u_input.a, 11517i) >> (~0u % 32u), all(vec2<bool>(true, false))), 1i | u_input.a);
    var var_2 = abs(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-12979i, u_input.a), vec2<i32>(2147483647i, var_0.x)) & global2[_wgslsmith_index_u32(1u, 7u)], min(var_0.zz, vec2<i32>(-1i, -u_input.a))));
    let var_3 = any(vec3<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(69186u, global0.a, global0.a, 0u), vec4<u32>(var_1.a, 33809u, global0.a, 1u)) << (abs(65405u) % 32u)) <= ~max(global0.a, var_1.a), false, true));
    return true;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(arg_3);
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, -1i), min(_wgslsmith_div_i32(0i, 19840i), firstTrailingBit(-1i)), -(i32(-1i) * -27648i), reverseBits(u_input.a >> (1u % 32u))), -vec4<i32>(max(15531i, -24366i), 1i, 1i, u_input.a), select(vec4<i32>(-u_input.a, _wgslsmith_add_i32(u_input.a, 1i), u_input.a | u_input.a, 1i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 15291i), !vec4<bool>(true, false, false, arg_1))), vec4<i32>(-1i, 1891i, ~38686i, _wgslsmith_mod_i32(min(13570i, u_input.a), ~(-23126i) & (u_input.a << (arg_3 % 32u)))));
    var var_1 = -412f;
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    return Struct_1(~0u);
}

fn func_7(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    global0 = Struct_1(abs(global0.a));
    var var_1 = Struct_1(0u);
    global1 = array<f32, 6>();
    var var_2 = arg_3;
    return global0.a & global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 7>();
    let var_0 = !select(vec4<bool>((u_input.a ^ u_input.a) >= _wgslsmith_sub_i32(52958i, -1i), true, true, !any(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), false), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(global0.a, global0.a)), 6u)])) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(func_7(vec3<bool>(!var_0.x, false, true), -519f, -(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_6(func_1(), var_0.x | var_0.x, Struct_1(global0.a), global0.a)), 6u)], _wgslsmith_f_op_f32(select(-711f, -808f, !(!var_0.x)))));
    let var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(global0.a, 4294967295u, global0.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global0.a, global0.a), ~28124u, _wgslsmith_mod_u32(52890u, global0.a)), vec3<u32>(0u, ~global0.a, _wgslsmith_clamp_u32(1u, 4294967295u, global0.a))), ~vec3<u32>(10948u, global0.a & global0.a, global0.a)));
    let var_3 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 6u)], -720f);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(select(-1211f, _wgslsmith_f_op_f32(-1017f - global1[_wgslsmith_index_u32(71138u, 6u)]), false))))), _wgslsmith_f_op_f32(-310f - _wgslsmith_f_op_f32(floor(-138f)))));
    var var_5 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(floor(-681f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~((-u_input.a ^ select(u_input.a, 4527i, false)) & func_5(vec3<u32>(global0.a, global0.a, 9808u) << (var_2 % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(3817u, var_2.x, 1u)))), -944f, firstTrailingBit(~firstTrailingBit(countOneBits(vec3<u32>(var_2.x, var_2.x, 9333u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), -659f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-950f, 284f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(933f, global1[_wgslsmith_index_u32(abs(0u), 6u)], 177f))), _wgslsmith_f_op_f32(-383f * 755f));
}

