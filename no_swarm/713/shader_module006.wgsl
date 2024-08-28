struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: vec3<u32>;

var<private> global2: i32 = 0i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(vec4<bool>(true, any(select(vec3<bool>(arg_2.e.x, true, arg_2.e.x), vec3<bool>(arg_0, arg_0, false), arg_0)), true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1450f, arg_2.d, arg_2.d, 425f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.d, 1657f, 484f, arg_2.d), vec4<f32>(-981f, 1024f, arg_2.d, -229f))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d), arg_2.d, 301f, -745f), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, select(global1.x, 4294967295u, arg_0), 0u, u_input.d), vec4<u32>(1u, ~85651u, ~13901u, arg_1.x), vec4<u32>(arg_3.x, 1u, 1u, 57609u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_3.x, 1u, global1.x), vec4<u32>(arg_1.x, arg_1.x, global1.x, arg_3.x), vec4<u32>(43493u, 30777u, 65150u, arg_2.a.x)))));
    var var_1 = vec3<bool>(any(!(!(!var_0.a.a.xx))), !((arg_2.e.x && all(vec2<bool>(arg_0, arg_2.e.x))) != true), !(!arg_2.e.x));
    global0 = array<Struct_2, 23>();
    let var_2 = Struct_2(vec4<bool>(true, true, false, !((u_input.e >= arg_2.b) & any(arg_2.e.zz))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.a.c.x, arg_2.d)))), 249f, -150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-641f)))) + var_0.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1770f, _wgslsmith_f_op_f32(-arg_2.d), -105f, _wgslsmith_f_op_f32(select(var_0.a.b.x, -2356f, false))) * var_0.a.c)), reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(select(var_0.a.d.wxw, arg_2.a, vec3<bool>(arg_2.e.x, false, true)), abs(arg_3)), ~10159u, ~(arg_1.x ^ 4294967295u), arg_1.x)));
    global1 = ~vec3<u32>(~0u, ~min(21650u, _wgslsmith_div_u32(u_input.c, 4294967295u)), select(var_0.a.d.x, var_2.d.x, arg_0));
    return arg_3;
}

fn func_2() -> vec3<u32> {
    global0 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_sub_vec3_i32(-(vec3<i32>(u_input.e, u_input.e, u_input.b >> (1u % 32u)) << (vec3<u32>(~51603u, 25968u, ~53246u) % vec3<u32>(32u))), vec3<i32>(~(-(~52394i)), -1i >> (_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 63428u) % 32u), firstLeadingBit(-29423i)));
    var var_1 = -_wgslsmith_mod_i32(i32(-1i) * -3746i, _wgslsmith_add_i32(42159i, ~1i));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -232f)));
    var var_3 = vec3<f32>(-700f, 1286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-393f)), _wgslsmith_f_op_f32(f32(-1f) * -961f)) - _wgslsmith_f_op_f32(trunc(-804f)))));
    return ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(global1.x, 46840u, global1.x)), vec3<u32>(26435u, 45452u, global1.x) ^ func_3(true, vec2<u32>(u_input.a.x, global1.x), Struct_1(vec3<u32>(4294967295u, 76750u, global1.x), u_input.b, var_0.x, var_3.x, vec4<bool>(true, false, false, true)), vec3<u32>(u_input.a.x, 50081u, global1.x))), ~vec3<u32>(func_3(true, u_input.a, Struct_1(vec3<u32>(global1.x, u_input.c, 20835u), 0i, 2147483647i, var_3.x, vec4<bool>(true, false, false, false)), vec3<u32>(17742u, 38422u, 1u)).x, ~0u, _wgslsmith_div_u32(4294967295u, 44579u)));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    global1 = ~_wgslsmith_add_vec3_u32(func_2(), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global1.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.c, u_input.c)) | ~5886u, u_input.a.x, ~global1.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1009f, _wgslsmith_f_op_f32(f32(-1f) * -122f), -170f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(973f, arg_0, _wgslsmith_f_op_f32(round(-1746f))))))));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f + -1558f))))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(910f, _wgslsmith_div_f32(264f, var_0.x)) - _wgslsmith_f_op_f32(-arg_0))));
    let var_3 = Struct_3(Struct_2(vec4<bool>(var_1.x | (-49524i < u_input.e), any(select(var_1.zx, vec2<bool>(var_1.x, var_1.x), var_1.x)), any(vec2<bool>(var_1.x, var_1.x)), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2648f, 1527f, 1650f, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1606f, -717f, -1000f, arg_0), vec4<f32>(var_0.x, arg_0, -790f, -234f)), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, true, var_1.x, var_1.x), false))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, var_0.x, 401f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.x, -153f, -1341f) * vec4<f32>(-879f, var_2, 753f, var_0.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x)))), !(!vec4<bool>(false, true, false, var_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, 772f, -781f, -679f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1402f, 405f, -736f, -586f) - vec4<f32>(786f, var_0.x, 311f, var_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1524f, -118f, arg_0, -764f), vec4<f32>(-1000f, arg_0, var_0.x, var_2)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -412f, var_2, -1091f))))), vec4<u32>(17382u, ~4294967295u, u_input.a.x, func_2().x)));
    return var_3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(select(vec4<bool>(select(true, true, false), true, true, true), vec4<bool>(u_input.e > u_input.e, false, true, true), vec4<bool>(select(false, false, true), all(vec3<bool>(true, false, true)), all(vec2<bool>(false, false)), all(vec2<bool>(false, false)))), vec4<f32>(-1449f, _wgslsmith_f_op_f32(select(-471f, _wgslsmith_f_op_f32(select(-376f, 797f, true)), true)), -2156f, 1356f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2284f, 494f, 802f, 1624f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, 590f, -1000f, -1273f))) - _wgslsmith_f_op_vec4_f32(func_1(-189f))), _wgslsmith_div_vec4_u32(select(reverseBits(vec4<u32>(u_input.c, 70923u, global1.x, 4294967295u)), ~vec4<u32>(u_input.d, 2093u, global1.x, u_input.a.x), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false)), ~firstTrailingBit(vec4<u32>(global1.x, 46662u, global1.x, 1u)))));
    var var_1 = global0[_wgslsmith_index_u32(~(reverseBits(_wgslsmith_div_u32(global1.x, ~var_0.a.d.x)) << (_wgslsmith_clamp_u32(u_input.d, select(~var_0.a.d.x, u_input.d, !var_0.a.a.x), global1.x) % 32u)), 23u)];
    var var_2 = vec4<bool>(((_wgslsmith_clamp_u32(29220u, 15954u, 16590u) & ~67360u) >> (31861u % 32u)) >= ~_wgslsmith_mult_u32(~var_0.a.d.x, _wgslsmith_clamp_u32(4294967295u, global1.x, global1.x)), true, var_1.a.x, any(vec4<bool>(!var_0.a.a.x, var_1.a.x, u_input.e <= _wgslsmith_mod_i32(u_input.e, u_input.e), _wgslsmith_sub_u32(global1.x, u_input.d) >= 4294967295u)));
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(abs(u_input.e), ~u_input.b, u_input.b << (49409u % 32u)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(-vec3<i32>(-45070i, 1i, u_input.b)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(-2147483647i, u_input.b, u_input.e)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.e, u_input.b), vec3<i32>(u_input.e, -2147483647i, u_input.b), vec3<i32>(u_input.b, -1i, u_input.e)), select(vec3<i32>(10612i, u_input.e, -1i), vec3<i32>(54017i, u_input.e, u_input.b), true)))), reverseBits(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 39983i), vec3<i32>(u_input.b, -1i, u_input.b))));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(1u, 23u)]);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.c.x) + _wgslsmith_f_op_f32(-var_4.a.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(i32(-1i) * -1i, select(7289i, u_input.e, false)));
}

