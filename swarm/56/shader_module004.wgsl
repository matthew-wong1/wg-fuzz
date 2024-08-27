struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
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

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(vec2<f32>(1671f, 1260f), vec3<u32>(4294967295u, 41356u, 0u), vec2<u32>(57309u, 71040u), 349f), Struct_5(vec2<f32>(730f, 848f), vec3<u32>(4294967295u, 62775u, 4294967295u), vec2<u32>(22534u, 0u), 693f), Struct_5(vec2<f32>(564f, -804f), vec3<u32>(29671u, 5131u, 391u), vec2<u32>(16088u, 1u), -324f), Struct_5(vec2<f32>(416f, 2093f), vec3<u32>(0u, 1u, 65963u), vec2<u32>(0u, 4294967295u), -238f), Struct_5(vec2<f32>(-1000f, -312f), vec3<u32>(22879u, 4294967295u, 1u), vec2<u32>(30962u, 4294967295u), -1372f), Struct_5(vec2<f32>(1000f, 1648f), vec3<u32>(62168u, 1u, 0u), vec2<u32>(4507u, 83981u), -1000f), Struct_5(vec2<f32>(515f, 817f), vec3<u32>(37538u, 81452u, 4294967295u), vec2<u32>(6898u, 4294967295u), 1641f), Struct_5(vec2<f32>(-1959f, -233f), vec3<u32>(0u, 130968u, 74799u), vec2<u32>(961u, 4294967295u), -203f), Struct_5(vec2<f32>(-849f, 509f), vec3<u32>(28683u, 10845u, 1u), vec2<u32>(0u, 50815u), -437f), Struct_5(vec2<f32>(1827f, 150f), vec3<u32>(0u, 11746u, 4294967295u), vec2<u32>(0u, 26385u), -1254f), Struct_5(vec2<f32>(1000f, -805f), vec3<u32>(92922u, 37116u, 6044u), vec2<u32>(1u, 1u), -230f), Struct_5(vec2<f32>(1000f, -1249f), vec3<u32>(95726u, 1u, 24488u), vec2<u32>(93663u, 36377u), 880f), Struct_5(vec2<f32>(622f, 587f), vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(1u, 35079u), 569f), Struct_5(vec2<f32>(1983f, -1264f), vec3<u32>(145048u, 53513u, 0u), vec2<u32>(11801u, 4294967295u), 1000f), Struct_5(vec2<f32>(384f, 1703f), vec3<u32>(0u, 14878u, 0u), vec2<u32>(1u, 0u), -1448f), Struct_5(vec2<f32>(747f, 697f), vec3<u32>(0u, 1891u, 30194u), vec2<u32>(1u, 0u), 1000f), Struct_5(vec2<f32>(1108f, 2771f), vec3<u32>(18324u, 0u, 0u), vec2<u32>(0u, 4294967295u), -1225f), Struct_5(vec2<f32>(-751f, 460f), vec3<u32>(4294967295u, 4294967295u, 26585u), vec2<u32>(1u, 1u), 1004f), Struct_5(vec2<f32>(1858f, 141f), vec3<u32>(30200u, 1u, 0u), vec2<u32>(7304u, 1u), -293f), Struct_5(vec2<f32>(1802f, 595f), vec3<u32>(0u, 73771u, 32160u), vec2<u32>(1u, 25548u), -657f), Struct_5(vec2<f32>(826f, -624f), vec3<u32>(0u, 0u, 26865u), vec2<u32>(1u, 21684u), -367f), Struct_5(vec2<f32>(-393f, 1000f), vec3<u32>(20517u, 37333u, 52784u), vec2<u32>(52468u, 57993u), 1877f), Struct_5(vec2<f32>(-1140f, 2437f), vec3<u32>(621u, 1u, 0u), vec2<u32>(4294967295u, 0u), -1447f), Struct_5(vec2<f32>(-391f, -2266f), vec3<u32>(10655u, 4021u, 1u), vec2<u32>(0u, 4294967295u), -367f), Struct_5(vec2<f32>(603f, -1231f), vec3<u32>(4294967295u, 0u, 4294967295u), vec2<u32>(4294967295u, 0u), -851f), Struct_5(vec2<f32>(339f, -851f), vec3<u32>(0u, 1u, 1u), vec2<u32>(55897u, 25067u), -684f), Struct_5(vec2<f32>(1000f, -1746f), vec3<u32>(1u, 0u, 88090u), vec2<u32>(1020u, 13400u), -363f));

var<private> global2: f32;

var<private> global3: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec4_u32(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, arg_1, 82241u, 1u)), countOneBits(vec4<u32>(4294967295u, 1u, u_input.c.x, 3415u)), vec4<bool>(true, true, false, true)), vec4<u32>(firstTrailingBit(arg_1), arg_1, abs(arg_1), 0u)) ^ vec4<u32>(arg_1, u_input.b.x ^ arg_1, ~19423u, arg_1);
    let var_1 = arg_0.x;
    let var_2 = Struct_3(vec2<bool>(4294967295u > _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, u_input.c), u_input.c << (u_input.c % vec3<u32>(32u))), !global0.x), Struct_2(Struct_1(global0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(13407u, u_input.b.x, 32482u)), min(vec3<u32>(var_0.x, arg_1, u_input.b.x), u_input.c)), var_0.x, abs(_wgslsmith_div_u32(88563u, u_input.c.x)), u_input.a.xyz ^ u_input.a.zwy), Struct_1(true == all(vec3<bool>(true, global0.x, global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(117553u, u_input.b.x)), u_input.b.x, countOneBits(1u), vec3<i32>(~u_input.a.x, abs(var_1), 6283i)), select(vec4<u32>(_wgslsmith_clamp_u32(12296u, 88097u, arg_1), u_input.b.x, ~43338u, ~arg_1), vec4<u32>(countOneBits(arg_1), arg_1 & 52655u, countOneBits(4294967295u), arg_1 & u_input.c.x), !vec4<bool>(global0.x, false, global0.x, false))));
    let var_3 = _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(arg_0.x, u_input.a.x, _wgslsmith_sub_i32(-firstTrailingBit(2147483647i), reverseBits(arg_0.x)), 2147483647i));
    let var_4 = !(!(!(!select(vec4<bool>(false, false, global0.x, false), vec4<bool>(true, global0.x, true, true), vec4<bool>(true, false, true, global0.x)))));
    return _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(firstLeadingBit(arg_1)), reverseBits(u_input.b.x), 1u), vec3<u32>(5697u, ~1u, arg_1 ^ arg_1) | var_0.xzy), abs(var_2.b.c.wxz));
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_5, 27>();
    var var_0 = !vec3<bool>(!global0.x, !all(!vec3<bool>(global0.x, true, global0.x)), global0.x);
    var var_1 = Struct_1(!var_0.x, _wgslsmith_dot_vec3_u32(~func_3(-u_input.a.yy, firstLeadingBit(4294967295u)), ~u_input.c << (_wgslsmith_mult_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u))), u_input.b.x, u_input.c.x >> (~u_input.b.x % 32u), vec3<i32>(-29069i, -2147483647i, i32(-1i) * -min(0i, u_input.a.x)));
    global0 = !select(vec3<bool>(var_0.x, !(global0.x && false), !any(var_0.yy)), !vec3<bool>(any(vec4<bool>(global0.x, true, var_1.a, var_0.x)), var_0.x, true), vec3<bool>(var_0.x, var_0.x, all(!vec3<bool>(false, var_0.x, var_0.x))));
    var var_2 = select(max(u_input.a, _wgslsmith_sub_vec4_i32(-firstLeadingBit(vec4<i32>(0i, u_input.a.x, var_1.e.x, var_1.e.x)), vec4<i32>(-1i) * -u_input.a)), abs(u_input.a), !vec4<bool>(true, !var_1.a & all(vec4<bool>(true, false, false, global0.x)), true, global0.x));
    return Struct_4(u_input.c);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_3 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, -1758f, -672f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, -393f, -399f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(343f, -353f, -1385f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_div_f32(-235f, -273f), _wgslsmith_div_f32(1210f, 552f)))));
    var var_2 = var_1.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 359f) - 977f);
    var var_3 = 319f;
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-761f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(828f, -1000f))), var_1.x)));
    return Struct_3(!(!(!global3[_wgslsmith_index_u32(arg_1, 8u)])), Struct_2(Struct_1(!global0.x, arg_1, (arg_0.a.x >> (arg_0.a.x % 32u)) >> (~1u % 32u), 89081u, -_wgslsmith_add_vec3_i32(vec3<i32>(954i, var_0, -2809i), u_input.a.wxy)), Struct_1(true == global0.x, arg_1, ~u_input.b.x, ~abs(9363u), u_input.a.zxx), abs(~(~vec4<u32>(u_input.b.x, 45546u, arg_1, arg_1)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5) -> bool {
    var var_0 = Struct_4(arg_1.b);
    var var_1 = func_4(func_2(), ~148787u);
    var_1 = func_4(Struct_4(select(u_input.c, vec3<u32>(0u, ~arg_1.b.x, arg_1.b.x), select(!vec3<bool>(true, var_1.a.x, false), vec3<bool>(true, false, true), !global0.x))), 4294967295u);
    var var_2 = ~(-select(reverseBits(u_input.a.xzy) ^ u_input.a.yyz, min(countOneBits(vec3<i32>(1i, arg_0.x, u_input.a.x)), firstTrailingBit(vec3<i32>(1i, -18244i, -1i))), !select(vec3<bool>(true, var_1.b.a.a, global0.x), vec3<bool>(false, true, true), vec3<bool>(false, true, global0.x))));
    global1 = array<Struct_5, 27>();
    return true;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: bool) -> Struct_5 {
    let var_0 = vec4<bool>(arg_1.x, all(select(!select(vec4<bool>(false, true, false, arg_3), vec4<bool>(true, false, arg_1.x, arg_3), vec4<bool>(false, global0.x, arg_3, true)), vec4<bool>(u_input.a.x > arg_2, true, !arg_3, global0.x), true)), true, false);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-108f))));
    var var_2 = select(var_0, !(!vec4<bool>(any(var_0), all(vec2<bool>(arg_3, true)), u_input.c.x >= 4294967295u, all(vec2<bool>(var_0.x, true)))), select(!var_0, vec4<bool>(true, true, true, false), vec4<bool>(!(false & arg_1.x), arg_1.x, arg_1.x, any(global0.yx))));
    let var_3 = func_2();
    var var_4 = reverseBits(~0u);
    return global1[_wgslsmith_index_u32(58685u, 27u)];
}

fn func_6(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_4(Struct_4(arg_2.c.xxx), 1u << (_wgslsmith_mod_u32(~(~arg_0.b.x), abs(17827u)) % 32u)).b;
    global2 = _wgslsmith_f_op_f32(754f + -671f);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x)));
    global1 = array<Struct_5, 27>();
    let var_1 = arg_2.b;
    return Struct_2(Struct_1(any(vec4<bool>(global0.x, true, true, global0.x)), var_1.b, _wgslsmith_clamp_u32(min(var_0.b.d >> (4294967295u % 32u), 0u), abs(_wgslsmith_mod_u32(39973u, 69623u)), 4863u), _wgslsmith_mult_u32(arg_0.b.x, 1u << (_wgslsmith_div_u32(u_input.c.x, u_input.b.x) % 32u)), arg_2.a.e), Struct_1(any(vec4<bool>(false, !arg_2.a.a, true, global0.x & var_0.a.a)), firstTrailingBit(~61023u), _wgslsmith_mod_u32(61256u, firstTrailingBit(_wgslsmith_add_u32(var_1.b, var_0.a.d))), 1u, -(~var_1.e)), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(select(vec4<i32>(i32(-1i) * -2147483647i, 2147483647i | u_input.a.x, 1i, ~1i), u_input.a, vec4<bool>(global0.x, all(vec3<bool>(true, global0.x, true)), any(vec4<bool>(true, false, true, false)), all(vec3<bool>(global0.x, true, false)))) | u_input.a, (countOneBits(u_input.a) >> ((vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 18359u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 142888u, 1u), vec4<u32>(u_input.c.x, 0u, u_input.b.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))) & select(select(u_input.a ^ vec4<i32>(u_input.a.x, -20413i, 0i, u_input.a.x), vec4<i32>(-6270i, u_input.a.x, u_input.a.x, -22445i), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, false, false, global0.x), global0.x)), select(u_input.a >> (vec4<u32>(u_input.b.x, 36697u, 2922u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true)), !(global0.x | false)));
    global3 = array<vec2<bool>, 8>();
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(countOneBits(min(811u, ~(~u_input.b.x))), 8u)], func_6(func_5(-1526f, select(global3[_wgslsmith_index_u32(u_input.c.x >> (u_input.b.x % 32u), 8u)], !vec2<bool>(false, global0.x), func_1(vec2<i32>(var_0.x, 1614i), Struct_5(vec2<f32>(-1004f, -2299f), vec3<u32>(u_input.c.x, 37126u, 0u), u_input.c.xy, -1362f))), -1i, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1242f, _wgslsmith_f_op_f32(max(953f, -1836f)), 1017f)), func_4(func_2(), ~4294967295u).b));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1989f + 1041f) * _wgslsmith_f_op_f32(-2347f - 184f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(543f, -742f)))) * 1f));
    global2 = 1854f;
    var var_2 = Struct_1(false, max(~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(var_1.b.c, var_1.b.c)), u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(var_1.b.a.c, var_1.b.c.x))), vec2<u32>(var_1.b.b.c, _wgslsmith_mult_u32(46575u, u_input.c.x)))), var_1.b.a.d, ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), abs(vec2<i32>(2147483647i, u_input.a.x))), -19896i, var_1.b.b.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.yy);
}

