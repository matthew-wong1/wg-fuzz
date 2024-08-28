struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26518u;

var<private> global1: bool = true;

var<private> global2: array<u32, 28> = array<u32, 28>(13023u, 6265u, 1u, 966u, 32331u, 1264u, 0u, 11152u, 88758u, 71662u, 0u, 1u, 1u, 106286u, 28208u, 4294967295u, 139180u, 0u, 7819u, 1u, 0u, 1u, 1u, 52085u, 0u, 33074u, 11515u, 4294967295u);

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> u32 {
    var var_0 = 16783u;
    global1 = any(vec4<bool>(true, true, true, true));
    let var_1 = Struct_2(Struct_1(!select(-36475i == arg_0.b, true, any(vec2<bool>(false, true)))), !vec4<bool>(true, (1u ^ global2[_wgslsmith_index_u32(arg_3.x, 28u)]) == arg_3.x, false, _wgslsmith_dot_vec2_i32(arg_2.a.yx, vec2<i32>(arg_0.b, 1i)) <= _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), Struct_1(global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.x, 41352u), 28u)]), 28u)] <= ~(~6258u)), 2147483647i);
    global1 = any(!(!(!var_1.b.wy)));
    global3 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1081f))))), _wgslsmith_f_op_f32(round(-2942f)), _wgslsmith_f_op_f32(f32(-1f) * -1218f));
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(~(~1u), 28u)]), 28u)], 28u)];
}

fn func_2() -> bool {
    global0 = (global2[_wgslsmith_index_u32(80631u, 28u)] << (~32888u % 32u)) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(21485u, 0u, 0u, 41382u)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(38039u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67583u, 28u)], 28u)], 1u), vec4<u32>(14953u, 51023u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)])), vec4<u32>(66382u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24337u, 28u)], 28u)], 28u)], 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27477u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(6970u, 28u)], 0u, 1u), vec4<u32>(64770u, 140179u, global2[_wgslsmith_index_u32(44617u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)]))) % vec4<u32>(32u)), ~(~vec4<u32>(107998u, global2[_wgslsmith_index_u32(60760u, 28u)], 1160u, global2[_wgslsmith_index_u32(42413u, 28u)])) & _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9389u, 28u)], 28u)], 30174u, 4294967295u, global2[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 4389u, 769u, 28008u), vec4<u32>(6788u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 27432u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)])))) % 32u);
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(Struct_4(-1364i, 2147483647i, global3.yzy), vec2<f32>(global3.x, global3.x), Struct_3(vec3<i32>(-44609i, -8211i, 69226i)), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], global2[_wgslsmith_index_u32(0u, 28u)])), 28u)], 28u)])), abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43240u, 28u)], 28u)], 28u)] << (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)]) % 32u), 28u)], 28u)])), vec2<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)]), 28u)] >> ((0u << (0u % 32u)) % 32u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(38869u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 7089u), abs(vec3<u32>(0u, global2[_wgslsmith_index_u32(4292u, 28u)], 5661u)))), abs(~0u)));
    var var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(max(vec4<u32>(~60375u, ~var_0.x, _wgslsmith_div_u32(35672u, global2[_wgslsmith_index_u32(4294967295u, 28u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 28u)] >> (var_0.x % 32u), 28u)]), max(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], global2[_wgslsmith_index_u32(26880u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], var_0.x), vec4<u32>(var_0.x, var_0.x, 14722u, global2[_wgslsmith_index_u32(1u, 28u)])) << ((vec4<u32>(0u, 33272u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11646u, 28u)], 28u)], 28u)], 0u) | vec4<u32>(0u, 86042u, 67425u, 15257u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~max(vec4<u32>(var_0.x, 30776u, 0u, 0u), vec4<u32>(0u, 43174u, 4294967295u, 29775u)), vec4<u32>(1u, 4294967295u, abs(global2[_wgslsmith_index_u32(0u, 28u)]), ~30154u), vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u, var_0.x), vec3<u32>(6658u, var_0.x, var_0.x)), ~5867u, reverseBits(15770u)))));
    let var_2 = Struct_3(u_input.a);
    let var_3 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(abs(25361i), var_2.a.x, var_2.a.x >> (min(4294967295u, 1u) % 32u)), u_input.a));
    return !(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)) & true);
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = select(!vec4<bool>(select(true, true, all(vec4<bool>(false, false, true, true))), true, any(vec2<bool>(true, true)), func_2()), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(any(vec4<bool>(true, false, false, false)), select(true, true, true), true, true), vec4<bool>(true, any(vec2<bool>(true, true)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(-1i, arg_0.x, -2147483647i)) < ~2147483647i)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, false, true)), arg_0.x != -1i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = vec4<u32>(55628u, global2[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(4294967295u)), 28u)], ~_wgslsmith_mult_u32(4294967295u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33847u, 28u)], 28u)], 28u)]), 0u) & max(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(16343u, global2[_wgslsmith_index_u32(0u, 28u)], 21192u, 0u), vec4<u32>(0u, global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], 40003u), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18143u, 28u)], 28u)], 28u)], 41810u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 0u)), vec4<u32>(68915u, ~31429u, _wgslsmith_div_u32(763u, global2[_wgslsmith_index_u32(0u, 28u)]), reverseBits(~4294967295u)));
    var var_2 = select(vec4<bool>(any(var_0.wx), all(vec4<bool>(var_0.x, true, !var_0.x, var_0.x)), false, !any(!var_0.zw)), select(!(!select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x)), vec4<bool>(!var_0.x & true, var_0.x, (u_input.a.x > arg_0.x) && var_0.x, var_0.x), !vec4<bool>(!var_0.x, var_0.x, !var_0.x, var_0.x)), all(select(!select(vec2<bool>(false, true), var_0.xz, vec2<bool>(false, true)), !(!var_0.wx), var_0.yx)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1291f, -1335f, global3.x, _wgslsmith_f_op_f32(select(246f, 824f, false))))))));
    global0 = 107035u;
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(var_1, var_1), _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, abs(59923u), _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(57449u, 28u)]), global2[_wgslsmith_index_u32(1u, 28u)] & 1u)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -772f), global3.x, 1000f)));
    let var_1 = Struct_5(vec4<u32>(0u, 39636u, 13652u, ~1u), -1i, ~func_1(select(~u_input.b.wx, vec2<i32>(-10952i, 2147483647i), true)));
    var var_2 = var_1;
    var var_3 = min(var_2.c.yzy, firstLeadingBit(_wgslsmith_add_vec3_u32(select(var_1.c.xzx, vec3<u32>(var_2.a.x, 14295u, 103327u), false), ~var_1.a.wzy)) & _wgslsmith_div_vec3_u32(var_2.a.www, ~(~var_2.c.xxw)));
    var var_4 = var_2.c.x > global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)];
    let var_5 = Struct_3(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.wwx);
}

