struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -893f;

var<private> global1: array<bool, 4>;

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = arg_0.d;
    global1 = array<bool, 4>();
    let var_1 = min(_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.yz), var_0.a);
    var var_2 = arg_0;
    let var_3 = arg_0.b | arg_0.b;
    return vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-896f, arg_0.e.b.x) - _wgslsmith_f_op_f32(trunc(var_2.e.b.x))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = !(!select(!select(vec3<bool>(var_0, false, global1[_wgslsmith_index_u32(arg_1.a, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], var_0, true), vec3<bool>(true, var_0, true)), select(select(vec3<bool>(true, var_0, global1[_wgslsmith_index_u32(23496u, 4u)]), vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(5812u, 4u)], var_0, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(67836u, 4u)], global1[_wgslsmith_index_u32(arg_1.a, 4u)], true), vec3<bool>(true, var_0, true), global1[_wgslsmith_index_u32(1u, 4u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1.a, 4u)], true)), true));
    var var_2 = _wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1152f, _wgslsmith_f_op_f32(f32(-1f) * -1133f), false))), false));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f * arg_0.x) - -1215f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_vec2_f32(func_2(Struct_2(arg_1.b.x, var_0, 780f, arg_1, Struct_1(0u, arg_0.wyy)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, u_input.d, -1i, u_input.d)), arg_1)).x)), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(456f)))))), arg_1, Struct_1(~_wgslsmith_mod_u32(64212u, 21850u) | ~(u_input.b >> (arg_1.a % 32u)), vec3<f32>(arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(round(605f)))));
    let var_4 = vec2<i32>(select(_wgslsmith_div_i32(49558i, u_input.d), _wgslsmith_div_i32(min(-803i & u_input.d, u_input.d), 22738i), true), u_input.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.x)) * 1425f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    global0 = 749f;
    let var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-459f * arg_0.x)));
    let var_1 = select(vec4<bool>(false, global1[_wgslsmith_index_u32(max(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 1u)), 4u)], any(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)]), vec3<bool>(true, true, true))), global1[_wgslsmith_index_u32(~abs(u_input.c.x), 4u)]), !vec4<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)], false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]))), (true || global1[_wgslsmith_index_u32(1u, 4u)]) == (var_0 > var_0), true, (4294967295u == u_input.a) && any(vec3<bool>(true, global1[_wgslsmith_index_u32(49631u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]))), !global1[_wgslsmith_index_u32(0u, 4u)]);
    var var_2 = u_input.c;
    var var_3 = Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, _wgslsmith_f_op_f32(floor(arg_1)), -2643f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, var_0)))), vec3<bool>(false, true, var_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1445f, 1000f), vec3<f32>(175f, arg_1, -604f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, 3161f, -530f))))));
    return Struct_2(_wgslsmith_f_op_f32(step(-1120f, -164f)), global1[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_f_op_f32(ceil(893f)), Struct_1(~(~4294967295u), vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), 369f)), Struct_1(1u, var_3.b));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(min(1u, abs(~_wgslsmith_div_u32(58454u, u_input.c.x))), arg_1.d.b);
    global2 = global1[_wgslsmith_index_u32(~min(1u | min(u_input.b, _wgslsmith_clamp_u32(u_input.b, var_0.a, 4294967295u)), abs(1u)), 4u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(arg_1, -1i, Struct_1(abs(0u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, var_0.b.x, -138f), arg_1.d.b))))))).x, _wgslsmith_f_op_f32(-arg_1.c));
    var var_2 = Struct_1(~var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(_wgslsmith_f_op_f32(sign(-274f)), arg_0, _wgslsmith_f_op_f32(826f - var_0.b.x)))));
    let var_3 = !vec3<bool>(false, false, !(!global1[_wgslsmith_index_u32(41286u, 4u)] || true));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_0, var_1.x, var_2.b.x, -2091f), Struct_1(51789u, var_0.b)))), -249f))), true, -571f, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(736f, var_1.x) * var_2.b.yx)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(724f - 1135f), var_2.b.x))).d, func_4(vec2<f32>(3332f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_0.b.x))), _wgslsmith_f_op_f32(step(func_4(_wgslsmith_f_op_vec2_f32(select(var_0.b.xz, vec2<f32>(arg_0, 1447f), var_3.yx)), -1000f).d.b.x, 1538f))).d);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)))), func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(_wgslsmith_f_op_f32(round(-350f)), global1[_wgslsmith_index_u32(~1u, 4u)], 342f, Struct_1(35444u, vec3<f32>(493f, 1000f, 2066f)), Struct_1(u_input.b, vec3<f32>(1509f, -2822f, -528f))), ~0i, Struct_1(_wgslsmith_mod_u32(u_input.c.x, 27930u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1211f, 1080f, 1000f) - vec3<f32>(705f, -1718f, 175f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1354f, 1000f, 1878f, -1222f), Struct_1(u_input.b, vec3<f32>(-1000f, 731f, 156f))))))))), countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(select(2147483647i, u_input.d, global1[_wgslsmith_index_u32(9223u, 4u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -70714i), vec2<i32>(u_input.d, 18227i))), u_input.d)));
    var_0 = func_5(var_0.a, Struct_2(var_0.d.b.x, false, 1000f, var_0.d, Struct_1(~_wgslsmith_sub_u32(u_input.a, var_0.d.a), var_0.e.b)), u_input.d);
    let var_1 = (func_4(var_0.d.b.xy, 1357f).d.a | ~(~(~var_0.d.a))) & ~func_5(_wgslsmith_f_op_f32(f32(-1f) * -1869f), Struct_2(func_5(-909f, Struct_2(-838f, true, -2321f, var_0.e, var_0.d), 3722i).a, u_input.a > 0u, var_0.d.b.x, func_4(var_0.d.b.yx, -1864f).d, var_0.e), _wgslsmith_mod_i32(u_input.d, u_input.d)).e.a;
    let var_2 = func_5(var_0.c, Struct_2(_wgslsmith_f_op_f32(-var_0.e.b.x), all(vec2<bool>(var_0.b, var_0.b)) && any(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.d.a, 4u)], false, global1[_wgslsmith_index_u32(0u, 4u)])), var_0.d.b.x, var_0.e, var_0.d), ~_wgslsmith_mult_i32(-(~u_input.d), _wgslsmith_sub_i32(max(u_input.d, u_input.d), -12466i)));
    var var_3 = _wgslsmith_add_u32(var_0.e.a, 44157u);
    return StorageBuffer(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_0.d.a, var_0.d.a, 10801u, var_1), vec4<u32>(57536u, var_0.e.a, var_1, u_input.c.x)), ~(~vec4<u32>(0u, var_1, 2413u, 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.b * var_2.e.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.c, var_0.d.b.x, var_0.a), vec3<f32>(var_0.c, var_0.a, var_0.d.b.x))))), 1f, abs(u_input.d), vec3<i32>(u_input.d ^ u_input.d, -max(24577i, 1i), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 4>();
    var var_0 = -1i;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), -1323f, 1u <= min(u_input.b, u_input.c.x)));
    let var_1 = 4294967295u;
    global1 = array<bool, 4>();
    global0 = 701f;
    var var_2 = min(0i, abs(u_input.d));
    var_0 = _wgslsmith_mod_i32(firstTrailingBit(~_wgslsmith_div_i32(-u_input.d, _wgslsmith_mod_i32(-17701i, u_input.d))), 9291i);
    let x = u_input.a;
    s_output = func_1();
}

