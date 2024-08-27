struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, false, false, true, false, false);

var<private> global1: array<u32, 13>;

var<private> global2: f32 = -687f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<bool> {
    global1 = array<u32, 13>();
    global0 = array<bool, 7>();
    var var_0 = 20651u;
    let var_1 = u_input.c >> (~1u % 32u);
    let var_2 = arg_2.a;
    return vec2<bool>(!arg_1.a.d.x, !(!any(select(arg_2.a.d.xx, vec2<bool>(arg_2.a.d.x, arg_1.a.d.x), vec2<bool>(arg_2.a.d.x, true)))));
}

fn func_2() -> u32 {
    global1 = array<u32, 13>();
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 1i)) << ((vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38909u, 13u)], 13u)], 63213u) | vec4<u32>(u_input.b, 70179u, u_input.c, u_input.b)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-67420i, u_input.a.x, 28617i, 6029i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], 97598u, 0u), vec4<u32>(21651u, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 13u)], u_input.c)) % vec4<u32>(32u)))), vec4<bool>(u_input.a.x > -1i, all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], false)), vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 7u)]), func_3(vec3<f32>(-710f, -1000f, -500f), Struct_2(Struct_1(u_input.a.x, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], 7u)]), 1638f, vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(70759u, 7u)], global0[_wgslsmith_index_u32(19993u, 7u)], false))), Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(30467u, 7u)]), 542f, vec4<bool>(true, global0[_wgslsmith_index_u32(131010u, 7u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 7u)]))), vec4<f32>(-1131f, -369f, -2301f, 1050f)))), false, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)] && global0[_wgslsmith_index_u32(u_input.b, 7u)], true, global0[_wgslsmith_index_u32(u_input.b, 7u)], all(vec4<bool>(global0[_wgslsmith_index_u32(12039u, 7u)], true, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65361u, 13u)], 7u)]))))), 800f, select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], 7u)], true)), vec4<bool>(true, true, false, true), select(vec4<bool>(global0[_wgslsmith_index_u32(44038u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)], true, global0[_wgslsmith_index_u32(11423u, 7u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(10750u, 7u)], global0[_wgslsmith_index_u32(20589u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 7u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(56335u, 7u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(965u, 7u)], true)), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(89558u, 7u)], true))), vec4<bool>(false, func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1391f, -1006f, -1032f))), Struct_2(Struct_1(u_input.a.x, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(33620u, 7u)], false, false), 379f, vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))), Struct_2(Struct_1(1i, vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.b, 7u)]), -260f, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], true, false, false))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(673f, -639f, 1588f, -1034f), vec4<f32>(848f, -838f, 1000f, -1044f), vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], 7u)], global0[_wgslsmith_index_u32(9624u, 7u)], global0[_wgslsmith_index_u32(4865u, 7u)])))).x, !func_3(vec3<f32>(1000f, 2077f, 914f), Struct_2(Struct_1(u_input.a.x, vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true, true, false), 842f, vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(u_input.c, 7u)], false))), Struct_2(Struct_1(-2147483647i, vec4<bool>(true, true, global0[_wgslsmith_index_u32(55764u, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)]), 709f, vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)], false))), vec4<f32>(1150f, 999f, -1000f, -681f)).x, true), -1317f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-652f))))));
    global1 = array<u32, 13>();
    var var_1 = var_0.c;
    let var_2 = var_0;
    return ~(~(~(~u_input.b)));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = -(u_input.a | vec3<i32>(-u_input.a.x, arg_2.a, 1i));
    global2 = -2330f;
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return arg_3;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u, 13u)];
    var var_1 = 0i;
    global0 = array<bool, 7>();
    var var_2 = vec2<i32>(i32(-1i) * -_wgslsmith_mult_i32(5092i, -arg_2), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i) << (vec2<u32>(global1[_wgslsmith_index_u32(4963u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33190u, 13u)], 13u)]) % vec2<u32>(32u)), ~vec2<i32>(-1i, -1i))));
    var_0 = 0u & ~_wgslsmith_mod_u32(u_input.b, u_input.c);
    return func_4(vec4<u32>(u_input.b, 0u, ~16358u, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(58126u, global1[_wgslsmith_index_u32(u_input.c, 13u)]), u_input.b, _wgslsmith_div_u32(u_input.c, 1u))), func_2(), Struct_1(countOneBits(-_wgslsmith_mult_i32(var_2.x, 1i)), !arg_0, 1f, !(!select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(u_input.b, 7u)]))), Struct_2(Struct_1(-max(arg_2, -1i), !(!arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f - 836f)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_0.x, arg_0.x), arg_0, select(arg_0, arg_0, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(true, ~(4640u << (u_input.c % 32u)) > _wgslsmith_clamp_u32(u_input.b, 1u, _wgslsmith_mult_u32(17929u, global1[_wgslsmith_index_u32(u_input.c, 13u)])), u_input.a.x >= 1i, global0[_wgslsmith_index_u32(select(u_input.c, max(64885u, u_input.c), global0[_wgslsmith_index_u32(countOneBits(39910u), 7u)]) & _wgslsmith_mult_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33180u, 13u)], 13u)], 1u), ~64543u), 7u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1f, _wgslsmith_f_op_f32(abs(-644f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f - 376f)), _wgslsmith_f_op_f32(sign(403f)))), u_input.a.x);
    var_0 = func_1(!func_4(firstLeadingBit(vec4<u32>(0u, 1u, 4294967295u, 1u)) >> (~vec4<u32>(21723u, 129450u, global1[_wgslsmith_index_u32(u_input.c, 13u)], 11463u) % vec4<u32>(32u)), ~39251u, Struct_1(var_0.a.a, !var_0.a.b, -780f, vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), func_4(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32723u, 13u)], 13u)], 4294967295u, u_input.b, 13245u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.c, 13u)], 1u, global1[_wgslsmith_index_u32(u_input.b, 13u)])), var_0.a, Struct_2(Struct_1(u_input.a.x, vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 7u)], var_0.a.b.x, false, var_0.a.b.x), var_0.a.c, var_0.a.d)))).a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c), -1693f)), ~u_input.a.x);
    var_0 = func_4(~(~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], global1[_wgslsmith_index_u32(43815u, 13u)], u_input.c, global1[_wgslsmith_index_u32(1u, 13u)]) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 4294967295u, 1u, 4294967295u))) << (vec4<u32>(~(35613u | global1[_wgslsmith_index_u32(0u, 13u)]), 56298u, u_input.b, 62011u) % vec4<u32>(32u)), u_input.b, func_4(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 13u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2151u, 13u)], 13u)] | 1u, global1[_wgslsmith_index_u32(1u, 13u)]), global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(firstLeadingBit(2147483647i), var_0.a.b, var_0.a.c, vec4<bool>(func_1(var_0.a.d, vec2<f32>(var_0.a.c, -1251f), 2954i).a.d.x, true, var_0.a.d.x, true)), func_4(vec4<u32>(0u, ~0u, ~u_input.c, ~44854u), ~abs(4294967295u), func_1(!var_0.a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, var_0.a.c)), 1i).a, Struct_2(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], true, true), vec2<f32>(var_0.a.c, -258f), -12721i).a))).a, func_1(select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52043u, 13u)], 7u)], false), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42562u, 13u)], 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), false), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-800f, 408f)))), var_0.a.c), var_0.a.a));
    var var_1 = Struct_2(Struct_1(u_input.a.x, var_0.a.b, -419f, var_0.a.b));
    global1 = array<u32, 13>();
    global0 = array<bool, 7>();
    global1 = array<u32, 13>();
    let var_2 = reverseBits(vec3<u32>(u_input.b, 0u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], u_input.c), global1[_wgslsmith_index_u32(u_input.c ^ 12358u, 13u)]), 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 13u)] << (_wgslsmith_dot_vec4_u32(vec4<u32>(29341u, 4294967295u, u_input.c, u_input.b), vec4<u32>(1u, global1[_wgslsmith_index_u32(16318u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], 35061u)) % 32u))));
    global0 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(17468i, 16533i, ~u_input.a, 1833u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.c * var_0.a.c))));
}

