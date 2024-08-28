struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global0 = -vec3<i32>(_wgslsmith_dot_vec2_i32(global0.zy, min(global0.xx, abs(vec2<i32>(1i, global0.x)))), ~reverseBits(min(0i, global0.x)), reverseBits((global0.x | global0.x) | firstLeadingBit(global0.x)));
    let var_0 = !(!vec4<bool>(!any(vec4<bool>(false, true, true, false)), false, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4171u, global1.x), vec4<u32>(global1.x, u_input.d.x, 2251u, 18768u)) <= u_input.b, select(false, true, false) || false));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(535f, -1853f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-439f)) - _wgslsmith_f_op_f32(ceil(1796f)))), _wgslsmith_f_op_f32(ceil(-1311f)))));
    var var_2 = _wgslsmith_clamp_i32(countOneBits(-1i), 2147483647i, -1i);
    var var_3 = u_input.c;
    return var_0;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_1 {
    global1 = ~select(u_input.d, ~(u_input.d ^ u_input.d) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), u_input.d), ~4294967295u), arg_1);
    let var_0 = select(select(!(!vec4<bool>(arg_1, false, false, arg_0)), !select(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, arg_0, arg_0, arg_1), vec4<bool>(true, arg_0, arg_0, arg_0)), !vec4<bool>(arg_0, arg_1, arg_0, false), arg_0 | arg_1), true), func_3(), !(!vec4<bool>(true, true, arg_2 < arg_2, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-292f)) - -882f), _wgslsmith_div_f32(-1381f, 419f), 285f, _wgslsmith_f_op_f32(abs(arg_2))), vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2, arg_2))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_2)))))));
    let var_2 = -5217i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xxw - var_1.xww));
    return Struct_1(-23343i, _wgslsmith_f_op_f32(-var_1.x));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = 147f;
    var var_1 = func_2(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))));
    var_1 = func_2(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -487f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + 2065f) * 407f);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))) + var_1.b);
    return func_2(true, false && arg_0.x, _wgslsmith_f_op_f32(-var_0));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = _wgslsmith_add_vec2_u32(u_input.d, u_input.d);
    global0 = abs(vec3<i32>(-_wgslsmith_div_i32(1i, _wgslsmith_div_i32(arg_1.a.a, global0.x)), arg_1.a.a, arg_1.a.a));
    let var_0 = _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.b, u_input.d.x), abs(u_input.b), u_input.d.x), reverseBits(abs(vec3<u32>(42598u, 45552u, u_input.b))))), firstLeadingBit(min(vec3<u32>(22372u, 4294967295u, 4294967295u) | vec3<u32>(1u, 0u, u_input.b), ~(~vec3<u32>(global1.x, 5496u, u_input.b)))));
    global0 = (firstTrailingBit(vec3<i32>(-1i, 1i, ~(-3122i))) | abs(vec3<i32>(7230i, -u_input.c, arg_2.a))) & -vec3<i32>(arg_2.a, _wgslsmith_mod_i32(0i, 45618i), -23326i);
    global1 = ~(select(countOneBits(vec2<u32>(global1.x, u_input.d.x)), var_0.xy | (var_0.yz | vec2<u32>(0u, global1.x)), select(func_3().zx, arg_0.xz, vec2<bool>(arg_1.b.x, arg_3))) & var_0.zz);
    return 1350f;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = min(_wgslsmith_div_vec3_u32(vec3<u32>(~(~4294967295u), ~_wgslsmith_add_u32(4294967295u, global1.x), _wgslsmith_sub_u32(~21674u, ~u_input.b)), ~vec3<u32>(~global1.x, 23693u, 4903u)), firstTrailingBit(firstLeadingBit(abs(~vec3<u32>(0u, 0u, global1.x)))));
    var_0 = (vec3<u32>(var_0.x, u_input.b, ~(global1.x | u_input.b)) & vec3<u32>(~_wgslsmith_div_u32(global1.x, 1u), 10754u, global1.x)) >> (vec3<u32>(~0u, 0u, var_0.x) % vec3<u32>(32u));
    let var_1 = Struct_2(arg_0, arg_2, vec3<f32>(977f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, -2119f)) + _wgslsmith_f_op_f32(arg_0.b - 1178f))), -1016f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(func_2(true, arg_2.x, arg_0.b).b * arg_0.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, -2363f, 1652f))))));
    global1 = ~var_0.yx;
    global0 = countOneBits(-min(-firstTrailingBit(arg_1.wzy), reverseBits(max(vec3<i32>(21394i, 2147483647i, var_1.a.a), vec3<i32>(arg_0.a, 32512i, arg_0.a)))));
    return Struct_1(-arg_0.a, _wgslsmith_f_op_f32(203f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-471f)), _wgslsmith_f_op_f32(step(arg_0.b, 572f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_1(firstTrailingBit(~u_input.c), _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), Struct_2(Struct_1(global0.x, 247f), vec2<bool>(false, true), vec3<f32>(384f, -458f, 845f), vec3<f32>(243f, 708f, -344f)), func_1(vec3<bool>(false, true, true)), true))), -(select(vec4<i32>(20292i, 0i, 23678i, global0.x), vec4<i32>(-9463i, global0.x, global0.x, u_input.c), false) | _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 0i, -15646i, u_input.c), vec4<i32>(global0.x, 13540i, u_input.a, u_input.a))), vec2<bool>(true, true), _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(58410i, u_input.c, 11481i, 0i), vec4<i32>(-1i, u_input.c, 1i, -1i)), -vec4<i32>(global0.x, u_input.c, 83967i, u_input.c))), func_3().zw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1071f + 1202f), _wgslsmith_f_op_f32(-698f - 1386f), -1315f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1952f, -737f, -242f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, 1243f, -1380f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-592f, 247f, 540f), vec3<f32>(926f, -293f, 1181f))))), vec3<f32>(-1116f, -1000f, _wgslsmith_f_op_f32(-927f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<bool>(true, false, true, true), Struct_2(Struct_1(global0.x, 514f), vec2<bool>(false, true), vec3<f32>(104f, 792f, -511f), vec3<f32>(594f, -322f, -583f)), Struct_1(u_input.a, -169f), true))))));
    let var_1 = func_1(!vec3<bool>(var_0.b.x, all(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<bool>(true, var_0.b.x, false, var_0.b.x), var_0.b.x)), false));
    global1 = ~(~(u_input.d | vec2<u32>(45873u, u_input.d.x)));
    var_0 = Struct_2(var_1, !var_0.b, vec3<f32>(-2502f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, false, true, false), Struct_2(Struct_1(-2147483647i, 423f), vec2<bool>(false, var_0.b.x), var_0.c, var_0.d), Struct_1(1i, -929f), false)))), _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1138f))))), _wgslsmith_f_op_vec3_f32(step(var_0.c, var_0.d)));
    let var_2 = Struct_2(Struct_1(func_2(var_0.b.x, var_0.b.x, 1000f).a, var_1.b), !func_3().zx, vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * 989f) * _wgslsmith_f_op_f32(var_0.d.x - 151f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(var_1.b, var_0.a.b))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c.x, 682f, var_1.b))))))));
    var var_3 = 1230u;
    global1 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.d), vec2<u32>(1u, 54645u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(global1.x, 89780u), 26355u | global1.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 58637u)), vec2<u32>(~global1.x, global1.x))));
    global0 = _wgslsmith_sub_vec3_i32(~countOneBits(select(-vec3<i32>(-2147483647i, 2147483647i, 32099i), vec3<i32>(2224i, 2147483647i, 7195i), vec3<bool>(false, true, var_0.b.x))), _wgslsmith_div_vec3_i32(firstTrailingBit(firstTrailingBit(vec3<i32>(global0.x, -16642i, global0.x))), vec3<i32>(var_0.a.a | global0.x, var_1.a, 13216i >> (0u % 32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.b | 0u, select(51749u, 1u, var_2.b.x)), ~abs(vec3<u32>(u_input.d.x, global1.x, 4294967295u))) % vec3<u32>(32u)));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.a, var_0.a.a, var_1.a), _wgslsmith_div_vec3_i32(vec3<i32>(~var_0.a.a, -func_2(false, true, var_2.a.b).a, 1i), vec3<i32>(reverseBits(var_0.a.a), ~min(u_input.c, -7003i), func_5(var_0.a, vec4<i32>(-2147483647i, u_input.a, var_0.a.a, -2147483647i) | vec4<i32>(-19160i, var_0.a.a, 2147483647i, u_input.c), var_0.b, vec4<i32>(var_0.a.a, -2147483647i, global0.x, u_input.c)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(vec3<u32>(34340u, 59123u, global1.x), vec3<u32>(u_input.d.x, u_input.d.x, global1.x)) << (vec3<u32>(abs(10752u), 4294967295u | global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.d.x, 4294967295u))) % vec3<u32>(32u))), vec2<u32>(~61181u, ~_wgslsmith_mult_u32(u_input.b, ~global1.x)));
}

