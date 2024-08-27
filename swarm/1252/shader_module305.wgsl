struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<f32>, 5>;

var<private> global3: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(-24300i, 10069i), vec2<i32>(-16281i, 4905i), vec2<i32>(9385i, i32(-2147483648)), vec2<i32>(-7857i, -1i), vec2<i32>(-46387i, 0i), vec2<i32>(1244i, 22069i), vec2<i32>(9524i, -37410i), vec2<i32>(-7033i, 2147483647i), vec2<i32>(-25061i, -7484i), vec2<i32>(-1i, -61624i), vec2<i32>(-28707i, 0i), vec2<i32>(-26750i, i32(-2147483648)), vec2<i32>(-6851i, i32(-2147483648)), vec2<i32>(2147483647i, 36189i), vec2<i32>(0i, -19320i), vec2<i32>(-613i, 14398i), vec2<i32>(1i, 0i), vec2<i32>(-398i, -1i), vec2<i32>(-17849i, 17260i), vec2<i32>(17545i, 0i), vec2<i32>(2147483647i, 35952i), vec2<i32>(55216i, -1i), vec2<i32>(1i, 55924i), vec2<i32>(24529i, 17215i), vec2<i32>(13449i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 23196i), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.a.a.x, arg_0.a.a.x), vec4<u32>(69455u, 0u, arg_0.a.a.x, 4294967295u)), vec4<u32>(0u, 13441u, 0u, 0u), firstTrailingBit(vec4<u32>(global1.x, global1.x, 0u, arg_0.a.a.x))), ~firstTrailingBit(firstLeadingBit(vec4<u32>(18690u, global1.x, global1.x, 4294967295u))));
    global2 = array<vec2<f32>, 5>();
    let var_1 = vec2<bool>(all(vec3<bool>(true, true, select(false, false, false))), !(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))) && (any(vec4<bool>(true, true, true, true)) && true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, -368f, 155f, 230f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, -244f, 1000f, -816f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, 998f, -523f, 1768f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-832f, -460f, 753f, 462f), vec4<f32>(1000f, -1188f, 2297f, 532f)) * vec4<f32>(-1679f, 165f, 1489f, 925f)))));
    let var_3 = Struct_2(Struct_1(select(vec2<u32>(global1.x, arg_0.a.a.x), vec2<u32>(4294967295u, 1u), all(vec3<bool>(var_1.x, var_1.x, false))) >> (vec2<u32>(~47977u, var_0.x) % vec2<u32>(32u))));
    return select(u_input.a, 1i, !var_1.x);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = global1.x != 3068u;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(func_3(Struct_2(Struct_1(vec2<u32>(arg_1, 34892u)))) | 35992i, _wgslsmith_dot_vec2_i32(arg_2.yx, max(vec2<i32>(-57598i, u_input.a), vec2<i32>(arg_2.x, u_input.a)))), 33453i);
    var var_2 = Struct_2(Struct_1(~global1.xz));
    let var_3 = var_0;
    var var_4 = Struct_2(var_2.a);
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    global3 = array<vec2<i32>, 28>();
    var var_0 = _wgslsmith_mod_vec4_i32((select(vec4<i32>(2147483647i, u_input.a, u_input.a, -12234i), vec4<i32>(13030i, u_input.a, 2147483647i, u_input.a), arg_1.x) | vec4<i32>(abs(u_input.a), u_input.a << (arg_0.a.a.x % 32u), u_input.a & 1i, u_input.a)) | (firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & vec4<i32>(~u_input.a, 1i, firstLeadingBit(0i), firstLeadingBit(-12855i))), -(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(39023i, -1i, -1i, u_input.a), vec4<i32>(u_input.a, 7901i, u_input.a, u_input.a), vec4<i32>(26187i, u_input.a, u_input.a, u_input.a)))));
    global2 = array<vec2<f32>, 5>();
    global1 = firstLeadingBit(firstLeadingBit(~arg_2));
    var var_1 = arg_1.zx;
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a;
    global0 = any(select(select(vec2<bool>(true, -2147483647i > u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(4854i, u_input.a, u_input.a), vec3<i32>(-59561i, -26695i, -2147483647i)) > ~u_input.a, !all(vec4<bool>(false, true, false, false)))));
    var var_1 = func_4(Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1617f, -203f)) * _wgslsmith_f_op_f32(f32(-1f) * -852f)), ~reverseBits(47293u), select(vec4<i32>(3563i, 0i, u_input.a, u_input.a), ~vec4<i32>(u_input.a, u_input.a, 29159i, 2147483647i), vec4<bool>(true, true, true, false)))), vec3<bool>(true || any(vec2<bool>(true, false)), true, true), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(104994u, 0u, global1.x, 71024u), min(vec4<u32>(global1.x, 3190u, 0u, 1u), vec4<u32>(global1.x, global1.x, global1.x, 77380u))), ~(vec4<u32>(20173u, global1.x, 1u, 0u) & vec4<u32>(70711u, 1u, global1.x, global1.x))) | countOneBits(abs(vec4<u32>(global1.x, 62787u, global1.x, 66257u))));
    var_0 = _wgslsmith_mod_i32(u_input.a, -2147483647i);
    let var_2 = ~select(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.x, global1.x, 1u), firstTrailingBit(vec4<u32>(12957u, global1.x, global1.x, var_1.a.x))), vec4<u32>(var_1.a.x, 0u, 17264u, 0u) & vec4<u32>(~1u, var_1.a.x ^ global1.x, global1.x, 4294967295u), true);
    return Struct_1(var_2.yx);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~vec2<u32>(arg_2.a.x, arg_2.a.x) ^ ~(~vec2<u32>(arg_2.a.x, arg_2.a.x))));
    let var_1 = reverseBits(vec3<u32>(~4294967295u, func_4(var_0, vec3<bool>(false, true, false), _wgslsmith_mult_vec4_u32(vec4<u32>(58697u, global1.x, 1u, global1.x), vec4<u32>(1u, arg_2.a.x, 0u, var_0.a.a.x))).a.x, 0u)) ^ _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), vec3<u32>(global1.x, ~var_0.a.a.x, ~(~0u)));
    global1 = vec4<u32>(3661u, (var_1.x & _wgslsmith_add_u32(52951u, ~arg_2.a.x)) << (~22282u % 32u), max(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, var_1.x, 1u, var_1.x), vec4<u32>(64098u, 1u, 3185u, 22622u))), _wgslsmith_add_u32(~0u, ~var_0.a.a.x)), 5836u);
    let var_2 = var_0;
    var var_3 = ~_wgslsmith_add_vec2_u32(select(var_1.yx, max(var_2.a.a, vec2<u32>(4294967295u, arg_2.a.x)) << (select(arg_2.a, arg_2.a, vec2<bool>(false, true)) % vec2<u32>(32u)), !select(vec2<bool>(true, false), vec2<bool>(false, true), true)), var_2.a.a);
    return Struct_1(global1.wz & func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1212f, 632f, true))), _wgslsmith_mod_u32(0u | var_0.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, 1u), vec4<u32>(global1.x, 40286u, 0u, 1u))), ~(~vec4<i32>(arg_1, 0i, 26768i, arg_1))).a);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global0 = !all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), all(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true)));
    let var_0 = _wgslsmith_div_u32(1u, abs(~arg_0.a.x >> (1u % 32u)));
    global1 = firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a.x, 2840u, 0u, 28059u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.x, 1u, 1u), vec4<u32>(var_0, 15477u, global1.x, arg_0.a.x))))) >> (countOneBits(_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 102707u, arg_0.a.x), vec4<u32>(global1.x, var_0, arg_0.a.x, 84630u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.x, arg_0.a.x, 59086u) >> (vec4<u32>(0u, global1.x, 29491u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(global1.x, 0u, arg_0.a.x, arg_0.a.x) >> (vec4<u32>(4294967295u, 0u, 76587u, var_0) % vec4<u32>(32u))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(76513u, 1u, 1u, global1.x), vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, var_0)), select(vec4<u32>(0u, 54506u, arg_0.a.x, global1.x), vec4<u32>(14148u, 50103u, var_0, arg_0.a.x), vec4<bool>(false, true, false, true))))) % vec4<u32>(32u));
    global3 = array<vec2<i32>, 28>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-991f * -1332f)), _wgslsmith_f_op_f32(-892f + -1863f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1764f, -382f)), -277f, -795f, _wgslsmith_f_op_f32(116f - -1531f)))));
    return Struct_2(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f)) + 293f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -676f))))));
    global2 = array<vec2<f32>, 5>();
    global0 = any(vec3<bool>(true, true, true));
    global0 = ~countOneBits(1u) > (~1u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(35363u, global1.x, global1.x), vec3<u32>(54282u, 4294967295u, global1.x)), global1.wyy));
    let var_1 = func_6(func_5(u_input.a, _wgslsmith_add_i32(~1i, -1226i), func_1()));
    var var_2 = func_6(func_6(Struct_1(~(~global1.zz))).a);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_2.a.a.x, 5u)], _wgslsmith_div_f32(523f, 806f), ~firstTrailingBit(vec4<i32>(u_input.a, 1i, firstLeadingBit(2147483647i), -28212i)), max(u_input.a, 19740i));
}

