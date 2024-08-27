struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, false, true, false, false, false, false, true, false, true, false, false, true, true, true, true, true, false, false, true, false, false, true, false, true, true, true);

var<private> global1: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(-742f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.b.b * arg_2)))), countOneBits(arg_0.a.zz & (vec2<u32>(u_input.a.x, 21218u) | vec2<u32>(1u, u_input.a.x))), vec4<bool>(any(vec3<bool>(true, arg_0.c.d.x, false)) && arg_0.c.d.x, arg_0.c.d.x, true, false)));
    let var_1 = _wgslsmith_add_u32(var_0.a.c.x, 13475u);
    let var_2 = 225f;
    let var_3 = ~(~arg_0.a);
    let var_4 = Struct_3(Struct_1(528f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-711f, arg_0.b.b.x, var_2), _wgslsmith_f_op_vec3_f32(arg_0.c.b - arg_2))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -461f, _wgslsmith_f_op_f32(max(arg_0.b.b.x, 820f)))), vec2<u32>(~4294967295u, 35135u) << (firstTrailingBit(firstLeadingBit(var_3.zx)) % vec2<u32>(32u)), !(!vec4<bool>(var_0.a.d.x, var_0.a.d.x, false, arg_0.c.d.x))));
    return var_0.a.d;
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<bool, 32>();
    let var_0 = max(u_input.c.zww, ~(-vec3<i32>(u_input.d, 30119i, -u_input.b)));
    let var_1 = 0u;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(~50754u, max(countOneBits(arg_0.a.c.x), 1u), 40629u, min(25553u, arg_0.a.c.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1, 62081u, var_1, u_input.a.x), select(vec4<u32>(u_input.a.x, 1u, 1u, var_1), vec4<u32>(arg_0.a.c.x, var_1, arg_0.a.c.x, u_input.a.x), arg_0.a.d))) << (~vec4<u32>(countOneBits(u_input.a.x), u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, arg_0.a.c.x, var_1)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.a.a, arg_0.a.b.x)), arg_0.a.a)));
    return ~(-_wgslsmith_add_vec4_i32(-(u_input.c | vec4<i32>(u_input.d, u_input.b, u_input.b, var_0.x)), vec4<i32>(-1i) * -vec4<i32>(-1i, var_0.x, 0i, 0i)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = ~(~1u);
    var var_0 = ~u_input.c;
    var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1184f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 167f, 111f)), ~vec2<u32>(u_input.a.x, 31632u), func_3(Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, 0u), Struct_1(-939f, vec3<f32>(1203f, -624f, 433f), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false, false, true)), Struct_1(869f, vec3<f32>(-913f, 903f, -593f), u_input.a, vec4<bool>(arg_0, false, false, true))), vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x) << (vec4<u32>(u_input.a.x, 101244u, 62975u, 22710u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(806f, -1802f, 1024f) * vec3<f32>(1148f, -1168f, -1439f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(634f, -902f)) * _wgslsmith_div_f32(-536f, -813f))), 1f) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2156f, -312f)) - -859f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-313f * 595f)))))));
    let var_2 = -2147483647i;
    return Struct_2(select(abs(vec3<u32>(4294967295u, 1u, u_input.a.x)), vec3<u32>(~u_input.a.x, abs(u_input.a.x), firstLeadingBit(u_input.a.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 25656u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 7242u) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 5470u)) % vec3<u32>(32u)), select(func_3(Struct_2(vec3<u32>(4294967295u, 15570u, 24546u), Struct_1(711f, vec3<f32>(-2088f, var_1.x, 2289f), vec2<u32>(u_input.a.x, 0u), vec4<bool>(arg_0, false, true, false)), Struct_1(var_1.x, vec3<f32>(var_1.x, 277f, -1154f), vec2<u32>(43777u, 4514u), vec4<bool>(false, arg_0, false, true))), func_4(Struct_3(Struct_1(var_1.x, vec3<f32>(-1000f, -1619f, 1000f), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(113499u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x))).wzy, vec3<bool>(true, func_3(Struct_2(vec3<u32>(u_input.a.x, 38961u, u_input.a.x), Struct_1(-853f, vec3<f32>(-574f, 1000f, var_1.x), u_input.a, vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_0)), Struct_1(var_1.x, vec3<f32>(var_1.x, 922f, var_1.x), vec2<u32>(u_input.a.x, 52504u), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true, true))), u_input.c, vec3<f32>(var_1.x, var_1.x, var_1.x)).x, global0[_wgslsmith_index_u32(1u << (u_input.a.x % 32u), 32u)]), !global0[_wgslsmith_index_u32(1u, 32u)])), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1192f, _wgslsmith_f_op_f32(f32(-1f) * -180f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, var_1.x, 723f)))), vec2<u32>(firstTrailingBit(~u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, abs(u_input.a.x), u_input.a.x | u_input.a.x)), select(vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, arg_0, arg_0)), any(vec4<bool>(arg_0, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), true, u_input.a.x <= 25990u), !(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 32u)])), var_0.x < max(-43668i, var_2))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(835f, var_1.x, -407f), vec3<f32>(var_1.x, 986f, -243f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, var_1.x))))), vec2<u32>(~u_input.a.x, reverseBits(_wgslsmith_mult_u32(62814u, 30019u))), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] | global0[_wgslsmith_index_u32(49615u, 32u)], true, !global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -1332f >= var_1.x), !vec4<bool>(false, arg_0, false, false), false)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    let var_1 = func_2(true);
    global1 = ~0u << ((u_input.a.x | ~0u) % 32u);
    let var_2 = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.c.x, u_input.a.x, 15867u, 1u), vec4<u32>(1u, u_input.a.x, var_1.a.x, 62232u)), 4294967295u, ~arg_2)), 32u)]).b;
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1203f + _wgslsmith_f_op_f32(exp2(arg_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-126f * 1426f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) - _wgslsmith_f_op_f32(var_2.a - var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-199f)))), ~((var_1.c.c >> (vec2<u32>(32425u, arg_2) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u))), !var_2.d));
    return select(!func_3(Struct_2(var_1.a, var_2, func_2(global0[_wgslsmith_index_u32(var_2.c.x, 32u)]).b), _wgslsmith_clamp_vec4_i32(-u_input.c, firstTrailingBit(u_input.c), select(vec4<i32>(0i, -39432i, 2147483647i, 2147483647i), vec4<i32>(1i, 0i, 85267i, 32582i), var_3.a.d)), var_1.b.b).yw, vec2<bool>(var_2.d.x, var_2.d.x), func_3(func_2(!(-9006i == u_input.d)), vec4<i32>(arg_0.x, -_wgslsmith_sub_i32(arg_0.x, 0i), u_input.d << (_wgslsmith_mult_u32(var_2.c.x, 19130u) % 32u), -2147483647i), var_1.c.b).xw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = 1097f;
    var var_1 = any(func_1(vec4<i32>(-1i, min(-33345i, u_input.d), -2147483647i, abs(u_input.d)) & (abs(u_input.c) << (~vec4<u32>(26612u, u_input.a.x, 18919u, 63585u) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, 1302f, 246f)), _wgslsmith_div_vec3_f32(vec3<f32>(-964f, 1352f, 1000f), vec3<f32>(344f, 273f, -103f)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, -2232f, -117f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -450f, 1052f)))), max(0u, 70809u)));
    var_0 = -442f;
    var_0 = 1221f;
    global1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1752f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2223f, -1769f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 561f)) - _wgslsmith_div_f32(-1027f, 309f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(262f))))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1550f, -1066f))) + 1000f));
}

