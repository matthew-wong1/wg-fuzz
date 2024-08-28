struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 5>;

var<private> global3: f32;

var<private> global4: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> bool {
    global2 = array<u32, 5>();
    let var_0 = arg_3;
    global1 = select(select(vec3<bool>(true, ~var_0 != global2[_wgslsmith_index_u32(15134u, 5u)], all(!global1.yz)), select(!(!vec3<bool>(true, true, global1.x)), !select(vec3<bool>(arg_2.x, arg_0, global1.x), vec3<bool>(false, false, true), arg_0), vec3<bool>(any(vec3<bool>(arg_2.x, global1.x, global1.x)), true, true)), true), !vec3<bool>(true, !(u_input.a.x <= -1i), arg_2.x), select(vec3<bool>(42792u < ~global2[_wgslsmith_index_u32(arg_3, 5u)], any(vec2<bool>(true, global1.x)) || (arg_2.x | arg_0), true), vec3<bool>(true, false, true), !(!(!vec3<bool>(arg_2.x, false, arg_0)))));
    var var_1 = ~u_input.b.x & ~(-u_input.b.x);
    var var_2 = _wgslsmith_clamp_vec3_u32(select(~select(vec3<u32>(7805u, 0u, arg_1.a), vec3<u32>(arg_3, 1u, arg_1.a), vec3<bool>(arg_2.x, arg_0, global1.x)) ^ (vec3<u32>(global2[_wgslsmith_index_u32(1u, 5u)], arg_1.a, 84503u) ^ max(vec3<u32>(17742u, arg_1.a, u_input.c), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], global2[_wgslsmith_index_u32(17019u, 5u)], 6480u))), vec3<u32>(~arg_1.a, 0u, _wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(arg_3, 5u)])) ^ select(~vec3<u32>(1u, 1u, 17759u), firstTrailingBit(vec3<u32>(arg_3, 0u, u_input.c)), false), global1.x), select(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 34489u, u_input.c), vec4<u32>(arg_3, 27340u, 0u, var_0)), 0u >> (1u % 32u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(min(var_0, arg_3), 5u)], ~4294967295u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 5u)], arg_3, 1u))), ~max(vec3<u32>(40763u, 24929u, global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<u32>(global2[_wgslsmith_index_u32(arg_1.a, 5u)], 4294967295u, 1u)) << ((~vec3<u32>(1u, 1146u, 13721u) << (vec3<u32>(var_0, arg_3, arg_1.a) % vec3<u32>(32u))) % vec3<u32>(32u)), !vec3<bool>(arg_2.x, arg_0 == true, arg_2.x)), select(vec3<u32>(abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_0, 5u)], 13434u), 5u)]), ~79157u, _wgslsmith_add_u32(~var_0, ~global2[_wgslsmith_index_u32(0u, 5u)])), vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0, u_input.c, arg_3, 4294967295u), vec4<u32>(var_0, var_0, 4294967295u, 56168u)), vec4<u32>(26655u, u_input.c, var_0, 34889u)), var_0, _wgslsmith_add_u32(899u, 0u)), !vec3<bool>(all(vec4<bool>(false, true, true, true)), arg_0, true)));
    return all(vec3<bool>(!(!(arg_1.b.x != -1000f)), 1f < arg_1.b.x, arg_2.x));
}

fn func_2() -> bool {
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2456f + -413f) + _wgslsmith_f_op_f32(select(-289f, 478f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f + 684f) + _wgslsmith_f_op_f32(-248f - 1435f)), func_3(true | global1.x, Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20569u, 5u)], 5u)], vec2<f32>(-1157f, -640f), vec4<f32>(-1847f, -1021f, -1056f, 1661f)), vec2<bool>(true, true), u_input.c))))));
    return global1.x;
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    var var_0 = ~(abs(countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 5u)], 5u)], 5u)], 10119u))) >> (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 5u)], 5u)], 1u) % vec2<u32>(32u))) & vec2<u32>(9026u << (countOneBits(global2[_wgslsmith_index_u32(60573u >> (u_input.c % 32u), 5u)]) % 32u), max(4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(0u, 5u)], 37922u), arg_0.yx), min(vec2<u32>(1u, 1u), vec2<u32>(global2[_wgslsmith_index_u32(60872u, 5u)], 1u)))));
    let var_1 = Struct_2(Struct_1(27739u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(318f, -107f) + vec2<f32>(338f, -736f)) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 864f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, 2236f, -1446f, -180f) + vec4<f32>(-380f, 104f, -116f, -880f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, -1660f, 326f, -887f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1765f, 175f, 1000f, -642f)))))));
    let var_2 = ~firstTrailingBit(firstTrailingBit(vec2<u32>(0u, ~4294967295u)));
    let var_3 = vec2<u32>(select(_wgslsmith_div_u32(22003u, ~0u), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, ~47965u), 5u)], var_1.a.b.x > var_1.a.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(23160u, 4294967295u), ~1u));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(select(var_1.a.c.x, _wgslsmith_f_op_f32(-var_1.a.c.x), !arg_0.x)))), -1815f));
    return var_1.a.b.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> StorageBuffer {
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(230f, -832f) - 1000f)))), 1059f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1916f)))));
    let var_1 = global0[_wgslsmith_index_u32(43994u, 25u)];
    let var_2 = !var_1.a;
    var_0 = _wgslsmith_f_op_f32(max(3335f, _wgslsmith_f_op_f32(f32(-1f) * -979f)));
    return StorageBuffer(735f, _wgslsmith_f_op_f32(func_4(vec3<bool>(all(vec4<bool>(false, global1.x, global1.x, global1.x)), func_2(), true))), -13962i, -82098i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(min(abs(vec3<u32>(u_input.c & u_input.c, ~global2[_wgslsmith_index_u32(35287u, 5u)], ~u_input.c)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(60679u, 5u)], 0u)), ~(~vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 11405u)))), ~max(47456u, u_input.c));
}

