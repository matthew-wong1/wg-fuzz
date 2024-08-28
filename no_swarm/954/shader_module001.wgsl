struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7002i;

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, false, false, false, true, false, false, false, false, false, false, false, true);

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec4<i32>(20632i, 0i, -18212i, -22268i), vec3<bool>(true, true, true), 953f, false, vec4<i32>(1717i, -1i, -1i, 9640i)), Struct_3(vec4<i32>(-16993i, 1i, 2147483647i, 24126i), vec3<bool>(true, false, true), -758f, true, vec4<i32>(0i, -1i, 1i, 70844i)), Struct_3(vec4<i32>(1i, 2147483647i, -1i, 2453i), vec3<bool>(true, false, true), 314f, true, vec4<i32>(2147483647i, 2147483647i, 2583i, -1i)), Struct_3(vec4<i32>(i32(-2147483648), 895i, 90960i, -40664i), vec3<bool>(false, false, false), 154f, true, vec4<i32>(16715i, 26494i, 1i, i32(-2147483648))), Struct_3(vec4<i32>(-1i, 475i, 71783i, 2147483647i), vec3<bool>(false, true, true), -625f, false, vec4<i32>(0i, 15362i, 0i, 0i)), Struct_3(vec4<i32>(-46146i, -34024i, 0i, 2147483647i), vec3<bool>(true, false, false), -1193f, false, vec4<i32>(i32(-2147483648), 29649i, 40318i, -1i)), Struct_3(vec4<i32>(0i, 26681i, -1i, i32(-2147483648)), vec3<bool>(true, false, true), 1517f, true, vec4<i32>(6738i, 33697i, 1i, -20453i)), Struct_3(vec4<i32>(-32618i, 0i, 1i, 10611i), vec3<bool>(true, false, false), -833f, false, vec4<i32>(-11818i, 15908i, 0i, i32(-2147483648))), Struct_3(vec4<i32>(-49681i, i32(-2147483648), 43347i, 2147483647i), vec3<bool>(false, true, true), 193f, true, vec4<i32>(1i, 48286i, -1i, 2147483647i)), Struct_3(vec4<i32>(1i, 42982i, -36799i, 1i), vec3<bool>(true, true, false), 1245f, true, vec4<i32>(0i, 7966i, 1i, 26604i)), Struct_3(vec4<i32>(36814i, -1i, 62904i, -15706i), vec3<bool>(true, false, true), -1000f, false, vec4<i32>(-21242i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_3(vec4<i32>(0i, 30705i, 56318i, -1663i), vec3<bool>(true, true, true), 1020f, true, vec4<i32>(1i, 2147483647i, -26273i, -17249i)), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 57183i, 0i), vec3<bool>(true, true, true), 1051f, true, vec4<i32>(-25414i, -1i, -35837i, 2147483647i)), Struct_3(vec4<i32>(39040i, -1i, 1i, 1i), vec3<bool>(false, true, false), -283f, false, vec4<i32>(38897i, i32(-2147483648), 1i, -3748i)));

var<private> global3: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> bool {
    global3 = reverseBits(1u);
    var var_0 = vec2<bool>(global1[_wgslsmith_index_u32(~1u, 14u)] & (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(49145u, u_input.b, u_input.b, 75131u), vec4<u32>(arg_0, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(14165u, 44680u, 0u, 31089u)) != 4294967295u), all(!vec2<bool>(arg_0 == u_input.b, false)));
    let var_1 = reverseBits(_wgslsmith_div_vec3_u32(~select(vec3<u32>(4294967295u, arg_0, u_input.b), ~vec3<u32>(76890u, 57351u, 1694u), select(vec3<bool>(false, global1[_wgslsmith_index_u32(12254u, 14u)], var_0.x), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 14u)], true), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]))), countOneBits(max(vec3<u32>(arg_0, 4294967295u, 32553u), vec3<u32>(4294967295u, arg_0, u_input.b)))));
    global1 = array<bool, 14>();
    let var_2 = var_1.x;
    return !global1[_wgslsmith_index_u32(43110u, 14u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    global0 = i32(-1i) * -reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(14654i, -52195i), arg_1.e.x));
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    let var_0 = Struct_4(~(~(~arg_0.e.x)), Struct_3(-firstTrailingBit(vec4<i32>(u_input.a, arg_0.e.x, 50919i, u_input.a)), select(vec3<bool>(false, true, arg_0.d), select(select(vec3<bool>(false, false, arg_2.x), vec3<bool>(global1[_wgslsmith_index_u32(1u, 14u)], false, false), arg_0.b.x), arg_0.b, !vec3<bool>(true, arg_0.b.x, arg_0.d)), select(vec3<bool>(arg_2.x, false, arg_1.b.x), select(arg_1.b, arg_0.b, arg_0.b), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-546f - -168f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(336f, -583f)))), arg_0.b.x, ~(-abs(arg_1.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-277f, _wgslsmith_f_op_f32(abs(arg_1.c)), _wgslsmith_f_op_f32(sign(1441f)))))), vec4<bool>(arg_1.d, !(~u_input.b < _wgslsmith_sub_u32(u_input.b, u_input.b)), arg_2.x | arg_2.x, any(select(!arg_1.b.zy, vec2<bool>(arg_2.x, true), !arg_1.b.x))), 1328f);
    global0 = max(_wgslsmith_mult_i32(~arg_1.a.x, arg_1.e.x), i32(-1i) * -(21106i << (_wgslsmith_add_u32(60857u, u_input.b) % 32u)));
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b, 14u)];
    var var_1 = true;
    var var_2 = Struct_1(u_input.b, arg_1.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(step(arg_0, arg_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(607f, 396f)) * 164f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), !(!vec4<bool>(-9258i >= u_input.a, global1[_wgslsmith_index_u32(u_input.b, 14u)], !arg_1.d, arg_1.b.x)));
    var_2 = Struct_1(func_4(Struct_3(vec4<i32>(-arg_1.a.x, u_input.a & 1i, var_2.b, -var_2.b), !(!vec3<bool>(false, var_2.d.x, var_2.d.x)), 372f, global1[_wgslsmith_index_u32(41071u, 14u)], ~vec4<i32>(arg_1.e.x, u_input.a, u_input.a, -48737i)), Struct_3(-_wgslsmith_div_vec4_i32(vec4<i32>(-2659i, -43433i, 2147483647i, 7513i), vec4<i32>(arg_1.a.x, var_2.b, 23451i, -36035i)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b & var_2.a, 14u)], all(arg_1.b), func_3(var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.c), all(select(vec4<bool>(arg_1.b.x, arg_1.d, var_2.d.x, false), var_2.d, true)), _wgslsmith_clamp_vec4_i32(arg_1.e, arg_1.e, _wgslsmith_div_vec4_i32(arg_1.e, vec4<i32>(arg_1.a.x, var_2.b, var_2.b, u_input.a)))), select(vec2<bool>(false, true), select(select(var_2.d.yy, var_2.d.zy, false), arg_1.b.yz, !vec2<bool>(false, arg_1.d)), select(arg_1.b.xx, vec2<bool>(false, arg_1.d), true)), true), reverseBits(_wgslsmith_div_i32(abs(u_input.a), u_input.a)) & 2147483647i, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-var_2.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-798f))))), var_2.d);
    global3 = 62034u | var_2.a;
    return ~firstLeadingBit(vec2<u32>(var_2.a & u_input.b, ~1u) >> (vec2<u32>(u_input.b, var_2.a) % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u) & select(vec2<u32>(u_input.b, 21217u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true)), func_2(1600f, global2[_wgslsmith_index_u32(max(25239u, 1u), 14u)])), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(30797u, 1u), vec2<u32>(u_input.b, u_input.b)), firstLeadingBit(countOneBits(vec2<u32>(71631u, 0u)))))), 14u)];
    global3 = u_input.b;
    let var_1 = u_input.b;
    var var_2 = 4294967295u;
    global3 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, reverseBits(31957u), ~firstLeadingBit(17265u), _wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 7085u)) >> (var_1 % 32u)), select(countOneBits((vec4<u32>(var_1, 4294967295u, 4294967295u, 0u) | vec4<u32>(u_input.b, 84461u, 26254u, var_1)) ^ abs(vec4<u32>(var_1, 46252u, 48062u, 1u))), ~vec4<u32>(u_input.b, 54061u, firstLeadingBit(1u), 4294967295u), vec4<bool>(!(!var_0.d), ~u_input.b == firstLeadingBit(var_1), firstLeadingBit(1u) > ~var_1, (true || var_0.d) & any(vec3<bool>(var_0.d, false, false)))));
    return Struct_2(Struct_1(var_1, -57804i, var_0.c, vec4<bool>(!var_0.d, var_0.e.x == _wgslsmith_mult_i32(u_input.a, u_input.a), var_0.b.x, false)), Struct_1(24141u, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f * _wgslsmith_f_op_f32(max(var_0.c, -637f)))), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 14u)], true, false, true), vec4<bool>(var_0.b.x, var_0.d, true, false), true), !vec4<bool>(true, false, var_0.b.x, false), !vec4<bool>(var_0.d, false, false, var_0.b.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 14u)], false, true, global1[_wgslsmith_index_u32(var_1, 14u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)], var_0.d, false, false), var_0.d), vec4<bool>(true, u_input.b < 8690u, !var_0.b.x, !var_0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(935f, var_0.c, 1308f))))))), max(~countOneBits(vec4<u32>(u_input.b, 0u, var_1, u_input.b)), select(~vec4<u32>(12868u, 1u, var_1, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(31832u, var_1, var_1, 16858u), vec4<u32>(15224u, var_1, 0u, var_1)), any(var_0.b))) | vec4<u32>(u_input.b, max(firstLeadingBit(4294967295u), u_input.b), var_1, var_1), Struct_1(39534u, reverseBits(u_input.a), 1000f, vec4<bool>(true, var_0.d && false, false, func_3(17699u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.d.yw;
    let var_1 = (false & all(arg_1.e.d.zy)) != all(!(!vec2<bool>(arg_0.e.d.x, global1[_wgslsmith_index_u32(4294967295u, 14u)])));
    let var_2 = Struct_3(vec4<i32>(7738i, countOneBits(-39635i), _wgslsmith_sub_i32(max(-47679i, -2147483647i), arg_0.a.b), -(arg_0.b.b << (0u % 32u))) ^ vec4<i32>(_wgslsmith_sub_i32(~arg_0.b.b, 18790i >> (arg_0.a.a % 32u)), select(u_input.a, 7644i, global1[_wgslsmith_index_u32(u_input.b, 14u)]) << (countOneBits(5787u) % 32u), -38884i & (arg_0.a.b << (1u % 32u)), -2147483647i), func_1().b.d.zwy, 729f, false && any(select(select(vec2<bool>(false, arg_1.a.d.x), vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.b, 14u)]), arg_0.e.d.ww, var_1)), _wgslsmith_add_vec4_i32(select(firstLeadingBit(min(vec4<i32>(15584i, 64177i, arg_1.b.b, arg_1.b.b), vec4<i32>(arg_0.b.b, arg_0.b.b, -45481i, u_input.a))), ~(~vec4<i32>(-1i, 0i, arg_0.b.b, -30228i)), false), _wgslsmith_add_vec4_i32(-select(vec4<i32>(u_input.a, 2147483647i, 7489i, -19067i), vec4<i32>(8650i, 1i, u_input.a, arg_1.b.b), arg_1.e.d), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.b, arg_1.b.b, arg_1.e.b, u_input.a), vec4<i32>(-40235i, arg_1.a.b, arg_0.b.b, -1i)) << (arg_1.d % vec4<u32>(32u)))));
    let var_3 = func_1().b;
    let var_4 = min(var_2.e, vec4<i32>(_wgslsmith_div_i32(var_3.b, -3713i), -(var_3.b ^ u_input.a), _wgslsmith_sub_i32(-29261i, -1i) & (u_input.a & arg_0.b.b), var_2.a.x)) << (vec4<u32>(u_input.b, 4294967295u, ~(~arg_1.e.a), 1u) % vec4<u32>(32u));
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 0u;
    let var_0 = u_input.a;
    var var_1 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, ~1u, reverseBits(u_input.b))));
    global2 = array<Struct_3, 14>();
    global2 = array<Struct_3, 14>();
    var var_2 = select(select(true, var_1.x >= 1u, all(!(!vec2<bool>(global1[_wgslsmith_index_u32(55861u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)])))), true, false);
    var var_3 = global2[_wgslsmith_index_u32(min(~(u_input.b | ~(u_input.b | 1u)), func_5(func_1(), func_1())), 14u)];
    var var_4 = firstLeadingBit(countOneBits(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1.x, ~u_input.b), 81665u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-131f, _wgslsmith_div_f32(933f, -800f))) * var_3.c)), vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)), -812f)));
}

