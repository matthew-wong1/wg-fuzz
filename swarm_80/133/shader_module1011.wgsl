struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let var_0 = arg_0;
    global0 = array<f32, 8>();
    let var_1 = true;
    return _wgslsmith_mult_u32(1u, arg_0.x);
}

fn func_2(arg_0: f32) -> u32 {
    global0 = array<f32, 8>();
    var var_0 = ~vec4<u32>(25267u, 19842u, 8414u, ~1u);
    var_0 = vec4<u32>(var_0.x, abs(_wgslsmith_mult_u32(~var_0.x ^ var_0.x, reverseBits(var_0.x) << (var_0.x % 32u))), _wgslsmith_mod_u32(var_0.x >> (~(~47327u) % 32u), 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(max(abs(var_0.x), func_3(vec2<u32>(4294967295u, 76379u))), var_0.x, select(var_0.x, 0u, false) << (max(var_0.x, 10685u) % 32u), _wgslsmith_add_u32(~0u, ~var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(112708u, 20080u), ~4294967295u, var_0.x ^ 1u, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 15869u, 33845u, var_0.x), select(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(1u, 1u, 1u, var_0.x), true)))));
    let var_1 = Struct_1(~vec4<u32>(4294967295u, min(var_0.x, ~var_0.x), var_0.x, _wgslsmith_div_u32(var_0.x, 1u)), select(abs(abs(abs(vec3<i32>(u_input.a, u_input.a, -7310i)))), firstTrailingBit(vec3<i32>(-u_input.a, u_input.a >> (var_0.x % 32u), u_input.a)), true), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(select(false, true, true), any(vec4<bool>(true, false, false, true))), vec2<bool>(true, false)), i32(-1i) * -2147483647i, ~vec3<u32>(reverseBits(~var_0.x), _wgslsmith_mod_u32(var_0.x ^ 20916u, 0u), _wgslsmith_mult_u32(~var_0.x, ~var_0.x)));
    var var_2 = select(select(var_1.c, !var_1.c, all(!select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(var_1.c.x, true, false)))), vec2<bool>(!any(!vec2<bool>(var_1.c.x, var_1.c.x)), any(var_1.c)), select(vec2<bool>(true, true), var_1.c, global0[_wgslsmith_index_u32(var_1.e.x, 8u)] == arg_0));
    return 18572u;
}

fn func_1() -> Struct_4 {
    let var_0 = max(u_input.a, -2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)])), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<f32, 8>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-1305f * var_1.x)))));
    var var_3 = true;
    return Struct_4(vec3<bool>(all(vec4<bool>(true, var_0 >= var_0, false, any(vec3<bool>(true, true, false)))), true, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 8u)] - 248f) >= _wgslsmith_f_op_f32(f32(-1f) * -198f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(~(~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), ~vec3<i32>(u_input.a, u_input.a, ~(-13338i)), select(arg_1.a.xx, !(!vec2<bool>(arg_1.a.x, arg_1.a.x)), u_input.a < 0i), u_input.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(firstLeadingBit(arg_0.x), 77591u, max(28012u, 35649u)))), Struct_1(vec4<u32>(arg_0.x, _wgslsmith_div_u32(arg_0.x, _wgslsmith_sub_u32(arg_0.x, arg_0.x)), arg_0.x, ~arg_0.x), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -25395i)), vec2<i32>(-1i, u_input.a) << (vec2<u32>(4294967295u, 44915u) % vec2<u32>(32u))), i32(-1i) * -1i, 0i), func_1().a.yx, _wgslsmith_clamp_i32(u_input.a ^ 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -47352i)), u_input.a) | 0i, ~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, 0u, arg_0.x), ~vec3<u32>(100662u, 7591u, 7116u))), 21707i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(func_3(var_0.b.a.yy) >> (0u % 32u), 8u)], -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(0u), 8u)]))));
    var var_2 = vec2<f32>(-455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b.e.x, 8u)] - var_1))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1213f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(900f, global0[_wgslsmith_index_u32(16304u, 8u)]) + vec2<f32>(-439f, -107f))) + vec2<f32>(_wgslsmith_f_op_f32(select(-162f, var_2.x, arg_1.a.x)), -2516f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], -503f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, global0[_wgslsmith_index_u32(arg_0.x, 8u)]) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 779f), vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], -1370f)))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-292f, var_2.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, -821f))), !var_0.b.c.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-950f, var_1) + vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], -246f))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-599f, _wgslsmith_div_f32(1833f, 1096f), _wgslsmith_f_op_f32(-1130f - var_2.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_2.x, 1000f)))), vec3<f32>(-373f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(var_3.x))), arg_1.a)))));
    return Struct_2(vec4<f32>(2465f, var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1026f), var_1), -1281f), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    var var_0 = func_4(max(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(105980u, 74969u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 14221u), vec2<u32>(46132u, 81113u)))), select(~abs(vec2<u32>(4294967295u, 96841u)), vec2<u32>(1u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_1());
    var var_1 = vec4<i32>(i32(-1i) * -7406i, var_0.b.b.x << ((func_2(-1000f) | abs(min(var_0.b.a.x, var_0.b.e.x))) % 32u), var_0.b.d, ~_wgslsmith_div_i32(~u_input.a, -1i));
    var_0 = func_4(~func_4(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.a.x, 52686u), var_0.b.a.zy), Struct_4(vec3<bool>(var_0.b.c.x, true, true))).b.a.wz << (vec2<u32>(_wgslsmith_mod_u32(min(var_0.b.a.x, 4294967295u), ~4294967295u), abs(88522u)) % vec2<u32>(32u)), Struct_4(vec3<bool>(true, true, all(!var_0.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_f32(1230f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26672u, 8u)] + 512f)), _wgslsmith_f_op_vec2_f32(sign(var_0.a.zw)));
}

