struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(34934i, 2147483647i, -26858i), vec3<i32>(15392i, 2147483647i, -19836i), vec3<i32>(1i, 38303i, 0i), vec3<i32>(-16542i, i32(-2147483648), -1i), vec3<i32>(-8760i, i32(-2147483648), 17651i), vec3<i32>(5966i, -10087i, 17393i), vec3<i32>(1i, -1i, 16199i), vec3<i32>(12370i, -15341i, i32(-2147483648)), vec3<i32>(18164i, i32(-2147483648), -5232i), vec3<i32>(-46229i, -13840i, i32(-2147483648)), vec3<i32>(-8984i, 21795i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(37211i, 2147483647i, -42899i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-329i, 28254i, -4092i), vec3<i32>(47572i, 0i, -1i), vec3<i32>(-46303i, 0i, -34860i), vec3<i32>(19165i, 54839i, i32(-2147483648)), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(1i, 2147483647i, 32640i), vec3<i32>(20111i, -1i, -1i), vec3<i32>(2094i, -185i, 17527i), vec3<i32>(i32(-2147483648), 18019i, -45542i), vec3<i32>(29851i, 1i, -1i), vec3<i32>(24253i, 34030i, -17589i), vec3<i32>(-1i, i32(-2147483648), 56019i), vec3<i32>(0i, 36054i, i32(-2147483648)), vec3<i32>(3682i, 0i, -7295i), vec3<i32>(1i, 1866i, 0i), vec3<i32>(0i, 2147483647i, 578i), vec3<i32>(-1i, i32(-2147483648), -7154i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    global0 = array<Struct_2, 7>();
    return select(!select(vec3<bool>(true, true, true), select(arg_1.yyz, vec3<bool>(true, false, arg_0), arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_1.x, arg_0, arg_0), vec3<bool>(arg_0, true, arg_1.x))), vec3<bool>(true, -2905f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(870f, 836f)) * _wgslsmith_f_op_f32(-516f - arg_2)), false), !arg_1.xyy);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> f32 {
    global0 = array<Struct_2, 7>();
    var var_0 = !(!(!vec2<bool>(true != arg_0.x, false)));
    let var_1 = vec2<f32>(520f, _wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(ceil(-163f))));
    var_0 = vec2<bool>((~reverseBits(u_input.a.x) >= (arg_1 | abs(u_input.a.x))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_1.x)) >= 1058f), !(!(countOneBits(u_input.e) <= 12538i)));
    var var_2 = 1i;
    return var_1.x;
}

fn func_2() -> Struct_4 {
    var var_0 = ~min(~abs(u_input.a.x), 4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), func_3(false, vec4<bool>(false, true, true, true), -641f)), u_input.b, countOneBits(-24780i))));
    var var_2 = min(1u, _wgslsmith_add_u32(~16274u, u_input.b));
    let var_3 = Struct_4(global0[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -284f), func_3(false, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(sign(var_1.a))));
    var var_4 = Struct_3(!select(var_3.c, !var_3.c, true));
    return var_3;
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = arg_2.c.x;
    global0 = array<Struct_2, 7>();
    global1 = array<vec3<i32>, 31>();
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(54866u, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d)), select(arg_2.c, arg_2.c, func_2().c.x));
    var var_2 = Struct_5(vec3<f32>(1725f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(550f)))), arg_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_2.a.a.a * 821f)))), Struct_2(arg_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f - -656f))), var_1.a.c, 1000f, var_1.a.e));
    return ~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), u_input.a.yy & var_1.a.e.yx, vec2<u32>(1u, 0u)) & var_2.c.e.zx);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_5 {
    let var_0 = arg_0.x;
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 7u)];
    var var_2 = func_5(!(var_0 > u_input.d.x), Struct_5(vec3<f32>(-1648f, 1f, 662f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.c.xx))), global0[_wgslsmith_index_u32(abs(select(~88494u, 1u, true)), 7u)]), func_2());
    var_2 = vec2<u32>(var_2.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(min(4294967295u, u_input.b), 0u), abs(~1u)), _wgslsmith_clamp_u32(func_5(any(arg_1.wy), Struct_5(var_1.c, vec2<f32>(var_1.c.x, var_1.b), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), func_2()).x, (var_1.e.x ^ 1u) & u_input.b, 0u & _wgslsmith_dot_vec3_u32(vec3<u32>(44599u, 51655u, var_1.e.x), vec3<u32>(21761u, 38900u, u_input.a.x)))));
    let var_3 = true;
    return Struct_5(_wgslsmith_div_vec3_f32(var_1.c, var_1.c), _wgslsmith_f_op_vec2_f32(min(var_1.c.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1.c.yz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-826f, var_1.a.a) + var_1.c.zx), arg_1.xy)) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_1.c.x + -1062f))))), global0[_wgslsmith_index_u32(min(u_input.a.x, select(~(~1u), u_input.a.x, arg_1.x)), 7u)]);
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_5, arg_3: vec2<u32>) -> Struct_1 {
    global1 = array<vec3<i32>, 31>();
    global1 = array<vec3<i32>, 31>();
    return Struct_1(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    return func_1(reverseBits(select(global1[_wgslsmith_index_u32(u_input.b, 31u)], _wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.d.x, 0i, -30470i), vec3<i32>(-29777i, u_input.d.x, 0i)), firstTrailingBit(u_input.d), select(vec3<i32>(u_input.e, u_input.c, -2147483647i), vec3<i32>(-60853i, 35656i, -100481i), true)), func_2().c.x)), select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), select(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true), select(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), false), vec4<bool>(true, true, true, true), vec4<bool>(func_2().c.x, u_input.e <= -2147483647i, true, true))), _wgslsmith_add_i32(countOneBits(u_input.c), firstTrailingBit(~2147483647i)) & u_input.d.x).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(func_6(u_input.a.x, _wgslsmith_clamp_u32(44171u, 4524u, 45544u) << (_wgslsmith_add_u32(26404u, u_input.a.x) % 32u), func_1(vec3<i32>(-20838i, u_input.c, u_input.d.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), 5919i), func_1(vec3<i32>(u_input.e, 14784i, 2445i), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), u_input.e).c.e.zy), -1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(436f, -299f, -2591f) * vec3<f32>(-974f, -776f, 915f))))), -252f, _wgslsmith_div_vec3_u32(~firstTrailingBit(u_input.a), (u_input.a | vec3<u32>(1u, 4294967295u, 4294967295u)) << (vec3<u32>(u_input.a.x, u_input.b, 904u) % vec3<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.a.zx), vec2<u32>(76130u, ~u_input.a.x)), 4294967295u, abs(firstLeadingBit(u_input.a.x)) >> (72596u % 32u), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_0.a, var_0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, false), u_input.b, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1892f, -1278f)))), false));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, -1162f, 565f))))))));
    var var_2 = vec2<bool>(false, false);
    let var_3 = vec2<bool>(func_2().c.x & !all(!vec3<bool>(var_2.x, var_2.x, false)), true);
    let var_4 = vec3<f32>(1000f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, var_0.a))));
    var var_5 = abs(13010i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 18375u, u_input.b), ~(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 0u, 2606u, 4294967295u) % vec4<u32>(32u)))), 438f, -(~vec4<i32>(-1i, u_input.e, u_input.c, u_input.c)) << (~(abs(vec4<u32>(u_input.b, 19097u, 1u, 73725u)) ^ vec4<u32>(0u, u_input.a.x, u_input.b, 4294967295u)) % vec4<u32>(32u)), 0i);
}

