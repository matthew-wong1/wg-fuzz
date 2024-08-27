struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(-1721i, 17095i, -1i, 2147483647i), vec4<i32>(0i, -1i, 0i, 400i), vec4<i32>(82177i, 1339i, 0i, 2147483647i), vec4<i32>(-11333i, i32(-2147483648), 1i, 17353i), vec4<i32>(-1i, -13978i, 0i, 33185i), vec4<i32>(-17458i, -1i, -1i, 18439i), vec4<i32>(22787i, -1i, 13538i, -44406i), vec4<i32>(1i, -8363i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 2147483647i, -1i, 0i), vec4<i32>(1i, -9931i, -1i, 1i), vec4<i32>(-65935i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(8979i, 26952i, -7081i, 1i), vec4<i32>(4567i, -1i, -67417i, -32143i), vec4<i32>(2147483647i, 1i, -80267i, -17753i), vec4<i32>(19542i, 1i, -15016i, 0i), vec4<i32>(24112i, -36160i, -14647i, 1i), vec4<i32>(35263i, 0i, 2147483647i, -1i), vec4<i32>(0i, 29888i, -28226i, 20600i));

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = true;
    global0 = array<vec2<bool>, 23>();
    let var_1 = Struct_3(select((_wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.a.x), vec2<i32>(arg_0.a.x, 14399i))) == (select(false, true, false) || (-9639i > u_input.b)), true, select(true, true, false) && true));
    global1 = array<vec4<i32>, 18>();
    let var_2 = true;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-116f - -757f), -2497f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-226f, -1053f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1562f, -1179f) + vec2<f32>(472f, -1000f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, 2214f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    global1 = array<vec4<i32>, 18>();
    let var_0 = -2147483647i;
    var var_1 = u_input.d < ~(~(~_wgslsmith_sub_u32(4294967295u, 0u)));
    let var_2 = Struct_4(firstTrailingBit(~(4468u << (u_input.d % 32u))) ^ u_input.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, arg_2))))), max(_wgslsmith_mod_i32(-2147483647i, ~arg_0.a.x) | ~(~var_0), abs(0i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 7186u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 10785u, 4294967295u), vec3<u32>(u_input.d, 60393u, 63375u))) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(-1178f, arg_3.x, true)))), _wgslsmith_div_f32(arg_3.x, arg_3.x), 394f, arg_1.x));
    global0 = array<vec2<bool>, 23>();
    return arg_3.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: f32) -> i32 {
    global0 = array<vec2<bool>, 23>();
    let var_0 = Struct_1(-vec3<i32>(1i, _wgslsmith_mult_i32(arg_0.x, 2147483647i), u_input.b) >> (~select(~vec3<u32>(u_input.d, 6029u, u_input.c), ~vec3<u32>(u_input.c, 33163u, 19586u), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)) % vec3<u32>(32u)));
    global2 = arg_0.x;
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_dot_vec4_i32(-(~global1[_wgslsmith_index_u32(u_input.a, 18u)]), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -16991i, -2147483647i, ~u_input.b), global1[_wgslsmith_index_u32(5279u, 18u)])) < -select(arg_0.x, 70788i, true);
    return abs(countOneBits(arg_2));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.b, -u_input.b) & -select(~vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, 75048i), true), reverseBits(vec2<i32>(1i, 1i)));
    var var_1 = Struct_1(countOneBits(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, -17276i, var_0.x), vec3<i32>(869i, u_input.b, -5088i), vec3<bool>(false, true, false)), ~vec3<i32>(var_0.x, var_0.x, u_input.b))));
    var var_2 = func_5(vec2<i32>(var_0.x, -u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1262f))) - -1016f), u_input.b, _wgslsmith_f_op_f32(func_4(Struct_1(max(vec3<i32>(-58522i, var_1.a.x, var_0.x), var_1.a)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<i32>(var_1.a.x, var_1.a.x, u_input.b)))), -329f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1732f, 354f, -728f, -1000f), vec4<f32>(-460f, -407f, 189f, 598f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(204f, -851f, -195f, 345f) - vec4<f32>(135f, 1427f, 679f, 731f)))))) ^ ((firstLeadingBit(var_1.a.x ^ var_0.x) << (u_input.c % 32u)) << (_wgslsmith_sub_u32(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.a, 52235u), _wgslsmith_add_u32(u_input.c, 0u), min(u_input.d, 54210u))) % 32u));
    let var_3 = select(vec2<bool>((1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(24549u, u_input.c, u_input.c), vec3<u32>(60612u, u_input.c, u_input.d))) > u_input.d, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))), select(vec2<bool>(true, all(select(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(select(true, false, true), u_input.a < 0u), vec2<bool>(all(vec2<bool>(false, true)), true)), select(vec2<bool>(true, true), select(!global0[_wgslsmith_index_u32(u_input.d, 23u)], vec2<bool>(true, true), select(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], true)), false)), global0[_wgslsmith_index_u32(49795u, 23u)]);
    var_2 = ~func_5(-_wgslsmith_sub_vec2_i32(firstTrailingBit(var_1.a.xy), ~vec2<i32>(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_dot_vec4_i32(vec4<i32>(15663i, _wgslsmith_mod_i32(var_1.a.x, 0i), u_input.b | u_input.b, -19019i), vec4<i32>(_wgslsmith_div_i32(var_0.x, 24236i), u_input.b, var_1.a.x, ~var_0.x)), -144f);
    return ~1u;
}

fn func_6(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.d.yyw, vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.b.x, 529f, false)))), -176f))));
    global2 = -8344i;
    var var_1 = -11809i;
    var var_2 = vec4<u32>(17385u, ~_wgslsmith_mod_u32(1u, ~_wgslsmith_clamp_u32(4644u, 0u, 1u)), abs(countOneBits(41308u)), min(33226u, u_input.a));
    global1 = array<vec4<i32>, 18>();
    return vec4<f32>(_wgslsmith_f_op_f32(-1957f * arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(abs(arg_1)), arg_2.d.yx, var_0.x, _wgslsmith_f_op_vec4_f32(sign(arg_2.d)))) * -382f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f * _wgslsmith_f_op_f32(1365f + -277f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(1i, u_input.b, u_input.b)), vec2<f32>(-423f, -1000f), -182f, arg_2.d))))))));
}

fn func_7(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_3 {
    global1 = array<vec4<i32>, 18>();
    global0 = array<vec2<bool>, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -603f, arg_0.x, arg_0.x))), vec4<f32>(arg_0.x, arg_1.x, arg_1.x, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-2120f * _wgslsmith_f_op_f32(f32(-1f) * -694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(247f))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 181f), arg_1.x), arg_0.x)));
    let var_1 = u_input.a != ~(~18936u);
    global1 = array<vec4<i32>, 18>();
    return Struct_3(true);
}

fn func_1() -> vec4<bool> {
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(696f, 494f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_6(min(func_2(), u_input.c), ~vec3<i32>(u_input.b, 52887i, 33711i), Struct_4(u_input.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1219f, -409f), vec2<f32>(-1102f, 1135f))), 15530i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1601f, -1518f, -763f, -658f)))))))));
    var var_1 = Struct_2(true, _wgslsmith_add_vec4_u32(max(~(~vec4<u32>(1u, u_input.a, u_input.d, 7741u)), ~max(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), vec4<u32>(0u, u_input.a, u_input.d, u_input.c))), ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, 24288u, 59591u, u_input.c)), vec4<u32>(39931u, 4294967295u, 48843u, u_input.d) ^ vec4<u32>(80075u, u_input.c, u_input.c, 1u))), select(global0[_wgslsmith_index_u32(firstLeadingBit(func_2() << (_wgslsmith_sub_u32(u_input.d, u_input.c) % 32u)), 23u)], !vec2<bool>(8797u < u_input.a, func_7(vec2<f32>(319f, 442f), vec4<f32>(1126f, -496f, -1166f, -1208f)).a), true), Struct_1(vec3<i32>(1i, 1i, 1i)));
    let var_2 = func_7(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, -265f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(712f, -1760f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -153f))), select(global0[_wgslsmith_index_u32(~abs(0u), 23u)], !global0[_wgslsmith_index_u32(select(4294967295u, u_input.a, var_0.a), 23u)], !any(vec4<bool>(false, false, false, var_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2330f, -411f, 875f, 217f), vec4<f32>(-349f, 415f, 308f, 1411f), var_1.a))))));
    var var_3 = -var_1.d.a;
    let var_4 = Struct_2(true, vec4<u32>(abs(1u), ~20508u, 4092u, var_1.b.x), var_1.c, var_1.d);
    return !vec4<bool>(select(!var_2.a || all(vec3<bool>(var_4.c.x, false, var_4.a)), var_0.a, (var_4.d.a.x ^ -33580i) == countOneBits(var_3.x)), true, true || any(!vec3<bool>(false, var_2.a, false)), all(!select(vec3<bool>(false, false, var_0.a), vec3<bool>(false, var_0.a, true), var_4.a)));
}

fn func_8(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    return Struct_1(vec3<i32>(-1i, -2147483647i, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 18>();
    let var_0 = func_8(~4294967295u, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)), func_1(), true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i) ^ vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(14998i, u_input.b), vec2<i32>(u_input.b, 21562i)))), vec2<i32>(_wgslsmith_mod_i32(6372i, ~1i), 2147483647i)), reverseBits(~(~select(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.a, u_input.d), true))));
    global1 = array<vec4<i32>, 18>();
    let var_1 = func_1().x;
    global2 = ~(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(u_input.d >> ((~15500u | u_input.a) % 32u), 18u)], global1[_wgslsmith_index_u32(~2832u, 18u)]));
}

