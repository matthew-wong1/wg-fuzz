struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    global0 = array<bool, 26>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.a.a)) - arg_1.a.a.a), arg_1.a.a.a, !(!arg_1.a.a.e))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.a.a + vec2<f32>(arg_1.a.c, 408f))))), _wgslsmith_f_op_vec2_f32(arg_1.a.a.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(580f, arg_1.b.a.a.x) - vec2<f32>(146f, arg_1.c.a.x)) + arg_1.c.a))));
    global0 = array<bool, 26>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 723f)))))), 46984u, var_0.x, arg_1.a.a.d, vec2<bool>(!(global0[_wgslsmith_index_u32(arg_1.b.a.b, 26u)] || true), false)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, arg_1.e.x), ~6644u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1.e.x, 4294967295u), vec3<u32>(arg_1.b.b, arg_1.e.x, arg_1.e.x), vec3<u32>(4294967295u, 24222u, arg_1.c.b)) << (abs(vec3<u32>(arg_1.c.b, 4294967295u, arg_1.a.a.b)) % vec3<u32>(32u))), -186f);
    var var_2 = var_1.a.d.x;
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = !select(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(8405u, 26u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true), true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(131u, 26u)]), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(false, func_3(global0[_wgslsmith_index_u32(31465u, 26u)], Struct_3(Struct_2(Struct_1(vec2<f32>(-634f, -1149f), 79704u, -1296f, u_input.a, vec2<bool>(false, true)), 30957u, -385f), Struct_2(Struct_1(vec2<f32>(410f, -1183f), 0u, 284f, vec3<i32>(u_input.a.x, 2147483647i, 21342i), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)])), 4294967295u, -446f), Struct_1(vec2<f32>(-507f, -190f), 74207u, 1622f, vec3<i32>(u_input.a.x, u_input.a.x, 925i), vec2<bool>(false, true)), false, vec2<u32>(4294967295u, 60363u)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8258u, 52899u, 10u, 21196u), vec4<u32>(0u, 4090u, 40075u, 4294967295u)) ^ 1u, 26u)]), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(49546u, 26u)], true))), global0[_wgslsmith_index_u32(4294967295u, 26u)] | false);
    global0 = array<bool, 26>();
    var var_1 = -vec3<i32>(u_input.a.x, -(u_input.a.x | u_input.a.x), ~u_input.a.x);
    var_1 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_div_i32(1i, 26840i), ~u_input.a.x), firstLeadingBit(var_1.x | ~1i), abs(u_input.a.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, 1350f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, max(4294967295u, 88274u)), vec2<u32>(abs(4294967295u), ~31686u)), -1000f, u_input.a, !vec2<bool>(true, func_3(var_0.x, Struct_3(Struct_2(Struct_1(vec2<f32>(375f, 782f), 4294967295u, -292f, vec3<i32>(var_1.x, var_1.x, -29421i), vec2<bool>(global0[_wgslsmith_index_u32(5512u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)])), 37127u, -1367f), Struct_2(Struct_1(vec2<f32>(-1086f, -1591f), 1u, -1326f, vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)])), 18546u, 655f), Struct_1(vec2<f32>(246f, -539f), 12136u, -707f, vec3<i32>(var_1.x, 30619i, u_input.a.x), vec2<bool>(global0[_wgslsmith_index_u32(58543u, 26u)], false)), false, vec2<u32>(38779u, 0u))))), reverseBits(1u), 407f);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global0 = array<bool, 26>();
    var var_0 = vec3<u32>(arg_0.c.b, abs(reverseBits(~select(arg_3.b, arg_3.b, true))), firstTrailingBit(~(~4294967295u)));
    let var_1 = -2147483647i;
    let var_2 = vec3<i32>(~u_input.a.x ^ 24782i, -1i, arg_0.b.a.d.x >> (~(arg_0.a.a.b >> ((arg_3.b << (19551u % 32u)) % 32u)) % 32u));
    let var_3 = func_2().a;
    return arg_0.b;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_0, func_4(Struct_3(arg_0, func_2(), arg_0.a, all(arg_0.a.e), select(vec2<u32>(4294967295u, arg_0.a.b), vec2<u32>(arg_0.b, arg_0.b), false) | vec2<u32>(arg_0.a.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, 172f, 676f, arg_0.a.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, arg_0.c, 1625f, arg_0.a.a.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(332f, arg_0.c, arg_0.a.a.x, arg_0.c), vec4<f32>(arg_0.c, arg_0.a.c, arg_0.c, arg_0.c))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, arg_0.c, arg_0.a.c, arg_0.a.a.x)))))), min(-1i, -30777i), func_2().a), arg_0.a, !((u_input.a.x | 3085i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-60755i, arg_0.a.d.x, arg_0.a.d.x) | vec3<i32>(arg_0.a.d.x, u_input.a.x, u_input.a.x), ~arg_0.a.d)), vec2<u32>(14181u, 50480u));
    return var_0.b.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = select(select(select(func_4(Struct_3(Struct_2(arg_2.b.a, 1u, 1000f), Struct_2(arg_0.a.a, arg_2.e.x, 1000f), arg_0.b.a, arg_1.x, arg_2.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(538f, arg_2.b.a.a.x, 520f, -968f) - vec4<f32>(arg_2.b.c, arg_0.c.a.x, -108f, arg_2.b.a.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, arg_0.c.d.x, 36800i)), Struct_1(vec2<f32>(202f, arg_0.a.c), arg_2.c.b, -523f, vec3<i32>(0i, 2147483647i, arg_0.c.d.x), vec2<bool>(arg_1.x, true))).a.e, func_2().a.e, arg_0.b.a.e), !func_1(func_2()).e, vec2<bool>(arg_0.a.a.e.x == false, any(!arg_1.yz))), arg_1.xz, vec2<bool>(true, true));
    global0 = array<bool, 26>();
    var var_1 = arg_0.b.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2429f)))) * -787f), -325f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(func_1(Struct_2(Struct_1(vec2<f32>(1088f, -1283f), 0u, 361f, vec3<i32>(u_input.a.x, -35285i, 2147483647i), vec2<bool>(false, false)), 15422u, -2077f)), abs(17542u), _wgslsmith_f_op_f32(step(900f, -830f))), Struct_2(func_1(Struct_2(Struct_1(vec2<f32>(1695f, -530f), 73191u, -713f, u_input.a, vec2<bool>(global0[_wgslsmith_index_u32(16619u, 26u)], false)), 4500u, 1000f)), 0u, _wgslsmith_f_op_f32(abs(1089f))), func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1043f, -730f), 19109u, -376f, u_input.a, vec2<bool>(false, true)), 11447u, -2381f), Struct_2(Struct_1(vec2<f32>(486f, -576f), 51177u, 1000f, vec3<i32>(-32203i, -1i, u_input.a.x), vec2<bool>(true, true)), 0u, 1563f), Struct_1(vec2<f32>(364f, 1427f), 24080u, -1340f, vec3<i32>(u_input.a.x, u_input.a.x, 4381i), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(0u, 26u)], vec2<u32>(1u, 9576u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1381f, 131f, -1032f, 1338f), vec4<f32>(-1455f, -306f, -1596f, -2637f), global0[_wgslsmith_index_u32(5555u, 26u)])), -u_input.a.x, Struct_1(vec2<f32>(265f, -237f), 25579u, 111f, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec2<bool>(true, true))).a, global0[_wgslsmith_index_u32(43651u, 26u)], min(_wgslsmith_sub_vec2_u32(vec2<u32>(26306u, 4294967295u), vec2<u32>(1u, 13725u)), vec2<u32>(0u, 1u))), select(vec4<bool>(u_input.a.x > u_input.a.x, true, any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(29554u, 26u)])), global0[_wgslsmith_index_u32(select(0u, 3815u, global0[_wgslsmith_index_u32(4294967295u, 26u)]), 26u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(75511u, 26u)], false, global0[_wgslsmith_index_u32(79755u, 26u)], false)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(436f, -892f), 23028u, 692f, vec3<i32>(2147483647i, 0i, u_input.a.x), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(12652u, 26u)])), countOneBits(8856u), _wgslsmith_f_op_f32(f32(-1f) * -1374f)), func_2(), Struct_1(vec2<f32>(444f, -389f), _wgslsmith_dot_vec4_u32(vec4<u32>(53810u, 2314u, 36988u, 24970u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), -500f, vec3<i32>(u_input.a.x, 17335i, 1351i), vec2<bool>(global0[_wgslsmith_index_u32(38225u, 26u)], false)), !all(vec3<bool>(global0[_wgslsmith_index_u32(108346u, 26u)], true, true)), ~(~vec2<u32>(1u, 4294967295u))))), -1000f);
    var var_2 = !any(!vec4<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 26u)], !global0[_wgslsmith_index_u32(38029u, 26u)], !global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(46826u, 22825u)), ~firstLeadingBit(1072u), ~1u), vec3<i32>(-35145i, max(_wgslsmith_mod_i32(firstLeadingBit(4360i), 1i), 14276i | -u_input.a.x), 29156i), _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), firstLeadingBit(u_input.a.x >> (1u % 32u)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), ~u_input.a)), -550f);
}

