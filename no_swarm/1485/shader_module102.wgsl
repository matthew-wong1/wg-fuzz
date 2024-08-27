struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 0i), -333f, -12538i, 0i, 1000f);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(7646i, 0i), -1499f, i32(-2147483648), 1i, -165f), Struct_1(vec2<i32>(-20287i, 9555i), 658f, i32(-2147483648), -6481i, -1000f), Struct_1(vec2<i32>(-3646i, 0i), 336f, 3175i, -31672i, 504f), Struct_1(vec2<i32>(-35453i, -1i), 2001f, 22034i, -28092i, -1739f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -511f, -3892i, 2147483647i, -195f), Struct_1(vec2<i32>(20787i, 2993i), 1000f, 1i, 74975i, -1648f), Struct_1(vec2<i32>(11654i, -1i), 642f, -1i, 40160i, 331f), Struct_1(vec2<i32>(-1i, -24171i), -356f, -21233i, 2147483647i, 469f), Struct_1(vec2<i32>(1i, 29294i), -102f, -1i, 50795i, -1820f), Struct_1(vec2<i32>(-1i, -25895i), 1381f, i32(-2147483648), 0i, 763f), Struct_1(vec2<i32>(2147483647i, -11373i), -380f, 26091i, 2147483647i, -1022f), Struct_1(vec2<i32>(0i, 2147483647i), -181f, 1i, i32(-2147483648), 1542f), Struct_1(vec2<i32>(-19512i, -57157i), 587f, 84800i, 0i, 1419f), Struct_1(vec2<i32>(-14332i, -3586i), -114f, -29688i, -60171i, 1747f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -2864f, -1i, i32(-2147483648), -751f), Struct_1(vec2<i32>(36046i, 1i), 413f, -1630i, -1i, 1064f), Struct_1(vec2<i32>(i32(-2147483648), 10072i), 992f, 0i, 31533i, -378f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 444f, -64536i, -6880i, 309f), Struct_1(vec2<i32>(9218i, 0i), -155f, -44266i, -8183i, -276f), Struct_1(vec2<i32>(i32(-2147483648), 32025i), 2795f, 1i, 9886i, -417f), Struct_1(vec2<i32>(17540i, -52160i), -175f, -16610i, -35055i, -599f), Struct_1(vec2<i32>(0i, i32(-2147483648)), 145f, 60265i, -53179i, -437f), Struct_1(vec2<i32>(-1i, 1i), 1065f, 44081i, 2147483647i, 239f), Struct_1(vec2<i32>(18212i, 1i), 1554f, i32(-2147483648), -11798i, -138f), Struct_1(vec2<i32>(2147483647i, 1971i), 1000f, 44731i, 24265i, -101f), Struct_1(vec2<i32>(1i, -1i), -236f, 38544i, 0i, 185f));

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    global2 = array<vec2<bool>, 1>();
    var var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, ~min(u_input.a.x, 111493u)), 0u), u_input.a.x, _wgslsmith_div_u32(select(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), countOneBits(43440u), true) & 1u, ~_wgslsmith_add_u32(54527u, _wgslsmith_mult_u32(u_input.a.x, 0u))));
    let var_1 = reverseBits(vec3<i32>(~firstTrailingBit(firstTrailingBit(arg_1.c)), select(1i, ~(-global0.a.x), true), i32(-1i) * -30106i));
    var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, _wgslsmith_clamp_u32(abs(71258u), 76898u, var_0.x >> (4294967295u % 32u)), 34798u >> (~var_0.x % 32u)), vec3<u32>(4294967295u, ~(~u_input.a.x), u_input.a.x)), _wgslsmith_add_vec3_u32(select(~(u_input.a >> (u_input.a % vec3<u32>(32u))), ~u_input.a, true), vec3<u32>(reverseBits(~u_input.a.x), 4294967295u, _wgslsmith_add_u32(1u, 57559u))));
    let var_2 = select(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a.x, 60770u, 0u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.x, 4294967295u, 1u), vec4<u32>(7003u, u_input.a.x, 0u, 35278u))), abs(vec4<u32>(var_0.x, 1u, 1u, var_0.x) & vec4<u32>(116111u, 1u, 11835u, var_0.x)), ~vec4<u32>(19895u, u_input.a.x, var_0.x, 4294967295u)), vec4<u32>(abs(_wgslsmith_sub_u32(var_0.x, var_0.x)), ~(~var_0.x), ~(~8646u), ~4294967295u), vec4<bool>(true, true, true, true)) >> (~reverseBits((vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_0.x) ^ vec4<u32>(4294967295u, 4294967295u, 38125u, 0u)) | vec4<u32>(var_0.x, var_0.x, u_input.a.x, 18084u)) % vec4<u32>(32u));
    return ~_wgslsmith_clamp_i32(min(0i, -_wgslsmith_sub_i32(arg_1.d, arg_1.c)), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(global0.a.x, arg_1.a.x), _wgslsmith_sub_i32(global0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(73405i, -1i, -2147483647i, -33723i), vec4<i32>(1i, -35138i, u_input.b, global0.a.x)))), ~firstTrailingBit(~1i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(-vec2<i32>(~(i32(-1i) * -1i), -21519i), -251f, ~func_3(-1000f, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -938f) - _wgslsmith_div_f32(-1151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(1u), 26u)];
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) - -196f);
    let var_4 = 4294967295u;
    return var_0.e;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(vec2<i32>(arg_0.d, global0.d & -1i), -1167f, max(47839i, -(~u_input.b)), 7608i, global0.b);
    var var_1 = Struct_1(abs(arg_0.a & max(firstLeadingBit(arg_0.a), reverseBits(vec2<i32>(1i, -1i)))), 326f, u_input.b, 8982i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(func_2(arg_0.a, arg_0))))) * arg_0.e));
    let var_2 = -542f;
    global0 = global1[_wgslsmith_index_u32(~(0u | (_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zy) << (u_input.a.x % 32u))), 26u)];
    var var_3 = vec2<bool>(true, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), 57686u == u_input.a.x)));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 26>();
    var var_0 = vec3<i32>(abs(-2147483647i), -9690i, _wgslsmith_clamp_i32(countOneBits(-75159i), global0.c, -13185i) | 0i);
    let var_1 = _wgslsmith_f_op_f32(round(-820f));
    let var_2 = u_input.a.zy;
    var_0 = abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, global0.a.x & 0i), firstLeadingBit(vec3<i32>(u_input.b, var_0.x, var_0.x)) >> ((vec3<u32>(var_2.x, u_input.a.x, var_2.x) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(~(-10648i) & u_input.b, max(_wgslsmith_add_i32(var_0.x, -2147483647i), -u_input.b), func_1(Struct_1(global0.a, 2020f, u_input.b, var_0.x, var_1))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), false))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(min(global0.e, -691f)))));
    global2 = array<vec2<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy);
}

