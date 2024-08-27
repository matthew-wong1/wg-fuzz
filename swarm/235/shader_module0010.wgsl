struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, vec2<u32>(35467u, 4294967295u), vec3<f32>(384f, 574f, -410f), vec2<i32>(2147483647i, 45611i)), Struct_1(false, vec2<u32>(0u, 4294967295u), vec3<f32>(-332f, -818f, -2040f), vec2<i32>(46732i, 0i)), Struct_1(false, vec2<u32>(36298u, 48378u), vec3<f32>(1018f, -100f, 1000f), vec2<i32>(2147483647i, -15857i)), Struct_1(true, vec2<u32>(4294967295u, 57734u), vec3<f32>(-471f, -749f, -455f), vec2<i32>(19308i, -1i)), Struct_1(false, vec2<u32>(61423u, 30151u), vec3<f32>(670f, 1070f, 548f), vec2<i32>(0i, 97922i)), Struct_1(true, vec2<u32>(1u, 72931u), vec3<f32>(-1340f, 174f, 781f), vec2<i32>(2147483647i, -44298i)), Struct_1(false, vec2<u32>(1u, 1u), vec3<f32>(2717f, -542f, 590f), vec2<i32>(-13531i, -28412i)), Struct_1(true, vec2<u32>(1u, 50124u), vec3<f32>(1125f, -1172f, 1131f), vec2<i32>(66869i, i32(-2147483648))));

var<private> global1: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(16396u, Struct_3(vec4<i32>(2995i, 2147483647i, -24940i, 2147483647i)), Struct_3(vec4<i32>(i32(-2147483648), -12883i, 80868i, 2147483647i)), -231f, vec4<i32>(-11243i, i32(-2147483648), -1i, 0i)), Struct_5(12885u, Struct_3(vec4<i32>(6606i, -2387i, 2147483647i, 23592i)), Struct_3(vec4<i32>(1i, 0i, 26764i, -7995i)), 1375f, vec4<i32>(2147483647i, 42337i, 20256i, 1i)), Struct_5(21044u, Struct_3(vec4<i32>(49312i, i32(-2147483648), 20715i, i32(-2147483648))), Struct_3(vec4<i32>(-28654i, 1i, 1i, i32(-2147483648))), 1424f, vec4<i32>(28902i, 229i, 0i, 3007i)), Struct_5(28738u, Struct_3(vec4<i32>(-20378i, -31948i, -34913i, 1i)), Struct_3(vec4<i32>(-21756i, -1i, -1i, 6903i)), 830f, vec4<i32>(2147483647i, 2147483647i, 1i, 44548i)), Struct_5(4294967295u, Struct_3(vec4<i32>(-1i, -1i, -1i, 1i)), Struct_3(vec4<i32>(i32(-2147483648), 1i, -1i, -4325i)), 111f, vec4<i32>(2147483647i, -4589i, 2147483647i, 0i)), Struct_5(48276u, Struct_3(vec4<i32>(-31300i, 70783i, -68519i, i32(-2147483648))), Struct_3(vec4<i32>(-25665i, -1i, 44261i, 16062i)), -401f, vec4<i32>(-1974i, i32(-2147483648), 1i, 0i)), Struct_5(7189u, Struct_3(vec4<i32>(-6112i, -20171i, -8014i, 0i)), Struct_3(vec4<i32>(1i, 16096i, 28689i, 39062i)), -956f, vec4<i32>(12880i, i32(-2147483648), 0i, 2747i)), Struct_5(53433u, Struct_3(vec4<i32>(24237i, 9423i, 16603i, -37472i)), Struct_3(vec4<i32>(31370i, 27279i, 84204i, -1i)), 2757f, vec4<i32>(58632i, 1783i, i32(-2147483648), 1i)), Struct_5(0u, Struct_3(vec4<i32>(-1i, 27589i, -13034i, -39783i)), Struct_3(vec4<i32>(i32(-2147483648), -1083i, 28189i, 2147483647i)), 1761f, vec4<i32>(-39922i, -63541i, 0i, 1787i)), Struct_5(9131u, Struct_3(vec4<i32>(0i, 18522i, 18368i, i32(-2147483648))), Struct_3(vec4<i32>(1i, 27729i, 6505i, -1i)), 1461f, vec4<i32>(0i, 0i, 0i, -66156i)), Struct_5(4685u, Struct_3(vec4<i32>(0i, 0i, -33970i, 1i)), Struct_3(vec4<i32>(2147483647i, -1i, -30809i, 2147483647i)), -1000f, vec4<i32>(8399i, -1i, 0i, 2147483647i)), Struct_5(0u, Struct_3(vec4<i32>(-31443i, i32(-2147483648), 54113i, 1i)), Struct_3(vec4<i32>(23013i, 31004i, 1i, 0i)), 168f, vec4<i32>(-53417i, 0i, 1i, 8386i)), Struct_5(4294967295u, Struct_3(vec4<i32>(-18117i, 1i, -8337i, i32(-2147483648))), Struct_3(vec4<i32>(-21305i, -13644i, -8339i, 0i)), 178f, vec4<i32>(2147483647i, 0i, 2147483647i, 62378i)), Struct_5(0u, Struct_3(vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648))), Struct_3(vec4<i32>(2147483647i, 34328i, -53411i, 0i)), 439f, vec4<i32>(-59210i, -2681i, -15167i, i32(-2147483648))));

var<private> global2: Struct_4;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 8u)];
    var var_1 = vec4<bool>(global2.b, global2.b, 465f >= _wgslsmith_f_op_f32(select(-1102f, global2.d.x, any(select(vec4<bool>(true, true, false, global2.c.x), vec4<bool>(true, global2.c.x, false, false), global2.c.x)))), true);
    var var_2 = global2.c;
    global1 = array<Struct_5, 14>();
    global2 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(global2.d.x * global2.a.x), _wgslsmith_f_op_f32(global2.d.x * 423f), _wgslsmith_div_f32(-1292f, 1263f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -237f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(407f)))))), all(vec4<bool>(false, !var_1.x, true, var_1.x)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(1052f, 1009f)), 892f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2019f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1857f), var_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.d.x * global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -582f)))), true)), global2.e);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)))))));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = global2.e;
    let var_2 = vec3<i32>(u_input.a << ((~(~u_input.b.x) ^ 1u) % 32u), -u_input.a, _wgslsmith_add_i32(firstLeadingBit(-15588i) << (0u % 32u), _wgslsmith_mult_i32(1i, var_1.a.x)));
    var_0 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(func_3());
    return vec2<bool>(true, !any(select(select(vec2<bool>(false, true), vec2<bool>(arg_1, false), true), vec2<bool>(arg_1, false), true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = vec2<u32>(~u_input.c.x, 34335u);
    let var_1 = any(select(global2.c.yx, func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d.x))), arg_2.a), _wgslsmith_clamp_i32(-global2.e.a.x, -1i, u_input.a & -41648i) != -1i));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-global2.a), !(u_input.a >= ~(u_input.e.x ^ global2.e.a.x)), global2.c, _wgslsmith_f_op_vec3_f32(sign(arg_2.c)), global2.e);
    var var_3 = arg_0.x;
    let var_4 = arg_2;
    return Struct_4(global2.a, _wgslsmith_f_op_f32(max(global2.a.x, var_2.a.x)) != -1493f, var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1158f * -568f), _wgslsmith_f_op_f32(floor(974f)), var_4.c.x))), Struct_3(vec4<i32>(u_input.a, ~18221i, -2147483647i, max(-1i, reverseBits(arg_2.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.d.x > u_input.d.x;
    global1 = array<Struct_5, 14>();
    global2 = func_1(global2.d.yx, ~vec4<u32>((u_input.c.x & 6213u) ^ 7080u, u_input.b.x, 1u, 1u), global0[_wgslsmith_index_u32(firstLeadingBit(select(28021u, firstTrailingBit(u_input.d.x), false | var_1)), 8u)]);
    global2 = Struct_4(global2.a, -182f >= _wgslsmith_f_op_f32(-486f - global2.a.x), global2.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2371f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), 240f), global2.e);
    let var_2 = Struct_5(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(~u_input.c.x, min(u_input.c.x, 2687u)), ~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(72822u, ~u_input.c.x), firstTrailingBit(u_input.c.yy))), global2.e, global2.e, _wgslsmith_f_op_f32(-174f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-153f))), _wgslsmith_f_op_f32(-1969f + 270f))), ~(~(-vec4<i32>(31346i, 0i, global2.e.a.x, global2.e.a.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 6250u), vec4<u32>(u_input.d.x, u_input.b.x, 4294967295u, 17756u)) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(~global2.e.a.x, ~var_2.c.a.x), -firstLeadingBit(vec2<i32>(23568i, -1i)))), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e.x, -15257i), u_input.e.yx) & 24112i, 2147483647i), var_2.d, -countOneBits(i32(-1i) * -1i));
}

