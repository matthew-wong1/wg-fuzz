struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(1i, vec3<i32>(29108i, 19979i, 25361i), 0i, Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -68707i), Struct_1(vec2<i32>(-1i, -44180i), vec4<i32>(2147483647i, -3168i, 31008i, -18075i), vec4<u32>(4294967295u, 41048u, 34843u, 26193u)), 1i, vec4<f32>(1588f, -552f, -2687f, 1966f))), Struct_5(i32(-2147483648), vec3<i32>(2147483647i, -36847i, 2147483647i), 2147483647i, Struct_2(vec3<i32>(2147483647i, 0i, 48586i), Struct_1(vec2<i32>(-12631i, 6437i), vec4<i32>(0i, 0i, i32(-2147483648), 2147483647i), vec4<u32>(32398u, 21948u, 4294967295u, 0u)), 20920i, vec4<f32>(1462f, -1548f, 631f, 246f))), Struct_5(2147483647i, vec3<i32>(-18235i, -11838i, -1i), 68638i, Struct_2(vec3<i32>(-33944i, 0i, 49051i), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -40222i, 51233i), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), 27706i, vec4<f32>(-677f, -411f, 268f, -1278f))), Struct_5(1i, vec3<i32>(-20008i, 2147483647i, 44022i), -73309i, Struct_2(vec3<i32>(12481i, 38629i, 1i), Struct_1(vec2<i32>(2147483647i, -40137i), vec4<i32>(-10705i, 1i, -1i, i32(-2147483648)), vec4<u32>(4294967295u, 1343u, 47869u, 0u)), -1i, vec4<f32>(-1876f, 509f, 721f, -293f))), Struct_5(-17255i, vec3<i32>(25194i, 2147483647i, 1i), i32(-2147483648), Struct_2(vec3<i32>(8708i, 26327i, -5715i), Struct_1(vec2<i32>(33815i, 1i), vec4<i32>(-1i, -34476i, 2147483647i, 2221i), vec4<u32>(28159u, 1u, 0u, 0u)), 0i, vec4<f32>(433f, 1189f, 1151f, -368f))), Struct_5(-1i, vec3<i32>(-1i, i32(-2147483648), 2147483647i), 0i, Struct_2(vec3<i32>(i32(-2147483648), 1i, -1i), Struct_1(vec2<i32>(35346i, 21397i), vec4<i32>(-19073i, i32(-2147483648), 83185i, 0i), vec4<u32>(0u, 0u, 65782u, 44556u)), -1i, vec4<f32>(-390f, 1420f, -425f, 650f))), Struct_5(1i, vec3<i32>(-19303i, 3691i, -28392i), -34770i, Struct_2(vec3<i32>(27262i, -1i, 2147483647i), Struct_1(vec2<i32>(-1i, -1i), vec4<i32>(23227i, -9205i, 0i, -5331i), vec4<u32>(91964u, 4294967295u, 4294967295u, 21686u)), -1i, vec4<f32>(-152f, -323f, 1000f, 919f))), Struct_5(14011i, vec3<i32>(0i, 37524i, 2728i), 6066i, Struct_2(vec3<i32>(1i, 1i, 369i), Struct_1(vec2<i32>(-10936i, 2610i), vec4<i32>(1i, 0i, 0i, 1i), vec4<u32>(67144u, 0u, 0u, 64605u)), 0i, vec4<f32>(1000f, 103f, -179f, -493f))), Struct_5(-17594i, vec3<i32>(37477i, i32(-2147483648), 15939i), 2147483647i, Struct_2(vec3<i32>(1i, 31984i, -43564i), Struct_1(vec2<i32>(-1i, 30095i), vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), vec4<u32>(33098u, 1u, 11579u, 82365u)), i32(-2147483648), vec4<f32>(2496f, 170f, -1242f, 1000f))), Struct_5(2626i, vec3<i32>(2147483647i, 1i, 1i), i32(-2147483648), Struct_2(vec3<i32>(19960i, -1i, 0i), Struct_1(vec2<i32>(-15208i, 15593i), vec4<i32>(13457i, i32(-2147483648), 1i, 0i), vec4<u32>(30301u, 3436u, 4294967295u, 1u)), -1i, vec4<f32>(343f, 214f, 204f, 355f))), Struct_5(-15352i, vec3<i32>(1i, -37619i, -1i), 0i, Struct_2(vec3<i32>(-4089i, i32(-2147483648), 2147483647i), Struct_1(vec2<i32>(10725i, 30183i), vec4<i32>(1i, 1i, 7445i, 18673i), vec4<u32>(4294967295u, 1u, 6047u, 4294967295u)), 10284i, vec4<f32>(927f, -980f, 1000f, 336f))), Struct_5(-16044i, vec3<i32>(0i, 25067i, 0i), 2147483647i, Struct_2(vec3<i32>(-1i, -32037i, -1i), Struct_1(vec2<i32>(2147483647i, -1i), vec4<i32>(-28760i, 0i, 0i, 2147483647i), vec4<u32>(1u, 47180u, 1u, 110365u)), 8459i, vec4<f32>(1168f, 3174f, 2399f, -1965f))), Struct_5(i32(-2147483648), vec3<i32>(-33574i, 510i, i32(-2147483648)), 2147483647i, Struct_2(vec3<i32>(-30274i, -38009i, 19673i), Struct_1(vec2<i32>(2147483647i, -1i), vec4<i32>(2535i, 54011i, i32(-2147483648), 0i), vec4<u32>(1u, 33279u, 74405u, 16125u)), 16739i, vec4<f32>(1000f, 209f, 862f, 121f))), Struct_5(8998i, vec3<i32>(-14237i, 42280i, -1i), -1i, Struct_2(vec3<i32>(2147483647i, 42872i, -1825i), Struct_1(vec2<i32>(1i, 0i), vec4<i32>(4738i, 4009i, -18974i, -1i), vec4<u32>(30328u, 5977u, 60240u, 48048u)), -1i, vec4<f32>(-1449f, -1666f, 1351f, -557f))), Struct_5(1i, vec3<i32>(23758i, -64113i, 1i), 2147483647i, Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -34097i), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<i32>(1i, 1i, 2147483647i, 62991i), vec4<u32>(44044u, 4294967295u, 33914u, 1u)), 4301i, vec4<f32>(-1398f, -862f, 923f, -1000f))), Struct_5(-58366i, vec3<i32>(-33214i, 23881i, i32(-2147483648)), 1i, Struct_2(vec3<i32>(-1i, i32(-2147483648), 1301i), Struct_1(vec2<i32>(17961i, 0i), vec4<i32>(16881i, 2147483647i, -1i, 3521i), vec4<u32>(45531u, 1u, 73220u, 24392u)), 19596i, vec4<f32>(661f, 106f, -375f, 1421f))), Struct_5(50809i, vec3<i32>(21089i, 1i, 0i), -77687i, Struct_2(vec3<i32>(8561i, 34698i, 3893i), Struct_1(vec2<i32>(0i, 30532i), vec4<i32>(-1i, 2147483647i, -1530i, i32(-2147483648)), vec4<u32>(0u, 1u, 1u, 1u)), -12731i, vec4<f32>(489f, -3971f, 1278f, 132f))), Struct_5(32141i, vec3<i32>(-1i, -16743i, 39491i), 1i, Struct_2(vec3<i32>(2147483647i, -1i, 2147483647i), Struct_1(vec2<i32>(-35618i, 0i), vec4<i32>(21142i, 1i, 18939i, 2147483647i), vec4<u32>(0u, 4294967295u, 1u, 31651u)), 1i, vec4<f32>(-482f, 334f, -1255f, 984f))), Struct_5(-29313i, vec3<i32>(-25905i, 1i, 0i), 0i, Struct_2(vec3<i32>(0i, -37842i, 2375i), Struct_1(vec2<i32>(12445i, 1i), vec4<i32>(2147483647i, -32137i, -39263i, -21992i), vec4<u32>(50977u, 1u, 24302u, 29098u)), 3803i, vec4<f32>(240f, 799f, 127f, -961f))), Struct_5(0i, vec3<i32>(-21411i, 2147483647i, 0i), 0i, Struct_2(vec3<i32>(-1i, 1i, -3333i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(1i, 1i, i32(-2147483648), 0i), vec4<u32>(1u, 35951u, 28609u, 0u)), 1i, vec4<f32>(-307f, 1596f, 846f, -1489f))), Struct_5(i32(-2147483648), vec3<i32>(38495i, 9429i, -28109i), -8317i, Struct_2(vec3<i32>(0i, -26066i, 7485i), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), vec4<u32>(1u, 62651u, 1u, 13387u)), 100977i, vec4<f32>(551f, 244f, 394f, 583f))), Struct_5(-33276i, vec3<i32>(-46143i, 1i, 2147483647i), 2147483647i, Struct_2(vec3<i32>(-1i, 1i, -26276i), Struct_1(vec2<i32>(i32(-2147483648), 33616i), vec4<i32>(-63134i, 0i, -32426i, i32(-2147483648)), vec4<u32>(24623u, 1u, 1u, 0u)), 1i, vec4<f32>(-493f, 801f, -360f, -910f))));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> Struct_4 {
    let var_0 = global0.c.xyx;
    let var_1 = -60i;
    global1 = array<Struct_5, 22>();
    global1 = array<Struct_5, 22>();
    var var_2 = vec2<f32>(-789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(705f * -932f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.d.x))))));
    return Struct_4(~global0.a.x, 0i, (-54196i >> (_wgslsmith_sub_u32(~0u, firstLeadingBit(u_input.a)) % 32u)) >> (global0.c.x % 32u), vec2<i32>(-1i, 0i), var_2.x);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<bool> {
    global0 = arg_2;
    let var_0 = arg_2;
    let var_1 = Struct_3(select(true, arg_1, arg_1), vec2<u32>(39015u >> ((global0.c.x >> (max(1u, global0.c.x) % 32u)) % 32u), reverseBits(select(arg_2.c.x, 7089u, false) & (global0.c.x & u_input.a))));
    var var_2 = ~vec4<u32>(4294967295u, arg_2.c.x, ~22098u, _wgslsmith_clamp_u32(~var_0.c.x | 4294967295u, 1u, _wgslsmith_div_u32(4294967295u, 4294967295u)));
    global1 = array<Struct_5, 22>();
    return vec2<bool>(var_1.a, true);
}

fn func_2() -> vec2<f32> {
    let var_0 = ~select(~global0.c.xx, vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 28884u, u_input.a, global0.c.x), vec4<u32>(global0.c.x, 0u, global0.c.x, 1u))), select(vec2<bool>(true, true), func_3(1000f, global0.c.x <= u_input.a, Struct_1(global0.b.zx, vec4<i32>(global0.b.x, global0.b.x, global0.a.x, 24137i), global0.c), ~global0.b.wzy), vec2<bool>(true, true)));
    let var_1 = Struct_2(global0.b.xxw, Struct_1(vec2<i32>(~(0i & global0.a.x), _wgslsmith_dot_vec3_i32(global0.b.zyw, countOneBits(vec3<i32>(-1i, -38102i, global0.b.x)))), _wgslsmith_div_vec4_i32(select(~global0.b, global0.b << (global0.c % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), vec4<i32>(-6625i, ~global0.a.x, global0.a.x, abs(-2147483647i))), reverseBits(firstLeadingBit(global0.c))), global0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-315f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(495f - -2289f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2050f * _wgslsmith_f_op_f32(ceil(1672f))))), -1681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f))));
    let var_2 = var_1;
    let var_3 = any(select(vec4<bool>(select(var_0.x, var_2.b.c.x, false) > ~1u, false, !(var_2.b.b.x == -2147483647i), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(false, false)), func_3(var_1.d.x, true, var_1.b, var_1.a).x, true, true), any(vec2<bool>(true, true))), vec4<bool>(select(all(vec2<bool>(false, true)), true, true), select(true, true, all(vec3<bool>(true, false, false))), true, 0i >= (global0.b.x ^ 4171i))));
    var var_4 = ~_wgslsmith_mult_vec3_u32(global0.c.zwy, ~vec3<u32>(_wgslsmith_div_u32(u_input.a, 0u), reverseBits(var_1.b.c.x), max(global0.c.x, var_1.b.c.x)));
    return var_2.d.wy;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = 1i;
    var var_1 = ~vec4<u32>(global0.c.x, 76447u, min(40592u >> ((42439u & global0.c.x) % 32u), global0.c.x), abs(3409u));
    var var_2 = global0.c;
    global1 = array<Struct_5, 22>();
    let var_3 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, false)), !(-141f < arg_0))), all(vec4<bool>(false, false, !all(vec3<bool>(true, false, true)), true)), !all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))));
    return Struct_3(var_3.x, vec2<u32>(u_input.a, (u_input.a | 4294967295u) | var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a << (global0.c.zx % vec2<u32>(32u)), global0.b, global0.c);
    var var_0 = func_1(false, global1[_wgslsmith_index_u32(14886u, 22u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e, var_0.e))), -685f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1300f, var_0.e, -218f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-953f, 958f, 1712f) + vec3<f32>(var_0.e, var_0.e, var_0.e)))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = firstTrailingBit(abs(vec2<u32>(reverseBits(u_input.a), _wgslsmith_mod_u32(1u, 52137u)))) ^ global0.c.yw;
    var var_4 = func_4(346f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(244f, _wgslsmith_f_op_f32(var_1.x * var_1.x))))));
    let var_5 = global1[_wgslsmith_index_u32(global0.c.x, 22u)];
    let var_6 = ~min(abs(vec2<i32>(2147483647i, var_5.c)), vec2<i32>(abs(var_5.a), var_5.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, abs(vec4<i32>(var_6.x, 26592i | global0.a.x, 1i, _wgslsmith_sub_i32(global0.b.x, 0i))) & vec4<i32>(-1i, -2147483647i, ~reverseBits(var_6.x), 2147483647i), -(_wgslsmith_mult_i32(-var_0.a, var_0.b >> (var_5.d.b.c.x % 32u)) & -2147483647i), -2147483647i);
}

