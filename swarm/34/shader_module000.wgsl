struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<f32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), any(vec4<bool>(false, true, true, false)) && all(vec3<bool>(false, false, true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1264f))));
    var var_2 = select(~min(abs(~vec4<u32>(42878u, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 17988u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 6677u, u_input.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 62517u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(58155u, u_input.a, 4294967295u, 1u)), firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(0u, 17593u, 115328u)), ~u_input.a, u_input.a | u_input.a, _wgslsmith_sub_u32(u_input.a, 0u))) >> (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, 85073u, u_input.a, u_input.a)), abs(min(vec4<u32>(0u, u_input.a, 0u, 11746u), vec4<u32>(u_input.a, 6019u, u_input.a, 102429u)))) % vec4<u32>(32u)), select(!vec4<bool>(true, select(var_0.a.x, var_0.a.x, false), false, var_0.a.x || var_0.a.x), select(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_0.a.x)), vec4<bool>(var_0.a.x && var_0.a.x, all(var_0.a), all(vec3<bool>(true, var_0.a.x, false)), select(var_0.a.x, var_0.a.x, false)), select(!vec4<bool>(var_0.a.x, false, false, var_0.a.x), select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(true, var_0.a.x, true, var_0.a.x), true), false)), ~u_input.a > u_input.a));
    var var_3 = vec4<i32>(-1i) * -(min(vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(1i, 1i, 1i, 1i)) << (~(~vec4<u32>(1u, var_2.x, 0u, u_input.a)) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1165f, -1176f) - _wgslsmith_f_op_f32(1357f + 2813f))), 1006f));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(~reverseBits(vec3<u32>(abs(4294967295u), u_input.a, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), ~reverseBits(vec3<i32>(arg_0, 2147483647i, arg_0 ^ arg_0)), false);
    let var_1 = 386f;
    let var_2 = var_0.a.xy;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(func_3()), abs(_wgslsmith_mod_vec3_i32(var_0.c, vec3<i32>(var_0.c.x, var_0.c.x, 2575i))), !var_0.d);
    let var_3 = Struct_4(vec2<bool>(true, all(vec2<bool>(true, true))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1375f, var_0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_1), vec2<f32>(var_0.b, 213f), true)), vec2<bool>(true, var_0.d)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_0.b)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = 4727u;
    var var_1 = Struct_5(Struct_4(vec2<bool>(arg_3.x, any(!arg_3))), Struct_3(-1904f, vec3<bool>(all(vec3<bool>(true, arg_3.x, arg_2.x)), select(false, select(arg_2.x, arg_2.x, arg_2.x), arg_2.x), ~92073u == ~arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x) * vec3<f32>(arg_0.a.x, -299f, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, -1201f, -1630f)))), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), func_2(7176i).a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-292f - 1647f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2066f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(-1838f)), _wgslsmith_f_op_f32(ceil(arg_0.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), _wgslsmith_f_op_f32(min(856f, arg_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(abs(-731f))))));
    var var_2 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-77462i, -_wgslsmith_clamp_i32(2147483647i, -8627i, 8766i)), -vec2<i32>(0i, 0i) >> (~vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u))));
    var_0 = 4294967295u << (0u % 32u);
    let var_3 = Struct_1(abs(vec3<u32>(u_input.a, 1u, 4294967295u | (1u & arg_1.x))), var_1.e.x, ~(~vec3<i32>(1i, 1i, 1i)) >> (vec3<u32>(arg_1.x, arg_1.x, ~u_input.a) % vec3<u32>(32u)), true);
    return Struct_4(vec2<bool>(all(!select(vec2<bool>(true, arg_3.x), arg_3.xy, var_1.b.b.x)), all(arg_3)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = !any(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(932f, -434f)))), ~(vec3<u32>(1u, u_input.a, arg_2) | vec3<u32>(arg_2, 78710u, 4273u)), !select(vec4<bool>(false, true, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), vec4<bool>(arg_0.a.x, true, arg_1.x, arg_1.x)), !vec4<bool>(true, true, arg_0.a.x, arg_0.a.x)).a);
    var_0 = 2039f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1994f)));
    var var_1 = Struct_5(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-431f, -1150f) * vec2<f32>(317f, -563f)) + vec2<f32>(-1047f, 1148f))), vec3<u32>(34120u, ~abs(15764u), 4294967295u), !vec4<bool>(true, true, !arg_1.x, any(vec3<bool>(false, false, true))), vec4<bool>(false, all(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, arg_0.a.x), arg_1.x)), arg_1.x, !arg_0.a.x)), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3356f - 264f)), 428f)), vec3<bool>(true, false, !arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1189f, -211f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2353f * 880f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)))), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(131f, -3166f), vec2<f32>(-777f, 1830f), arg_0.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(866f, -506f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-383f, 659f))) + vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, 393f, -474f, -974f) - vec4<f32>(980f, -1110f, -1658f, -856f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1863f, 1021f, 1800f, 137f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2530f, 782f, -742f, -951f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(581f, 1863f, -979f, 656f))))))));
    var_1 = Struct_5(Struct_4(!select(arg_0.a, arg_0.a, arg_1.x)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1397f), vec3<bool>(true, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.e.wxz))), all(select(vec4<bool>(true, var_1.b.b.x, true, arg_1.x), vec4<bool>(true, true, false, true), true))))), var_1.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -1000f), 230f, _wgslsmith_f_op_f32(-var_1.d.a.x)));
    let var_2 = select(arg_0.a.x, true, !(!(!arg_1.x)));
    return var_1.b;
}

fn func_6(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = ~u_input.a;
    let var_1 = Struct_5(Struct_4(vec2<bool>((arg_3.b.x || arg_0.a.x) & !arg_0.a.x, true)), arg_3, vec3<f32>(_wgslsmith_f_op_f32(sign(arg_3.a)), -132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), Struct_2(vec2<f32>(arg_3.a, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-810f, 1765f, arg_3.a, -1603f) + vec4<f32>(-1005f, 830f, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, arg_3.a, arg_3.a, arg_3.a)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, arg_2, 1164f, -743f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -718f, -646f, arg_2) - vec4<f32>(arg_3.a, arg_3.a, -215f, -606f)))))));
    let var_2 = var_1.b;
    let var_3 = arg_1.x;
    var var_4 = all(vec2<bool>(!arg_3.b.x, var_1.b.b.x));
    return ~(~vec3<i32>(-19819i, abs(~var_3), _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1.x, 1418i), abs(-1i))));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~max(~1u, u_input.a);
    let var_1 = Struct_1(abs(max(~(~vec3<u32>(10928u, var_0, u_input.a)), ~(~vec3<u32>(u_input.a, 28298u, 0u)))), -485f, func_6(Struct_4(vec2<bool>(true, true)), max(~vec4<i32>(-2147483647i, -1i, 1i, 21618i), vec4<i32>(1i, firstLeadingBit(0i), 1i, abs(-24644i))), _wgslsmith_f_op_f32(select(-303f, _wgslsmith_f_op_f32(trunc(2352f)), true)), func_5(func_4(func_2(-2147483647i), _wgslsmith_add_vec3_u32(vec3<u32>(8477u, var_0, 11780u), vec3<u32>(3940u, var_0, var_0)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), _wgslsmith_add_u32(abs(4294967295u), 0u))), true);
    let var_2 = Struct_4(!vec2<bool>(!var_1.d, any(!vec2<bool>(var_1.d, false))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))));
    let var_4 = select(-vec4<i32>(-var_1.c.x, -23941i, _wgslsmith_add_i32(var_1.c.x & var_1.c.x, var_1.c.x >> (115967u % 32u)), -min(-1i, -2147483647i)), -vec4<i32>(countOneBits(var_1.c.x >> (54509u % 32u)), var_1.c.x, 2147483647i, var_1.c.x), true);
    return StorageBuffer(-_wgslsmith_div_i32((-2147483647i << (u_input.a % 32u)) & -20912i, max(var_4.x, -9933i)), _wgslsmith_f_op_f32(f32(-1f) * -130f), ~var_1.c.x, 23375u, vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(step(881f, var_1.b))))), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), true)), false, true);
    let x = u_input.a;
    s_output = func_1();
}

