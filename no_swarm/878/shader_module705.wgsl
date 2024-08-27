struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, -880f, vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), Struct_1(false, 549f, vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), Struct_1(false, 206f, vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), Struct_1(true, 784f, vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), Struct_1(true, 109f, vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), Struct_1(false, 169f, vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), Struct_1(false, -102f, vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), Struct_1(false, 973f, vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), Struct_1(false, 227f, vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), Struct_1(false, 835f, vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), Struct_1(false, -615f, vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)));

var<private> global1: array<i32, 11> = array<i32, 11>(0i, -1i, -8214i, 2147483647i, -4125i, -8346i, 21825i, 2147483647i, -33114i, 10296i, i32(-2147483648));

var<private> global2: i32 = 0i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    global1 = array<i32, 11>();
    var var_0 = global0[_wgslsmith_index_u32(117681u, 11u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.d, 11u)];
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return false;
}

fn func_2() -> vec3<f32> {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), func_3())));
    let var_1 = -619f;
    global2 = 32332i;
    var var_2 = min(abs(u_input.d), ~1u) & u_input.d;
    let var_3 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(abs(var_1)), var_1))), _wgslsmith_div_vec3_f32(vec3<f32>(1277f, var_1, _wgslsmith_f_op_f32(1000f + 264f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, 331f, var_1))))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-406f, 765f, 443f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(412f, 1549f, -2113f), vec3<f32>(1000f, -1965f, -592f))))));
    let var_1 = ~_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(u_input.d, 1u, u_input.d))), vec3<u32>(firstLeadingBit(u_input.d), abs(1u), 1u) ^ vec3<u32>(~u_input.d, 1u, select(47265u, u_input.d, true)));
    let var_2 = Struct_1((!all(vec3<bool>(false, true, false)) | ((global1[_wgslsmith_index_u32(u_input.d, 11u)] << (86649u % 32u)) <= 2147483647i)) | any(vec4<bool>(true, true, select(true, false, true), var_0.x <= var_0.x)), _wgslsmith_f_op_f32(1549f - var_0.x), vec4<bool>(true, true, true, true), !(!vec4<bool>(true, all(vec2<bool>(false, true)), true, true)));
    var var_3 = !all(!select(select(vec2<bool>(var_2.a, var_2.d.x), vec2<bool>(true, var_2.d.x), var_2.d.x), select(vec2<bool>(var_2.a, true), var_2.c.zz, var_2.d.yz), !var_2.d.zz));
    var var_4 = _wgslsmith_dot_vec3_i32(-u_input.c.wzy, _wgslsmith_div_vec3_i32(u_input.c.xyx, vec3<i32>(-1i) * -u_input.c.yyx)) & 1i;
    return 0u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(arg_2.b * 1000f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * arg_3.b)), 1000f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2573f, arg_2.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(964f + -917f) * _wgslsmith_f_op_f32(trunc(arg_1.b)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2()).yx), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.b, _wgslsmith_f_op_f32(step(-652f, 692f)))))));
    var var_2 = Struct_1(arg_2.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(vec4<bool>(!arg_1.d.x || all(arg_1.c.zy), select(any(vec2<bool>(true, arg_1.a)), any(arg_3.d.zz), all(arg_3.c.zzw)), any(!arg_3.d.zzw), true), vec4<bool>(true, 224f != _wgslsmith_f_op_f32(-arg_2.b), 18392u == ~u_input.d, true), true), vec4<bool>(arg_3.d.x, any(arg_1.c.xzx), arg_0, true));
    let var_3 = ~(_wgslsmith_mod_vec4_i32(select(u_input.c, vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.d, 11u)], 1i, global1[_wgslsmith_index_u32(u_input.d, 11u)]), !arg_2.a), vec4<i32>(firstLeadingBit(2147483647i), global1[_wgslsmith_index_u32(28865u, 11u)], -48312i, select(0i, 9225i, var_2.d.x))) >> (select(~(vec4<u32>(14065u, 1u, 10223u, 60618u) >> (vec4<u32>(u_input.d, u_input.d, 31375u, 37258u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(35401u, 1u, 22429u, 1u), vec4<u32>(u_input.d, u_input.d, 1u, u_input.d) ^ vec4<u32>(13978u, 13156u, 4294967295u, 15966u), max(vec4<u32>(u_input.d, 4294967295u, 16191u, 12853u), vec4<u32>(63979u, 58867u, u_input.d, u_input.d))), arg_1.c.x) % vec4<u32>(32u)));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b, 1f)));
    return global0[_wgslsmith_index_u32(u_input.d, 11u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(379f, -695f, arg_2.b, 1058f), vec4<f32>(arg_2.b, arg_1.b, arg_1.b, -787f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -923f, arg_0.b, -1207f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1621f, -2284f, 778f, 307f))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), -1083f));
    var var_2 = 1u;
    let var_3 = 17309i;
    var var_4 = arg_0;
    return Struct_1(!(arg_1.c.x || true), _wgslsmith_f_op_f32(-var_4.b), vec4<bool>((false || all(vec4<bool>(arg_1.d.x, arg_1.c.x, true, false))) | (~31079u <= u_input.d), arg_1.a, false, !func_3()), vec4<bool>(func_4(func_3(), func_4(true, Struct_1(true, 1007f, var_4.d, vec4<bool>(true, false, false, false)), arg_0, arg_1), func_4(arg_1.c.x, func_4(false, Struct_1(arg_0.c.x, var_4.b, var_4.d, vec4<bool>(true, arg_2.d.x, arg_1.d.x, arg_2.d.x)), Struct_1(var_4.d.x, -510f, vec4<bool>(arg_2.c.x, true, true, var_4.d.x), arg_2.c), Struct_1(false, arg_1.b, arg_2.d, var_4.d)), arg_0, arg_0), arg_2).c.x, global1[_wgslsmith_index_u32(~u_input.d, 11u)] > 1i, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b;
    let var_0 = ~(-u_input.a << ((~_wgslsmith_add_u32(u_input.d, u_input.d) >> (~u_input.d % 32u)) % 32u));
    global2 = 7055i;
    global1 = array<i32, 11>();
    var var_1 = func_5(func_4(_wgslsmith_sub_u32(~0u, 1u) == u_input.d, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d | u_input.d, func_1()) >> (u_input.d % 32u), 11u)], global0[_wgslsmith_index_u32(~0u, 11u)], global0[_wgslsmith_index_u32(~(abs(14429u) ^ firstTrailingBit(u_input.d)), 11u)]), Struct_1(all(vec4<bool>(false, true, false, true)) && func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1647f, -127f), -945f)) - 1207f), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), global1[_wgslsmith_index_u32(0u, 11u)] < u_input.b), false), vec4<bool>(all(vec3<bool>(true, true, false)) && false, select(false, all(vec4<bool>(false, false, false, true)), true), func_4(any(vec4<bool>(false, false, false, true)), global0[_wgslsmith_index_u32(4294967295u >> (u_input.d % 32u), 11u)], Struct_1(true, 1095f, vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), func_4(false, Struct_1(false, -1325f, vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), Struct_1(false, -1227f, vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), Struct_1(true, 172f, vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))).a, countOneBits(u_input.d) == abs(u_input.d))), global0[_wgslsmith_index_u32(u_input.d, 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(44584u), u_input.d, ~min(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.d, 11u)]) & -global1[_wgslsmith_index_u32(u_input.d, 11u)], -max(-14170i, 5729i)), -322f, ~min(u_input.d, u_input.d));
}

