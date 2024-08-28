struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    let var_0 = u_input.b.x;
    var var_1 = -25801i;
    let var_2 = ~vec3<u32>(1u, 1u, 1u);
    var_1 = -2147483647i;
    let var_3 = select(1450u, 1u, _wgslsmith_f_op_f32(floor(-756f)) == -284f);
    return !any(vec3<bool>(all(vec2<bool>(true, true)) != true, true, true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = ~(~abs(vec3<i32>(1i, _wgslsmith_mod_i32(-24276i, 3179i), _wgslsmith_clamp_i32(2147483647i, u_input.b.x, -1i))));
    let var_1 = select(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(any(vec4<bool>(true, false, false, true)) && select(false, false, true), -64350i >= var_0.x, func_3()));
    var_0 = _wgslsmith_mult_vec3_i32(u_input.b, ~vec3<i32>(u_input.b.x, ~(-1i), 0i) << (_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(arg_1.x), 10873u, arg_1.x), arg_1.xxw & (arg_1.xww & vec3<u32>(arg_1.x, arg_1.x, arg_1.x))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 757f) * _wgslsmith_f_op_f32(-530f - 1000f)) + _wgslsmith_f_op_f32(round(arg_0.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))));
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(arg_1.zy, arg_1.yw), ~vec2<u32>(arg_1.x, 57962u), arg_0.x >= arg_0.x), (arg_1.wx << (vec2<u32>(78180u, 13558u) % vec2<u32>(32u))) & (arg_1.wy >> (vec2<u32>(0u, 64481u) % vec2<u32>(32u)))), 20464u);
    return Struct_1(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, 762f)), -889f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(-arg_0)) - arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_1(1000f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(706f, -1620f, _wgslsmith_f_op_f32(max(-939f, -1000f)), arg_1.b.x), vec4<f32>(_wgslsmith_f_op_f32(-155f + 664f), arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))), arg_1.b)));
    let var_1 = arg_1.b.yzz;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.zy - arg_1.b.ww) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f) + _wgslsmith_f_op_f32(var_0.b.x - 109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(883f))))));
    var_2 = var_0.b.wy;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(trunc(2760f))), arg_1.b.ww)));
    return vec3<f32>(-1573f, var_0.a, -125f);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -1041f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(361f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1101f, -2747f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(364f, 374f, -383f)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<u32>(41816u, 46926u, 23464u, 21157u)), func_2(vec4<f32>(-742f, -1079f, 992f, -1000f), vec4<u32>(0u, 14514u, 21898u, 1u)), vec3<bool>(true, true, true), _wgslsmith_add_i32(u_input.b.x, -55075i)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<u32>(1u, 1u, 1u, 1u)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-736f, 713f, -692f, -1080f)), select(vec4<u32>(4294967295u, 4208u, 27663u, 42338u), vec4<u32>(4294967295u, 14458u, 0u, 52906u), false)), vec3<bool>(false, any(vec3<bool>(false, true, true)), true), -26513i)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-642f, 1269f, 1000f)))))), select(vec3<bool>(true, all(vec3<bool>(true, true, true)), true), !vec3<bool>(true, all(vec2<bool>(false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    var var_1 = var_0.zy;
    var_1 = _wgslsmith_f_op_vec2_f32(round(var_0.zx));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(675f - -360f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1094f - var_0.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.yz);
    return Struct_1(-623f, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(-210f, var_1.x, var_0.x, -488f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1016f, var_0.x, var_0.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_0.x, 1046f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, var_0.x, 1044f) - vec4<f32>(var_1.x, 1000f, 911f, -952f)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -266f, 411f, var_1.x) * vec4<f32>(753f, var_0.x, -523f, -856f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, var_1.x, var_1.x, var_0.x) * vec4<f32>(-1687f, var_1.x, -524f, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-66487i);
    let var_1 = select(abs(62993u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(546u, 86894u)), 17455u >> (0u % 32u)), _wgslsmith_mod_u32(71395u, _wgslsmith_mod_u32(4294967295u, 65365u))), (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7357u, 12029u), select(vec3<u32>(812u, 4294967295u, 4294967295u), vec3<u32>(30795u, 44606u, 30875u), vec3<bool>(true, false, false))) > 1u) || (~(-900i) != u_input.a));
    var var_2 = u_input.b.xz;
    var_2 = u_input.b.yz;
    var var_3 = vec4<i32>(firstLeadingBit(var_2.x), ~u_input.b.x, -15724i << (var_1 % 32u), u_input.a);
    var var_4 = vec4<i32>(i32(-1i) * -13865i, u_input.a, max(var_2.x, var_3.x), -55067i);
    var var_5 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.b)))), _wgslsmith_add_vec4_u32(countOneBits(countOneBits(firstTrailingBit(vec4<u32>(var_1, var_1, 86185u, 112587u)))), select(vec4<u32>(~0u, var_1, var_1, 0u), ~max(vec4<u32>(0u, var_1, var_1, var_1), vec4<u32>(4294967295u, var_1, var_1, 9411u)), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), all(vec3<bool>(false, false, false))))));
    var_4 = min(-(-vec4<i32>(var_2.x, u_input.b.x, -1i, -1i) >> (reverseBits(~vec4<u32>(var_1, var_1, var_1, 46318u)) % vec4<u32>(32u))), reverseBits(select((vec4<i32>(-2147483647i, var_2.x, var_4.x, var_4.x) << (vec4<u32>(4294967295u, var_1, 4294967295u, 24953u) % vec4<u32>(32u))) | ~vec4<i32>(var_3.x, var_2.x, var_2.x, 14418i), ~(vec4<i32>(5070i, u_input.b.x, 17172i, -4835i) | vec4<i32>(1i, u_input.b.x, var_3.x, var_4.x)), true)));
    let var_6 = -(~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1207f, -103f)), reverseBits((vec4<i32>(-1i) * -vec4<i32>(var_2.x, var_3.x, var_2.x, 2147483647i)) << (max(vec4<u32>(var_1, var_1, 5580u, var_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 4712u, var_1, 0u), vec4<u32>(var_1, var_1, 3926u, 4294967295u), vec4<u32>(16403u, var_1, 72257u, var_1))) % vec4<u32>(32u))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 32394i, var_6, var_6), vec4<i32>(var_3.x, 865i, var_6, 2449i)) << (_wgslsmith_clamp_u32(~4294967295u, ~var_1, ~41941u) % 32u), ~8999i), vec2<f32>(1214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(304f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), -1458f))), _wgslsmith_mod_u32(var_1, var_1));
}

