struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, 39815i), firstTrailingBit(-countOneBits(-vec2<i32>(-2147483647i, -1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2265f, -1393f, -683f, arg_3.x) + vec4<f32>(arg_1, arg_1, 828f, 374f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(540f, -212f, arg_3.x, arg_3.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 292f, 1000f, arg_1)))))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2710f, -1213f, 649f, arg_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1579f, -1421f, arg_1)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.x, -481f, 1942f, arg_1)))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))))));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(select(arg_1, arg_3.x, 708f <= _wgslsmith_f_op_f32(-arg_1))), 1048f, arg_3.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(-var_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(round(781f)))), !any(vec3<bool>(false, true, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = Struct_1(firstLeadingBit(-8731i), _wgslsmith_mod_u32(29772u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.b, 1u, u_input.a.x, 128368u), vec4<u32>(3987u, arg_0.b, 38243u, global0.b)), vec4<u32>(arg_1.b, global0.b, 19089u, ~2719u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-898f, 1258f, 1640f, -412f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(370f, 359f, 1000f, 1000f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2012f, 2279f, 434f, 1000f), vec4<f32>(180f, 328f, 133f, 1027f))), !vec4<bool>(arg_2, false, true, true)))))));
    var var_2 = !(!(!(!vec4<bool>(arg_2, arg_2, true, true))));
    var var_3 = _wgslsmith_mult_vec3_i32(min(firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, -1i, -2147483647i), abs(vec3<i32>(var_0.a, var_0.a, arg_1.a)))), select(vec3<i32>(global0.a, 1i, -2147483647i) | vec3<i32>(10949i, -1i, 1i), ~vec3<i32>(-2147483647i, -1i, -1i), var_2.wzx) ^ -countOneBits(vec3<i32>(49548i, arg_1.a, global0.a))), vec3<i32>(_wgslsmith_add_i32(global0.a, ~global0.a), var_0.a, firstTrailingBit(i32(-1i) * -2147483647i)));
    var_3 = ~_wgslsmith_sub_vec3_i32(select(vec3<i32>(3747i, -34727i, var_3.x | arg_1.a), vec3<i32>(min(-2147483647i, var_3.x), 2147483647i, _wgslsmith_add_i32(-1i, arg_1.a)), var_2.wzx), max(vec3<i32>(_wgslsmith_mod_i32(23044i, 26311i), -28674i, var_3.x), ~vec3<i32>(arg_0.a, -1i, global0.a)));
    return var_0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(countOneBits(max(~1i, _wgslsmith_mod_i32(global0.a, -2147483647i))), _wgslsmith_mod_u32(u_input.a.x, global0.b));
    global0 = Struct_1(func_4(Struct_1(0i, _wgslsmith_mult_u32(910u, u_input.a.x) >> (92093u % 32u)), Struct_1(~var_0.a & -1i, 4294967295u), !(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, 1u), -341f, Struct_1(0i, 96709u), vec2<f32>(1498f, -336f))) >= _wgslsmith_f_op_f32(-265f + 340f))), firstTrailingBit(~var_0.b));
    let var_1 = select(vec4<bool>(true, reverseBits(~32744u) <= u_input.a.x, true, select(select(false, true, all(vec3<bool>(false, false, false))), true, select(true, any(vec4<bool>(true, true, false, false)), true))), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))), any(vec4<bool>(true, true, true, true)), true), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    var_0 = Struct_1(2147483647i, ~(~(~1u ^ ~u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f - 1472f))), _wgslsmith_f_op_f32(786f - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1132f))) + _wgslsmith_f_op_f32(select(583f, _wgslsmith_f_op_f32(abs(637f)), !var_1.x))))));
    return Struct_1(~_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(global0.a, var_0.a, -82153i)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(51800i, var_0.a, 1i), vec3<i32>(17714i, 34297i, var_0.a)))), var_0.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), !all(vec4<bool>(true, false, true, true))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true), true), all(vec4<bool>(true, true, true, true))), vec2<bool>(false, true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1134f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1577f + -659f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1929f) * _wgslsmith_div_f32(-807f, -472f))))), -883f);
    let var_2 = vec3<i32>(_wgslsmith_add_i32(arg_1.a, 60443i) >> (~40857u % 32u), 1i, -func_2().a);
    var_1 = vec3<f32>(728f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f - _wgslsmith_f_op_f32(var_1.x * -801f)) + 956f) - _wgslsmith_f_op_f32(func_3(Struct_1(var_2.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 4294967295u))), var_1.x, Struct_1(min(33534i, global0.a), 4044u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.xy - vec2<f32>(1288f, -328f))))))), var_1.x);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -40911i, arg_1.a, 29135i, func_4(arg_1, arg_1, var_0.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, arg_1.a, 2147483647i), select(vec4<i32>(var_2.x, -2147483647i, var_2.x, arg_1.a), vec4<i32>(arg_1.a, -48321i, global0.a, global0.a), var_0.x))), u_input.a.x);
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(40865i, var_3.a, reverseBits(arg_1.a) ^ -global0.a, _wgslsmith_sub_i32(var_2.x >> (arg_2.x % 32u), var_3.a ^ arg_1.a)), vec4<i32>(var_3.a, 1i, -firstLeadingBit(56621i), reverseBits(global0.a))), _wgslsmith_sub_u32(global0.b, _wgslsmith_sub_u32(1349u, arg_1.b)));
}

fn func_1() -> Struct_1 {
    global0 = func_5(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b, 0u, global0.b), u_input.a) | u_input.a, u_input.a), func_2(), vec2<u32>(global0.b, 74768u));
    var var_0 = func_5(_wgslsmith_sub_vec3_u32(max((u_input.a ^ u_input.a) << (firstTrailingBit(vec3<u32>(27537u, 1u, 0u)) % vec3<u32>(32u)), u_input.a >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, global0.b, u_input.a.x)) % vec3<u32>(32u))), countOneBits(_wgslsmith_add_vec3_u32(u_input.a, ~u_input.a))), Struct_1(func_5(~abs(vec3<u32>(u_input.a.x, u_input.a.x, 101035u)), Struct_1(abs(-1i), countOneBits(u_input.a.x)), u_input.a.xz).a, ~global0.b ^ ~(~u_input.a.x)), reverseBits(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, 36632u), ~vec2<u32>(4294967295u, 0u))));
    let var_1 = func_5(~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), func_2(), u_input.a.zy);
    var var_2 = ~(global0.b >> (reverseBits(4294967295u) % 32u));
    var var_3 = ~(~firstLeadingBit(~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, 1u, var_1.b))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_5(u_input.a, Struct_1(var_0.a, 1u ^ ~u_input.a.x), ~vec2<u32>(global0.b, 4294967295u));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.b, min(1u, var_1.b)), ~abs(vec3<u32>(2446u, 0u, 73203u)))) >> ((var_1.b >> (94599u % 32u)) % 32u);
    let var_3 = Struct_1(~_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.a >> (var_0.b % 32u), var_0.a >> (u_input.a.x % 32u)), _wgslsmith_mod_i32(func_5(u_input.a, var_1, u_input.a.yz).a, 1i)), var_0.b);
    var var_4 = var_3;
    let var_5 = ~max(vec4<u32>(44697u, u_input.a.x, var_4.b, global0.b), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_3.b, 1u, var_3.b, var_0.b)), ~vec4<u32>(global0.b, global0.b, var_2, var_2)), select(vec4<u32>(var_2, var_2, 6869u, var_1.b) >> (vec4<u32>(0u, 0u, u_input.a.x, global0.b) % vec4<u32>(32u)), vec4<u32>(var_2, 1u, 4294967295u, 1u), true)));
    let var_6 = -var_3.a;
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, ~vec3<u32>(firstTrailingBit(func_1().b), _wgslsmith_sub_u32(~global0.b, var_3.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(34147u, global0.b, 4294967295u, var_0.b), vec4<u32>(77688u, 1u, 17312u, var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1060f, -232f, -440f, 328f) + vec4<f32>(-718f, 437f, 1000f, 1769f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(495f, 1810f, -1471f, -1158f)))))), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.a, -2147483647i), vec2<i32>(var_1.a, 44968i) | vec2<i32>(-5661i, var_4.a))));
}

