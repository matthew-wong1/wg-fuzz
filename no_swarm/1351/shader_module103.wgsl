struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_2(arg_3.a, Struct_1(firstLeadingBit(0u), arg_3.c.b), Struct_1(_wgslsmith_dot_vec2_u32(~arg_2.zx, _wgslsmith_add_vec2_u32(arg_2.zx, vec2<u32>(arg_2.x, u_input.b))) | ~arg_1.a, -777i), arg_3.d);
    var var_2 = vec4<i32>(max(var_1.c.b >> (~0u % 32u), _wgslsmith_mod_i32(2147483647i, var_1.d.b)) | _wgslsmith_clamp_i32(min(_wgslsmith_add_i32(49172i, 22898i), var_0.b), var_0.b, -var_0.b), max(_wgslsmith_div_i32(abs(firstLeadingBit(u_input.c.x)), arg_1.b & (u_input.c.x << (41910u % 32u))), -max(firstLeadingBit(-1i), _wgslsmith_div_i32(-38112i, arg_3.d.b))), -23920i, ~var_1.d.b);
    let var_3 = u_input.c.x;
    var_0 = arg_1;
    return _wgslsmith_dot_vec2_i32(var_2.xy, _wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, -var_1.b.b) & -u_input.c, ~(-vec2<i32>(-40155i, arg_1.b) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_1.b), var_2.ww))));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, func_3(vec3<bool>(true, true, true), Struct_1(47782u, -1i), vec3<u32>(72769u, u_input.b, u_input.b), Struct_2(-1656f, Struct_1(1u, u_input.a), Struct_1(u_input.b, -69804i), Struct_1(31495u, -18051i))) >> (~59514u % 32u), min(2147483647i, u_input.c.x) & u_input.a, ~_wgslsmith_sub_i32(-2147483647i, u_input.a))), abs(-select(_wgslsmith_mult_vec4_i32(vec4<i32>(35001i, u_input.a, -1i, 1i), vec4<i32>(u_input.a, u_input.a, 21439i, u_input.a)), countOneBits(vec4<i32>(u_input.a, 1i, u_input.c.x, u_input.c.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))));
    var var_1 = vec4<f32>(arg_0, -111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), 321f);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -744f), var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-276f))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-309f + 1433f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(427f + 141f), -957f)))));
    let var_3 = Struct_2(812f, Struct_1(u_input.b, 33344i >> (u_input.b % 32u)), Struct_1(6245u, ~42139i), Struct_1(~0u, -43832i));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0, u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, _wgslsmith_div_f32(-810f, _wgslsmith_f_op_f32(f32(-1f) * -244f)), _wgslsmith_f_op_f32(round(1605f))))));
    var var_2 = Struct_1(~reverseBits(u_input.b), arg_2.x);
    var_2 = Struct_1(_wgslsmith_div_u32(countOneBits(~1u), ~1u), u_input.a);
    var var_3 = Struct_2(-999f, var_0, Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, 60891u), vec2<u32>(4294967295u, arg_0)), vec2<u32>(arg_0, arg_0)), -((1i | var_2.b) | _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(var_0.b, 2147483647i, var_0.b)))), var_0);
    return Struct_1(4294967295u, firstLeadingBit(abs(-(-35171i >> (arg_0 % 32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1108f), Struct_1(44387u, 12695i), arg_0, func_4(70368u, vec2<bool>(true, true), select(vec3<i32>(u_input.c.x, arg_1.b, arg_1.b), vec3<i32>(arg_0.b, arg_0.b, 2147483647i), true) >> (vec3<u32>(arg_0.a, _wgslsmith_mod_u32(0u, arg_0.a), arg_0.a) % vec3<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(-251f, var_0.a, all(vec3<bool>(true, true, false)) | false)), Struct_1(u_input.b, arg_0.b), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a, var_0.c.a, u_input.b), abs(vec3<u32>(arg_0.a, u_input.b, 52911u))), ~var_0.c.b >> (~(arg_0.a | 4294967295u) % 32u)), Struct_1(var_0.d.a, ~var_0.d.b));
    let var_2 = _wgslsmith_f_op_f32(-var_1.a);
    var var_3 = ~(~vec4<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.a, 18194u, u_input.b), ~vec3<u32>(arg_1.a, u_input.b, 97151u)), 74329u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(9810u, arg_0.a), arg_1.a, 4294967295u)));
    var var_4 = -784f;
    return var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_5(func_4(0u, !select(vec2<bool>(true, true), func_2(arg_0.x), true), (vec3<i32>(arg_2.b, -39832i, -59049i) | (vec3<i32>(arg_1.b, u_input.a, -23113i) | vec3<i32>(29231i, arg_1.b, -1i))) & reverseBits(firstLeadingBit(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x)))), func_4(0u, !func_2(arg_0.x), -abs(vec3<i32>(-1i, 2914i, 1628i)) >> (~vec3<u32>(4294967295u, 17062u, arg_2.a) % vec3<u32>(32u))));
    var_0 = func_5(Struct_1(~select(1u, arg_1.a ^ arg_3.a, true), -arg_2.b), arg_2);
    var var_1 = func_5(Struct_1(arg_3.a, 1506i), func_4(~0u, vec2<bool>(func_2(514f).x, !(arg_3.a == 12986u)), vec3<i32>(func_4(~var_0.c.a, select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec3<i32>(arg_1.b, arg_2.b, 963i) & vec3<i32>(-10976i, -66694i, -67573i)).b, 1i, 12598i)));
    var var_2 = Struct_2(-448f, Struct_1(~0u, -2147483647i), Struct_1(arg_1.a, (arg_3.b ^ -arg_2.b) >> (firstLeadingBit(reverseBits(var_0.b.a)) % 32u)), Struct_1(~0u >> (~(~arg_1.a) % 32u), var_0.b.b));
    let var_3 = true;
    return !select(!select(!vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, true, true), vec3<bool>(var_3, var_3, false)), vec3<bool>(func_2(1657f).x, arg_0.x == _wgslsmith_f_op_f32(304f + var_0.a), true), vec3<bool>(false, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), func_1(vec2<f32>(-1345f, 1101f), Struct_1(u_input.b, -5434i), Struct_1(31260u, u_input.a), Struct_1(58588u, -2147483647i)), vec3<bool>(true, false, false)))), true);
    let var_1 = Struct_1(abs(~86044u), u_input.a);
    var var_2 = func_5(func_4(firstTrailingBit(select(u_input.b, ~1u, var_0.x)), vec2<bool>(!all(vec2<bool>(var_0.x, false)), true), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, -2147483647i, var_1.b), vec3<i32>(u_input.c.x, u_input.a, u_input.c.x))) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(55208u, var_1.a, 7628u), vec3<u32>(0u, var_1.a, u_input.b), vec3<u32>(var_1.a, u_input.b, 83324u)) % vec3<u32>(32u))), Struct_1(~(4294967295u ^ ~u_input.b), 1i));
    let var_3 = func_1(vec2<f32>(323f, _wgslsmith_f_op_f32(floor(687f))), func_5(Struct_1(var_2.c.a, _wgslsmith_dot_vec2_i32(~u_input.c, -u_input.c)), var_2.c).d, Struct_1(33935u, func_5(var_2.c, func_5(var_1, Struct_1(4294967295u, u_input.a)).b).c.b), func_4(func_4(~_wgslsmith_mod_u32(u_input.b, u_input.b), func_2(_wgslsmith_f_op_f32(f32(-1f) * -362f)), -vec3<i32>(61879i, var_1.b, -26272i)).a, var_0, (-vec3<i32>(var_2.b.b, u_input.c.x, -28150i) ^ vec3<i32>(u_input.a, u_input.a, 6654i)) << (vec3<u32>(29723u, ~1u, var_2.d.a) % vec3<u32>(32u)))).xz;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.b, var_2.b.b, -1i, u_input.c.x), vec4<i32>(u_input.a, var_2.b.b, 1i, 10154i)), u_input.a | var_1.b), countOneBits(vec4<i32>(var_1.b, -39882i, -4546i, var_1.b)) & ~vec4<i32>(54946i, var_1.b, u_input.a, 1i)), vec4<i32>(-countOneBits(u_input.c.x), -14272i, 1359i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13069i, var_1.b), vec2<i32>(u_input.a, var_2.b.b)))), vec3<f32>(-215f, _wgslsmith_div_f32(-353f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-696f, 635f) + var_2.a)), _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(min(-515f, _wgslsmith_f_op_f32(-311f - var_2.a))))), _wgslsmith_sub_vec4_i32(abs(-(vec4<i32>(-33393i, -2147483647i, u_input.c.x, 0i) | vec4<i32>(7239i, u_input.a, -29812i, u_input.c.x))), select(min(vec4<i32>(0i, -46846i, 2147483647i, -2147483647i), vec4<i32>(u_input.c.x, 1i, var_1.b, u_input.c.x)), vec4<i32>(2147483647i, var_2.c.b >> (4294967295u % 32u), 0i, ~0i), select(select(vec4<bool>(true, var_3.x, var_3.x, var_0.x), vec4<bool>(var_3.x, false, var_0.x, true), vec4<bool>(var_0.x, var_3.x, true, var_0.x)), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_3.x, var_3.x, var_3.x), true), vec4<bool>(var_3.x, var_0.x, var_3.x, var_3.x)))));
}

