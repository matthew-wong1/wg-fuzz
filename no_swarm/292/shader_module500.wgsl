struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(76401u, false, vec3<bool>(false, false, false), 6623u), vec3<u32>(55546u, 1206u, 4294967295u), Struct_1(0u, true, vec3<bool>(true, true, true), 60954u), Struct_1(4294967295u, true, vec3<bool>(true, true, false), 14081u)), Struct_2(Struct_1(14246u, false, vec3<bool>(false, true, false), 6599u), vec3<u32>(101742u, 0u, 0u), Struct_1(0u, true, vec3<bool>(true, true, false), 90370u), Struct_1(4294967295u, false, vec3<bool>(false, true, true), 4294967295u)), Struct_2(Struct_1(4294967295u, true, vec3<bool>(false, false, true), 0u), vec3<u32>(0u, 4294967295u, 0u), Struct_1(92557u, false, vec3<bool>(true, false, false), 31975u), Struct_1(119164u, true, vec3<bool>(true, false, false), 61998u)), Struct_2(Struct_1(41711u, false, vec3<bool>(false, false, false), 12706u), vec3<u32>(59109u, 5492u, 1u), Struct_1(1u, true, vec3<bool>(false, true, true), 53192u), Struct_1(843u, false, vec3<bool>(false, true, false), 0u)), Struct_2(Struct_1(0u, false, vec3<bool>(false, false, true), 35157u), vec3<u32>(1u, 0u, 34075u), Struct_1(1u, false, vec3<bool>(false, true, false), 45727u), Struct_1(1u, true, vec3<bool>(true, true, true), 57853u)), Struct_2(Struct_1(4294967295u, true, vec3<bool>(false, true, true), 1u), vec3<u32>(1u, 4294967295u, 3248u), Struct_1(30700u, true, vec3<bool>(false, false, true), 22814u), Struct_1(57171u, true, vec3<bool>(false, true, false), 0u)), Struct_2(Struct_1(5004u, true, vec3<bool>(false, false, false), 0u), vec3<u32>(5446u, 0u, 0u), Struct_1(28441u, true, vec3<bool>(false, true, true), 7417u), Struct_1(67081u, false, vec3<bool>(true, true, true), 0u)), Struct_2(Struct_1(1u, false, vec3<bool>(true, false, true), 46348u), vec3<u32>(4294967295u, 35827u, 4294967295u), Struct_1(1u, true, vec3<bool>(false, false, true), 4294967295u), Struct_1(1888u, false, vec3<bool>(true, false, true), 0u)), Struct_2(Struct_1(0u, false, vec3<bool>(true, true, true), 56550u), vec3<u32>(0u, 4294967295u, 0u), Struct_1(33826u, false, vec3<bool>(true, false, true), 10973u), Struct_1(4294967295u, true, vec3<bool>(false, false, true), 4294967295u)), Struct_2(Struct_1(0u, false, vec3<bool>(true, true, true), 18079u), vec3<u32>(1u, 0u, 4294967295u), Struct_1(0u, false, vec3<bool>(true, false, true), 4294967295u), Struct_1(0u, false, vec3<bool>(true, true, false), 0u)), Struct_2(Struct_1(0u, false, vec3<bool>(true, false, true), 4537u), vec3<u32>(84302u, 50174u, 4294967295u), Struct_1(33809u, false, vec3<bool>(true, false, false), 42531u), Struct_1(30691u, false, vec3<bool>(false, false, true), 1u)), Struct_2(Struct_1(32012u, true, vec3<bool>(false, false, true), 1u), vec3<u32>(0u, 30390u, 13531u), Struct_1(0u, false, vec3<bool>(true, false, false), 44671u), Struct_1(1u, true, vec3<bool>(false, false, true), 4294967295u)), Struct_2(Struct_1(0u, false, vec3<bool>(true, true, false), 1u), vec3<u32>(0u, 18945u, 0u), Struct_1(11448u, false, vec3<bool>(false, true, false), 0u), Struct_1(1u, true, vec3<bool>(false, true, true), 4294967295u)), Struct_2(Struct_1(4294967295u, false, vec3<bool>(false, false, true), 0u), vec3<u32>(12113u, 23466u, 37857u), Struct_1(50524u, false, vec3<bool>(false, false, true), 0u), Struct_1(15711u, true, vec3<bool>(false, true, false), 4294967295u)), Struct_2(Struct_1(14915u, false, vec3<bool>(false, false, true), 4881u), vec3<u32>(1u, 0u, 1u), Struct_1(1u, true, vec3<bool>(true, false, false), 9003u), Struct_1(4294967295u, false, vec3<bool>(false, false, true), 12841u)), Struct_2(Struct_1(4294967295u, true, vec3<bool>(false, false, false), 27293u), vec3<u32>(1u, 0u, 28419u), Struct_1(4294967295u, true, vec3<bool>(false, false, false), 90510u), Struct_1(0u, true, vec3<bool>(true, true, false), 1u)), Struct_2(Struct_1(4294967295u, true, vec3<bool>(false, false, true), 1u), vec3<u32>(48152u, 50648u, 27727u), Struct_1(0u, true, vec3<bool>(true, false, true), 4294967295u), Struct_1(0u, true, vec3<bool>(true, false, true), 51138u)), Struct_2(Struct_1(0u, false, vec3<bool>(false, true, false), 4294967295u), vec3<u32>(4294967295u, 67834u, 0u), Struct_1(1u, false, vec3<bool>(true, true, true), 4294967295u), Struct_1(0u, true, vec3<bool>(false, true, true), 1u)), Struct_2(Struct_1(22583u, false, vec3<bool>(false, false, false), 32993u), vec3<u32>(4294967295u, 37056u, 9649u), Struct_1(1u, false, vec3<bool>(true, true, true), 110339u), Struct_1(4294967295u, false, vec3<bool>(true, true, true), 90595u)), Struct_2(Struct_1(0u, false, vec3<bool>(true, true, false), 9080u), vec3<u32>(79636u, 35140u, 13529u), Struct_1(0u, false, vec3<bool>(true, false, true), 1u), Struct_1(0u, true, vec3<bool>(false, false, true), 71719u)), Struct_2(Struct_1(12298u, false, vec3<bool>(true, false, true), 0u), vec3<u32>(55242u, 16158u, 1u), Struct_1(30987u, true, vec3<bool>(true, true, false), 25689u), Struct_1(35716u, true, vec3<bool>(true, false, false), 0u)), Struct_2(Struct_1(27359u, true, vec3<bool>(true, false, true), 0u), vec3<u32>(25630u, 1u, 4294967295u), Struct_1(1u, false, vec3<bool>(true, false, true), 0u), Struct_1(17386u, true, vec3<bool>(true, false, true), 49952u)), Struct_2(Struct_1(4294967295u, true, vec3<bool>(true, false, false), 0u), vec3<u32>(62535u, 0u, 4294967295u), Struct_1(24515u, false, vec3<bool>(true, true, true), 4294967295u), Struct_1(64585u, true, vec3<bool>(true, false, true), 4294967295u)), Struct_2(Struct_1(40318u, true, vec3<bool>(true, true, true), 0u), vec3<u32>(74720u, 4294967295u, 49114u), Struct_1(1u, false, vec3<bool>(false, false, false), 4294967295u), Struct_1(3603u, false, vec3<bool>(true, false, true), 22970u)), Struct_2(Struct_1(4294967295u, false, vec3<bool>(true, false, false), 54118u), vec3<u32>(19176u, 5460u, 27134u), Struct_1(0u, true, vec3<bool>(false, true, false), 36812u), Struct_1(0u, true, vec3<bool>(false, true, false), 1u)), Struct_2(Struct_1(4294967295u, true, vec3<bool>(false, true, false), 30560u), vec3<u32>(73011u, 34950u, 34248u), Struct_1(0u, true, vec3<bool>(true, true, false), 0u), Struct_1(7890u, true, vec3<bool>(true, true, false), 4294967295u)));

var<private> global2: array<Struct_3, 8>;

var<private> global3: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2664f))));
    global2 = array<Struct_3, 8>();
    let var_1 = firstLeadingBit(~vec4<i32>(0i, arg_2.a.x, arg_2.a.x, _wgslsmith_dot_vec2_i32(arg_2.a.yy, vec2<i32>(-2147483647i, arg_2.a.x))) << (vec4<u32>(arg_0, u_input.a, countOneBits(arg_1.d.d), 64129u) % vec4<u32>(32u)));
    let var_2 = global2[_wgslsmith_index_u32(6484u, 8u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-362f, -297f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(660f, 149f), vec2<f32>(-1327f, 806f), vec2<bool>(true, false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(995f, 235f)) - vec2<f32>(-809f, 1432f))));
    return arg_3;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1078f * 1555f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) + _wgslsmith_f_op_f32(select(-875f, 404f, arg_0.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1979f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-491f, -1108f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -969f))), _wgslsmith_f_op_f32(f32(-1f) * -1432f)));
    let var_1 = vec2<bool>(arg_0.a.c.x, arg_0.a.c.x);
    global0 = !(any(vec3<bool>(all(vec2<bool>(true, var_1.x)), true, true)) || var_1.x);
    var var_2 = !(!(!select(arg_0.a.c, select(arg_0.d.c, arg_0.c.c, arg_0.d.b), !arg_0.a.c)));
    global2 = array<Struct_3, 8>();
    return u_input.a ^ (arg_0.d.d & 152u);
}

fn func_2() -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(f32(-1f) * -135f), -1281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-825f, 272f))))));
    global1 = array<Struct_2, 26>();
    let var_1 = select(min(abs(vec2<i32>(1i, 1i)), vec2<i32>(-1i, ~_wgslsmith_add_i32(-1i, 26158i))), select(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-29232i, -30178i, -2147483647i, -13707i), vec4<i32>(0i, -41988i, -1i, -35185i)), _wgslsmith_mult_i32(0i, 21306i) << (func_3(global1[_wgslsmith_index_u32(u_input.a, 26u)]) % 32u)), vec2<i32>(1i, 1i), func_1(_wgslsmith_mult_u32(u_input.a, 4294967295u), Struct_2(Struct_1(46129u, true, vec3<bool>(false, false, true), 4819u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 28721u, 11502u), vec3<u32>(u_input.a, u_input.a, 152304u)), Struct_1(u_input.a, true, vec3<bool>(true, false, true), u_input.a), Struct_1(27059u, true, vec3<bool>(true, true, true), 4294967295u)), Struct_3(vec4<i32>(2147483647i, -2147483647i, -1i, 1i), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 68225u, 1u), vec4<u32>(27990u, u_input.a, u_input.a, u_input.a))), select(func_1(16320u, global1[_wgslsmith_index_u32(98792u, 26u)], Struct_3(vec4<i32>(4702i, 4514i, -1i, -2147483647i), vec4<u32>(1u, 21622u, u_input.a, 10325u)), vec2<bool>(false, false)), vec2<bool>(false, false), all(vec2<bool>(false, false))))), true);
    global2 = array<Struct_3, 8>();
    var var_2 = vec3<bool>(true, any(vec2<bool>(true, all(vec2<bool>(true, true)))), func_1(u_input.a, Struct_2(Struct_1(~81576u, true, vec3<bool>(true, true, true), 1u), vec3<u32>(_wgslsmith_div_u32(92425u, u_input.a), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 25058u, 15616u), vec3<u32>(u_input.a, u_input.a, u_input.a))), Struct_1(u_input.a, true, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), 4294967295u & u_input.a), Struct_1(42472u, func_1(u_input.a, global1[_wgslsmith_index_u32(6549u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], vec2<bool>(false, false)).x, vec3<bool>(false, true, true), 3446u << (0u % 32u))), Struct_3(select(vec4<i32>(-9243i, var_1.x, 9587i, -8312i) & vec4<i32>(var_1.x, 17897i, var_1.x, 7832i), vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), true), ~(vec4<u32>(u_input.a, 4294967295u, 38491u, u_input.a) >> (vec4<u32>(1u, u_input.a, 64300u, 61951u) % vec4<u32>(32u)))), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, 2368u, u_input.a)), global1[_wgslsmith_index_u32(~max(u_input.a, u_input.a), 26u)], global2[_wgslsmith_index_u32(69503u, 8u)], vec2<bool>(true, true))).x);
    return -34481i ^ var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = 1000f;
    let var_1 = true;
    global0 = true;
    var var_2 = -1i;
    var var_3 = 57176i;
    let var_4 = select(!(!func_1(u_input.a | 34756u, global1[_wgslsmith_index_u32(20213u, 26u)], Struct_3(vec4<i32>(1i, -22434i, 0i, -9841i), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), vec2<bool>(true, var_1)))), vec2<bool>(var_1, var_1 && !(!var_1)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-442f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-758f - 401f)))))), _wgslsmith_mult_vec3_u32(~(reverseBits(vec3<u32>(0u, u_input.a, u_input.a)) & select(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a), true)), reverseBits(vec3<u32>(~4294967295u, ~0u, abs(41727u)))), func_2());
}

