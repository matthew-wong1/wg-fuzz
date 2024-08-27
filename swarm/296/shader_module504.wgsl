struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
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

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(vec3<u32>(1u, 7616u, 37903u), vec2<f32>(-547f, 428f)), Struct_4(vec3<u32>(12073u, 4294967295u, 4294967295u), vec2<f32>(1731f, -1357f)), Struct_4(vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(-291f, -836f)), Struct_4(vec3<u32>(4294967295u, 1u, 5636u), vec2<f32>(1000f, 845f)), Struct_4(vec3<u32>(0u, 3327u, 4294967295u), vec2<f32>(826f, 796f)), Struct_4(vec3<u32>(4294967295u, 12556u, 31065u), vec2<f32>(940f, -1000f)), Struct_4(vec3<u32>(0u, 19351u, 80887u), vec2<f32>(-1280f, -486f)), Struct_4(vec3<u32>(4294967295u, 1u, 0u), vec2<f32>(-2200f, 149f)), Struct_4(vec3<u32>(59612u, 0u, 73764u), vec2<f32>(-640f, 563f)), Struct_4(vec3<u32>(37667u, 41031u, 4294967295u), vec2<f32>(-662f, 471f)), Struct_4(vec3<u32>(0u, 34007u, 25985u), vec2<f32>(-1327f, -1000f)), Struct_4(vec3<u32>(0u, 0u, 4294967295u), vec2<f32>(407f, -233f)), Struct_4(vec3<u32>(0u, 21545u, 0u), vec2<f32>(-707f, 909f)), Struct_4(vec3<u32>(26060u, 914u, 60881u), vec2<f32>(-264f, 441f)), Struct_4(vec3<u32>(96417u, 69831u, 100422u), vec2<f32>(-1000f, -1000f)), Struct_4(vec3<u32>(64099u, 0u, 1u), vec2<f32>(1000f, -228f)), Struct_4(vec3<u32>(0u, 4294967295u, 82921u), vec2<f32>(1755f, 250f)), Struct_4(vec3<u32>(4294967295u, 13705u, 0u), vec2<f32>(-1280f, 499f)), Struct_4(vec3<u32>(0u, 4294967295u, 61366u), vec2<f32>(1000f, 656f)), Struct_4(vec3<u32>(5779u, 0u, 45691u), vec2<f32>(-861f, -1239f)), Struct_4(vec3<u32>(17048u, 1u, 15359u), vec2<f32>(-918f, 989f)), Struct_4(vec3<u32>(22688u, 41178u, 4294967295u), vec2<f32>(-672f, -1455f)));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(0u, -7817i), Struct_1(0u, 35893i), Struct_1(31915u, -18836i), Struct_1(1u, -35871i), Struct_1(1u, -13685i), Struct_1(39425u, -1i), Struct_1(26344u, 1i), Struct_1(30777u, -35038i), Struct_1(4294967295u, -26642i), Struct_1(0u, 1i), Struct_1(58542u, -81250i), Struct_1(15653u, 78936i), Struct_1(3157u, -1i), Struct_1(0u, -1i), Struct_1(8419u, -13555i), Struct_1(0u, 1i), Struct_1(1u, 1i), Struct_1(49368u, -30412i), Struct_1(1u, 14826i), Struct_1(0u, 1i), Struct_1(19343u, i32(-2147483648)), Struct_1(79732u, 37366i), Struct_1(116410u, 2147483647i), Struct_1(1u, -1i), Struct_1(10947u, 2147483647i), Struct_1(4294967295u, -34118i));

var<private> global3: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = 38881i;
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    global3 = ~(~(~0u));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))) - var_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), any(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(true, false))))), var_1));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = 0i;
    global2 = array<Struct_1, 26>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~53583u, arg_0), 26u)];
    let var_2 = select(vec2<bool>((_wgslsmith_f_op_f32(round(1000f)) > _wgslsmith_f_op_f32(963f * -243f)) || true, true), !(!vec2<bool>(true, global0.x)), global0.x);
    var var_3 = Struct_5(~select(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.a, 0u), vec2<u32>(arg_0, arg_0) << (vec2<u32>(var_1.a, 0u) % vec2<u32>(32u))), vec2<u32>(var_1.a, ~var_1.a), !(global0.x | var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1007f, -1104f)) - -1027f)))), global2[_wgslsmith_index_u32(4294967295u, 26u)], Struct_3(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(36814u, arg_0, var_1.a, 4294967295u), vec4<u32>(arg_0, var_1.a, 1u, 77015u))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(307f))))), Struct_2(global2[_wgslsmith_index_u32(~arg_0, 26u)], global2[_wgslsmith_index_u32(0u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 192420u, 0u), vec3<u32>(arg_0, var_1.a, 18080u)) % 32u), 26u)], Struct_1(0u, -(var_1.b & u_input.d.x)), -2147483647i, Struct_1(min(abs(0u), _wgslsmith_div_u32(4294967295u, 4294967295u)), var_1.b)));
    return var_3.d;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> bool {
    global3 = _wgslsmith_dot_vec4_u32(arg_2.a, select(~(~vec4<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x)) | ~(~vec4<u32>(arg_0.a, arg_2.a.x, 1u, arg_0.a)), ~(~arg_2.a >> (arg_2.a % vec4<u32>(32u))), (true == any(vec3<bool>(global0.x, global0.x, global0.x))) & !global0.x));
    var var_0 = ~vec2<u32>(_wgslsmith_add_u32(1u, ~arg_2.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a.x, arg_0.a), firstTrailingBit(vec2<u32>(arg_2.a.x, arg_2.a.x))) & countOneBits(min(44298u, arg_0.a)));
    let var_1 = !(false && (!all(vec2<bool>(global0.x, false)) & all(vec3<bool>(true, true, true))));
    var_0 = firstTrailingBit(abs(vec2<u32>(~102709u, min(24431u, arg_2.a.x))));
    var var_2 = arg_2.c;
    return var_1;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = select(arg_0.xx, !vec2<bool>(!all(vec2<bool>(true, false)), func_4(Struct_1(36174u, -4569i), -381f, func_2(6856u))), arg_0.ww);
    let var_1 = !(!arg_0.zx);
    global3 = ~22440u;
    var_0 = !vec2<bool>(func_4(Struct_1(~55015u, -8141i), _wgslsmith_f_op_f32(ceil(-1724f)), func_2(0u)), true);
    global3 = min(_wgslsmith_sub_u32(~(0u | _wgslsmith_dot_vec3_u32(vec3<u32>(90710u, 78337u, 11714u), vec3<u32>(85364u, 20033u, 0u))), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(5104u, 22366u, 47179u), ~4294967295u, 28048u) >> (~abs(vec3<u32>(27706u, 1u, 4277u)) % vec3<u32>(32u)), countOneBits(vec3<u32>(_wgslsmith_mult_u32(9972u, 42557u), ~0u, 1u))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f - 1430f) - -1189f), 1286f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 22>();
    global3 = ~(~select(~(~5783u), countOneBits(63897u), all(vec4<bool>(true, global0.x, false, true))));
    var var_0 = Struct_5(~(_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(15058u, 1u), false), vec2<u32>(1u, 1u)) >> (abs(select(vec2<u32>(9509u, 4294967295u), vec2<u32>(39098u, 0u), false)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!vec4<bool>(global0.x, global0.x, false, false)))), Struct_1(60112u, -59082i), Struct_3(func_2(~countOneBits(22747u)).a, -u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -545f)))), Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(12654u, 55331u), ~4294967295u), firstLeadingBit(i32(-1i) * -55875i)), Struct_1(abs(4294967295u), -u_input.d.x >> (_wgslsmith_div_u32(28031u, 1u) % 32u)), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~96335u, _wgslsmith_add_u32(15285u, 62146u)), 26u)], ~(~(-2147483647i)), Struct_1(_wgslsmith_div_u32(~57162u, 4294967295u), 2147483647i)));
    var var_1 = global1[_wgslsmith_index_u32(36581u, 22u)];
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_0.c.b >> (24936u % 32u), 1i, reverseBits(-var_0.c.b)));
}

