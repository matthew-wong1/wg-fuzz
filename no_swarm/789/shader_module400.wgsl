struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(33668u, 20041u, 0u), vec3<u32>(1u, 8816u, 0u), vec3<u32>(61182u, 1u, 8168u), vec3<u32>(25008u, 1u, 1u), vec3<u32>(32580u, 8671u, 0u), vec3<u32>(0u, 73031u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 0u, 22247u), vec3<u32>(22001u, 0u, 28111u), vec3<u32>(28632u, 30883u, 4294967295u), vec3<u32>(1u, 73610u, 10560u), vec3<u32>(1225u, 1u, 46036u), vec3<u32>(61174u, 4294967295u, 6101u), vec3<u32>(49662u, 1u, 20575u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 53091u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    var var_0 = (-abs(vec4<i32>(arg_1.d, 0i, 2147483647i, arg_1.e.x)) | -(~(~vec4<i32>(arg_1.d, arg_1.d, u_input.a.x, 2147483647i)))) >> (arg_1.c.a.a % vec4<u32>(32u));
    let var_1 = select(select(~(~arg_0.a.a), ~(vec4<u32>(arg_1.c.d, arg_1.c.b.a.x, 36478u, arg_0.a.a.x) & ~arg_1.c.a.a), arg_1.b.a.x), select(arg_0.b.a, max(arg_1.c.b.a, vec4<u32>(arg_0.a.a.x, arg_0.e, 0u, 0u)), true) ^ ~(arg_1.c.a.a ^ vec4<u32>(1u, arg_1.c.b.a.x, 48660u, 1u)), vec4<bool>(arg_0.a.b.a.x, all(arg_1.b.a), true & any(vec3<bool>(arg_0.a.b.a.x, arg_1.c.a.b.a.x, arg_0.b.b.a.x)), arg_1.b.a.x));
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    let var_2 = arg_0.b;
    return ~countOneBits(~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(15320u, arg_0.a.a.x, arg_0.e, 104333u)) | 7627u);
}

fn func_2() -> vec2<f32> {
    let var_0 = -24438i;
    var var_1 = true;
    var var_2 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 49252u, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(64889u, 18294u, 1u, 1973u), vec4<u32>(57627u, 1u, 4294967295u, 1u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(16729u, 23281u, 18031u, 4294967295u)))));
    let var_3 = ~_wgslsmith_mod_u32(~(~(~4294967295u)), func_3(Struct_3(Struct_2(vec4<u32>(110646u, 0u, 4294967295u, 4465u), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1710f, -1180f, 477f, -513f))), Struct_2(vec4<u32>(1u, 43464u, 20287u, 1u), Struct_1(vec3<bool>(false, true, true), vec4<f32>(127f, 713f, -569f, -1250f))), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-1000f, 2032f, -1157f, -684f)), ~41531u, 1u), Struct_4(_wgslsmith_f_op_f32(max(-1757f, 683f)), Struct_1(vec3<bool>(true, false, true), vec4<f32>(234f, -513f, -1697f, -431f)), Struct_3(Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 14612u), Struct_1(vec3<bool>(true, true, false), vec4<f32>(450f, 1383f, -154f, 772f))), Struct_2(vec4<u32>(15532u, 1u, 5476u, 4294967295u), Struct_1(vec3<bool>(true, true, true), vec4<f32>(177f, 1055f, -790f, 654f))), Struct_1(vec3<bool>(false, true, false), vec4<f32>(1359f, -161f, -188f, 637f)), 30057u, 4294967295u), 0i ^ u_input.a.x, ~vec2<i32>(1i, var_0))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -470f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-716f, 1185f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(384f, -1762f))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(615f, -551f)), -486f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(619f * 1267f), -236f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(2262f, -1000f), vec2<f32>(578f, 167f)), vec2<f32>(-386f, 1822f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1607f, 574f), vec2<f32>(1000f, 840f))))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    global0 = array<vec3<u32>, 17>();
    var var_0 = select(!(!vec4<bool>(select(true, true, true), any(vec2<bool>(true, false)), true, all(vec3<bool>(false, true, false)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), true), !(!all(vec2<bool>(false, true))));
    var_0 = vec4<bool>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(207f)), _wgslsmith_f_op_f32(arg_1.x + 692f))) > arg_1.x, var_0.x, !var_0.x, true);
    let var_1 = ~firstLeadingBit(arg_2.x) ^ ~1u;
    var_0 = select(vec4<bool>(all(select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) * 796f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) - _wgslsmith_div_f32(-1102f, arg_1.x)), select(var_0.x || (var_1 >= 16780u), var_0.x, any(vec3<bool>(false, true, true))), false), !vec4<bool>(all(vec4<bool>(var_0.x, true, var_0.x, false)), true, !var_0.x, true), select(!vec4<bool>(var_0.x == var_0.x, all(var_0.xw), false, var_0.x), !vec4<bool>(true, arg_1.x != arg_1.x, !var_0.x, any(vec3<bool>(var_0.x, var_0.x, false))), vec4<bool>(false, var_0.x, !(false && var_0.x), true)));
    return Struct_3(Struct_2((vec4<u32>(30999u, 12239u, 4294967295u, arg_2.x) << ((vec4<u32>(arg_0.x, 24366u, var_1, 0u) << (vec4<u32>(var_1, arg_3, 4294967295u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_add_u32(80002u, arg_0.x), 1u, arg_3, ~arg_0.x), Struct_1(var_0.wxx, vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), arg_1.x, _wgslsmith_div_f32(-1033f, arg_1.x), _wgslsmith_f_op_f32(232f - arg_1.x)))), Struct_2(~select(vec4<u32>(arg_2.x, arg_2.x, arg_0.x, 51228u), ~vec4<u32>(18503u, arg_3, 1u, 86280u), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x)), Struct_1(var_0.zzy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1084f, arg_1.x)))), Struct_1(vec3<bool>(any(select(vec2<bool>(var_0.x, var_0.x), var_0.zz, false)), true, !any(vec3<bool>(var_0.x, false, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(arg_0.x << (29024u % 32u), 17u)], vec3<u32>(47570u, 37732u, 1u) | vec3<u32>(4294967295u, 58978u, arg_2.x)) & (reverseBits(arg_3) >> (~var_1 % 32u)), 0u), ~_wgslsmith_div_u32(4234u, ~(~arg_2.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, false, all(!vec2<bool>(true, all(vec2<bool>(true, false)))));
    var_0 = vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), !(!var_0.x), any(var_0.wy), false);
    let var_1 = !vec3<bool>(true, true, !((var_0.x || var_0.x) || true));
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    return func_4(vec2<u32>(~select(1u, 1u, var_0.x), 78940u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(187f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-140f * -1092f), _wgslsmith_f_op_f32(abs(679f)))))), vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(67409u, 1u, 1u), max(reverseBits(global0[_wgslsmith_index_u32(27817u, 17u)]), select(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], var_0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~20003u, 1u, 0u), select(~vec4<u32>(5979u, 0u, 4294967295u, 0u), vec4<u32>(1u, 109205u, 1u, 173355u), vec4<bool>(true, var_0.x, false, var_1.x)))), abs(max(~4294967295u, firstTrailingBit(0u)) << ((_wgslsmith_mult_u32(19970u, 37306u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(68417u, 82771u, 15775u, 73636u), vec4<u32>(12993u, 1u, 39614u, 17385u)) % 32u)) % 32u)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(~abs(~arg_1.d << (arg_1.b.a.x % 32u)), 15592u);
    var var_1 = u_input.a.xy | vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(~u_input.a.x, 31927i & u_input.a.x)), -21791i);
    var var_2 = !arg_2.a.x;
    var var_3 = arg_1;
    var var_4 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a.x, var_3.a.a.x, 1u), global0[_wgslsmith_index_u32(0u, 17u)]) << (~10852u % 32u)) & (~_wgslsmith_div_u32(arg_1.a.a.x, _wgslsmith_add_u32(1u, 23722u)) | var_3.d);
    return Struct_2(var_3.a.a, Struct_1(!select(vec3<bool>(true, arg_2.a.x, true), vec3<bool>(false, arg_0.x, false), var_3.c.a), vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f - var_3.b.b.b.x)), 283f, _wgslsmith_f_op_f32(arg_1.a.b.b.x * -1424f))));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = vec2<i32>(u_input.a.x, -1i);
    var var_1 = arg_2.a;
    let var_2 = vec3<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, func_3(Struct_3(Struct_2(var_1.a, var_1.b), Struct_2(var_1.a, Struct_1(vec3<bool>(var_1.b.a.x, false, false), vec4<f32>(1831f, arg_1, 710f, 564f))), Struct_1(vec3<bool>(arg_2.c.a.x, arg_2.c.a.x, false), vec4<f32>(-1108f, var_1.b.b.x, arg_2.c.b.x, arg_2.c.b.x)), 3546u, var_1.a.x), Struct_4(-1106f, arg_2.b.b, arg_2, -2147483647i, vec2<i32>(u_input.a.x, -1i))), abs(36286u), ~var_1.a.x), arg_2.a.a), 4294967295u);
    var var_3 = vec2<u32>(93126u, var_2.x);
    var var_4 = 1830f;
    return Struct_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(arg_1))), func_4(var_2.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_2.b.b.b.x)), countOneBits(~(vec3<u32>(50660u, 70151u, 0u) & var_2)), firstTrailingBit(0u) ^ reverseBits(~var_3.x)).b.b, func_4(vec2<u32>(countOneBits(4294967295u), 45891u), _wgslsmith_div_vec2_f32(arg_2.c.b.xz, _wgslsmith_f_op_vec2_f32(func_2())), arg_2.a.a.yzy, var_1.a.x), 13695i, ~select(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 8185i), u_input.a.xy), u_input.a.zz, u_input.a.yz), _wgslsmith_add_vec2_i32(vec2<i32>(38551i, var_0.x), u_input.a.zz), !func_5(var_1.b.a.yz, arg_2, arg_2.a.b).b.a.zz));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_1) -> StorageBuffer {
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(630f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1157f - 2467f))) * _wgslsmith_f_op_f32(-arg_0.c.b.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1094f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(683f)), arg_0.b.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 15754u;
    var_0 = reverseBits(1u);
    let x = u_input.a;
    s_output = func_7(func_6(~15334u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-366f))), Struct_3(func_5(vec2<bool>(true, true), func_1(), func_4(vec2<u32>(29537u, 4849u), vec2<f32>(-823f, 660f), global0[_wgslsmith_index_u32(4294967295u, 17u)], 60547u).b.b), Struct_2(select(vec4<u32>(68308u, 42186u, 13355u, 1u), vec4<u32>(0u, 47132u, 0u, 4294967295u), true), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1755f, 405f, 948f, 403f))), func_5(select(vec2<bool>(true, false), vec2<bool>(false, true), false), Struct_3(Struct_2(vec4<u32>(64289u, 1u, 8853u, 84000u), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-580f, 361f, -1018f, 303f))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 49503u), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-529f, 1064f, 100f, -688f))), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-280f, -641f, -795f, 1785f)), 13355u, 1u), func_5(vec2<bool>(true, false), Struct_3(Struct_2(vec4<u32>(4294967295u, 24184u, 29587u, 14812u), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-740f, 1019f, 630f, 776f))), Struct_2(vec4<u32>(4294967295u, 3887u, 0u, 0u), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-949f, 356f, -205f, 501f))), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-209f, -1411f, 631f, 1876f)), 49801u, 4294967295u), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-605f, -474f, 1175f, -2347f))).b).b, ~select(33933u, 25189u, true), 13515u)), func_4(func_5(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), func_1(), Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, -578f, 674f, -2127f) * vec4<f32>(-218f, -1946f, 952f, 526f)))).a.yx, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, -498f) * vec2<f32>(-1255f, -1201f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1909f, -2360f))), _wgslsmith_div_vec2_f32(vec2<f32>(-302f, 712f), vec2<f32>(822f, -524f)))))), ~min(vec3<u32>(11441u, 4294967295u, 0u), vec3<u32>(42643u, 44618u, 40907u)) >> (max(~global0[_wgslsmith_index_u32(4294967295u, 17u)], vec3<u32>(1u, 4294967295u, 1u)) % vec3<u32>(32u)), 40851u).c);
}

