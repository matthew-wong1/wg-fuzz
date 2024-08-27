struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(28506i, 0i);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<i32>(8325i, -108516i), vec3<i32>(9121i, -14060i, 2147483647i), vec2<bool>(true, true), vec2<f32>(-1891f, 514f), vec3<u32>(29491u, 4294967295u, 73637u)), vec2<f32>(1547f, 363f)), Struct_2(Struct_1(vec2<i32>(1i, -15820i), vec3<i32>(2147483647i, -27285i, 2147483647i), vec2<bool>(true, true), vec2<f32>(-166f, -1407f), vec3<u32>(4294967295u, 21627u, 0u)), vec2<f32>(-634f, -1025f)), Struct_2(Struct_1(vec2<i32>(1i, -5898i), vec3<i32>(32577i, 18566i, 2147483647i), vec2<bool>(true, true), vec2<f32>(802f, -1069f), vec3<u32>(63088u, 0u, 8961u)), vec2<f32>(396f, 265f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<i32>(62923i, 15614i, 12111i), vec2<bool>(true, false), vec2<f32>(381f, -672f), vec3<u32>(1u, 4294967295u, 4294967295u)), vec2<f32>(-1169f, 1000f)), Struct_2(Struct_1(vec2<i32>(-65051i, 2147483647i), vec3<i32>(27641i, 2328i, -58497i), vec2<bool>(false, false), vec2<f32>(605f, 1245f), vec3<u32>(23547u, 5380u, 4294967295u)), vec2<f32>(-1375f, -185f)), Struct_2(Struct_1(vec2<i32>(-39316i, 2147483647i), vec3<i32>(1i, 31445i, 0i), vec2<bool>(false, false), vec2<f32>(1433f, 280f), vec3<u32>(53638u, 46662u, 8737u)), vec2<f32>(-105f, -1106f)), Struct_2(Struct_1(vec2<i32>(-7186i, i32(-2147483648)), vec3<i32>(1i, 23115i, -1i), vec2<bool>(false, true), vec2<f32>(546f, 740f), vec3<u32>(4294967295u, 33512u, 392u)), vec2<f32>(853f, 1000f)), Struct_2(Struct_1(vec2<i32>(-91313i, -1i), vec3<i32>(-4006i, -2269i, 1i), vec2<bool>(true, false), vec2<f32>(-560f, -1829f), vec3<u32>(1u, 73791u, 26915u)), vec2<f32>(-751f, -632f)), Struct_2(Struct_1(vec2<i32>(-1i, -13415i), vec3<i32>(24334i, -1i, -1i), vec2<bool>(false, true), vec2<f32>(878f, 1632f), vec3<u32>(922u, 4294967295u, 1u)), vec2<f32>(-389f, -536f)), Struct_2(Struct_1(vec2<i32>(-616i, 2147483647i), vec3<i32>(2147483647i, 1i, 33302i), vec2<bool>(false, true), vec2<f32>(-1000f, -872f), vec3<u32>(0u, 0u, 2569u)), vec2<f32>(918f, 1013f)), Struct_2(Struct_1(vec2<i32>(22008i, 0i), vec3<i32>(-20224i, -9579i, -1680i), vec2<bool>(false, false), vec2<f32>(-1012f, 843f), vec3<u32>(1u, 4294967295u, 20928u)), vec2<f32>(639f, 148f)), Struct_2(Struct_1(vec2<i32>(17941i, i32(-2147483648)), vec3<i32>(-19593i, 0i, 25981i), vec2<bool>(false, true), vec2<f32>(146f, 1000f), vec3<u32>(54910u, 1u, 0u)), vec2<f32>(-869f, -1319f)), Struct_2(Struct_1(vec2<i32>(69117i, -14904i), vec3<i32>(0i, i32(-2147483648), 0i), vec2<bool>(false, true), vec2<f32>(-992f, 965f), vec3<u32>(9800u, 4294967295u, 46212u)), vec2<f32>(938f, 368f)), Struct_2(Struct_1(vec2<i32>(40840i, -43554i), vec3<i32>(-1i, 2147483647i, -1i), vec2<bool>(false, true), vec2<f32>(-2174f, 502f), vec3<u32>(1u, 4294967295u, 4294967295u)), vec2<f32>(1556f, -2061f)), Struct_2(Struct_1(vec2<i32>(-37840i, 2147483647i), vec3<i32>(i32(-2147483648), -7840i, -43091i), vec2<bool>(false, false), vec2<f32>(332f, -1507f), vec3<u32>(17272u, 5258u, 0u)), vec2<f32>(722f, 549f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 13915i), vec3<i32>(-37599i, 2147483647i, 48229i), vec2<bool>(false, true), vec2<f32>(421f, 349f), vec3<u32>(18194u, 1u, 53448u)), vec2<f32>(1926f, -1000f)), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), vec3<i32>(0i, 8219i, -20520i), vec2<bool>(false, true), vec2<f32>(-1096f, 2083f), vec3<u32>(0u, 4294967295u, 25481u)), vec2<f32>(-2073f, -308f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec2<bool>(false, true), vec2<f32>(-188f, 840f), vec3<u32>(1u, 0u, 4294967295u)), vec2<f32>(-743f, -750f)), Struct_2(Struct_1(vec2<i32>(2816i, -1i), vec3<i32>(-1i, 0i, -39620i), vec2<bool>(false, false), vec2<f32>(902f, 741f), vec3<u32>(38691u, 1u, 0u)), vec2<f32>(-1000f, -211f)), Struct_2(Struct_1(vec2<i32>(-6386i, 25183i), vec3<i32>(-1i, -1i, -1i), vec2<bool>(false, true), vec2<f32>(675f, -2087f), vec3<u32>(43091u, 4294967295u, 4294967295u)), vec2<f32>(-1143f, 311f)), Struct_2(Struct_1(vec2<i32>(-1206i, i32(-2147483648)), vec3<i32>(-44877i, 32052i, i32(-2147483648)), vec2<bool>(true, true), vec2<f32>(-3237f, -154f), vec3<u32>(1u, 12654u, 6807u)), vec2<f32>(257f, 789f)), Struct_2(Struct_1(vec2<i32>(2147483647i, 20900i), vec3<i32>(-36406i, -16180i, 24330i), vec2<bool>(false, false), vec2<f32>(-614f, -864f), vec3<u32>(20167u, 0u, 4294967295u)), vec2<f32>(-1805f, 144f)), Struct_2(Struct_1(vec2<i32>(-46448i, 25065i), vec3<i32>(-656i, 1i, i32(-2147483648)), vec2<bool>(true, true), vec2<f32>(-499f, 512f), vec3<u32>(1u, 4294967295u, 10417u)), vec2<f32>(-303f, -1311f)), Struct_2(Struct_1(vec2<i32>(0i, -9737i), vec3<i32>(-3049i, -56861i, 0i), vec2<bool>(false, false), vec2<f32>(1264f, -592f), vec3<u32>(19541u, 1u, 1u)), vec2<f32>(1099f, 2024f)), Struct_2(Struct_1(vec2<i32>(-13610i, -27501i), vec3<i32>(-5662i, 2147483647i, 2147483647i), vec2<bool>(true, true), vec2<f32>(-1594f, -834f), vec3<u32>(30579u, 1u, 57480u)), vec2<f32>(-649f, -843f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 12200i), vec3<i32>(-39536i, -17908i, -1i), vec2<bool>(false, true), vec2<f32>(215f, -1110f), vec3<u32>(0u, 0u, 46251u)), vec2<f32>(-1261f, -651f)));

var<private> global2: vec2<i32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    global2 = arg_1.a.b.yz;
    var var_0 = Struct_3(arg_1.a.d, Struct_2(Struct_1(min(~arg_1.a.b.xx, vec2<i32>(-15931i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 2147483647i, global0.x), u_input.c.www) & arg_1.a.b, arg_1.a.c, arg_1.a.d, vec3<u32>(_wgslsmith_mod_u32(arg_1.a.e.x, 4294967295u), _wgslsmith_sub_u32(u_input.d.x, 13231u), countOneBits(76510u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(arg_1.a.d.x, arg_1.b.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(632f, arg_1.b.x) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.d.x, arg_1.b.x), vec2<f32>(arg_1.b.x, arg_1.a.d.x))))), arg_1.a, Struct_1(arg_1.a.b.xz | -vec2<i32>(global0.x, 4871i), min(~(vec3<i32>(9403i, global2.x, 7314i) ^ vec3<i32>(global2.x, -1i, 43424i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 0i, -2147483647i), arg_1.a.b) >> (vec3<u32>(arg_1.a.e.x, u_input.d.x, arg_1.a.e.x) % vec3<u32>(32u))), vec2<bool>(true, any(arg_1.a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(arg_1.a.d.x, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(-arg_1.a.d))), arg_1.a.e));
    global0 = _wgslsmith_mod_vec2_i32(var_0.c.b.yz << (var_0.b.a.e.yx % vec2<u32>(32u)), abs(-countOneBits(u_input.b.zy >> (vec2<u32>(0u, 1626u) % vec2<u32>(32u)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * 1358f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) + -920f), 906f, 237f);
    let var_2 = _wgslsmith_mod_vec4_u32(~(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(56348u, arg_1.a.e.x, 16632u, u_input.d.x), vec4<u32>(var_0.b.a.e.x, arg_1.a.e.x, u_input.d.x, 33185u)), select(vec4<u32>(var_0.b.a.e.x, var_0.c.e.x, 56709u, u_input.d.x), vec4<u32>(92409u, var_0.c.e.x, arg_1.a.e.x, 0u), true), vec4<u32>(15756u, 4294967295u, u_input.d.x, 76209u)) | ~(vec4<u32>(u_input.d.x, var_0.d.e.x, u_input.d.x, arg_1.a.e.x) & vec4<u32>(36566u, var_0.b.a.e.x, 10600u, arg_1.a.e.x))), abs(vec4<u32>(1u, var_0.d.e.x, select(1u, arg_1.a.e.x, var_0.d.c.x), ~6611u)) << (abs(~(~vec4<u32>(u_input.d.x, 0u, var_0.c.e.x, u_input.d.x))) % vec4<u32>(32u)));
    return u_input.a;
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_2, 26>();
    var var_0 = global2.x;
    global1 = array<Struct_2, 26>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1660f, 1454f)), global1[_wgslsmith_index_u32(~105547u, 26u)], Struct_1(select(vec2<i32>(global0.x, func_3(true, Struct_2(Struct_1(u_input.b.zz, vec3<i32>(7349i, 0i, global2.x), vec2<bool>(false, false), vec2<f32>(-106f, -554f), vec3<u32>(u_input.d.x, 0u, u_input.d.x)), vec2<f32>(1232f, 776f)))), vec2<i32>(-64900i, abs(global2.x)), vec2<bool>(true, true)), firstTrailingBit(countOneBits(-u_input.b)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(536f)), -434f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-267f, 1163f))), vec2<f32>(-458f, -1856f))), _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 1u, 1u), vec3<u32>(5541u, u_input.d.x, u_input.d.x))), ~vec3<u32>(u_input.d.x, 121811u, u_input.d.x))), Struct_1(_wgslsmith_sub_vec2_i32(u_input.c.yx, vec2<i32>(_wgslsmith_mod_i32(-6571i, u_input.a), -10803i)), select(u_input.c.zzy, u_input.b, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-846f, -193f)))), vec3<u32>(countOneBits(u_input.d.x), u_input.d.x, u_input.d.x | _wgslsmith_mult_u32(0u, u_input.d.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    global2 = vec2<i32>(global2.x, arg_1.b.a.b.x);
    global0 = arg_1.d.a;
    global0 = select(u_input.c.ww, ~(-vec2<i32>(20735i, reverseBits(2147483647i))), !any(!vec4<bool>(arg_1.c.c.x, arg_1.c.c.x, arg_1.d.c.x, true)));
    let var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(53201u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, arg_0.c), arg_1.b.a.e << (arg_1.d.e % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec3_u32(arg_1.d.e, arg_1.c.e))))), 26u)];
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, arg_0.d)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2190f, 2664f)))))), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 0u, 0u) | ~vec4<u32>(33253u, 1u, 25010u, u_input.d.x), vec4<u32>(77143u, 28645u, 29217u, 4294967295u) & vec4<u32>(arg_0.c, arg_0.c, 0u, u_input.d.x)), arg_0.c), 26u)], var_0.a, func_2().d);
    return global1[_wgslsmith_index_u32(u_input.d.x ^ 0u, 26u)];
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) & 4294967295u, _wgslsmith_mult_u32(~(~1u), ~u_input.d.x), _wgslsmith_div_u32(arg_0, 4294967295u));
    let var_1 = vec4<u32>(~(~(~0u) & _wgslsmith_div_u32(max(u_input.d.x, var_0.x), ~var_0.x)), ~select(firstTrailingBit(u_input.d.x) | _wgslsmith_dot_vec3_u32(var_0, var_0), min(0u & u_input.d.x, ~arg_0), true), 18073u, u_input.d.x);
    global1 = array<Struct_2, 26>();
    var var_2 = select(1u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1796u, 71635u), var_1.xx)), all(vec4<bool>(true, true, true, true)));
    global2 = abs(vec2<i32>(u_input.b.x, -50527i));
    return func_4(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1337f, 671f, true)), -3413f, _wgslsmith_f_op_f32(904f - -1000f))), _wgslsmith_div_f32(-438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-365f)) - _wgslsmith_f_op_f32(f32(-1f) * -477f))), var_1.x, -1445f), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b.xy;
    var var_0 = func_1(4294967295u);
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(var_0.b.x * var_1.d.d.x);
    var_0 = Struct_2(var_0.a, var_0.a.d);
    global2 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.a.b, u_input.c.xxz), ~2147483647i);
    global0 = firstTrailingBit(u_input.c.xx);
    let var_3 = Struct_5(max(~_wgslsmith_dot_vec3_u32(var_1.c.e, ~var_1.b.a.e), var_1.d.e.x), -48358i, var_1.a, vec3<bool>(!any(vec2<bool>(var_0.a.c.x, false)), !(var_1.b.a.c.x == !var_1.c.c.x), !var_1.d.c.x), Struct_1(vec2<i32>(global2.x & u_input.a, _wgslsmith_add_i32(11172i, -1i)) | reverseBits(vec2<i32>(-3043i, global2.x)), u_input.b, func_2().b.a.c, _wgslsmith_f_op_vec2_f32(sign(var_1.c.d)), ~(~func_1(12399u).a.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-632f)))), var_1.a.x, vec3<i32>(reverseBits(1i), ~_wgslsmith_add_i32(func_4(Struct_4(vec3<f32>(var_1.a.x, var_3.c.x, 510f), var_0.a.d.x, 0u, 521f), var_1).a.b.x, 17335i), _wgslsmith_sub_i32(var_0.a.a.x, var_1.c.a.x)), vec3<i32>(global2.x >> (0u % 32u), _wgslsmith_div_i32(-69374i | (global2.x & global0.x), ~(i32(-1i) * -1i)), 1i));
}

