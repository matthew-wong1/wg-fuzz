struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, true, false, false, true, true, true, false, true, true, false, true, false, false, false);

var<private> global1: vec4<f32> = vec4<f32>(104f, -378f, 510f, 935f);

var<private> global2: array<Struct_2, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = arg_1.d;
    var var_1 = vec2<bool>(global0[_wgslsmith_index_u32(44351u, 17u)], arg_2.a.c.x);
    global2 = array<Struct_2, 2>();
    var var_2 = _wgslsmith_f_op_f32(193f * global1.x);
    var_1 = !arg_2.a.c.xy;
    return !(!arg_1.c);
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = global1.yy;
    global2 = array<Struct_2, 2>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-199f))), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1201f + var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(274f * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -2468f), true)), -334f, var_1.x), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false, global0[_wgslsmith_index_u32(109077u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(21832u, 17u)], global0[_wgslsmith_index_u32(var_0, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(5219u, 17u)], true, false, global0[_wgslsmith_index_u32(72807u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(42610u, 17u)], true, global0[_wgslsmith_index_u32(var_0, 17u)])), true))), vec3<f32>(598f, _wgslsmith_f_op_f32(step(129f, 1925f)), 1673f), vec4<bool>(any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], true, global0[_wgslsmith_index_u32(1u, 17u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(var_0, 17u)], global0[_wgslsmith_index_u32(19870u, 17u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), select(vec4<bool>(false, false, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), global0[_wgslsmith_index_u32(40013u, 17u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(var_0, 17u)], global0[_wgslsmith_index_u32(var_0, 17u)])))), any(!func_3(vec2<u32>(var_0, 4294967295u), Struct_1(vec4<f32>(var_1.x, -1588f, -216f, 788f), vec3<f32>(var_1.x, global1.x, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 17u)], global0[_wgslsmith_index_u32(61154u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), 791f, 1u), Struct_3(Struct_1(vec4<f32>(var_1.x, var_1.x, -1034f, global1.x), vec3<f32>(var_1.x, -2065f, var_1.x), vec4<bool>(true, true, false, true), 1311f, u_input.a.x)))), (global0[_wgslsmith_index_u32(1u, 17u)] || false) & true, !(global0[_wgslsmith_index_u32(~0u, 17u)] && global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 17u)])), -1135f, ~1u);
    var var_3 = Struct_3(var_2);
    return global2[_wgslsmith_index_u32(1u, 2u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(-reverseBits(select(~vec4<i32>(-1514i, u_input.d, u_input.e.x, 51026i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.d) | vec4<i32>(u_input.b, 2147483647i, 34919i, 0i), true)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, u_input.d, u_input.d) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, -12012i, -69050i), vec4<i32>(u_input.d, u_input.b, u_input.e.x, u_input.d)), vec4<i32>(-1i, u_input.d, 48710i, -8936i) >> (abs(u_input.c) % vec4<u32>(32u)), min(vec4<i32>(u_input.b, u_input.d, 1i, u_input.b), ~vec4<i32>(u_input.e.x, -8147i, -1i, -1i))), -min(-vec4<i32>(u_input.b, u_input.b, -51896i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.b, 42089i, -2147483647i)), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u ^ arg_3.b.x, 17u)], u_input.a.x == 4294967295u), arg_1.c, arg_1.c)));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1.a.x, 1818f, -1255f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, arg_0.x, -756f), arg_0)))));
    global0 = array<bool, 17>();
    let var_1 = -1153f;
    global2 = array<Struct_2, 2>();
    return Struct_1(vec4<f32>(var_1, global1.x, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * 1072f))), arg_0.x), arg_0.wwx, !(!select(!arg_1.c, arg_1.c, false | global0[_wgslsmith_index_u32(arg_1.e, 17u)])), -2509f, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x << (arg_3.b.x % 32u), arg_3.b.x, 23545u, abs(1u))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.c, u_input.c), vec4<u32>(~4294967295u, arg_1.e, arg_3.b.x, arg_3.b.x >> (u_input.a.x % 32u)), ~(~u_input.c))));
}

fn func_1() -> vec2<i32> {
    let var_0 = u_input.c.xxy;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), 813f, global1.x, _wgslsmith_f_op_f32(sign(global1.x)))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(707f, -133f, global1.x, global1.x))) - vec4<f32>(-322f, _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(round(global1.x)))), global1.xwy, vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(26993u, 17u)], false, global0[_wgslsmith_index_u32(68106u, 17u)])) & all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(65128u, 17u)], global0[_wgslsmith_index_u32(60u, 17u)])), global1.x >= _wgslsmith_f_op_f32(global1.x + 1039f), true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), 40407u), any(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 17u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(46114u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), !select(vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), global0[_wgslsmith_index_u32(var_0.x, 17u)]))), func_2());
    let var_2 = var_1;
    return firstLeadingBit(u_input.e) & (-vec2<i32>(-32072i, u_input.e.x) ^ vec2<i32>(_wgslsmith_clamp_i32(u_input.b >> (var_1.e % 32u), _wgslsmith_add_i32(-1i, 0i), u_input.b), abs(abs(u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(func_1());
    var_0 = reverseBits(countOneBits(reverseBits(select(u_input.e, u_input.e, global0[_wgslsmith_index_u32(4294967295u, 17u)]))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -580f), global1.x), func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(551f, global1.x, global1.x, global1.x))), Struct_1(vec4<f32>(global1.x, global1.x, -1000f, 371f), vec3<f32>(global1.x, 747f, 572f), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true, false), 838f, 0u), global1.x != global1.x, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(44103u, 17u)], true, global0[_wgslsmith_index_u32(69122u, 17u)]), u_input.c.yxx)), any(!vec4<bool>(global0[_wgslsmith_index_u32(41541u, 17u)], false, global0[_wgslsmith_index_u32(38407u, 17u)], false)), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(53811u, 17u)]), ~vec3<u32>(4294967295u, 0u, u_input.a.x))).a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2032f, global1.x, -167f, global1.x))) + vec4<f32>(func_4(vec4<f32>(815f, global1.x, global1.x, global1.x), Struct_1(vec4<f32>(1685f, 670f, global1.x, -171f), global1.yzw, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false, true), global1.x, 1u), global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)]).b.x, -2776f, _wgslsmith_f_op_f32(global1.x + -1000f), -620f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-745f + _wgslsmith_f_op_f32(trunc(global1.x))), global1.x, global1.x))), !select(select(func_4(vec4<f32>(1000f, -1078f, global1.x, global1.x), Struct_1(vec4<f32>(-939f, global1.x, 1232f, global1.x), global1.xwz, vec4<bool>(global0[_wgslsmith_index_u32(34426u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true), global1.x, 37834u), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)]).c, vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false), -27940i > u_input.d), select(select(vec4<bool>(global0[_wgslsmith_index_u32(50437u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false, global0[_wgslsmith_index_u32(18645u, 17u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(63871u, 17u)], false, true)), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], false, global0[_wgslsmith_index_u32(40729u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), vec4<bool>(true, true, global1.x == 922f, false)), func_4(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global1.x)), _wgslsmith_f_op_f32(-func_4(vec4<f32>(global1.x, global1.x, 280f, global1.x), Struct_1(vec4<f32>(global1.x, -127f, global1.x, global1.x), vec3<f32>(2214f, 998f, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(134109u, 17u)], true), global1.x, u_input.a.x), false, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]).b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(430f * 1000f)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, global1.x, 493f, global1.x) + vec4<f32>(-374f, global1.x, -820f, global1.x))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-289f, global1.x, -1649f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, 1465f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1210f, global1.x, 930f) - global1.xwx), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(1u, 17u)]), global1.x, u_input.a.x), firstLeadingBit(u_input.c.x) == countOneBits(u_input.c.x), func_2()), any(vec2<bool>(false, true)), func_2()).a.x, _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 793f, 294f, 1018f))), func_4(vec4<f32>(1301f, global1.x, 2003f, global1.x), Struct_1(vec4<f32>(global1.x, global1.x, global1.x, global1.x), global1.yxy, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], false, false), global1.x, 79892u), global0[_wgslsmith_index_u32(0u, 17u)], Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], true, false), u_input.a)), func_3(u_input.a.zx, Struct_1(vec4<f32>(global1.x, global1.x, global1.x, 809f), vec3<f32>(-781f, global1.x, -744f), vec4<bool>(true, true, false, false), -286f, 4294967295u), Struct_3(Struct_1(vec4<f32>(118f, global1.x, global1.x, global1.x), vec3<f32>(-132f, global1.x, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), global1.x, 4294967295u))).x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]).e, abs(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x))) << (u_input.a.x % 32u));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-151f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, global1.x, 1620f, var_1.d), var_1.a), func_4(vec4<f32>(-1691f, var_1.d, 733f, var_1.b.x), Struct_1(vec4<f32>(217f, var_1.d, 164f, 681f), var_1.a.wyw, vec4<bool>(true, false, true, var_1.c.x), var_1.a.x, 64112u), global0[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(var_1.e, 2u)]), true, func_2()).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f - _wgslsmith_f_op_f32(197f + 1293f)))), var_1.b, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global1.x)))), var_1.e);
    var var_3 = ~(~u_input.c.x);
    let var_4 = firstTrailingBit(1i ^ u_input.b);
    global2 = array<Struct_2, 2>();
    var var_5 = vec4<bool>((_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e, 44790u, var_2.e), vec3<u32>(0u, 4294967295u, 4294967295u)) >> (max(_wgslsmith_dot_vec2_u32(vec2<u32>(18666u, var_1.e), u_input.a.xy), func_2().b.x) % 32u)) == reverseBits(var_2.e & ~44637u), !global0[_wgslsmith_index_u32(4294967295u, 17u)], !(!all(!var_2.c)), func_4(var_2.a, var_1, var_2.c.x, Struct_2(var_2.c.wyw, u_input.a)).c.x);
    let var_6 = Struct_3(Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(var_2.b + global1.wyz), select(select(!var_2.c, func_4(var_2.a, var_1, var_2.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]).c, var_1.c.x), func_3(vec2<u32>(10235u, u_input.a.x), var_1, Struct_3(var_1)), select(func_4(var_2.a, var_1, true, Struct_2(var_2.c.zzw, vec3<u32>(u_input.c.x, var_2.e, 0u))).c, var_2.c, global0[_wgslsmith_index_u32(var_1.e, 17u)])), -136f, ~var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(8723i, var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-26270i, var_4, var_4, 1i) << ((vec4<u32>(58626u, var_1.e, 1u, u_input.a.x) & vec4<u32>(var_6.a.e, 6758u, 1u, 43063u)) % vec4<u32>(32u)), vec4<i32>(-u_input.b, var_4, ~var_4, -2147483647i)), u_input.b), vec2<u32>(0u, min(4294967295u, abs(1u))), ~(reverseBits(i32(-1i) * -1i) | ~_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(2147483647i, var_4))), ~u_input.c.x);
}

