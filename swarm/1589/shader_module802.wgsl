struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
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

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-292f, vec3<bool>(false, true, true)), Struct_1(1426f, vec3<bool>(true, false, false)), Struct_1(171f, vec3<bool>(false, false, false)), Struct_1(330f, vec3<bool>(false, false, true)), Struct_1(-1000f, vec3<bool>(true, false, true)), Struct_1(-409f, vec3<bool>(false, true, true)), Struct_1(1166f, vec3<bool>(true, true, false)), Struct_1(1301f, vec3<bool>(false, true, false)), Struct_1(1528f, vec3<bool>(true, false, false)), Struct_1(-1217f, vec3<bool>(true, false, true)), Struct_1(1923f, vec3<bool>(true, true, false)), Struct_1(-240f, vec3<bool>(false, true, true)));

var<private> global1: array<u32, 18>;

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(-6772i, 2147483647i, 0i, 31293i), Struct_1(1214f, vec3<bool>(true, false, true)), 1u), Struct_2(vec4<i32>(-1149i, -47829i, 1i, -43416i), Struct_1(-741f, vec3<bool>(false, false, false)), 4294967295u), Struct_2(vec4<i32>(2147483647i, -5915i, 2147483647i, 18412i), Struct_1(1103f, vec3<bool>(false, false, false)), 0u), Struct_2(vec4<i32>(-17134i, 1316i, -51229i, 44451i), Struct_1(1121f, vec3<bool>(true, false, true)), 0u), Struct_2(vec4<i32>(-1i, -1i, 48555i, 30956i), Struct_1(887f, vec3<bool>(false, true, false)), 3127u), Struct_2(vec4<i32>(0i, 1977i, -1616i, 1i), Struct_1(-491f, vec3<bool>(false, false, false)), 21861u), Struct_2(vec4<i32>(1610i, 27011i, 2147483647i, -1i), Struct_1(267f, vec3<bool>(false, true, true)), 99588u), Struct_2(vec4<i32>(17705i, 2147483647i, i32(-2147483648), 8301i), Struct_1(395f, vec3<bool>(false, false, true)), 62900u), Struct_2(vec4<i32>(i32(-2147483648), -12669i, 101988i, -1i), Struct_1(376f, vec3<bool>(true, false, false)), 49762u), Struct_2(vec4<i32>(0i, 5582i, -75406i, -9624i), Struct_1(-221f, vec3<bool>(true, false, true)), 14758u), Struct_2(vec4<i32>(i32(-2147483648), 0i, -1i, -11575i), Struct_1(-879f, vec3<bool>(true, true, false)), 0u), Struct_2(vec4<i32>(-22474i, i32(-2147483648), -1i, 0i), Struct_1(-875f, vec3<bool>(false, false, true)), 63485u), Struct_2(vec4<i32>(-13243i, -1i, i32(-2147483648), 22278i), Struct_1(-1820f, vec3<bool>(false, false, true)), 4294967295u), Struct_2(vec4<i32>(9082i, 1i, i32(-2147483648), 31398i), Struct_1(-1000f, vec3<bool>(true, true, false)), 30112u), Struct_2(vec4<i32>(40496i, 34126i, -22206i, i32(-2147483648)), Struct_1(221f, vec3<bool>(true, false, true)), 0u), Struct_2(vec4<i32>(i32(-2147483648), -26190i, 6451i, -17910i), Struct_1(996f, vec3<bool>(false, false, false)), 17048u), Struct_2(vec4<i32>(41508i, -1i, i32(-2147483648), i32(-2147483648)), Struct_1(672f, vec3<bool>(true, true, true)), 4294967295u), Struct_2(vec4<i32>(18680i, 2147483647i, 2147483647i, 1048i), Struct_1(535f, vec3<bool>(true, true, false)), 4294967295u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), vec3<bool>(!(true || (arg_3.x > 201f)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, -42092i, u_input.b.x, u_input.b.x), vec4<i32>(-1i, u_input.d, -1i, 1i), false), _wgslsmith_mod_vec4_i32(vec4<i32>(25848i, u_input.b.x, 1i, 18883i), vec4<i32>(u_input.b.x, u_input.d, 32285i, 4116i))) != u_input.d, true));
    var var_1 = Struct_1(arg_3.x, vec3<bool>(true, var_0.b.x, false));
    global1 = array<u32, 18>();
    let var_2 = Struct_1(var_0.a, vec3<bool>(any(arg_1.b.xx), !arg_1.b.x, !(u_input.c >= u_input.c) & select(true, true, !arg_1.b.x)));
    let var_3 = ~u_input.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1504f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(select(arg_3.xx, arg_3.yy, vec2<bool>(var_2.b.x, false))), all(!vec2<bool>(arg_1.b.x, true)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-arg_0.a), arg_0, select(~vec3<u32>(arg_1, arg_1, u_input.a), vec3<u32>(arg_1, arg_1, global1[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, 475f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 273f, 740f) + vec3<f32>(-431f, -383f, arg_0.a)))))));
    let var_1 = arg_0.b.zx;
    var var_2 = arg_0.b;
    let var_3 = vec4<bool>(~(~3299u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 18u)], arg_1) >> (~vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), vec2<u32>(1u, abs(u_input.c))), arg_0.b.x, any(vec3<bool>(false, var_2.x, all(select(arg_0.b, arg_0.b, false)))), !(select(true, var_1.x, !var_2.x) && var_1.x));
    var var_4 = vec2<f32>(-1224f, _wgslsmith_f_op_f32(min(1765f, arg_0.a)));
    return global0[_wgslsmith_index_u32(~(~u_input.c), 12u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = ~vec3<u32>(1u, ~u_input.c, countOneBits(u_input.a));
    var var_1 = func_2(Struct_1(1841f, arg_1.b), _wgslsmith_div_u32(~firstTrailingBit(1u), 50031u));
    let var_2 = _wgslsmith_sub_u32(max(var_0.x, ~1u), _wgslsmith_mod_u32(min(firstLeadingBit(4294967295u), ~85572u), _wgslsmith_dot_vec4_u32(~vec4<u32>(20598u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 18u)], 18u)], 18u)], 18u)], 33511u, 0u), ~vec4<u32>(var_0.x, 70925u, 35696u, u_input.c)))) << ((18339u & min(_wgslsmith_clamp_u32(reverseBits(46544u), ~1u, select(0u, var_0.x, true)), _wgslsmith_sub_u32(abs(u_input.a), u_input.a))) % 32u);
    var var_3 = !var_1.b.yy;
    let var_4 = arg_1.b.xz;
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~select(~u_input.c, u_input.c << (var_0.x % 32u), all(vec4<bool>(false, arg_3, true, var_3.x)))), abs(var_0.x)), 18u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = !all(select(func_2(Struct_1(245f, vec3<bool>(true, arg_1.b.b.x, true)), global1[_wgslsmith_index_u32(4294967295u, 18u)]).b.yy, !vec2<bool>(arg_1.b.b.x, true), _wgslsmith_f_op_f32(804f * arg_1.b.a) >= _wgslsmith_f_op_f32(abs(arg_1.b.a))));
    var var_1 = ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(~(-8838i), 17589i, u_input.d & u_input.d, -arg_1.a.x), ~(vec4<i32>(1i, u_input.b.x, -2147483647i, 1i) >> (~vec4<u32>(arg_0.x, 55181u, arg_0.x, arg_1.c) % vec4<u32>(32u))), abs(vec4<i32>(u_input.b.x, u_input.d, -u_input.d, abs(37323i))));
    return Struct_1(arg_1.b.a, vec3<bool>(!(true & all(vec2<bool>(arg_1.b.b.x, var_0))), var_0, arg_1.b.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    return reverseBits(abs(global1[_wgslsmith_index_u32(reverseBits(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 19902u), vec3<u32>(27395u, global1[_wgslsmith_index_u32(u_input.c, 18u)], 39546u)), 18u)]), 18u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_u32(firstLeadingBit(func_5(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(23477u, 18u)], 30696u, 1u), vec3<u32>(1u, u_input.c, 1u), vec3<u32>(26690u, 1u, 64988u)), func_1(vec3<bool>(true, true, false), Struct_1(-742f, vec3<bool>(true, false, true)), true, true)), select(u_input.b & u_input.b, -vec3<i32>(18122i, u_input.b.x, -25540i), true))), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, min(func_5(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80678u, 18u)], 12u)], u_input.b), select(u_input.c, 1u, false))), u_input.c));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global1 = array<u32, 18>();
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 18u)];
    global3 = array<Struct_2, 18>();
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mod_u32(66671u | global1[_wgslsmith_index_u32(func_5(global0[_wgslsmith_index_u32(1u, 12u)], vec3<i32>(u_input.b.x, u_input.d, var_0.a.x)), 18u)], u_input.a)), 12u)];
    let var_2 = vec4<bool>(all(!var_1.b.xz), !(!var_1.b.x), all(vec3<bool>(!(u_input.d != u_input.b.x), func_4(select(vec3<u32>(u_input.c, 10431u, 0u), vec3<u32>(70986u, var_0.c, u_input.a), true), Struct_2(var_0.a, global0[_wgslsmith_index_u32(1u, 12u)], 0u)).b.x, true)), true);
    let var_3 = func_4(~countOneBits(vec3<u32>(var_0.c, 4294967295u, 7195u)) >> (vec3<u32>(10310u, _wgslsmith_add_u32(var_0.c, countOneBits(6943u)), max(var_0.c, _wgslsmith_add_u32(19045u, global1[_wgslsmith_index_u32(u_input.a, 18u)]))) % vec3<u32>(32u)), func_1(func_4(~min(vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 18u)], var_0.c), vec3<u32>(41529u, var_0.c, global1[_wgslsmith_index_u32(1u, 18u)])), func_1(var_0.b.b, Struct_1(748f, var_0.b.b), false, var_1.b.x)).b, func_2(func_2(func_1(vec3<bool>(var_1.b.x, var_1.b.x, var_2.x), var_0.b, var_2.x, var_0.b.b.x).b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 11229u, 2940u), vec4<u32>(u_input.c, 22566u, 17982u, 4294967295u))), var_0.c), u_input.a <= u_input.a, !select(true, true, var_0.b.b.x))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

