struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-706f, 1308f, 1240f, 899f, -311f, 247f, 659f, 862f, -1000f, -239f, -1337f, 1132f, 203f, 1435f, -763f, -237f, -268f, 185f, -1077f, -1329f, -634f, 1205f, -636f, 892f, -841f, -694f, 239f, -897f, -1000f, 336f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = -vec4<i32>(u_input.c, _wgslsmith_clamp_i32(-33603i, 63240i, u_input.c) | -68554i, _wgslsmith_mult_i32(-firstLeadingBit(33018i), _wgslsmith_dot_vec3_i32(u_input.b.yxx, u_input.b.wwz >> (vec3<u32>(0u, u_input.d, u_input.a) % vec3<u32>(32u)))), u_input.b.x);
    let var_1 = Struct_2(~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 27997u, u_input.d, u_input.d)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1312u, 33948u)), firstLeadingBit(vec2<u32>(u_input.a, u_input.d)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1496f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 30u)], -949f))))), Struct_1(_wgslsmith_div_u32(~(26506u ^ u_input.d), _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(u_input.a, u_input.d))), vec3<bool>(true, true, true), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec3<bool>(true, true, true)), select(true, false, all(vec2<bool>(true, false))), !all(vec4<bool>(false, true, false, false)))));
    var_0 = select(vec4<i32>(abs(_wgslsmith_sub_i32(-u_input.c, u_input.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 2147483647i, var_0.x), -vec4<i32>(1i, u_input.b.x, -2147483647i, var_0.x)), reverseBits(_wgslsmith_dot_vec4_i32(reverseBits(u_input.b), -u_input.b)), _wgslsmith_sub_i32(firstLeadingBit(-22321i), -firstTrailingBit(72070i))), select(vec4<i32>(var_0.x, _wgslsmith_add_i32(0i, select(-1136i, var_0.x, var_1.c.c.x)), reverseBits(2147483647i), (i32(-1i) * -4635i) | (7350i | var_0.x)), vec4<i32>(~_wgslsmith_mod_i32(-50469i, u_input.c), (u_input.b.x & -37268i) << ((u_input.a >> (4294967295u % 32u)) % 32u), 4025i, 20447i), vec4<bool>(1974f >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 30u)] + -428f), var_1.c.b.x, any(!vec4<bool>(false, var_1.c.b.x, true, var_1.c.c.x)), all(var_1.c.c.wz))), true & !var_1.c.c.x);
    global0 = array<f32, 30>();
    let var_2 = firstLeadingBit(u_input.b.x);
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b.x))))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(var_1.b.x * global0[_wgslsmith_index_u32(var_1.c.a, 30u)])), 1647f, (var_1.c.b.x & true) != true)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    var var_0 = arg_1.a.x;
    let var_1 = Struct_4(Struct_1(4294967295u, vec3<bool>(true, _wgslsmith_f_op_f32(-1969f * 121f) != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.a.x, 30u)] - -487f), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1360f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 30u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -381f)))));
    let var_3 = var_1.a;
    var var_4 = 61719u;
    return all(vec4<bool>(true, any(vec4<bool>(any(vec4<bool>(var_3.c.x, true, true, false)), false & var_1.a.b.x, !var_1.a.c.x, -12501i > arg_2.b.x)), !(!func_3()), all(vec4<bool>(false, arg_0.b.x > arg_0.b.x, !var_3.b.x, var_1.a.c.x))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    let var_0 = vec2<i32>(~(~1i) << (arg_3.a.x % 32u), ~(~(~_wgslsmith_clamp_i32(arg_3.b.x, 2147483647i, arg_3.b.x))));
    var var_1 = Struct_2(~arg_3.a, arg_3.c, Struct_1(~(~14071u), vec3<bool>(true, all(vec3<bool>(arg_1, arg_2, false)), func_2(Struct_3(arg_3.a, arg_3.b, arg_3.c), arg_3, arg_3, arg_3.c)), select(select(!vec4<bool>(arg_1, false, arg_1, true), select(vec4<bool>(arg_2, arg_1, false, arg_2), vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, true, arg_1, false)), select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, arg_1 | false), vec4<bool>(true, arg_1, arg_2, true))));
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~1u << (_wgslsmith_mod_u32(arg_0, arg_0) % 32u), ~arg_0 | firstTrailingBit(var_1.c.a)), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_1.a.x, 0u, 0u, var_1.a.x)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_3.a.x, 35049u, arg_3.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(19689u, 1u, 4294967295u, 0u), vec4<u32>(54941u, 0u, var_1.a.x, 4294967295u))))), 36570u, ~0u, ~_wgslsmith_div_u32(0u, 41742u));
    return Struct_2(vec2<u32>(~(~(u_input.a ^ 1u)), arg_0), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_div_f32(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x * global0[_wgslsmith_index_u32(1u, 30u)]), -238f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(29182u, 30u)], 221f)))))), var_1.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> i32 {
    let var_0 = func_4(max(~(~u_input.d), _wgslsmith_sub_u32(~arg_2.a.x >> (~53406u % 32u), 1u)), !(!(!func_2(arg_2, arg_2, arg_2, vec2<f32>(arg_2.c.x, global0[_wgslsmith_index_u32(arg_2.a.x, 30u)])))), true, arg_2);
    global0 = array<f32, 30>();
    return ~arg_1.x;
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.b.x || all(arg_0.c.wzz);
    var var_1 = func_4(_wgslsmith_clamp_u32(~abs(32066u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 53044u, 3325u, arg_0.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 12729u, arg_0.a, u_input.d), vec4<u32>(arg_0.a, arg_0.a, u_input.d, arg_0.a), vec4<u32>(arg_0.a, 4294967295u, 1u, 114660u)) << (max(vec4<u32>(9491u, arg_0.a, u_input.a, 31543u), vec4<u32>(u_input.d, u_input.a, u_input.d, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d | 0u, 15855u), ~1u | ~arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-109f))) < 155f, true, Struct_3(firstTrailingBit(~vec2<u32>(1u, u_input.d) ^ ~vec2<u32>(arg_0.a, u_input.a)), ~u_input.b, vec2<f32>(global0[_wgslsmith_index_u32(30116u, 30u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2763f), _wgslsmith_f_op_f32(f32(-1f) * -338f))))));
    var var_2 = vec2<u32>(var_1.c.a, _wgslsmith_add_u32(~_wgslsmith_mod_u32(~u_input.a, arg_0.a), 1u));
    var var_3 = Struct_4(Struct_1(arg_0.a, !vec3<bool>(false, var_1.c.b.x, !arg_0.b.x), vec4<bool>(_wgslsmith_mult_i32(u_input.b.x, u_input.c) <= _wgslsmith_clamp_i32(0i, u_input.c, -1i), true, all(func_4(45923u, var_1.c.c.x, false, Struct_3(var_1.a, u_input.b, vec2<f32>(-1248f, var_1.b.x))).c.c), func_3())));
    var_0 = var_1.c.b.x;
    return 53347i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(reverseBits(~(~u_input.d)), vec3<bool>(false, (61575u != u_input.d) && true, !(-40363i < u_input.b.x)), vec4<bool>(true, false, (u_input.c | u_input.b.x) < func_1(vec4<f32>(global0[_wgslsmith_index_u32(30873u, 30u)], 438f, 588f, -417f), u_input.b.zw, Struct_3(vec2<u32>(u_input.a, u_input.d), vec4<i32>(u_input.c, -14226i, 2147483647i, 0i), vec2<f32>(global0[_wgslsmith_index_u32(86881u, 30u)], global0[_wgslsmith_index_u32(47042u, 30u)]))), func_2(Struct_3(vec2<u32>(24540u, 1u), u_input.b, vec2<f32>(266f, 961f)), Struct_3(vec2<u32>(1u, 0u), u_input.b, vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 30u)], 314f)), Struct_3(vec2<u32>(38267u, u_input.d), vec4<i32>(9076i, 50831i, -1i, -23799i), vec2<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(14494u, 30u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1377f, global0[_wgslsmith_index_u32(u_input.a, 30u)]) * vec2<f32>(-1000f, 1000f))))));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_1 = func_4(~(~(u_input.a & max(u_input.d, u_input.d))), false, true, Struct_3(~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.a, 1u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.a, u_input.d)) % vec2<u32>(32u))), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -801f)))))).c.b.xy;
    var var_2 = select(vec4<u32>(40298u, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(18067u, u_input.a, 22460u, u_input.a), ~vec4<u32>(u_input.a, 57382u, u_input.d, 27775u))), u_input.a, u_input.a & _wgslsmith_div_u32(~0u, 86394u << (u_input.d % 32u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) | vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.a, u_input.d, u_input.a), vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.a)))), func_4(u_input.d, any(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)), any(!(!vec2<bool>(var_1.x, var_1.x))), Struct_3(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(59651u, 17308u)), firstLeadingBit(vec4<i32>(68127i, var_0, u_input.c, var_0)) >> (vec4<u32>(u_input.d, 70491u, 81381u, u_input.a) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-1352f * -1825f), -130f))).c.c);
    global0 = array<f32, 30>();
    var var_3 = Struct_3(abs(select(_wgslsmith_mult_vec2_u32(abs(var_2.xy), firstLeadingBit(vec2<u32>(0u, 0u))), reverseBits(vec2<u32>(1u, var_2.x)) & _wgslsmith_div_vec2_u32(var_2.xx, var_2.zy), vec2<bool>(all(vec2<bool>(false, var_1.x)), true))), vec4<i32>(-2147483647i, var_0, 2147483647i | var_0, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, global0[_wgslsmith_index_u32(var_2.x, 30u)]) + vec2<f32>(-965f, 1585f)))))));
    let var_4 = Struct_3(vec2<u32>(0u, (_wgslsmith_dot_vec2_u32(var_2.ww, vec2<u32>(var_3.a.x, 19858u)) & ~4294967295u) >> (~1u % 32u)), var_3.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, var_3.c.x))), vec2<f32>(_wgslsmith_div_f32(-453f, _wgslsmith_f_op_f32(f32(-1f) * -1088f)), var_3.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x >> (~firstLeadingBit(~0u) % 32u), _wgslsmith_dot_vec3_i32(u_input.b.zxx, var_4.b.wxy), _wgslsmith_sub_i32(var_4.b.x, 2520i), var_3.b.zwy, var_3.c.x);
}

