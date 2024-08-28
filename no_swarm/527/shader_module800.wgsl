struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_3(Struct_1(false, vec2<f32>(444f, 488f), false, 341f, 1u), 1000f), -14539i, Struct_3(Struct_1(false, vec2<f32>(677f, 947f), true, 1000f, 4294967295u), 469f), vec2<i32>(-5838i, 23672i), 471f), Struct_4(Struct_3(Struct_1(false, vec2<f32>(-964f, -274f), true, 983f, 1u), -1632f), 1i, Struct_3(Struct_1(false, vec2<f32>(1437f, -1000f), true, -1901f, 1950u), -892f), vec2<i32>(-52863i, 66595i), 1000f), Struct_4(Struct_3(Struct_1(false, vec2<f32>(-2391f, 1685f), true, -237f, 19970u), -389f), 2147483647i, Struct_3(Struct_1(false, vec2<f32>(-160f, 942f), true, 765f, 14197u), -868f), vec2<i32>(-20903i, 2147483647i), -610f), Struct_4(Struct_3(Struct_1(false, vec2<f32>(231f, 1070f), false, 276f, 30225u), -999f), i32(-2147483648), Struct_3(Struct_1(false, vec2<f32>(-1690f, 1089f), false, -1394f, 4294967295u), -289f), vec2<i32>(0i, i32(-2147483648)), -295f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-486f, 799f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(283f, -339f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(705f, arg_1) + vec2<f32>(arg_1, arg_1)))), any(arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_1, -1364f)), _wgslsmith_f_op_f32(f32(-1f) * -1029f))), 860f), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.a.x, 15833u | u_input.a.x, u_input.a.x), vec4<u32>(~74883u, firstTrailingBit(4294967295u), abs(u_input.a.x), 2700u >> (0u % 32u)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.e, var_0.a.e, 35103u, var_0.a.e), vec4<u32>(87454u, 12940u, var_0.a.e, var_0.a.e)), vec4<u32>(var_0.a.e, 24260u, 31701u, 0u)), ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.e, 4294967295u, 4294967295u, 0u), vec4<u32>(u_input.a.x, 70881u, var_0.a.e, 0u)), countOneBits(vec4<u32>(32312u, u_input.a.x, 33717u, var_0.a.e)))), ~vec4<u32>(82614u, var_0.a.e, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 4294967295u), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.e, var_0.a.e, 18608u, 1u), max(vec4<u32>(var_0.a.e, u_input.a.x, var_0.a.e, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 42569u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u) & vec4<u32>(var_0.a.e, u_input.a.x, u_input.a.x, 3625u)), vec4<u32>(u_input.a.x | 56161u, u_input.a.x, 1u, select(var_0.a.e, var_0.a.e, arg_0.x)))));
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -302f))))));
    let var_3 = _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(8094i, 49109i, 11452i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.x, -13573i, global0.x), arg_3)) ^ vec3<i32>(global0.x, arg_3.x << (1u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, global0.x, global0.x, -32637i), vec4<i32>(-1i, global0.x, 30919i, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -25315i, 0i, arg_3.x), vec4<i32>(-18713i, 1i, -1106i, arg_3.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.x, -2147483647i, 1i), ~vec3<i32>(24796i, arg_2.x, -2147483647i), max(vec3<i32>(2147483647i, global0.x, 1i), select(arg_2, vec3<i32>(arg_2.x, arg_3.x, arg_2.x), false)) & arg_3));
    let var_4 = Struct_4(Struct_3(Struct_1(var_2.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d, arg_1) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, -1813f)))), !(arg_2.x >= global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -183f))), 12033u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) * _wgslsmith_f_op_f32(1022f * 275f)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(arg_1))))), abs(~_wgslsmith_add_i32(arg_3.x << (0u % 32u), arg_2.x >> (0u % 32u))), Struct_3(Struct_1(var_2.a.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(arg_1 - 1796f)), all(select(vec4<bool>(var_0.a.c, true, var_0.a.c, arg_0.x), vec4<bool>(var_0.a.c, var_0.a.a, var_2.a.a, var_2.a.c), vec4<bool>(false, var_0.a.c, false, var_0.a.a))), 1f, _wgslsmith_sub_u32(1u, var_1.x)), -330f), vec2<i32>(-19825i, -2147483647i), -2739f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.d, 813f)) + _wgslsmith_div_f32(var_0.a.b.x, _wgslsmith_f_op_f32(-var_2.b)));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-862f, 810f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -559f, var_0, var_0) * vec4<f32>(var_0, var_0, var_0, -833f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0, -965f, 554f, -151f), vec4<f32>(var_0, var_0, 298f, -745f))))));
    let var_2 = Struct_1(all(vec4<bool>(true, true, true, true)), vec2<f32>(1295f, _wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + var_1.x), firstLeadingBit(vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(global0.x, 1i, 1i)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-16228i, global0.x, 40470i), vec3<i32>(global0.x, 2147483647i, 12105i)), ~vec3<i32>(2147483647i, global0.x, 0i), false)))), all(vec2<bool>(true, true)) & all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(5787u), u_input.a.x), ~u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let var_4 = vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.zy, ~(vec2<u32>(var_2.e, 16668u) >> (vec2<u32>(var_2.e, 1u) % vec2<u32>(32u)))), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, 1u), u_input.a.xx)), _wgslsmith_dot_vec4_u32(vec4<u32>(select(1u, ~u_input.a.x, false), select(var_2.e, _wgslsmith_mult_u32(var_2.e, var_2.e), var_2.a), ~_wgslsmith_clamp_u32(var_2.e, u_input.a.x, var_2.e), select(0u, 0u, true)), ~(~abs(vec4<u32>(4294967295u, var_2.e, var_2.e, u_input.a.x)))), var_2.e);
    return Struct_5(Struct_3(Struct_1(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_2.a, false, false), var_0, vec3<i32>(10687i, global0.x, global0.x), vec3<i32>(45337i, 12254i, -2147483647i))), _wgslsmith_div_f32(-1587f, -1000f)), var_2.c, _wgslsmith_f_op_f32(var_0 - -1000f), max(firstLeadingBit(1u), 0u << (1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1271f)) * _wgslsmith_f_op_f32(max(-131f, 138f))))), global1[_wgslsmith_index_u32(min(u_input.a.x, 1161u), 4u)], _wgslsmith_f_op_f32(select(-268f, _wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-1f)), true | (1u > u_input.a.x))), Struct_2(var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1776f + 187f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1038f + -656f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = ~1u;
    global0 = vec3<i32>(~var_1.b.d.x, -2147483647i, -abs(_wgslsmith_div_i32(global0.x, global0.x) & -2147483647i));
    let var_3 = vec4<u32>(var_2, ~35300u, ~var_2, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, firstTrailingBit(0u), arg_0.x), abs(vec4<u32>(arg_0.x, var_1.d.a.e, u_input.a.x, var_2))), arg_0.x));
    return _wgslsmith_f_op_f32(abs(var_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~u_input.a, select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), true == any(vec2<bool>(true, true))))) + _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + 935f) + _wgslsmith_f_op_f32(911f + 773f)))), vec3<i32>(-2147483647i, 1i, global0.x), vec3<i32>(reverseBits(-43548i), global0.x, 1i ^ select(global0.x, -2147483647i, false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 * 398f), -908f, 199f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(792f, var_0, var_0)))) + vec3<f32>(var_0, func_2().e, 752f)))));
    let var_2 = Struct_3(func_2().b.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-923f, var_1.x)), 1000f))));
    let var_3 = Struct_4(var_2, global0.x, Struct_3(Struct_1(select(true, var_2.a.c || true, any(vec3<bool>(var_2.a.a, var_2.a.c, true))), var_2.a.b, var_2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), reverseBits(u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), 1000f)), _wgslsmith_mod_vec2_i32(select(func_2().b.d, vec2<i32>(~30199i, global0.x >> (26610u % 32u)), select(!vec2<bool>(var_2.a.c, true), select(vec2<bool>(var_2.a.c, var_2.a.c), vec2<bool>(true, true), vec2<bool>(var_2.a.a, true)), !vec2<bool>(true, var_2.a.a))), -global0.xz), var_1.x);
    global1 = array<Struct_4, 4>();
    let var_4 = var_2.a.a;
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_3.a.a.b.x), 271f)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.e, -(vec3<i32>(global0.x, i32(-1i) * -8326i, i32(-1i) * -1i) | select(~vec3<i32>(var_3.b, global0.x, 22718i), countOneBits(vec3<i32>(18230i, global0.x, var_3.b)), vec3<bool>(false, false, var_4))), vec4<i32>(~var_3.b & firstTrailingBit(global0.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1i, 4617i, var_3.b), vec4<i32>(var_3.d.x, global0.x, global0.x, global0.x)), _wgslsmith_mod_i32(var_3.d.x >> (31885u % 32u), -global0.x), _wgslsmith_add_i32(global0.x, var_3.b)) | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 6700i, var_3.d.x, var_3.b), vec4<i32>(8669i, var_3.d.x, 0i, var_3.d.x)), reverseBits(vec4<i32>(-1i, var_3.b, var_3.d.x, -51928i))), vec4<i32>(var_3.d.x, 2147483647i, var_3.b, global0.x) << (abs(vec4<u32>(0u, var_2.a.e, var_2.a.e, var_3.c.a.e)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(func_1(~reverseBits(u_input.a) | ((u_input.a & vec3<u32>(22882u, var_3.c.a.e, 4294967295u)) ^ u_input.a), vec2<bool>(any(!vec4<bool>(var_3.c.a.c, var_4, var_3.c.a.a, true)), true), any(!vec3<bool>(var_2.a.c, var_3.c.a.a, false)))));
}

