struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<bool>(true, false, false, false), true, true, 357f, -551f), 58234u, Struct_1(vec4<bool>(false, false, false, false), true, false, -1621f, 2043f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, false, 782f, -1395f), 47356u, Struct_1(vec4<bool>(false, true, true, false), false, true, -1088f, -288f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), true, false, 1333f, 1588f), 1u, Struct_1(vec4<bool>(false, true, true, false), true, false, -1370f, 1124f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), true, true, 1423f, 380f), 0u, Struct_1(vec4<bool>(false, false, true, true), true, true, 1713f, 1429f)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), true, false, -172f, 974f), 1u, Struct_1(vec4<bool>(true, false, false, false), true, true, -1930f, 688f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), false, true, -254f, -186f), 1u, Struct_1(vec4<bool>(false, true, false, true), true, true, -845f, -138f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), false, true, 1655f, -168f), 27191u, Struct_1(vec4<bool>(false, true, false, true), false, false, 454f, 322f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), true, true, -2652f, 341f), 4294967295u, Struct_1(vec4<bool>(true, true, false, true), true, true, 2223f, -446f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, true, -1000f, -1672f), 52933u, Struct_1(vec4<bool>(true, true, false, false), true, false, -1365f, 1234f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), true, true, -2314f, 1813f), 47132u, Struct_1(vec4<bool>(false, false, false, true), true, true, -1306f, -1403f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), false, true, -215f, 1466f), 29802u, Struct_1(vec4<bool>(true, false, false, false), true, false, -1881f, 1081f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), false, false, -1891f, -1000f), 4294967295u, Struct_1(vec4<bool>(false, true, false, true), true, false, -1348f, -1082f)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, false, 167f, 138f), 43089u, Struct_1(vec4<bool>(true, false, false, true), false, true, 313f, -1207f)));

var<private> global3: array<u32, 16> = array<u32, 16>(4294967295u, 1u, 2436u, 0u, 9179u, 4294967295u, 57379u, 1u, 10117u, 1u, 4294967295u, 24126u, 4294967295u, 17551u, 8585u, 1u);

var<private> global4: array<i32, 11> = array<i32, 11>(11801i, 2147483647i, 0i, 22105i, 1i, 3691i, 28481i, 40963i, 1i, 0i, -19879i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = ~vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global0.b.b, global0.b.b)), ~1u) ^ vec3<u32>(44242u, 1u, u_input.e);
    let var_1 = global0.b.a;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, (arg_0 ^ u_input.d) | arg_0, arg_0), abs(vec3<i32>(1i, 2147483647i, u_input.d.x)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 0u, 4294967295u), vec3<u32>(8498u, 49651u, 31017u)) % vec3<u32>(32u))), arg_0.x, 2147483647i);
    global3 = array<u32, 16>();
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, firstLeadingBit(u_input.e) >> (var_0.x % 32u), ~global0.b.b, 31369u), _wgslsmith_add_vec4_u32(~(vec4<u32>(1936u, var_0.x, u_input.e, global3[_wgslsmith_index_u32(global0.b.b, 16u)]) >> (vec4<u32>(u_input.a.x, 4294967295u, global3[_wgslsmith_index_u32(global0.b.b, 16u)], 4294967295u) % vec4<u32>(32u))), vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global0.b.b, 16845u), vec4<u32>(var_0.x, u_input.a.x, var_0.x, 1u)), 37797u, abs(u_input.e)))), ~min(~(~vec4<u32>(global0.b.b, 0u, var_0.x, u_input.e)), countOneBits(vec4<u32>(global0.b.b, 98195u, 1u, 4294967295u)) ^ abs(vec4<u32>(var_0.x, 23234u, 52182u, var_0.x))));
    return var_1.a.xx;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(!vec4<bool>(_wgslsmith_f_op_f32(sign(108f)) >= 1453f, any(global0.b.c.a.zy), (u_input.a.x ^ arg_1.x) <= _wgslsmith_add_u32(12121u, u_input.a.x), any(global1.wx)), global1.x, all(func_3(abs(vec3<i32>(-1i, u_input.c.x, -1i)), !arg_2)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1060f)))))));
    global0 = Struct_3(arg_3, Struct_2(arg_3, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, global3[_wgslsmith_index_u32(14927u, 16u)]), u_input.a), ~arg_1)), Struct_1(!(!arg_3.a), true, all(vec2<bool>(false, false)) | true, -1586f, _wgslsmith_f_op_f32(trunc(271f)))));
    let var_1 = 1330f;
    let var_2 = (max(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.b, 45031u, arg_1.x) >> (vec3<u32>(62674u, 60858u, 31088u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(55143u, 0u, 72795u), vec3<u32>(4294967295u, global0.b.b, 5655u)), ~vec3<u32>(7955u, u_input.e, 94469u)), vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~34297u)) >> (~(~(~vec3<u32>(arg_1.x, arg_1.x, u_input.a.x))) % vec3<u32>(32u))) << (~(firstTrailingBit(vec3<u32>(global0.b.b, 31978u, arg_1.x)) ^ (~vec3<u32>(global0.b.b, 0u, arg_1.x) | (vec3<u32>(global0.b.b, arg_1.x, arg_1.x) & vec3<u32>(arg_1.x, u_input.a.x, 1u)))) % vec3<u32>(32u));
    let var_3 = global0.b;
    return global2[_wgslsmith_index_u32(1u, 13u)];
}

fn func_1() -> bool {
    var var_0 = u_input.d.x;
    var_0 = abs(global4[_wgslsmith_index_u32(1u, 11u)]);
    let var_1 = ~select(1u, u_input.a.x, !all(global0.b.a.a));
    var var_2 = func_2(global0.a.d, vec2<u32>(1u, 58326u), !global0.b.c.a, Struct_1(global0.b.a.a, select(global0.a.b, !any(vec4<bool>(true, global0.a.b, global0.a.a.x, global1.x)), global0.a.b), false, _wgslsmith_f_op_f32(global0.a.d + global0.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(214f - global0.b.a.e) * global0.b.a.d)));
    let var_3 = Struct_3(global0.b.c, global0.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.a.d * global0.a.e)));
    var var_1 = Struct_1(!vec4<bool>(func_1(), true, false, true), global0.a.c, 117698u < global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(-305f * global0.a.e)) - -1008f), var_0);
    var var_2 = func_2(1520f, _wgslsmith_mod_vec2_u32(~min(vec2<u32>(4294967295u, 42004u), ~vec2<u32>(u_input.a.x, 1u)), vec2<u32>(0u, 4294967295u)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -197f), vec2<u32>(max(0u, u_input.e) ^ (global3[_wgslsmith_index_u32(global0.b.b, 16u)] & global3[_wgslsmith_index_u32(global0.b.b, 16u)]), 4294967295u), select(var_1.a, !vec4<bool>(false, var_1.a.x, global0.b.a.a.x, true), vec4<bool>(!global0.b.a.b, global0.b.a.a.x, all(global0.a.a), var_1.a.x)), global0.b.c).a.a, global0.b.c);
    var_2 = func_2(_wgslsmith_f_op_f32(floor(var_2.c.e)), ~(~(~vec2<u32>(var_2.b, 18825u) & abs(u_input.a))), !vec4<bool>(var_1.a.x, false, global0.a.c, false), Struct_1(var_2.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -172f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2197f - -1094f)), any(func_2(_wgslsmith_f_op_f32(-global0.a.d), _wgslsmith_add_vec2_u32(vec2<u32>(26953u, global3[_wgslsmith_index_u32(17853u, 16u)]), vec2<u32>(0u, var_2.b)), !var_2.c.a, func_2(353f, vec2<u32>(u_input.a.x, var_2.b), global0.a.a, var_2.c).c).c.a.xxw), var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))))));
    var var_3 = select(vec4<u32>(global0.b.b, var_2.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(30781u, 0u, 21390u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)]) >> (vec4<u32>(u_input.e, 63209u, 4294967295u, 7224u) % vec4<u32>(32u)), vec4<u32>(1u, 4294967295u, global0.b.b, 85351u)) % 32u), var_2.b, max(select(global0.b.b, _wgslsmith_mod_u32(4294967295u, 68999u), global0.a.b), var_2.b)), ~abs(min(vec4<u32>(global3[_wgslsmith_index_u32(0u, 16u)], global0.b.b, global3[_wgslsmith_index_u32(global0.b.b, 16u)], 16517u), ~vec4<u32>(u_input.e, 1u, u_input.e, global3[_wgslsmith_index_u32(4294967295u, 16u)]))), !(!var_1.a));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1509f + var_2.c.e)), _wgslsmith_f_op_f32(step(var_2.c.e, _wgslsmith_f_op_f32(sign(var_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1566f, var_2.a.e) + _wgslsmith_f_op_f32(var_1.e * 1513f)))), _wgslsmith_f_op_f32(-var_0));
    global1 = !vec4<bool>(global0.a.a.x, !select(false, var_2.a.b, !global0.b.a.c), true, !all(vec2<bool>(false, false)));
    global2 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(0i << (~u_input.e % 32u), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15848u, global3[_wgslsmith_index_u32(4294967295u, 16u)], 1u, 0u), vec4<u32>(u_input.a.x, 4294967295u, var_3.x, global0.b.b)), 11u)], countOneBits(-43242i)))));
}

