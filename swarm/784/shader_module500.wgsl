struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_1(4294967295u, 2147483647i), Struct_1(1u, 1i), Struct_3(1i, vec2<f32>(1000f, -1439f), true, Struct_1(25799u, 17855i), vec4<bool>(false, true, false, true)), i32(-2147483648)), Struct_4(Struct_1(3930u, -45014i), Struct_1(0u, 1i), Struct_3(-1704i, vec2<f32>(113f, 301f), true, Struct_1(0u, 0i), vec4<bool>(true, false, true, false)), -1i), Struct_4(Struct_1(72153u, -7685i), Struct_1(0u, 1i), Struct_3(19635i, vec2<f32>(-677f, 110f), true, Struct_1(1u, 44166i), vec4<bool>(true, false, true, true)), -1i), Struct_4(Struct_1(17179u, i32(-2147483648)), Struct_1(32321u, i32(-2147483648)), Struct_3(-6297i, vec2<f32>(2074f, -394f), false, Struct_1(0u, 0i), vec4<bool>(false, false, false, true)), -28757i), Struct_4(Struct_1(31883u, 10190i), Struct_1(52894u, -62403i), Struct_3(i32(-2147483648), vec2<f32>(747f, 1000f), false, Struct_1(4294967295u, -1i), vec4<bool>(false, false, false, false)), -1i), Struct_4(Struct_1(1u, 0i), Struct_1(15138u, 37440i), Struct_3(i32(-2147483648), vec2<f32>(273f, 1317f), true, Struct_1(1u, 55027i), vec4<bool>(false, true, false, false)), -26849i), Struct_4(Struct_1(5077u, 2147483647i), Struct_1(65484u, 2147483647i), Struct_3(1i, vec2<f32>(593f, -196f), false, Struct_1(27311u, -19245i), vec4<bool>(true, false, false, false)), 2147483647i), Struct_4(Struct_1(28030u, 58894i), Struct_1(4294967295u, 1i), Struct_3(-27348i, vec2<f32>(-264f, -237f), true, Struct_1(0u, 11254i), vec4<bool>(false, true, true, false)), 465i), Struct_4(Struct_1(4294967295u, -2556i), Struct_1(4294967295u, 35444i), Struct_3(26919i, vec2<f32>(-665f, 1058f), false, Struct_1(15283u, -1i), vec4<bool>(false, false, true, true)), -29156i), Struct_4(Struct_1(15248u, -13624i), Struct_1(0u, 34716i), Struct_3(-58897i, vec2<f32>(-473f, -2443f), true, Struct_1(1u, 2147483647i), vec4<bool>(true, false, false, false)), 2147483647i), Struct_4(Struct_1(1u, 2147483647i), Struct_1(0u, 2136i), Struct_3(-20971i, vec2<f32>(-1238f, -337f), false, Struct_1(4294967295u, 2147483647i), vec4<bool>(true, false, true, true)), 3774i), Struct_4(Struct_1(0u, 0i), Struct_1(43579u, -1i), Struct_3(-1i, vec2<f32>(414f, 271f), false, Struct_1(1u, -13346i), vec4<bool>(true, true, true, true)), -26817i), Struct_4(Struct_1(21050u, -345i), Struct_1(37804u, 2147483647i), Struct_3(-30833i, vec2<f32>(112f, 1032f), false, Struct_1(3073u, 14221i), vec4<bool>(false, true, true, false)), 2147483647i), Struct_4(Struct_1(1u, 2147483647i), Struct_1(1u, 21477i), Struct_3(26399i, vec2<f32>(936f, 1227f), true, Struct_1(1u, 47623i), vec4<bool>(true, false, true, false)), 5540i), Struct_4(Struct_1(4294967295u, -13389i), Struct_1(0u, i32(-2147483648)), Struct_3(i32(-2147483648), vec2<f32>(-1000f, -623f), true, Struct_1(4294967295u, -1i), vec4<bool>(false, false, true, true)), -25521i), Struct_4(Struct_1(706u, 0i), Struct_1(1u, i32(-2147483648)), Struct_3(33638i, vec2<f32>(210f, -864f), false, Struct_1(4294967295u, 0i), vec4<bool>(true, true, true, false)), -40066i), Struct_4(Struct_1(1u, 1i), Struct_1(53925u, -1i), Struct_3(i32(-2147483648), vec2<f32>(1000f, 521f), true, Struct_1(11999u, i32(-2147483648)), vec4<bool>(false, false, false, true)), 32778i), Struct_4(Struct_1(0u, -18387i), Struct_1(0u, i32(-2147483648)), Struct_3(i32(-2147483648), vec2<f32>(-574f, -248f), true, Struct_1(64874u, -1i), vec4<bool>(true, false, true, false)), 7918i), Struct_4(Struct_1(55391u, 22097i), Struct_1(24664u, 2147483647i), Struct_3(1i, vec2<f32>(344f, 285f), false, Struct_1(1u, -1i), vec4<bool>(true, true, true, true)), 1i), Struct_4(Struct_1(0u, i32(-2147483648)), Struct_1(70471u, -4712i), Struct_3(-17730i, vec2<f32>(673f, -827f), true, Struct_1(0u, -67869i), vec4<bool>(false, false, false, true)), -6262i), Struct_4(Struct_1(17543u, i32(-2147483648)), Struct_1(13993u, 32811i), Struct_3(1i, vec2<f32>(778f, -493f), true, Struct_1(0u, -6498i), vec4<bool>(true, false, false, false)), -1i), Struct_4(Struct_1(23605u, 20037i), Struct_1(42487u, -18952i), Struct_3(-23746i, vec2<f32>(1000f, -1454f), false, Struct_1(77469u, 2706i), vec4<bool>(true, false, true, false)), -9536i), Struct_4(Struct_1(1u, -61439i), Struct_1(4294967295u, i32(-2147483648)), Struct_3(2147483647i, vec2<f32>(602f, 251f), false, Struct_1(0u, 1i), vec4<bool>(true, false, true, false)), -15996i), Struct_4(Struct_1(4294967295u, 1i), Struct_1(1u, -3701i), Struct_3(3330i, vec2<f32>(2344f, -626f), true, Struct_1(4294967295u, 34654i), vec4<bool>(true, false, true, false)), i32(-2147483648)), Struct_4(Struct_1(14661u, 0i), Struct_1(1u, 0i), Struct_3(13355i, vec2<f32>(-1425f, -1114f), true, Struct_1(1680u, -17813i), vec4<bool>(false, false, true, true)), -20640i), Struct_4(Struct_1(1u, -50747i), Struct_1(0u, 0i), Struct_3(1i, vec2<f32>(-1137f, -785f), true, Struct_1(4294967295u, 1i), vec4<bool>(true, false, true, true)), 0i), Struct_4(Struct_1(1u, 2147483647i), Struct_1(0u, -26232i), Struct_3(-39432i, vec2<f32>(-197f, 1147f), false, Struct_1(0u, -1i), vec4<bool>(true, true, true, true)), -1i), Struct_4(Struct_1(25045u, 2147483647i), Struct_1(48050u, 51864i), Struct_3(14131i, vec2<f32>(1502f, -353f), true, Struct_1(10208u, 33125i), vec4<bool>(false, true, true, false)), -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-481f, _wgslsmith_f_op_f32(741f - _wgslsmith_f_op_f32(min(218f, _wgslsmith_f_op_f32(max(1024f, 1875f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1580f * -510f), -377f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f - -1148f) - _wgslsmith_f_op_f32(floor(1189f))) - -1823f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1065f, _wgslsmith_f_op_f32(trunc(-1086f)), _wgslsmith_f_op_f32(min(311f, -751f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-405f, -620f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = vec3<f32>(2230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), var_0.x);
    global0 = array<i32, 4>();
    let var_2 = var_1.x;
    let var_3 = arg_1.b;
    return max(0u, firstTrailingBit(~var_3.a));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_4, 28>();
    var var_0 = u_input.a.zy;
    var var_1 = _wgslsmith_f_op_f32(max(-1823f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(446f * 2038f))))))));
    global0 = array<i32, 4>();
    return Struct_2(Struct_1(func_3(u_input.b.x, Struct_2(Struct_1(0u, 2147483647i), Struct_1(u_input.b.x, u_input.c))), ~(-10497i | var_0.x) ^ var_0.x), Struct_1(countOneBits(_wgslsmith_clamp_u32(0u, u_input.b.x, 32297u)), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], -42820i, u_input.a.x) | vec4<i32>(global0[_wgslsmith_index_u32(6189u, 4u)], u_input.c, 0i, -37212i)), -countOneBits(vec4<i32>(33820i, u_input.c, -2147483647i, 1i)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_1 {
    return arg_0.a;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(697f)))))), 373f, 381f);
    var var_1 = Struct_2(func_2().b, func_4(Struct_2(Struct_1(~0u, 1i), func_4(Struct_2(arg_0, arg_0), u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(arg_0.a, 25149u)), 28u)])), -reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], -1i, 9687i)), global1[_wgslsmith_index_u32(0u, 28u)]));
    global1 = array<Struct_4, 28>();
    return Struct_4(var_1.b, func_2().a, Struct_3(24535i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) - var_0.zx) - _wgslsmith_f_op_vec2_f32(var_0.yx + vec2<f32>(989f, -1090f))), true, Struct_1(~(~var_1.a.a), abs(arg_0.b)), select(vec4<bool>(-1001f > var_0.x, 737f > var_0.x, var_0.x <= 189f, true), vec4<bool>(any(vec3<bool>(true, false, true)), var_1.b.a < arg_0.a, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_sub_i32(~(2147483647i >> (0u % 32u)) >> (1u % 32u), _wgslsmith_add_i32(arg_0.b, ~firstTrailingBit(arg_0.b))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<i32, 4>();
    global1 = array<Struct_4, 28>();
    global1 = array<Struct_4, 28>();
    global0 = array<i32, 4>();
    var var_0 = func_5(Struct_1(1u << (arg_1.b.a % 32u), global0[_wgslsmith_index_u32(select(u_input.b.x, select(~3477u, 1u, arg_1.c.e.x & arg_1.c.e.x), ~arg_1.a.a > _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.a, u_input.b.x), u_input.b.xy)), 4u)])).c;
    return var_0.d;
}

fn func_1() -> Struct_2 {
    let var_0 = !((false || (true | (5719u >= u_input.b.x))) | all(vec2<bool>(true, true)));
    var var_1 = func_6(vec3<bool>((u_input.b.x > ~3896u) && true, false, false), func_5(func_4(func_2(), u_input.a, Struct_4(Struct_1(u_input.b.x, u_input.c), Struct_1(60099u, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), Struct_3(u_input.c, vec2<f32>(454f, 1061f), true, Struct_1(u_input.b.x, u_input.a.x), vec4<bool>(var_0, false, var_0, var_0)), -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) - -905f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1439f + -1000f))))), _wgslsmith_div_vec2_i32(vec2<i32>(max(u_input.a.x | -11652i, global0[_wgslsmith_index_u32(1u, 4u)]), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -1i, -10051i), vec4<i32>(u_input.c, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]))), reverseBits(-vec2<i32>(-2147483647i, -23348i))));
    let var_2 = Struct_1(~(~u_input.b.x), func_4(func_2(), -select(vec3<i32>(u_input.c, -2147483647i, -21262i) & vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 1i), min(u_input.a, vec3<i32>(var_1.b, global0[_wgslsmith_index_u32(0u, 4u)], 20802i)), func_5(Struct_1(31506u, 0i)).c.e.yzz), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, ~func_6(vec3<bool>(var_0, var_0, false), Struct_4(Struct_1(u_input.b.x, u_input.c), Struct_1(1u, -2147483647i), Struct_3(1i, vec2<f32>(-1000f, -559f), var_0, Struct_1(u_input.b.x, -33204i), vec4<bool>(true, var_0, var_0, false)), var_1.b), -1330f, vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)])).a), 28u)]).b);
    let var_3 = global1[_wgslsmith_index_u32(~u_input.b.x, 28u)];
    global1 = array<Struct_4, 28>();
    return Struct_2(Struct_1(~var_1.a, firstLeadingBit(~var_2.b << (1u % 32u))), func_5(func_4(func_2(), vec3<i32>(min(var_3.b.b, -23294i), var_2.b, -2147483647i), func_5(Struct_1(0u, global0[_wgslsmith_index_u32(4294967295u, 4u)])))).a);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_3.b.a, 4u)];
    let var_1 = func_5(arg_3.a).c;
    let var_2 = arg_0.a.a;
    global1 = array<Struct_4, 28>();
    var var_3 = !(!(!vec2<bool>(!var_1.c, !var_1.c)));
    return Struct_1(u_input.b.x, func_1().a.b);
}

fn func_8(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(51681u, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 4u)] | u_input.a.x) | _wgslsmith_div_i32(arg_0.c.d.b, u_input.c)), func_1().a);
    var var_1 = func_5(func_7(Struct_2(var_0.b, Struct_1(60903u, var_0.b.b)), arg_0.b, vec4<u32>(~(4294967295u << (arg_0.c.d.a % 32u)), func_7(Struct_2(arg_1, Struct_1(arg_0.c.d.a, u_input.c)), arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, arg_1.a, 48307u, arg_0.a.a), vec4<u32>(arg_1.a, arg_0.a.a, 22707u, 4294967295u)), Struct_2(var_0.b, Struct_1(arg_1.a, arg_1.b))).a, ~1u, 1u), func_2())).a;
    global1 = array<Struct_4, 28>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    var var_0 = !(true | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-119f * -193f), 1378f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1411f)) * 2134f)));
    let var_1 = func_8(Struct_4(func_7(func_1(), Struct_1(0u, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(21798u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], 0i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], -1i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 0i))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 102042u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u))), func_2()), Struct_1(u_input.b.x, max(2147483647i, func_5(Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(1649u, 4u)])).a.b)), Struct_3(~(-22606i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(240f, 473f))), true, func_6(vec3<bool>(true, true, true), func_5(Struct_1(u_input.b.x, 1i)), -1205f, vec2<i32>(u_input.a.x, -62039i) << (vec2<u32>(33854u, 0u) % vec2<u32>(32u))), vec4<bool>(true, true, true, true)), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 61445i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.a.x, -25161i, u_input.a.x)), vec4<i32>(29475i, 2147483647i, 1i, -18399i))), Struct_1(func_4(func_1(), u_input.a >> ((u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_4(Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), func_2().b, Struct_3(global0[_wgslsmith_index_u32(1u, 4u)], vec2<f32>(1000f, -620f), false, Struct_1(u_input.b.x, u_input.a.x), vec4<bool>(true, true, true, true)), ~(-9632i))).a, 2147483647i));
    let var_2 = min(firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(50080u, 4294967295u) >> (vec2<u32>(var_1.b.a, var_1.a.a) % vec2<u32>(32u)), u_input.b.zz) | _wgslsmith_add_vec2_u32(u_input.b.xx, ~vec2<u32>(u_input.b.x, var_1.b.a))), vec2<u32>(var_1.b.a, _wgslsmith_add_u32(1u, var_1.b.a) >> (func_4(Struct_2(Struct_1(72143u, global0[_wgslsmith_index_u32(5912u, 4u)]), var_1.b), vec3<i32>(1i, -1i, global0[_wgslsmith_index_u32(var_1.a.a, 4u)]), Struct_4(var_1.a, Struct_1(0u, var_1.b.b), Struct_3(u_input.c, vec2<f32>(142f, -1745f), false, Struct_1(1u, 40149i), vec4<bool>(false, false, true, true)), 2147483647i)).a % 32u)) ^ vec2<u32>(u_input.b.x, select(21119u << (var_1.a.a % 32u), _wgslsmith_sub_u32(var_1.a.a, 4294967295u), true)));
    global0 = array<i32, 4>();
    let var_3 = func_4(func_2(), vec3<i32>(-1i, 2147483647i, 1i), func_5(var_1.b));
    var_0 = true;
    var var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(~47288u, 4u)], _wgslsmith_mod_i32(select(i32(-1i) * -2147483647i, max(0i, -9192i), true), var_3.b & 46621i)), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, var_1.a.b ^ -1i), func_7(Struct_2(Struct_1(0u, 2147483647i), Struct_1(21471u, -4538i)), var_1.b, vec4<u32>(0u, var_2.x, 32841u | var_3.a, ~0u), var_1).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(-585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2180f, -169f))), -803f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, -1000f, 296f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-829f, -1029f, -673f) * vec3<f32>(-922f, -1000f, -593f))))));
}

