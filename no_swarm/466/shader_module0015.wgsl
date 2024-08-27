struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    var var_0 = 1u;
    let var_1 = _wgslsmith_div_vec3_i32(-select(abs(vec3<i32>(-15340i, 2147483647i, -1250i)) << (u_input.d % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.b, u_input.b) << (u_input.d % vec3<u32>(32u)), -668f > _wgslsmith_f_op_f32(floor(-706f))), abs(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.b, 2147483647i, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, u_input.b) >> (u_input.c % vec3<u32>(32u)))));
    var var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var_2 = !select(!vec3<bool>(var_2.x, true, !var_2.x), !(!vec3<bool>(var_2.x, false, true)), all(vec4<bool>(true, true, true, true)));
    let var_3 = 34856i;
    return vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-758f - -606f) + 240f))) > -647f, !(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.x, var_3, var_1.x), vec4<i32>(50928i, var_1.x, -2101i, 1i)), ~vec4<i32>(-2188i, u_input.b, u_input.b, var_1.x)) < u_input.b), var_2.x, var_1.x > -14201i);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(312f, 1f), 181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(473f))))));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = ~vec3<u32>(u_input.c.x, 1u, 73150u);
    var var_3 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(6983u, u_input.c.x, 0u)), vec3<u32>(abs(1u), var_1.a ^ u_input.d.x, var_1.a)), arg_1.a), func_3());
    return Struct_1(~reverseBits(min(~u_input.d.x, var_3.a)), arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, -292f, 649f, arg_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(292f, -810f, arg_3.x, -1199f) + vec4<f32>(1576f, 216f, 858f, arg_3.x)), select(vec4<bool>(arg_1.x, arg_1.x, false, arg_0.b.x), arg_0.b, vec4<bool>(false, false, arg_1.x, false)))))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.x, -724f))), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - 657f), arg_3.x)), _wgslsmith_f_op_f32(ceil(486f))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2126f, 860f, 741f, arg_3.x) - vec4<f32>(1593f, -496f, 209f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(arg_3.x, arg_3.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1171f, -1330f, arg_3.x, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-1206f + var_0.x), 17781u == arg_0.a)), var_0.x, -402f, -1209f))));
    var var_1 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(~(~23779i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 22024i), arg_2))), -(~select(vec3<i32>(2147483647i, u_input.b, arg_2.x), vec3<i32>(arg_2.x, arg_2.x, u_input.b), vec3<bool>(false, arg_1.x, false)) >> (vec3<u32>(u_input.c.x, reverseBits(22690u), countOneBits(arg_0.a)) % vec3<u32>(32u))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, -1i), arg_2), vec2<i32>(-22185i, 2147483647i)), ~(-11075i), u_input.b ^ reverseBits(arg_2.x)));
    var_1 = -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(0i), -var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(27326i, 15758i, u_input.b, 0i), vec4<i32>(50484i, -2147483647i, var_1.x, var_1.x))), vec3<i32>(_wgslsmith_sub_i32(2147483647i, var_1.x), u_input.b, i32(-1i) * -1i), vec3<i32>(_wgslsmith_sub_i32(1i, var_1.x), 5444i & var_1.x, 3859i)));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(283f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(-805f)))), _wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.x - arg_3.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1562f)))), var_0.x));
    return ~31852u;
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(~max(u_input.b, _wgslsmith_add_i32(u_input.b, -35607i)), min(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(2147483647i, 36896i, 2147483647i, u_input.b)), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)), ~8076i)) >= firstTrailingBit(~firstTrailingBit(_wgslsmith_add_i32(-14363i, -42520i)));
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(1u, arg_0.x), ~0u);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1362f)), -1245f)), 1f)));
    var var_3 = Struct_1(_wgslsmith_mod_u32(arg_1, ~firstTrailingBit(44507u | arg_0.x)), func_2(u_input.b, func_2(24841i, func_2(u_input.b, Struct_1(arg_1, vec4<bool>(var_0, arg_2.x, false, false))))).b);
    var var_4 = func_2(u_input.b | _wgslsmith_add_i32(u_input.b, ~u_input.b), Struct_1(var_1.x, !vec4<bool>(!var_3.b.x, !var_3.b.x, arg_3, arg_3)));
    return Struct_1(_wgslsmith_mod_u32(~u_input.d.x, var_1.x), vec4<bool>(true, arg_3, var_4.b.x, !all(select(var_4.b.wx, vec2<bool>(true, arg_3), true))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(2926f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec3<bool>(select(any(vec2<bool>(true, false)), true, all(vec2<bool>(true, true))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), true))));
    let var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1810f - 2114f))) + 286f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f + -2096f) + _wgslsmith_f_op_f32(f32(-1f) * -1221f)) * -1039f))));
    let var_2 = func_5(~vec4<u32>(abs(u_input.d.x), _wgslsmith_clamp_u32(u_input.c.x, u_input.d.x, 25584u), _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x))), 95136u), select(~(~0u), 1u, ((43575u ^ u_input.c.x) | 12099u) != func_4(func_2(-2147483647i, Struct_1(u_input.c.x, vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.b, var_1)), vec2<f32>(-338f, -564f))), !vec2<bool>(u_input.d.x < abs(23801u), any(func_2(20143i, Struct_1(0u, vec4<bool>(false, false, true, true))).b)), !(func_4(func_2(45586i, Struct_1(44345u, vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 46889i), vec2<i32>(39774i, var_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1429f, -1923f), vec2<f32>(-1000f, 490f), vec2<bool>(true, true)))) != (func_2(-38766i, Struct_1(1u, vec4<bool>(true, true, true, true))).a & abs(u_input.a))));
    let var_3 = abs(vec4<u32>(u_input.a, _wgslsmith_add_u32(70576u, 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(241u, 4294967295u, u_input.d.x, 1u), vec4<u32>(57446u, 62799u, var_2.a, u_input.d.x)) % 32u)), ~(~(~13123u)), ~u_input.c.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !(!(!var_0.b));
    var_1 = !(!var_0.b);
    let var_2 = countOneBits(~_wgslsmith_add_u32(u_input.a, ~(~var_0.a)));
    let var_3 = min(-vec2<i32>(u_input.b, u_input.b), firstTrailingBit(_wgslsmith_mod_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(u_input.b, 11286i))), countOneBits(vec2<i32>(u_input.b, u_input.b)))));
    var_1 = vec4<bool>(true, true, all(var_0.b), 1u < u_input.d.x);
    var var_4 = 11719u;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2 >> (~max(var_2, _wgslsmith_div_u32(48607u, var_2)) % 32u), ~_wgslsmith_mod_u32(~u_input.a, var_0.a), vec4<i32>(u_input.b, var_3.x, u_input.b, i32(-1i) * -33588i));
}

