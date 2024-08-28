struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<f32>(-1000f, 1156f, -609f), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 0u, vec2<bool>(false, true), vec3<i32>(1i, -20605i, 35861i)), 30631u, vec3<bool>(true, true, false));

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-367f, -408f), vec2<f32>(749f, -1221f), vec2<f32>(-800f, -1162f), vec2<f32>(-1160f, 159f), vec2<f32>(1540f, -1582f), vec2<f32>(-158f, 543f), vec2<f32>(-1806f, -1032f), vec2<f32>(-1547f, -1126f), vec2<f32>(-952f, 1079f), vec2<f32>(523f, -733f), vec2<f32>(1939f, 617f), vec2<f32>(-1368f, 325f), vec2<f32>(-216f, -1995f), vec2<f32>(-1702f, 2479f), vec2<f32>(1068f, -1851f), vec2<f32>(-1045f, 202f), vec2<f32>(-898f, 1274f), vec2<f32>(-739f, 982f), vec2<f32>(794f, -966f), vec2<f32>(581f, 240f), vec2<f32>(190f, -350f), vec2<f32>(-180f, -479f), vec2<f32>(-765f, 1639f), vec2<f32>(-612f, -629f), vec2<f32>(-449f, -1000f), vec2<f32>(-1000f, -734f), vec2<f32>(-786f, -149f), vec2<f32>(1000f, 799f), vec2<f32>(333f, -1000f), vec2<f32>(-429f, 1813f), vec2<f32>(-161f, 124f), vec2<f32>(-471f, 1397f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    global0 = global1.a.d.x == global1.c.x;
    global2 = array<vec2<f32>, 32>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(-2054f * _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.a * global1.a.a))), vec3<i32>(-1i) * -u_input.e.xwz, ~_wgslsmith_add_u32(~global1.a.c, u_input.a), !global1.c.xx, abs(global1.a.e));
    global1 = Struct_3(global1.a, 0u, !(!(!(!global1.c))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2010f * -1892f)), _wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a.x, -172f))), _wgslsmith_div_f32(363f, -565f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.a.a.x)))));
    return -526f;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global2 = array<vec2<f32>, 32>();
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec4_i32(-countOneBits(u_input.e >> (vec4<u32>(19895u, arg_0, u_input.a, arg_0) % vec4<u32>(32u))), ~u_input.e));
    global0 = global1.a.d.x;
    var var_1 = 10783i;
    let var_2 = _wgslsmith_sub_u32(1u, reverseBits(~(~arg_0)));
    return Struct_3(Struct_1(vec3<f32>(1223f, global1.a.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec2<f32>(1001f, global1.a.a.x), global1.a.e.x, vec4<u32>(4294967295u, var_2, 0u, u_input.a))), global1.a.a.x))), ~vec3<i32>(~21713i, var_0.x, var_0.x), countOneBits(abs(~global1.b)), select(vec2<bool>(global1.a.d.x, true), vec2<bool>(global1.a.d.x && true, true), select(true, true, false)), vec3<i32>(2147483647i, ~(-59492i), reverseBits(-2147483647i)) >> (~(~vec3<u32>(0u, global1.a.c, 5447u)) % vec3<u32>(32u))), ~global1.a.c, select(!global1.c, select(select(select(global1.c, global1.c, vec3<bool>(global1.a.d.x, global1.c.x, true)), select(global1.c, vec3<bool>(false, false, true), false), all(vec4<bool>(false, false, false, global1.a.d.x))), select(vec3<bool>(global1.c.x, true, global1.c.x), !global1.c, !vec3<bool>(true, global1.a.d.x, false)), false), global1.a.d.x));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    global1 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(global1.a.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(arg_2.b.a))))), arg_2.c, firstLeadingBit(global1.a.c), select(global1.a.d, vec2<bool>(!global1.c.x, true), vec2<bool>(arg_1.b < global1.b, arg_1.c.x)), (-vec3<i32>(arg_2.c.x, 2147483647i, global1.a.e.x) << (arg_3.xzx % vec3<u32>(32u))) ^ ~select(vec3<i32>(global1.a.b.x, -1i, -1i), arg_2.c, vec3<bool>(true, true, true))), u_input.a, arg_1.c);
    var var_0 = -(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global1.a.b, min(vec3<i32>(arg_2.c.x, 2147483647i, global1.a.b.x), arg_1.a.b)), vec3<i32>(arg_1.a.e.x, -arg_1.a.b.x, u_input.d)) >> (vec3<u32>(21936u, 113016u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 55561u, arg_1.b, arg_2.b.c), reverseBits(arg_3))) % vec3<u32>(32u)));
    let var_1 = select(!select(vec3<bool>(true, all(vec3<bool>(arg_2.b.d.x, global1.a.d.x, global1.c.x)), func_2(92116u).c.x), !vec3<bool>(arg_2.b.d.x, false, true), !vec3<bool>(arg_1.c.x, arg_1.a.d.x, true)), vec3<bool>(arg_2.b.d.x, !func_2(~arg_3.x).c.x, global1.c.x), select(global1.c.x, true, true));
    let var_2 = global1.a.b;
    global0 = select(arg_2.a.x, any(select(!vec2<bool>(var_1.x, false), select(!global1.a.d, arg_1.c.yx, vec2<bool>(arg_1.c.x, global1.c.x)), _wgslsmith_div_i32(arg_1.a.e.x, arg_2.b.b.x) <= var_2.x)), false);
    return global1.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18458u), vec2<u32>(global1.a.c, u_input.a)) | select(0u, u_input.a, true)), arg_0.c));
    return Struct_3(func_4(_wgslsmith_f_op_f32(-arg_3.x), func_2(arg_2.c), Struct_2(var_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, var_0.a.a.x, -615f) + var_0.a.a), u_input.e.xzz, ~global1.a.c, vec2<bool>(false, global1.c.x), vec3<i32>(var_0.a.b.x, u_input.e.x, var_0.a.e.x)), ~(~arg_0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c, global1.a.c, 37502u, 56487u) << (vec4<u32>(37574u, 70005u, var_0.a.c, 0u) % vec4<u32>(32u)), vec4<u32>(arg_0.c, 4294967295u, 71623u, 0u) & vec4<u32>(57640u, var_0.b, arg_2.c, arg_0.c)) & max(abs(vec4<u32>(arg_2.c, u_input.a, var_0.a.c, u_input.a)), ~vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a))), ~func_4(1739f, func_2(4294967295u), Struct_2(select(var_0.c, var_0.c, var_0.c.x), func_4(420f, var_0, Struct_2(vec3<bool>(global1.c.x, false, arg_0.d.x), global1.a, vec3<i32>(-9893i, arg_2.e.x, arg_2.e.x)), vec4<u32>(1u, arg_2.c, 66556u, 25441u)), vec3<i32>(-1i, u_input.c, u_input.c)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(20014u, 28219u, 16638u, var_0.a.c), vec4<u32>(63103u, arg_0.c, arg_2.c, u_input.b))).c, vec3<bool>(arg_2.d.x, true, !func_2(var_0.a.c ^ 3445u).c.x));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_4 {
    return Struct_4(u_input.e.x, ~(arg_1.b ^ ~u_input.a) << (~4294967295u % 32u), func_2(arg_0.b));
}

fn func_1() -> Struct_3 {
    var var_0 = func_6(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(750f, global1.a.a.x, global1.a.a.x))) - vec3<f32>(-656f, 1000f, 777f)), u_input.e.yww ^ vec3<i32>(global1.a.b.x, u_input.e.x, 32422i), 1u, !global1.c.xz, abs(u_input.e.www)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f * 688f)), global1.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-268f - global1.a.a.x), global1.a.a.x)), global1.a.a.x), func_4(_wgslsmith_f_op_f32(-494f + global1.a.a.x), func_2(4294967295u), Struct_2(select(global1.c, global1.c, global1.c.x), global1.a, ~u_input.e.zyz), min(vec4<u32>(global1.a.c, 46309u, u_input.b, u_input.a) >> (vec4<u32>(u_input.a, 4294967295u, global1.b, global1.a.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 5072u), vec4<u32>(4294967295u, 0u, 26145u, 1u)))), _wgslsmith_f_op_vec3_f32(global1.a.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, global1.a.a.x, global1.a.a.x) + _wgslsmith_f_op_vec3_f32(trunc(global1.a.a))))), func_2(func_5(Struct_1(global1.a.a, vec3<i32>(1i, 4362i, 1i), select(u_input.b, u_input.a, true), vec2<bool>(global1.a.d.x, global1.a.d.x), ~global1.a.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, global1.a.a.x, 269f, global1.a.a.x) - vec4<f32>(-1575f, -299f, global1.a.a.x, 1015f))), func_5(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, global1.a.a.x, -384f, global1.a.a.x) - vec4<f32>(-389f, global1.a.a.x, global1.a.a.x, -1967f)), Struct_1(global1.a.a, u_input.e.zxw, 53763u, vec2<bool>(global1.a.d.x, global1.a.d.x), vec3<i32>(global1.a.b.x, -2147483647i, u_input.e.x)), _wgslsmith_f_op_vec3_f32(-global1.a.a)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, global1.a.a.x, global1.a.a.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.a.x, 146f, global1.a.a.x), global1.a.a)))).b));
    let var_1 = global1.a;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i, (global1.a.b.x << (reverseBits(8585u) % 32u)) >> (0u % 32u), var_1.e.x >> ((_wgslsmith_mod_u32(var_0.b, 92231u) >> (1u % 32u)) % 32u), countOneBits(1i)), _wgslsmith_div_vec4_i32(select(u_input.e, u_input.e, var_1.b.x <= var_0.a), ~u_input.e));
    var var_3 = func_5(func_4(var_1.a.x, func_2(_wgslsmith_clamp_u32(7634u, 71681u, u_input.b)), Struct_2(var_0.c.c, Struct_1(vec3<f32>(global1.a.a.x, 470f, global1.a.a.x), u_input.e.xww, firstLeadingBit(var_1.c), !vec2<bool>(false, var_1.d.x), vec3<i32>(-29351i, -1i, 10337i)), vec3<i32>(~u_input.d, -u_input.e.x, i32(-1i) * -1i)), select(vec4<u32>(49463u, var_1.c, global1.b, global1.b), vec4<u32>(39420u, global1.b, 4294967295u, var_0.c.b), select(vec4<bool>(var_0.c.a.d.x, true, false, global1.a.d.x), vec4<bool>(var_1.d.x, false, true, false), vec4<bool>(global1.a.d.x, global1.a.d.x, true, var_1.d.x))) << (abs(vec4<u32>(42787u, 1u, global1.b, global1.b) | vec4<u32>(63120u, 13303u, 42980u, u_input.b)) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_f32(877f, -2175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(var_1.a.yx + var_0.c.a.a.zz), ~var_1.b.x, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 2580u, 1u, 1u), vec4<u32>(43866u, global1.a.c, 17611u, global1.a.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1925f))) - -258f), _wgslsmith_f_op_f32(865f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f) * func_4(-101f, Struct_3(global1.a, u_input.a, var_0.c.c), Struct_2(var_0.c.c, var_0.c.a, vec3<i32>(var_0.a, u_input.e.x, 0i)), vec4<u32>(u_input.b, var_0.c.b, var_0.c.b, var_0.b)).a.x))), Struct_1(var_0.c.a.a, func_5(global1.a, vec4<f32>(_wgslsmith_f_op_f32(abs(-261f)), var_0.c.a.a.x, global1.a.a.x, var_0.c.a.a.x), global1.a, vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.a.x * global1.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -884f), 2218f)).a.e, min(4294967295u, 1u), vec2<bool>(!(!var_0.c.c.x), var_0.c.c.x), vec3<i32>(reverseBits(global1.a.e.x), -16514i, _wgslsmith_clamp_i32(var_1.e.x | var_0.c.a.e.x, ~2147483647i, -48551i))), var_0.c.a.a);
    var var_4 = func_6(Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), var_3.a.a.x, _wgslsmith_f_op_f32(var_3.a.a.x - var_1.a.x)), _wgslsmith_sub_vec3_i32(countOneBits(var_2.wxy), vec3<i32>(-104034i, -1i, var_3.a.e.x)), _wgslsmith_mult_u32(var_0.b, var_1.c), select(!vec2<bool>(var_1.d.x, true), func_4(global1.a.a.x, Struct_3(Struct_1(vec3<f32>(-465f, 348f, var_3.a.a.x), vec3<i32>(global1.a.e.x, 9417i, u_input.c), 4294967295u, var_3.c.xz, var_2.zyx), global1.b, global1.c), Struct_2(vec3<bool>(false, false, false), global1.a, var_0.c.a.e), vec4<u32>(u_input.b, u_input.b, u_input.a, 56746u)).d, vec2<bool>(true, true)), ~(-global1.a.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, firstLeadingBit(var_1.c), ~var_0.c.a.c), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 79778u, 4294967295u), vec3<u32>(global1.a.c, var_3.a.c, var_3.a.c)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 90207u), vec3<u32>(var_3.a.c, var_1.c, 7759u)))), !(!vec3<bool>(false, var_1.d.x, global1.c.x))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a.x, global1.a.a.x, var_3.a.a.x))), vec3<i32>(~(-10983i), 0i, ~(-1i)), ~global1.a.c << ((u_input.b | 4294967295u) % 32u), var_1.d, var_3.a.b), 118460u, func_6(Struct_3(func_5(global1.a, vec4<f32>(var_0.c.a.a.x, 735f, 181f, -1000f), Struct_1(var_0.c.a.a, global1.a.e, var_0.c.a.c, vec2<bool>(global1.a.d.x, false), vec3<i32>(var_0.c.a.e.x, global1.a.e.x, var_0.c.a.b.x)), vec3<f32>(global1.a.a.x, var_1.a.x, 2352f)).a, ~1u, vec3<bool>(true, true, var_0.c.a.d.x)), func_2(u_input.a | u_input.b)).c.c)).c;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = Struct_3(func_5(func_2(u_input.b >> (~39047u % 32u)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -565f), -186f, global1.a.a.x) - vec4<f32>(-1581f, _wgslsmith_f_op_f32(abs(global1.a.a.x)), _wgslsmith_f_op_f32(global1.a.a.x - 626f), _wgslsmith_f_op_f32(f32(-1f) * -287f))), global1.a, vec3<f32>(_wgslsmith_div_f32(func_4(1337f, Struct_3(Struct_1(global1.a.a, u_input.e.wyz, 3870u, global1.c.xy, vec3<i32>(u_input.d, 20583i, 2147483647i)), 74197u, global1.c), Struct_2(global1.c, global1.a, u_input.e.yyw), vec4<u32>(31733u, u_input.a, 33010u, 1u)).a.x, _wgslsmith_f_op_f32(trunc(global1.a.a.x))), global1.a.a.x, -142f)).a, u_input.b >> (countOneBits(0u) % 32u), vec3<bool>(global1.c.x, false, global1.a.d.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)))) + _wgslsmith_div_f32(933f, var_0.a.a.x));
    var var_2 = var_0;
    var var_3 = select(vec4<bool>(!select(var_0.a.d.x, false, global1.a.d.x), all(select(!vec4<bool>(var_2.a.d.x, true, var_2.c.x, var_0.a.d.x), select(vec4<bool>(true, false, var_2.a.d.x, false), vec4<bool>(global1.a.d.x, true, var_0.a.d.x, var_2.c.x), true), select(var_0.c.x, var_0.a.d.x, var_0.a.d.x))), true, false), vec4<bool>(all(!vec3<bool>(true, var_2.c.x, global1.c.x)), all(!select(vec4<bool>(var_2.c.x, true, true, false), vec4<bool>(var_2.c.x, true, var_0.c.x, true), true)), false, var_0.c.x), !vec4<bool>(var_0.b > firstTrailingBit(global1.a.c), true, (u_input.e.x < u_input.d) && select(false, true, false), var_0.a.d.x));
    let var_4 = var_2.a.a;
    var var_5 = Struct_2(vec3<bool>(~min(34454i, -2598i) <= ~_wgslsmith_add_i32(var_0.a.e.x, var_0.a.b.x), var_2.a.d.x, any(select(vec4<bool>(false, var_2.c.x, true, var_3.x), !vec4<bool>(true, global1.a.d.x, false, var_0.c.x), false))), func_5(global1.a, vec4<f32>(_wgslsmith_div_f32(469f, _wgslsmith_f_op_f32(func_3(global1.a.a.zy, u_input.d, vec4<u32>(0u, 57437u, 55962u, 73335u)))), -1000f, -1006f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2728f)) + 270f)), func_1().a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(u_input.a).a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.a - vec3<f32>(-1000f, -2317f, var_1)) + func_2(var_0.a.c).a.a))).a, var_2.a.e);
    var_3 = vec4<bool>(237f < _wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5.b.a.x)))), var_5.b.d.x, var_2.a.d.x, false);
    var var_6 = var_5.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.c | 56576u, var_0.a.a.x, _wgslsmith_clamp_vec3_i32(var_0.a.e, u_input.e.xzw, vec3<i32>(~var_5.b.e.x, var_0.a.b.x, i32(-1i) * -33710i)) ^ func_5(func_6(var_0, var_0).c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, global1.a.a.x, -327f, -345f)) + vec4<f32>(var_4.x, var_0.a.a.x, 636f, 355f)), var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_2.a.a.x, var_2.a.a.x))) - func_6(Struct_3(global1.a, 72851u, vec3<bool>(var_0.c.x, var_2.a.d.x, var_5.b.d.x)), var_0).c.a.a)).a.e, (var_5.b.b.zx << (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b, var_2.b), vec2<u32>(var_5.b.c, u_input.b), ~vec2<u32>(u_input.b, var_0.b)) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(0i, global1.a.b.x), var_2.a.b.zy));
}

