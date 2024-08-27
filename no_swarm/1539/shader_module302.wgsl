struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(41413i, vec4<i32>(23675i, 1i, 7448i, -22145i), vec4<u32>(9524u, 0u, 31315u, 34614u), true, vec2<f32>(1339f, 2729f)), Struct_1(48724i, vec4<i32>(2485i, -1i, 0i, 22712i), vec4<u32>(9212u, 78683u, 105107u, 22723u), true, vec2<f32>(1349f, -1260f))), Struct_2(Struct_1(3773i, vec4<i32>(-456i, 0i, 2147483647i, -1i), vec4<u32>(1u, 1u, 61773u, 0u), false, vec2<f32>(1142f, -747f)), Struct_1(2147483647i, vec4<i32>(1i, 6973i, 0i, 2147483647i), vec4<u32>(0u, 1u, 1u, 0u), true, vec2<f32>(517f, -1000f))), Struct_2(Struct_1(0i, vec4<i32>(68350i, 0i, -10460i, -11176i), vec4<u32>(0u, 4294967295u, 0u, 12425u), true, vec2<f32>(-137f, 1062f)), Struct_1(7907i, vec4<i32>(50445i, -6375i, 0i, 39811i), vec4<u32>(61232u, 28421u, 69709u, 4294967295u), true, vec2<f32>(-1793f, -1242f))), Struct_2(Struct_1(-1i, vec4<i32>(-1i, 1i, -1i, -12996i), vec4<u32>(51491u, 4294967295u, 4294967295u, 19691u), false, vec2<f32>(-326f, 964f)), Struct_1(-1i, vec4<i32>(2147483647i, 2147483647i, -19126i, -6876i), vec4<u32>(0u, 0u, 1u, 47904u), true, vec2<f32>(-614f, 2740f))), Struct_2(Struct_1(i32(-2147483648), vec4<i32>(42975i, -25605i, 32085i, -1i), vec4<u32>(4294967295u, 30448u, 85728u, 57054u), true, vec2<f32>(-414f, -1000f)), Struct_1(0i, vec4<i32>(2147483647i, 2147483647i, -32240i, 25073i), vec4<u32>(1u, 0u, 42436u, 4294967295u), false, vec2<f32>(-315f, -1658f))), Struct_2(Struct_1(2147483647i, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i), vec4<u32>(0u, 4294967295u, 11090u, 3393u), false, vec2<f32>(-550f, -576f)), Struct_1(2147483647i, vec4<i32>(i32(-2147483648), -65025i, 2147483647i, i32(-2147483648)), vec4<u32>(1u, 46294u, 91207u, 15524u), false, vec2<f32>(198f, 189f))), Struct_2(Struct_1(66130i, vec4<i32>(i32(-2147483648), -29689i, 0i, 0i), vec4<u32>(19501u, 9088u, 42095u, 68416u), true, vec2<f32>(220f, -1042f)), Struct_1(-9020i, vec4<i32>(-42301i, 0i, 14659i, -1i), vec4<u32>(45893u, 0u, 0u, 37557u), true, vec2<f32>(190f, 392f))), Struct_2(Struct_1(30076i, vec4<i32>(-25650i, -1i, 1i, 20i), vec4<u32>(61422u, 1u, 22690u, 15129u), false, vec2<f32>(1189f, 1610f)), Struct_1(37090i, vec4<i32>(2147483647i, -23308i, 0i, i32(-2147483648)), vec4<u32>(1u, 2938u, 51521u, 4294967295u), true, vec2<f32>(520f, 244f))), Struct_2(Struct_1(-1i, vec4<i32>(-81407i, 2147483647i, -18586i, -4855i), vec4<u32>(1u, 0u, 1u, 25431u), false, vec2<f32>(-613f, 1000f)), Struct_1(-1i, vec4<i32>(12492i, -36299i, i32(-2147483648), 2147483647i), vec4<u32>(92149u, 1u, 0u, 4294967295u), false, vec2<f32>(-122f, -1145f))), Struct_2(Struct_1(1i, vec4<i32>(-1i, i32(-2147483648), -7405i, 1i), vec4<u32>(37700u, 0u, 4294967295u, 73791u), false, vec2<f32>(362f, 1000f)), Struct_1(-12675i, vec4<i32>(i32(-2147483648), -7677i, -15002i, 9226i), vec4<u32>(11527u, 0u, 0u, 51191u), false, vec2<f32>(-814f, 343f))), Struct_2(Struct_1(1i, vec4<i32>(i32(-2147483648), 29982i, -1i, 0i), vec4<u32>(20557u, 0u, 0u, 4294967295u), false, vec2<f32>(963f, 1107f)), Struct_1(36895i, vec4<i32>(12783i, -1i, i32(-2147483648), 9558i), vec4<u32>(1u, 1u, 21173u, 1u), true, vec2<f32>(1408f, -1350f))), Struct_2(Struct_1(19400i, vec4<i32>(24970i, 0i, -24231i, 2147483647i), vec4<u32>(1u, 4294967295u, 52800u, 1u), true, vec2<f32>(-454f, 280f)), Struct_1(79905i, vec4<i32>(-65625i, -52058i, -3883i, 1i), vec4<u32>(4294967295u, 28385u, 1u, 19980u), true, vec2<f32>(1502f, 192f))), Struct_2(Struct_1(-9916i, vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), vec4<u32>(4294967295u, 1u, 40228u, 11466u), true, vec2<f32>(-314f, 109f)), Struct_1(1i, vec4<i32>(i32(-2147483648), 38670i, 9237i, 0i), vec4<u32>(4294967295u, 27255u, 0u, 20589u), false, vec2<f32>(-1792f, -850f))), Struct_2(Struct_1(2147483647i, vec4<i32>(2147483647i, 2147483647i, -50307i, -55350i), vec4<u32>(4294967295u, 47896u, 26477u, 4294967295u), true, vec2<f32>(2083f, -2952f)), Struct_1(1i, vec4<i32>(-14066i, 18100i, -11676i, 0i), vec4<u32>(1u, 47323u, 4294967295u, 102822u), false, vec2<f32>(1482f, -815f))), Struct_2(Struct_1(-5789i, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<u32>(4294967295u, 208u, 4294967295u, 4294967295u), false, vec2<f32>(-536f, -1641f)), Struct_1(31906i, vec4<i32>(-9385i, 2909i, -1i, 56245i), vec4<u32>(1u, 56533u, 0u, 1u), true, vec2<f32>(390f, -682f))), Struct_2(Struct_1(18812i, vec4<i32>(44198i, -55161i, -1i, -1i), vec4<u32>(25065u, 10535u, 18322u, 4294967295u), true, vec2<f32>(1000f, 1817f)), Struct_1(36209i, vec4<i32>(-23596i, 1i, -1i, -1i), vec4<u32>(21906u, 4294967295u, 0u, 46189u), false, vec2<f32>(-259f, 322f))), Struct_2(Struct_1(-14474i, vec4<i32>(58657i, 20084i, -5768i, i32(-2147483648)), vec4<u32>(1u, 58796u, 1u, 6943u), true, vec2<f32>(1889f, -1578f)), Struct_1(29650i, vec4<i32>(-67763i, -5443i, 30145i, 2147483647i), vec4<u32>(13715u, 4294967295u, 4294967295u, 1u), false, vec2<f32>(-807f, -565f))), Struct_2(Struct_1(5844i, vec4<i32>(15907i, 0i, -6957i, -6971i), vec4<u32>(16676u, 22179u, 9945u, 4294967295u), false, vec2<f32>(-656f, -471f)), Struct_1(8240i, vec4<i32>(i32(-2147483648), 1i, -54118i, i32(-2147483648)), vec4<u32>(48627u, 14932u, 14059u, 1u), true, vec2<f32>(873f, 827f))), Struct_2(Struct_1(0i, vec4<i32>(-1i, 1i, -517i, 1i), vec4<u32>(46128u, 1734u, 1u, 3518u), true, vec2<f32>(-249f, 291f)), Struct_1(47611i, vec4<i32>(-8940i, 1i, i32(-2147483648), -1i), vec4<u32>(8072u, 4294967295u, 4294967295u, 55047u), false, vec2<f32>(562f, -475f))), Struct_2(Struct_1(1i, vec4<i32>(-13395i, -8889i, -1i, -54160i), vec4<u32>(1u, 12370u, 13378u, 1u), true, vec2<f32>(551f, 2186f)), Struct_1(-22272i, vec4<i32>(0i, -3205i, -1i, -1i), vec4<u32>(0u, 4294967295u, 7757u, 0u), true, vec2<f32>(-1000f, 634f))));

var<private> global1: array<Struct_4, 28>;

var<private> global2: vec3<i32>;

var<private> global3: Struct_3 = Struct_3(vec2<f32>(203f, -142f), Struct_2(Struct_1(2147483647i, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), vec4<u32>(10926u, 28991u, 4294967295u, 6031u), true, vec2<f32>(-218f, -335f)), Struct_1(-1i, vec4<i32>(4466i, i32(-2147483648), 23265i, 1i), vec4<u32>(0u, 1u, 4511u, 45359u), false, vec2<f32>(493f, -1000f))));

var<private> global4: array<Struct_3, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = !(!(!vec4<bool>(any(vec3<bool>(arg_0, arg_0, false)), 234u != u_input.a.x, false, true)));
    global2 = vec3<i32>(_wgslsmith_sub_i32(1i, global3.b.a.a), _wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec3_i32(abs(global3.b.b.b.ywx), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(11890i, u_input.c.x, global2.x)), vec3<i32>(u_input.c.x, 4800i, -36191i)))), -11059i);
    global3 = global4[_wgslsmith_index_u32(~(~1u), 22u)];
    var var_1 = var_0.zyx;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.yx))), global0[_wgslsmith_index_u32(56318u, 20u)]);
    return select(!var_0.yyy, vec3<bool>(!any(vec3<bool>(true, arg_0, false)), true, any(vec4<bool>(true, true, true, true))), var_1.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, 1000f)))), _wgslsmith_f_op_vec2_f32(round(global3.b.b.e))));
    var var_1 = global3.b;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.b.e + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.e.x, global3.b.b.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1160f, global3.b.a.e.x)))))), Struct_2(var_1.b, Struct_1(~min(-33818i, var_1.a.b.x), -max(global3.b.b.b, vec4<i32>(0i, 652i, u_input.c.x, var_1.a.a)), vec4<u32>(reverseBits(global3.b.b.c.x), _wgslsmith_div_u32(var_1.a.c.x, global3.b.b.c.x), 1u, arg_1 & arg_1), global3.b.b.d, _wgslsmith_f_op_vec2_f32(global3.a * _wgslsmith_div_vec2_f32(vec2<f32>(-700f, -731f), global3.a)))));
    var var_3 = firstTrailingBit(~vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(global3.b.a.c | vec4<u32>(4294967295u, global3.b.a.c.x, var_2.b.a.c.x, global3.b.b.c.x), vec4<u32>(var_1.a.c.x, 44953u, var_1.b.c.x, 92458u) ^ vec4<u32>(global3.b.b.c.x, 1u, 0u, arg_1)), _wgslsmith_sub_u32(61249u, arg_1)));
    var var_4 = select(max(~(~(~var_2.b.a.c)), ~(~var_2.b.a.c) >> (min(vec4<u32>(global3.b.a.c.x, global3.b.a.c.x, 1u, 32857u), ~var_1.b.c) % vec4<u32>(32u))), ~max(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(49418u, 0u, 68598u, 26549u)), abs(vec4<u32>(25485u, u_input.a.x, global3.b.a.c.x, arg_1))), vec4<bool>(!(_wgslsmith_f_op_f32(-1000f * -234f) == _wgslsmith_f_op_f32(step(1093f, 1216f))), all(func_3(-1000f > var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a.e.x, -726f, global3.a.x) - vec3<f32>(global3.b.b.e.x, var_1.a.e.x, global3.b.a.e.x)), vec4<f32>(1590f, -157f, -165f, var_2.a.x))), !(_wgslsmith_f_op_f32(floor(664f)) < -1925f), !all(select(vec4<bool>(var_2.b.b.d, arg_0.x, var_1.b.d, false), vec4<bool>(true, var_2.b.a.d, global3.b.b.d, true), vec4<bool>(true, false, true, true)))));
    return 7058i;
}

fn func_2(arg_0: bool) -> bool {
    global2 = abs(~max(global3.b.a.b.xxz, vec3<i32>(2147483647i, -14481i, 56955i))) & vec3<i32>(50095i, global3.b.a.b.x, _wgslsmith_dot_vec2_i32(max(~global2.yy, -vec2<i32>(global2.x, -1i)), ~(vec2<i32>(global2.x, u_input.c.x) ^ vec2<i32>(-50475i, global3.b.b.b.x))));
    var var_0 = Struct_1(func_4(func_3(4294967295u < u_input.b, _wgslsmith_div_vec3_f32(vec3<f32>(global3.a.x, global3.b.a.e.x, global3.b.b.e.x), vec3<f32>(global3.a.x, global3.a.x, 156f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.e.x, global3.a.x, -2198f, -286f))), global3.b.b.c.x, vec2<i32>(_wgslsmith_sub_i32(global3.b.a.b.x, global2.x), ~global2.x)) << (~(_wgslsmith_mult_u32(u_input.b, 1u) >> (_wgslsmith_mod_u32(u_input.a.x, global3.b.a.c.x) % 32u)) % 32u), global3.b.a.b, ~select(min(global3.b.b.c, vec4<u32>(1u, global3.b.a.c.x, 4294967295u, 1u)), u_input.a, arg_0), any(!select(vec3<bool>(arg_0, true, arg_0), func_3(global3.b.a.d, vec3<f32>(global3.b.a.e.x, global3.a.x, global3.b.b.e.x), vec4<f32>(1000f, global3.a.x, 1091f, global3.a.x)), !vec3<bool>(global3.b.a.d, false, global3.b.a.d))), global3.a);
    var var_1 = u_input.a.x;
    var var_2 = global3.b.b;
    var_1 = _wgslsmith_clamp_u32(var_2.c.x, _wgslsmith_div_u32(~(abs(var_2.c.x) ^ firstTrailingBit(u_input.a.x)), ~47694u >> (max(var_0.c.x, ~10695u) % 32u)), ~var_0.c.x);
    return _wgslsmith_f_op_f32(-global3.a.x) < 560f;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1308f);
    var var_1 = func_2(!all(vec2<bool>(!global3.b.b.d, true)));
    let var_2 = !(!(!(!(!vec2<bool>(global3.b.b.d, true)))));
    global1 = array<Struct_4, 28>();
    var var_3 = global1[_wgslsmith_index_u32(0u, 28u)];
    return Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1360f, global3.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.a.e.x, 1430f) * _wgslsmith_f_op_vec2_f32(-var_3.a.b.a.e)))), Struct_2(global3.b.b, global3.b.a)), _wgslsmith_add_i32(10404i, func_4(vec3<bool>(any(vec4<bool>(false, false, var_2.x, true)), var_3.c.b.b.d, true), 11117u, ~_wgslsmith_sub_vec2_i32(vec2<i32>(13195i, var_3.b), vec2<i32>(global3.b.b.b.x, var_3.c.b.b.b.x)))), global4[_wgslsmith_index_u32(4294967295u, 22u)]);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0.c.a.x));
    let var_1 = !(!(!(!select(vec3<bool>(arg_0.a.b.a.d, arg_0.c.b.b.d, false), vec3<bool>(true, arg_1.c.b.b.d, false), false))));
    global3 = global4[_wgslsmith_index_u32(1u, 22u)];
    let var_2 = arg_0.a.b.a.c;
    global2 = countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-64797i, -569i, 0i), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(global2.x, global2.x, 1i)), select(u_input.c, global3.b.a.b.wzx, arg_1.a.b.a.d)), arg_2), func_1().a.b.b.b.zyw));
    return firstTrailingBit(arg_1.c.b.b.a);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(305f, global3.b.a.e.x), arg_1.b.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1080f), -429f)))), global3.b);
    global1 = array<Struct_4, 28>();
    global0 = array<Struct_2, 20>();
    global2 = var_0.b.b.b.zzy;
    global2 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -arg_1.a.b.x, _wgslsmith_div_i32(arg_0, -2147483647i) & _wgslsmith_sub_i32(var_0.b.a.a, global3.b.b.a), 2147483647i), min(_wgslsmith_mod_vec3_i32(vec3<i32>(-57981i, arg_1.a.a, 2147483647i) ^ vec3<i32>(0i, 20636i, -20573i), func_1().a.b.b.b.xxw), var_0.b.b.b.wzz)), ~abs(_wgslsmith_div_vec3_i32(abs(vec3<i32>(0i, arg_1.b.b.x, global3.b.b.b.x)), abs(var_0.b.b.b.zxz))));
    return arg_1.a.e.x;
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = global2.x;
    global1 = array<Struct_4, 28>();
    var var_1 = -(~func_1().a.b.b.b.x);
    var var_2 = func_1().c.b;
    var var_3 = _wgslsmith_mod_u32(~var_2.a.c.x, ~(~0u));
    return global4[_wgslsmith_index_u32(~(~reverseBits(global3.b.a.c.x)), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 28>();
    var var_0 = func_7(vec2<f32>(_wgslsmith_f_op_f32(func_6(func_5(global1[_wgslsmith_index_u32(~4294967295u, 28u)], func_1(), -global3.b.a.b.zwy), func_1().a.b, !vec3<bool>(global3.b.b.d, global3.b.a.d, global3.b.a.d), ~(-62512i))), global3.b.b.e.x), Struct_2(func_1().c.b.b, global3.b.b));
    let var_1 = global3.b.a.d;
    let var_2 = global0[_wgslsmith_index_u32(global3.b.b.c.x, 20u)];
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(countOneBits(-7306i)), func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, var_2.b.e.x)), global3.b).b.b.a), var_0.b.b.b.xw) >> (vec2<u32>(~18885u, 32712u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_sub_i32(select(u_input.c.x, var_2.a.b.x, global3.b.b.d), global2.x), _wgslsmith_add_i32(var_2.b.a, -20496i), var_0.b.b.b.x);
}

