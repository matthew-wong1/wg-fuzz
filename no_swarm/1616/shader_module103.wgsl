struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<i32>(-13711i, 0i), vec4<u32>(21800u, 13488u, 4294967295u, 4294967295u), -80832i, vec4<u32>(0u, 26782u, 87692u, 0u), 4294967295u), Struct_1(vec2<i32>(-1i, 1i), vec4<u32>(0u, 44230u, 3133u, 15905u), 2147483647i, vec4<u32>(4294967295u, 0u, 1u, 1u), 1u), Struct_1(vec2<i32>(-34082i, i32(-2147483648)), vec4<u32>(4294967295u, 24969u, 1u, 67466u), -1538i, vec4<u32>(65840u, 1u, 25633u, 4294967295u), 20992u), Struct_1(vec2<i32>(54718i, -7413i), vec4<u32>(15436u, 13993u, 0u, 88774u), 29409i, vec4<u32>(15277u, 1u, 6710u, 78363u), 16063u), Struct_1(vec2<i32>(26945i, i32(-2147483648)), vec4<u32>(11703u, 57647u, 4294967295u, 0u), 0i, vec4<u32>(53747u, 70942u, 125256u, 36030u), 17765u), Struct_1(vec2<i32>(1i, 1i), vec4<u32>(1171u, 6825u, 4294967295u, 1u), 36784i, vec4<u32>(17948u, 62772u, 4294967295u, 4294967295u), 1u), Struct_1(vec2<i32>(7976i, -13526i), vec4<u32>(4294967295u, 4294967295u, 1u, 46497u), -14071i, vec4<u32>(0u, 2779u, 0u, 1u), 4294967295u), Struct_1(vec2<i32>(2147483647i, -5498i), vec4<u32>(4294967295u, 4294967295u, 0u, 42895u), 2147483647i, vec4<u32>(1132u, 0u, 1u, 43085u), 5777u), Struct_1(vec2<i32>(17072i, 2147483647i), vec4<u32>(4294967295u, 0u, 25772u, 0u), 30136i, vec4<u32>(26734u, 3465u, 3111u, 1u), 42914u), Struct_1(vec2<i32>(1i, -18923i), vec4<u32>(1u, 2357u, 25699u, 4294967295u), 2147483647i, vec4<u32>(8816u, 77997u, 70535u, 2468u), 0u), Struct_1(vec2<i32>(-49061i, -1i), vec4<u32>(37961u, 4294967295u, 4495u, 13350u), 14211i, vec4<u32>(1u, 0u, 44670u, 25429u), 0u), Struct_1(vec2<i32>(-2291i, i32(-2147483648)), vec4<u32>(0u, 0u, 4294967295u, 13496u), -33887i, vec4<u32>(1u, 84149u, 4294967295u, 64007u), 61128u), Struct_1(vec2<i32>(15969i, -11317i), vec4<u32>(0u, 12969u, 40627u, 4294967295u), -40046i, vec4<u32>(51714u, 75481u, 7443u, 9450u), 56461u), Struct_1(vec2<i32>(-76783i, 1i), vec4<u32>(37623u, 55813u, 1u, 0u), 1i, vec4<u32>(30705u, 0u, 0u, 1u), 35395u), Struct_1(vec2<i32>(-6861i, 4553i), vec4<u32>(0u, 1u, 1u, 40153u), 19101i, vec4<u32>(30620u, 4294967295u, 105455u, 0u), 4294967295u), Struct_1(vec2<i32>(-14440i, 2147483647i), vec4<u32>(0u, 0u, 1u, 23089u), 1i, vec4<u32>(56078u, 5360u, 0u, 18213u), 4294967295u), Struct_1(vec2<i32>(53702i, -47450i), vec4<u32>(17114u, 64038u, 20855u, 26565u), 2147483647i, vec4<u32>(49652u, 1u, 22403u, 4294967295u), 1u), Struct_1(vec2<i32>(10164i, 0i), vec4<u32>(75501u, 4294967295u, 1u, 4294967295u), -14980i, vec4<u32>(0u, 1u, 13940u, 4294967295u), 27557u), Struct_1(vec2<i32>(-33254i, 0i), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), -1i, vec4<u32>(0u, 50012u, 1u, 51199u), 48973u), Struct_1(vec2<i32>(2810i, -24046i), vec4<u32>(73227u, 4294967295u, 4294967295u, 0u), -938i, vec4<u32>(18550u, 33285u, 905u, 0u), 1u), Struct_1(vec2<i32>(-20392i, -6113i), vec4<u32>(4294967295u, 51074u, 5174u, 6235u), -1i, vec4<u32>(19572u, 42146u, 4914u, 0u), 0u));

var<private> global2: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global3: array<u32, 16>;

var<private> global4: array<i32, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(205f - -852f) + _wgslsmith_f_op_f32(-148f - 1043f)), all(vec3<bool>(false, false, false)))))));
}

fn func_3(arg_0: f32) -> i32 {
    return _wgslsmith_mod_i32(firstLeadingBit(global4[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1u, 16u)], ~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 16u)]), 39204u, select(true, true, false)), 11u)]), global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(0u, 11u)]), 11u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(0u, 11u)]), 16u)]), 11u)], 11u)]);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = -79713i;
    global3 = array<u32, 16>();
    global2 = array<vec3<bool>, 22>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-arg_3)))) * 185f);
    let var_2 = func_3(383f);
    return -939f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1008f - 553f) - _wgslsmith_f_op_f32(floor(754f))))) == _wgslsmith_f_op_f32(func_2(all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), Struct_1(vec2<i32>(-2147483647i, u_input.c.x), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(38530u, 11u)], 4259u, global0[_wgslsmith_index_u32(26666u, 11u)]), reverseBits(u_input.b.x), ~vec4<u32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 16u)], 12061u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12471u, 11u)], 16u)], 4294967295u), min(global3[_wgslsmith_index_u32(117138u, 16u)], 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1675f)), _wgslsmith_f_op_f32(func_1(~global3[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(12156u >> (1u % 32u), 21u)], max(vec2<u32>(16041u, u_input.a.x), u_input.a))))), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false))), !(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), all(vec2<bool>(true, false)) && true);
    var var_1 = select(vec3<bool>(var_0.x, false, !any(!var_0.wx)), select(!(!var_0.zyx), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30236u, 16u)], 11u)], 11u)], 16u)], 11u)], 19263u, 43841u, 53217u)), ~vec4<u32>(13684u, 1u, 0u, global3[_wgslsmith_index_u32(103038u, 16u)])), 55746u, 0u), 22u)], vec3<bool>(true, false, false)), true);
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(18701u, 1u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), select(1u, 4294967295u, var_1.x) & 10629u), select(max(vec4<u32>(88190u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 43446u, 1u), firstLeadingBit(vec4<u32>(u_input.a.x, 10402u, global3[_wgslsmith_index_u32(43129u, 16u)], 13354u))), vec4<u32>(4294967295u, abs(global0[_wgslsmith_index_u32(67991u, 11u)]), ~0u, abs(97345u)), var_1.x)), 21u)];
    var var_3 = global1[_wgslsmith_index_u32(31421u, 21u)];
    var var_4 = max(~24093u, _wgslsmith_dot_vec3_u32(var_2.d.xxw, vec3<u32>(12391u, ~abs(1u), ~1u)));
    let var_5 = Struct_1(vec2<i32>(32188i, ~(~(-4956i))) >> (_wgslsmith_div_vec2_u32(max(var_2.d.xx, ~vec2<u32>(0u, 0u)), select(vec2<u32>(46326u, global3[_wgslsmith_index_u32(1u, 16u)]) | var_2.b.yx, _wgslsmith_add_vec2_u32(vec2<u32>(8837u, 29927u), var_2.d.wx), false)) % vec2<u32>(32u)), ~var_3.d, -2147483647i, var_3.b, _wgslsmith_dot_vec3_u32(var_2.b.xxy, min(vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(49679u, 11u)], var_2.e), 16u)], var_2.d.x ^ var_3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(59628u, 1u, 0u, 4294967295u), var_2.d)), var_3.d.ywz)));
    global4 = array<i32, 11>();
    global3 = array<u32, 16>();
    var var_6 = global1[_wgslsmith_index_u32(var_3.d.x ^ _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_3.e), vec4<u32>(var_2.d.x, var_3.d.x, 1u, var_3.e))), vec4<u32>(~firstLeadingBit(global3[_wgslsmith_index_u32(0u, 16u)]), ~u_input.a.x, 29763u, 48348u)), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-323f, 474f, -941f, _wgslsmith_f_op_f32(308f + -718f))))), global0[_wgslsmith_index_u32(4294967295u, 11u)], -_wgslsmith_dot_vec4_i32(~(~vec4<i32>(16143i, 0i, 3905i, var_2.c)), firstTrailingBit(countOneBits(vec4<i32>(-44026i, var_6.c, -14121i, 2147483647i)))));
}

