struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1187f, -131f), vec2<f32>(-422f, -710f));

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<f32>(-1123f, 1000f, 535f), 4294967295u), Struct_1(vec3<f32>(1000f, -428f, -243f), 6465u), Struct_1(vec3<f32>(1000f, -1908f, 141f), 10875u), Struct_1(vec3<f32>(-547f, 223f, -791f), 0u), Struct_1(vec3<f32>(2536f, -672f, -107f), 4294967295u), Struct_1(vec3<f32>(-719f, 480f, 1169f), 1u), Struct_1(vec3<f32>(158f, 988f, 158f), 30887u), Struct_1(vec3<f32>(-617f, -773f, -346f), 0u), Struct_1(vec3<f32>(-150f, -212f, -1683f), 1u), Struct_1(vec3<f32>(-1000f, -1000f, -1106f), 42777u), Struct_1(vec3<f32>(1436f, -260f, 464f), 0u), Struct_1(vec3<f32>(265f, 1226f, 636f), 4294967295u), Struct_1(vec3<f32>(-319f, 1707f, 447f), 4294967295u), Struct_1(vec3<f32>(1216f, 928f, -1488f), 21957u), Struct_1(vec3<f32>(-120f, -893f, 1920f), 24993u), Struct_1(vec3<f32>(-1621f, -1551f, 182f), 0u), Struct_1(vec3<f32>(-443f, -374f, 473f), 14658u), Struct_1(vec3<f32>(-690f, -860f, 1231f), 69151u), Struct_1(vec3<f32>(722f, 1099f, 789f), 12435u), Struct_1(vec3<f32>(-1897f, -141f, -1261f), 5085u), Struct_1(vec3<f32>(-915f, 1063f, -568f), 0u), Struct_1(vec3<f32>(1543f, -1137f, -170f), 4294967295u), Struct_1(vec3<f32>(466f, -1436f, -937f), 1u), Struct_1(vec3<f32>(-1260f, 1000f, 313f), 33082u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2;
    global0 = array<vec2<f32>, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), ~u_input.b);
    let var_2 = arg_2;
    var var_3 = !(!(arg_1.a.x >= _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(var_1.a.x, 1000f))));
    return ~4294967295u;
}

fn func_3() -> f32 {
    global1 = false;
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(u_input.b), 35603u, ~(~u_input.b)), 24u)];
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    var var_1 = vec4<u32>(~77374u, u_input.b, ~6069u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1560u, 1u, u_input.b, 18990u), vec4<u32>(45168u, var_0.b, 37604u, 76092u))), vec4<u32>(u_input.b, 29245u, ~51615u, abs(0u))) >> (1u % 32u));
    return _wgslsmith_f_op_f32(floor(-549f));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~(~func_2(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 24u)], Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(725f, -334f, -1000f)), 35268u), Struct_2(u_input.b >= u_input.b, 1u, vec2<bool>(true, true)))), 24u)];
    var var_1 = _wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 378f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-425f, _wgslsmith_f_op_f32(sign(1303f))) - _wgslsmith_f_op_f32(floor(369f)));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), 24u)];
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(355f, _wgslsmith_f_op_f32(-var_0.a.x)));
    return ~0u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x)));
    var var_1 = ~4294967295u;
    var var_2 = 19339u;
    var var_3 = ~(((_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b, 4294967295u), vec2<u32>(u_input.b, arg_1.b)) ^ ~vec2<u32>(0u, arg_1.b)) >> (vec2<u32>(min(40381u, 0u), ~1u) % vec2<u32>(32u))) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0.b), vec2<u32>(arg_0.b, arg_0.b)));
    var_2 = _wgslsmith_mult_u32(arg_2.b, arg_0.b);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_3.x, 0u, arg_0.b, u_input.b), vec4<u32>(arg_0.b, 1u, 4294967295u, 0u), arg_2.a), vec4<u32>(arg_2.b, var_3.x, 4294967295u, arg_0.b)) ^ firstLeadingBit(vec4<u32>(var_3.x, var_3.x, arg_0.b, 4294967295u)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, u_input.b, 19680u, 26386u), vec4<u32>(19209u, 42510u, arg_0.b, 80406u)) & vec4<u32>(47676u, arg_0.b, var_3.x, arg_0.b))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global2 = array<Struct_1, 24>();
    global1 = all(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), false), vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, !(u_input.c.x <= -1i), _wgslsmith_f_op_f32(-arg_0.a.x) > _wgslsmith_f_op_f32(round(arg_0.a.x))), false));
    global1 = any(select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true), !select(false, true, false))) & any(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)));
    let var_0 = Struct_2(true, countOneBits(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(min(4294967295u, u_input.b), 1017u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, u_input.b, u_input.b, arg_1.b), vec4<u32>(arg_1.b, arg_0.b, 10358u, 69512u))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), vec2<bool>(_wgslsmith_div_f32(-424f, arg_1.a.x) != _wgslsmith_f_op_f32(568f + -389f), true), select(vec2<bool>(true, any(vec4<bool>(true, false, true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_1 = Struct_2(true, 0u, select(vec2<bool>(var_0.c.x, !all(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), select(select(var_0.c, vec2<bool>(var_0.c.x, var_0.a), var_0.c), !vec2<bool>(var_0.c.x, false), var_0.c), !vec2<bool>(false, var_0.a)), vec2<bool>(!any(vec4<bool>(var_0.c.x, var_0.c.x, var_0.a, false)), any(!vec4<bool>(true, false, var_0.a, true)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1201f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * 248f))))), -1239f, arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(vec3<f32>(-852f, _wgslsmith_f_op_f32(-2780f * 437f), -1294f), func_1(countOneBits(u_input.c.yxz))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(1093f)), -915f, _wgslsmith_f_op_f32(-292f + 568f)), _wgslsmith_mult_u32(u_input.b, max(u_input.b, u_input.b))), Struct_2(select(true, true, true), 1u, vec2<bool>(any(vec4<bool>(true, false, true, true)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-391f)), _wgslsmith_f_op_f32(floor(-1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + _wgslsmith_f_op_f32(f32(-1f) * -1462f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2002f, 1419f, 117f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1103f, 905f, 1015f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-226f, -167f, -732f) - vec3<f32>(-1360f, 1000f, -952f)), func_4(Struct_1(vec3<f32>(491f, -1000f, 548f), 0u), Struct_1(vec3<f32>(1077f, -1312f, 510f), u_input.b), Struct_2(false, u_input.b, vec2<bool>(false, true)), -878f).a)), 1u)));
    var var_1 = abs(u_input.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~1i, max(u_input.c.x, u_input.c.x)), firstLeadingBit(u_input.a.x ^ u_input.c.x), u_input.c.x, u_input.c.x), -vec4<i32>(~(-38916i), _wgslsmith_add_i32(15249i, 21046i), ~u_input.c.x, abs(u_input.c.x)));
    let var_2 = -_wgslsmith_div_i32(-countOneBits(var_1.x), ~_wgslsmith_div_i32(var_1.x & 42406i, ~(-1i)));
    global2 = array<Struct_1, 24>();
    let var_3 = func_4(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 0u) << (vec2<u32>(1u, 48759u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.b))), 24u)], Struct_1(_wgslsmith_div_vec3_f32(var_0.wzy, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))), countOneBits(_wgslsmith_add_u32(16594u, _wgslsmith_mult_u32(u_input.b, 1u)))), Struct_2(false, 58234u, select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false)), vec2<bool>(var_1.x <= 1i, true), true)), -1380f);
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.c, var_1.x, vec4<u32>(_wgslsmith_mult_u32(43174u, func_2(func_4(Struct_1(vec3<f32>(1624f, 386f, var_3.a.x), 1u), Struct_1(var_0.wxz, var_3.b), Struct_2(false, 10679u, vec2<bool>(false, false)), 177f), global2[_wgslsmith_index_u32(16000u, 24u)], Struct_2(true, 11622u, vec2<bool>(true, false)))), 0u, 0u, min(4294967295u, u_input.b) ^ (~0u >> (1u % 32u))), abs(min(_wgslsmith_sub_u32(var_3.b >> (1u % 32u), firstTrailingBit(var_3.b)), 25386u ^ var_3.b)));
}

