struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(7594i, Struct_1(-316f, -622f, false), Struct_1(2691f, -643f, false), vec4<f32>(204f, 1171f, -773f, -538f), vec3<bool>(true, false, false)), Struct_2(10942i, Struct_1(771f, 121f, true), Struct_1(-2302f, 276f, true), vec4<f32>(1122f, -837f, -1407f, -689f), vec3<bool>(false, true, true)), Struct_2(3792i, Struct_1(-122f, 106f, false), Struct_1(767f, 516f, true), vec4<f32>(340f, -1211f, -1000f, -779f), vec3<bool>(true, true, false)), Struct_2(-41293i, Struct_1(-2476f, 851f, false), Struct_1(484f, -1000f, true), vec4<f32>(-454f, -762f, 1592f, 1165f), vec3<bool>(false, true, false)), Struct_2(1i, Struct_1(1011f, 273f, true), Struct_1(-1000f, 676f, true), vec4<f32>(-1402f, 1000f, 1059f, -673f), vec3<bool>(true, true, false)), Struct_2(53412i, Struct_1(517f, -994f, false), Struct_1(429f, -1586f, true), vec4<f32>(-939f, 849f, 164f, -1000f), vec3<bool>(false, true, true)), Struct_2(-82622i, Struct_1(441f, -376f, false), Struct_1(1469f, -1363f, true), vec4<f32>(909f, -196f, -995f, -612f), vec3<bool>(false, false, false)), Struct_2(0i, Struct_1(-664f, 1214f, true), Struct_1(-473f, 893f, true), vec4<f32>(804f, 2413f, -486f, -345f), vec3<bool>(false, true, false)), Struct_2(i32(-2147483648), Struct_1(1230f, 128f, true), Struct_1(233f, -1170f, false), vec4<f32>(563f, 109f, 213f, 1181f), vec3<bool>(false, false, true)), Struct_2(-1i, Struct_1(1000f, -359f, true), Struct_1(1327f, -1490f, false), vec4<f32>(2637f, 154f, -142f, -326f), vec3<bool>(true, true, true)), Struct_2(-1i, Struct_1(-214f, 2269f, false), Struct_1(1063f, 1000f, false), vec4<f32>(-681f, -747f, -1189f, 959f), vec3<bool>(false, true, false)), Struct_2(-28227i, Struct_1(-588f, -1599f, false), Struct_1(-282f, 1000f, true), vec4<f32>(3444f, -468f, 886f, 294f), vec3<bool>(true, false, true)), Struct_2(15453i, Struct_1(1539f, -1068f, false), Struct_1(1296f, 143f, false), vec4<f32>(966f, -3368f, 575f, 1305f), vec3<bool>(false, false, true)), Struct_2(136i, Struct_1(-1018f, -1096f, true), Struct_1(595f, 949f, true), vec4<f32>(-2157f, 1521f, -4000f, 118f), vec3<bool>(false, true, false)));

var<private> global1: vec4<u32> = vec4<u32>(37856u, 114502u, 31633u, 21627u);

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-714f, -1000f, false), Struct_1(838f, -731f, false), Struct_1(-847f, -1019f, false), Struct_1(1528f, 1376f, true), Struct_1(590f, -377f, true), Struct_1(-2077f, -154f, false), Struct_1(339f, 235f, false), Struct_1(-176f, 954f, true), Struct_1(238f, 958f, false));

var<private> global4: array<vec4<u32>, 5>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0), 940f, !(!arg_1.c.c));
    global4 = array<vec4<u32>, 5>();
    let var_1 = global0[_wgslsmith_index_u32(~(global1.x >> (1u % 32u)), 14u)];
    let var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(0i, -832i, 655i)), ~vec3<i32>(-7703i, u_input.a, u_input.a), -vec3<i32>(arg_1.a, 11543i, 25233i)), vec3<i32>(var_1.a, -23439i, abs(u_input.d))), -reverseBits(vec3<i32>(var_1.a, var_1.a, var_1.a) ^ min(vec3<i32>(-34169i, var_1.a, u_input.a), vec3<i32>(2147483647i, 0i, u_input.d))));
    let var_3 = -106f;
    return var_2;
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(~(-3678i), (u_input.a ^ ~u_input.a) & u_input.a, reverseBits(select(func_3(528f, Struct_2(u_input.a, global3[_wgslsmith_index_u32(27163u, 9u)], Struct_1(722f, -1403f, true), vec4<f32>(-1839f, 1123f, -1000f, -1825f), vec3<bool>(false, false, false))), u_input.d, true))), u_input.a << (76877u % 32u), _wgslsmith_mult_i32(firstTrailingBit(~39715i), min(firstLeadingBit(~u_input.d), i32(-1i) * -u_input.d)), u_input.d);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -121f))))))));
    let var_2 = ~u_input.c;
    var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(15155i, -1i, u_input.d, 10267i) << (vec4<u32>(u_input.c, u_input.b.x, 38782u, 11827u) % vec4<u32>(32u))) | select(-vec4<i32>(var_0.x, -15369i, -63586i, 1i), abs(vec4<i32>(0i, var_0.x, -2147483647i, u_input.d)), true), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, -27337i, var_0.x, u_input.d)), ~vec4<i32>(1i, -1i, u_input.a, -2147483647i)) & vec4<i32>(~0i, -1i ^ var_0.x, -108454i << (u_input.b.x % 32u), 4015i), vec4<i32>(46244i, u_input.a, -1i, 36425i)));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx | ~global1.zx, reverseBits(vec2<u32>(37329u, u_input.c))), ~1u), global1.x), 9u)];
    return global0[_wgslsmith_index_u32(var_2, 14u)];
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_2();
    var var_1 = arg_1.d.xz;
    var var_2 = Struct_1(-528f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(584f, _wgslsmith_f_op_f32(max(-611f, var_1.x)))), !arg_0);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-func_2().d.x), arg_1.c.b);
    global4 = array<vec4<u32>, 5>();
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_u32(u_input.c, ~func_1(true, Struct_2(u_input.d, Struct_1(-1649f, -1704f, true), Struct_1(-1545f, 622f, false), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(108f, -335f, 296f, 1424f), vec4<f32>(-404f, -105f, 660f, 1084f))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), -vec2<i32>(u_input.d, u_input.a)));
    global4 = array<vec4<u32>, 5>();
    let var_0 = -1251f;
    let var_1 = global1.x;
    let var_2 = global3[_wgslsmith_index_u32(~(global1.x | _wgslsmith_clamp_u32(46518u, ~0u, 4294967295u)), 9u)];
    var var_3 = -340f;
    var_3 = 181f;
    global2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(754f, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.zz, global1.yy), abs(u_input.b.zx)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(35748u, u_input.b.x, 50173u)))), min(~(~1u), 0u)), -598f);
}

