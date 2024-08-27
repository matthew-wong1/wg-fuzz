struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_3,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5;

var<private> global2: f32;

var<private> global3: array<bool, 14>;

var<private> global4: array<u32, 2>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = ~1u;
    let var_0 = Struct_5(global1.a, global1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.c.x, global1.b.a.e))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.e, -1077f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(997f + -1000f), _wgslsmith_f_op_f32(select(357f, -1000f, all(var_0.b.b)))))));
    let var_2 = vec3<u32>(global4[_wgslsmith_index_u32(~66166u, 2u)], ~global1.b.d.x ^ 44643u, abs(_wgslsmith_clamp_u32(0u | _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(u_input.c.x, 2u)], global4[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(var_0.a.d, 2u)], global4[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 2u)]), 1u << (var_0.b.a.d % 32u))));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1108f)) + 2084f)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1059f)));
}

fn func_2() -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.e), _wgslsmith_div_f32(378f, global1.b.a.e))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)) + _wgslsmith_f_op_f32(max(-735f, -2223f))))));
    global1 = Struct_5(global1.a, Struct_3(global1.a, !(!global1.b.b), ~(-countOneBits(-15325i)), _wgslsmith_add_vec3_u32(abs(global1.b.d | u_input.c), reverseBits(global1.b.d)), global1.b.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1597f), global1.c.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.c))))));
    global1 = Struct_5(global1.b.a, Struct_3(Struct_2(1i, global1.b.a.b, global1.b.a.e, global1.a.d, -1657f), !vec4<bool>(global1.b.b.x, true, u_input.b == 1i, global1.b.b.x), _wgslsmith_sub_i32(i32(-1i) * -global1.b.c, -2147483647i), global1.b.d, !vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45931u, 2u)], 14u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(2352u, 1u), 2u)], 14u)], true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, 744f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.a.c)) * 951f);
    let var_0 = Struct_2(32771i, global1.b.a.b, global1.c.x, max(_wgslsmith_div_u32(24275u, 4294967295u), ~min(1u, _wgslsmith_sub_u32(u_input.a, global1.b.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -591f))))));
    return Struct_4(Struct_2(-1i, global1.a.b, _wgslsmith_f_op_f32(func_3()), (17045u >> ((1u << (var_0.d % 32u)) % 32u)) & max(min(global1.b.d.x, global1.a.d), ~global4[_wgslsmith_index_u32(1u, 2u)]), -1377f), Struct_1(-2147483647i), 1836f, global1.b, select(select(vec4<bool>(-1583i <= u_input.b, var_0.d >= 72936u, any(global1.b.b.xz), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(countOneBits(16501u), 2u)], 14u)]), !select(vec4<bool>(global1.b.b.x, true, global3[_wgslsmith_index_u32(96317u, 14u)], true), vec4<bool>(true, global1.b.b.x, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(21490u, 14u)]), vec4<bool>(global3[_wgslsmith_index_u32(var_0.d, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)], global3[_wgslsmith_index_u32(var_0.d, 14u)])), !(!global1.b.b)), !vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(34144u, 14u)]), vec4<bool>(global1.b.e.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.d, 114u, u_input.c.x), vec4<u32>(1u, 1u, var_0.d, 59139u)), 2u)] <= u_input.c.x, true, _wgslsmith_sub_i32(var_0.b.a, -20000i) < global1.a.b.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-352f, func_2().a.e)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.a.e), func_2().d.a.c) - arg_3.a.c))) * _wgslsmith_f_op_f32(func_3()));
    var var_0 = vec2<bool>(false, !(_wgslsmith_mult_i32(global1.b.c, arg_0.b.a) < ~(-2147483647i)));
    var_0 = vec2<bool>(u_input.b == -37801i, false);
    var var_1 = Struct_2(u_input.b, global1.a.b, _wgslsmith_f_op_f32(func_3()), 73005u, global1.c.x);
    global0 = abs(~arg_2);
    return Struct_3(global1.a, vec4<bool>(false, global1.b.b.x, !(!(!arg_0.d.b.x)), !arg_3.e.x), arg_0.a.b.a, ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(global1.b.d.x, 1u, arg_3.a.d) << (arg_1.zwx % vec3<u32>(32u))), arg_3.d), vec3<bool>(true, !global1.b.e.x && false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.a.c, 360f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c)) + _wgslsmith_f_op_f32(-global1.c.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_5 {
    global4 = array<u32, 2>();
    global4 = array<u32, 2>();
    var var_0 = Struct_5(Struct_2(~u_input.b, arg_3.a.b, _wgslsmith_f_op_f32(-arg_3.a.c), abs(14593u) << (0u % 32u), _wgslsmith_f_op_f32(-518f - arg_3.a.e)), arg_1, vec2<f32>(arg_1.a.c, _wgslsmith_f_op_f32(global1.a.e - _wgslsmith_f_op_f32(-arg_3.a.e))));
    return Struct_5(var_0.a, func_2().d, vec2<f32>(321f, var_0.c.x));
}

fn func_1() -> vec4<f32> {
    global1 = func_5(global1.b.a.b, global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(214f, 484f)) * _wgslsmith_f_op_vec2_f32(-global1.c))), func_4(func_2(), countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 9677u, 21230u), vec4<u32>(44865u, global1.b.a.d, global1.b.d.x, 53823u))), 4294967295u, global1.b));
    global4 = array<u32, 2>();
    let var_0 = func_4(func_2(), _wgslsmith_mod_vec4_u32(~vec4<u32>(12419u, 1u, ~global1.a.d, 1u), ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 2u)], 19675u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 0u), vec4<u32>(global1.b.a.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30302u, 2u)], 2u)], 56586u, 50889u)), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 2u)], global1.a.d, 0u, global1.a.d), func_4(Struct_4(global1.a, Struct_1(0i), global1.a.c, Struct_3(Struct_2(2147483647i, Struct_1(global1.a.a), global1.c.x, global4[_wgslsmith_index_u32(u_input.c.x, 2u)], 253f), vec4<bool>(false, global1.b.b.x, global1.b.e.x, global3[_wgslsmith_index_u32(0u, 14u)]), 2147483647i, vec3<u32>(17102u, 1u, global4[_wgslsmith_index_u32(u_input.a, 2u)]), global1.b.b.zwx), global1.b.b), vec4<u32>(0u, 1u, 34880u, 60282u), global1.a.d, Struct_3(Struct_2(global1.a.b.a, Struct_1(u_input.b), -1990f, 4294967295u, global1.a.e), vec4<bool>(global1.b.e.x, global1.b.e.x, false, global1.b.b.x), global1.b.c, u_input.c, vec3<bool>(true, global1.b.b.x, false))).b)), _wgslsmith_mult_u32(global1.a.d, global1.b.d.x), global1.b);
    global3 = array<bool, 14>();
    let var_1 = Struct_4(func_4(func_2(), vec4<u32>(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global1.a.d, 2u)], var_0.d.x) & 4294967295u, firstLeadingBit(_wgslsmith_div_u32(var_0.a.d, global4[_wgslsmith_index_u32(13250u, 2u)])), global1.a.d, 4294967295u), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41893u, 2u)], 2u)], global1.b).a, global1.b.a.b, global1.b.a.c, func_4(func_2(), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(6423u, 97865u, 6459u, var_0.d.x) << (vec4<u32>(var_0.a.d, global1.b.d.x, global4[_wgslsmith_index_u32(78354u, 2u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21609u, 2u)], 2u)], 2u)], 2u)]) % vec4<u32>(32u))), countOneBits(vec4<u32>(var_0.d.x, 4294967295u, global4[_wgslsmith_index_u32(10201u, 2u)], 29464u))), 26791u, func_4(func_2(), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a.d, 4294967295u, 4294967295u, 29138u) >> (vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x) % vec4<u32>(32u)), select(vec4<u32>(u_input.a, global1.b.d.x, 0u, 25110u), vec4<u32>(21035u, global1.b.a.d, var_0.d.x, 32437u), var_0.b)), global4[_wgslsmith_index_u32(~0u, 2u)], Struct_3(Struct_2(2147483647i, var_0.a.b, var_0.a.e, 0u, global1.c.x), select(vec4<bool>(global1.b.b.x, true, false, true), vec4<bool>(true, global1.b.b.x, global1.b.e.x, false), false), ~global1.b.c, ~global1.b.d, !global1.b.e))), !vec4<bool>(true, !func_4(Struct_4(Struct_2(global1.a.a, var_0.a.b, var_0.a.e, global4[_wgslsmith_index_u32(1u, 2u)], -581f), Struct_1(var_0.c), global1.c.x, Struct_3(var_0.a, var_0.b, global1.b.a.b.a, var_0.d, var_0.e), global1.b.b), vec4<u32>(31789u, 1u, 27518u, 28267u), u_input.a, Struct_3(Struct_2(u_input.b, global1.a.b, -1000f, 0u, var_0.a.c), global1.b.b, -2147483647i, vec3<u32>(34332u, u_input.c.x, 50071u), var_0.b.zzw)).b.x, all(!global1.b.b), !(-1367f == global1.a.c)));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1359f)))), _wgslsmith_f_op_f32(floor(var_1.c)), _wgslsmith_f_op_f32(floor(global1.b.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(u_input.b, -1084i, global1.b.c, 1i) | select(~select(vec4<i32>(1i, -42104i, u_input.b, u_input.b), vec4<i32>(global1.b.a.b.a, u_input.b, u_input.b, global1.a.a), global1.b.e.x), vec4<i32>(-2147483647i, u_input.b | 49633i, 1i, ~(-19726i)), global1.b.b));
    global3 = array<bool, 14>();
    let var_1 = var_0.zw;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, -1246f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), global1.c.x), global1.c.x, global1.b.a.c)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2097f, 1078f, -386f, 1148f) - vec4<f32>(global1.b.a.e, 1000f, 643f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(503f)), _wgslsmith_f_op_f32(step(-431f, global1.c.x)), global1.c.x, -1673f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 587f, -1213f, 1074f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c, global1.c.x, 1278f, global1.c.x))))))));
    global0 = _wgslsmith_dot_vec2_u32(select(~global1.b.d.yz, ~reverseBits(vec2<u32>(global4[_wgslsmith_index_u32(global1.b.a.d, 2u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 2u)], 2u)])), true) << (abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.d, 0u), vec2<u32>(27266u, 13592u))) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.c.yy, vec2<u32>(4294967295u, u_input.a))), vec2<u32>(23543u, global1.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.zxz), u_input.c | _wgslsmith_clamp_vec3_u32(abs(~u_input.c), ~_wgslsmith_add_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(58166u, 2u)], u_input.c.x, u_input.c.x), vec3<u32>(global1.a.d, 48938u, 53752u)), global1.b.d));
}

