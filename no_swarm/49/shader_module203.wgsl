struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(-730f, Struct_1(0i), Struct_1(2147483647i), 25831u, vec4<i32>(24477i, 0i, 0i, i32(-2147483648))), Struct_1(-37187i), vec3<u32>(1u, 4294967295u, 0u)), Struct_3(Struct_2(-1152f, Struct_1(0i), Struct_1(-34646i), 1u, vec4<i32>(44631i, 2147483647i, -70017i, 19735i)), Struct_1(0i), vec3<u32>(7277u, 0u, 1u)), Struct_3(Struct_2(153f, Struct_1(2147483647i), Struct_1(55041i), 7833u, vec4<i32>(53910i, -1i, 54296i, 2147483647i)), Struct_1(0i), vec3<u32>(25499u, 1u, 68832u)), Struct_3(Struct_2(-207f, Struct_1(2147483647i), Struct_1(10421i), 14183u, vec4<i32>(-16802i, 2147483647i, i32(-2147483648), 1i)), Struct_1(1i), vec3<u32>(1u, 48587u, 8660u)), Struct_3(Struct_2(-473f, Struct_1(2147483647i), Struct_1(1i), 9877u, vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648))), Struct_1(-33249i), vec3<u32>(87042u, 0u, 4294967295u)), Struct_3(Struct_2(-793f, Struct_1(22805i), Struct_1(i32(-2147483648)), 4294967295u, vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(872i), vec3<u32>(13257u, 1u, 0u)), Struct_3(Struct_2(1076f, Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), 88924u, vec4<i32>(0i, 21117i, -1i, -1i)), Struct_1(2147483647i), vec3<u32>(21911u, 4294967295u, 4294967295u)), Struct_3(Struct_2(451f, Struct_1(25593i), Struct_1(2147483647i), 23677u, vec4<i32>(11277i, -27046i, 1i, -4886i)), Struct_1(-75285i), vec3<u32>(1u, 1u, 4294967295u)), Struct_3(Struct_2(265f, Struct_1(-13847i), Struct_1(-51205i), 62175u, vec4<i32>(-22620i, 64489i, i32(-2147483648), 1i)), Struct_1(0i), vec3<u32>(47975u, 4294967295u, 4294967295u)), Struct_3(Struct_2(-1165f, Struct_1(2147483647i), Struct_1(-38268i), 0u, vec4<i32>(-1i, 740i, 0i, 1i)), Struct_1(-8453i), vec3<u32>(4294967295u, 1u, 31885u)), Struct_3(Struct_2(-2236f, Struct_1(5117i), Struct_1(1i), 7247u, vec4<i32>(-32824i, -1i, -20692i, 38560i)), Struct_1(0i), vec3<u32>(73190u, 4294967295u, 88605u)), Struct_3(Struct_2(-1096f, Struct_1(-1i), Struct_1(0i), 1004u, vec4<i32>(2147483647i, 2857i, 4870i, i32(-2147483648))), Struct_1(-1i), vec3<u32>(4294967295u, 20307u, 4294967295u)), Struct_3(Struct_2(-1000f, Struct_1(7912i), Struct_1(1i), 5547u, vec4<i32>(-17267i, -1i, -39532i, 65580i)), Struct_1(-13515i), vec3<u32>(22185u, 39870u, 4294967295u)), Struct_3(Struct_2(-428f, Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), 4294967295u, vec4<i32>(0i, -1i, 54555i, 27081i)), Struct_1(-1i), vec3<u32>(22689u, 32599u, 9346u)), Struct_3(Struct_2(-596f, Struct_1(-1i), Struct_1(0i), 48495u, vec4<i32>(-2648i, 0i, i32(-2147483648), -25839i)), Struct_1(0i), vec3<u32>(24831u, 4294967295u, 5316u)), Struct_3(Struct_2(-1460f, Struct_1(2147483647i), Struct_1(i32(-2147483648)), 1u, vec4<i32>(-31841i, -14970i, -1i, -6772i)), Struct_1(1i), vec3<u32>(1997u, 1u, 107362u)), Struct_3(Struct_2(-1000f, Struct_1(24291i), Struct_1(0i), 22423u, vec4<i32>(-24205i, 2147483647i, 37650i, 27960i)), Struct_1(i32(-2147483648)), vec3<u32>(10066u, 39087u, 0u)), Struct_3(Struct_2(588f, Struct_1(32197i), Struct_1(i32(-2147483648)), 35703u, vec4<i32>(14196i, 0i, -36261i, 0i)), Struct_1(8786i), vec3<u32>(67341u, 1u, 1u)), Struct_3(Struct_2(2151f, Struct_1(i32(-2147483648)), Struct_1(0i), 14398u, vec4<i32>(-3409i, 0i, -1i, 14123i)), Struct_1(-29406i), vec3<u32>(0u, 4294967295u, 0u)), Struct_3(Struct_2(760f, Struct_1(-1i), Struct_1(19438i), 33321u, vec4<i32>(i32(-2147483648), -29588i, -17078i, 20796i)), Struct_1(2147483647i), vec3<u32>(0u, 24251u, 18006u)), Struct_3(Struct_2(689f, Struct_1(22367i), Struct_1(i32(-2147483648)), 4294967295u, vec4<i32>(1i, 0i, 57750i, 0i)), Struct_1(2147483647i), vec3<u32>(26632u, 53312u, 45710u)), Struct_3(Struct_2(-189f, Struct_1(-1i), Struct_1(18770i), 32814u, vec4<i32>(1i, -53597i, -10447i, 1i)), Struct_1(i32(-2147483648)), vec3<u32>(1u, 58454u, 70820u)), Struct_3(Struct_2(-1000f, Struct_1(1i), Struct_1(-20252i), 78376u, vec4<i32>(i32(-2147483648), -1i, -30405i, i32(-2147483648))), Struct_1(-1i), vec3<u32>(4294967295u, 1u, 1u)));

var<private> global2: array<i32, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = !select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(true, true, true)), vec3<bool>(!any(vec2<bool>(true, true)), -1400f < arg_1.a, false), true);
    var var_1 = select(vec3<bool>(all(!var_0.yx), true, any(vec2<bool>(!var_0.x, var_0.x))), vec3<bool>(_wgslsmith_f_op_f32(step(-755f, arg_1.a)) < arg_1.a, var_0.x, true), all(var_0));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, (arg_0.x ^ 0u) | u_input.b), ~(~(~vec2<u32>(u_input.b, 1u))) >> (arg_0 % vec2<u32>(32u)));
    global2 = array<i32, 11>();
    let var_3 = Struct_2(2289f, arg_1.b, arg_1.c, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~arg_2, var_2), arg_2), arg_1.e);
    return ~_wgslsmith_div_u32(1u, 4294967295u);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(55287i);
    global2 = array<i32, 11>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1705f, 541f), _wgslsmith_f_op_f32(sign(arg_1)))))), Struct_1(select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 30625u), vec2<u32>(0u, u_input.c)), countOneBits(23163u)), 11u)], ~min(arg_2.a, var_0.a), true)), arg_2, select(func_3(max(max(vec2<u32>(u_input.a, 4375u), vec2<u32>(u_input.c, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(37268u, u_input.b), vec2<u32>(u_input.c, 66569u))), Struct_2(1509f, Struct_1(2147483647i), arg_2, u_input.c, vec4<i32>(15575i, global2[_wgslsmith_index_u32(3709u, 11u)], 2147483647i, -2147483647i) >> (vec4<u32>(42784u, 1u, 0u, 1u) % vec4<u32>(32u))), 0u), ~(~1u), arg_0.x), vec4<i32>(~select(2147483647i, _wgslsmith_add_i32(arg_2.a, global2[_wgslsmith_index_u32(0u, 11u)]), any(vec4<bool>(true, arg_0.x, arg_0.x, false))), ~(countOneBits(-1i) << (_wgslsmith_sub_u32(u_input.a, 1u) % 32u)), var_0.a, var_0.a));
    var var_2 = vec2<f32>(-891f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1)), -540f)))) * -1549f));
    var var_3 = global2[_wgslsmith_index_u32(var_1.d, 11u)];
    return abs(~32909u);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(-536f, Struct_1(reverseBits(-2147483647i)), Struct_1(0i), ~_wgslsmith_mod_u32(34960u, 20081u) << ((arg_0 ^ 2587u) % 32u), ~firstLeadingBit(select(vec4<i32>(global2[_wgslsmith_index_u32(38827u, 11u)], arg_3.x, 2554i, arg_3.x) | vec4<i32>(arg_3.x, -1i, global2[_wgslsmith_index_u32(arg_1, 11u)], -2147483647i), reverseBits(vec4<i32>(-1i, global2[_wgslsmith_index_u32(14061u, 11u)], global2[_wgslsmith_index_u32(arg_0, 11u)], global2[_wgslsmith_index_u32(0u, 11u)])), true)));
    let var_1 = 90148i;
    global0 = array<Struct_3, 23>();
    var var_2 = (1u & u_input.c) << (var_0.d % 32u);
    global2 = array<i32, 11>();
    return Struct_1(firstTrailingBit(firstLeadingBit(_wgslsmith_mod_i32(var_1, firstTrailingBit(var_1)))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global1 = array<Struct_3, 23>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f), arg_0.x)))), Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 11u)]), func_4(u_input.a, func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), 1000f, Struct_1(_wgslsmith_sub_i32(-4092i, -27204i))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), 208f >= arg_0.x, true)), abs(vec3<i32>(-2423i, 0i, -1i)) ^ abs(firstTrailingBit(vec3<i32>(5772i, 67078i, global2[_wgslsmith_index_u32(u_input.b, 11u)])))), firstLeadingBit(u_input.c), _wgslsmith_div_vec4_i32(max(vec4<i32>(-global2[_wgslsmith_index_u32(u_input.c, 11u)], -global2[_wgslsmith_index_u32(4294967295u, 11u)], i32(-1i) * -1i, -15378i ^ global2[_wgslsmith_index_u32(66220u, 11u)]), vec4<i32>(~2147483647i, ~global2[_wgslsmith_index_u32(u_input.c, 11u)], 1i >> (u_input.b % 32u), _wgslsmith_sub_i32(1i, global2[_wgslsmith_index_u32(31885u, 11u)]))), vec4<i32>(11186i, 2147483647i, _wgslsmith_sub_i32(reverseBits(global2[_wgslsmith_index_u32(8838u, 11u)]), -1i), -min(15753i, 15708i))));
    let var_1 = var_0.d;
    let var_2 = u_input.b;
    global2 = array<i32, 11>();
    return global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~max(func_3(vec2<u32>(var_2, 12253u), Struct_2(arg_0.x, var_0.b, Struct_1(1i), var_0.d, var_0.e), var_0.d), var_0.d), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2, var_2, u_input.a, 6198u), abs(vec4<u32>(u_input.a, 23441u, 0u, 4294967295u))))), 23u)];
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> Struct_3 {
    global1 = array<Struct_3, 23>();
    var var_0 = false;
    global2 = array<i32, 11>();
    var var_1 = max(arg_0.a.e.ywz, arg_0.a.e.xyw);
    global2 = array<i32, 11>();
    return Struct_3(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -269f), arg_0.a.a, _wgslsmith_f_op_f32(-arg_0.a.a)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-957f, -119f, -641f, -1064f) + vec4<f32>(arg_0.a.a, 2549f, -141f, arg_0.a.a)))))).a, arg_0.a.c, ~arg_0.c);
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_1 = var_0.b;
    var_0 = Struct_3(Struct_2(var_0.a.a, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -255f, var_0.a.a, arg_0.a.a) + vec4<f32>(-1389f, arg_0.a.a, arg_0.a.a, -1197f)))).a.c, arg_0.a.c, arg_0.a.d, -vec4<i32>(max(var_1.a, 0i), _wgslsmith_sub_i32(36206i, 60117i), _wgslsmith_dot_vec2_i32(var_0.a.e.ww, arg_0.a.e.yz), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 11u)]))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, var_0.a.a, -567f, -298f) * vec4<f32>(987f, arg_0.a.a, 1790f, 855f))))).a.c, vec3<u32>(~firstLeadingBit(~56668u), _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(4294967295u, arg_0.a.d))), 0u), 51277u));
    global1 = array<Struct_3, 23>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.a.d, ~(arg_0.c.x & var_0.a.d), _wgslsmith_sub_u32(0u, 0u & var_0.c.x) << (arg_0.c.x % 32u)), 23u)];
    return Struct_2(_wgslsmith_f_op_f32(-arg_0.a.a), Struct_1(1i), var_0.b, 4294967295u, ~vec4<i32>(i32(-1i) * -arg_1, -global2[_wgslsmith_index_u32(17075u, 11u)] >> (~53934u % 32u), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(47135i, global2[_wgslsmith_index_u32(var_0.c.x, 11u)], -44254i, 9378i), arg_0.a.e)));
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_2.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1012f, 785f) + arg_2.yz) * _wgslsmith_f_op_vec2_f32(exp2(arg_2.xx)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_f32(arg_2.x * 1563f)) * arg_2.xz), true))));
    var var_1 = arg_3.wz;
    var var_2 = reverseBits(~max(~vec2<u32>(81931u, 0u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0), vec2<u32>(arg_0, 1u)), 36766u | arg_1.d)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~abs(vec3<u32>(1u, var_2.x, u_input.c)) ^ select(vec3<u32>(4294967295u, 40439u, arg_1.d) << (vec3<u32>(1u, u_input.c, var_2.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d, 46139u, 55792u), vec3<u32>(1u, var_2.x, u_input.b)), false)), ~(~reverseBits(firstLeadingBit(vec3<u32>(var_2.x, var_2.x, arg_0))))), 23u)];
    let var_4 = ~vec3<u32>(1u, var_3.c.x, _wgslsmith_mult_u32(~func_6(Struct_3(var_3.a, Struct_1(var_3.a.e.x), vec3<u32>(21414u, 24511u, 32547u)), -1i).d, 1u));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = abs(u_input.c);
    let var_2 = func_7(u_input.a, func_6(func_5(func_1(vec4<f32>(724f, 147f, 1660f, -1000f)), min(func_3(vec2<u32>(u_input.c, 4294967295u), Struct_2(1730f, Struct_1(0i), Struct_1(-44508i), u_input.c, vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(14221u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], 11637i)), u_input.c), 51251u << (u_input.a % 32u)), ~u_input.a), 14085i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2061f, 348f, 914f))) - vec3<f32>(198f, 265f, -1107f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1541f * 603f) + -976f), 1590f, _wgslsmith_f_op_f32(-402f - -609f))), select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)))));
    global0 = array<Struct_3, 23>();
    let var_3 = vec4<bool>(~1u <= u_input.b, true, any(vec2<bool>(true, true)), ~min(u_input.b, firstLeadingBit(u_input.c)) <= func_3(~(~vec2<u32>(19944u, 72185u)), Struct_2(163f, Struct_1(0i), func_5(Struct_3(Struct_2(-1000f, Struct_1(global2[_wgslsmith_index_u32(1u, 11u)]), var_2, u_input.c, vec4<i32>(0i, 7490i, -6082i, -1i)), Struct_1(global2[_wgslsmith_index_u32(0u, 11u)]), vec3<u32>(35905u, 76177u, 45888u)), u_input.a, u_input.c).b, u_input.c, vec4<i32>(59622i, 2147483647i, 8096i, 59004i) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.a) % vec4<u32>(32u))), u_input.c & 4294967295u));
    var_0 = u_input.c;
    var_0 = _wgslsmith_mod_u32(min(1u, 34331u), _wgslsmith_dot_vec2_u32(~(~func_1(vec4<f32>(410f, 1702f, 226f, -644f)).c.zy), ~(~max(vec2<u32>(u_input.c, u_input.a), vec2<u32>(27181u, u_input.a)))));
    let var_4 = select(var_3.zzz, var_3.xxw, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1342f, _wgslsmith_f_op_f32(-128f * 715f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1438f) + vec2<f32>(770f, 682f)))))), ~_wgslsmith_div_vec4_u32(vec4<u32>(25075u, u_input.c, u_input.b, 1u) >> (vec4<u32>(0u, u_input.c, u_input.a, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)) >> (_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.a) | vec4<u32>(36129u, u_input.c, 0u, 28756u)), ~vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), -2147483647i, 1u);
}

