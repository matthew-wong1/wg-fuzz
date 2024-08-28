struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(i32(-2147483648), -11675i, -34156i), vec3<i32>(0i, 2147483647i, 20703i), vec3<i32>(26413i, i32(-2147483648), -18458i), vec3<i32>(0i, 57985i, 1i), vec3<i32>(i32(-2147483648), 14459i, -41635i), vec3<i32>(-32640i, 2996i, 1i), vec3<i32>(-1i, 2147483647i, -1991i), vec3<i32>(-29048i, -39388i, 6651i), vec3<i32>(1394i, -11608i, 2147483647i), vec3<i32>(-7883i, i32(-2147483648), 5559i), vec3<i32>(10463i, i32(-2147483648), -55275i), vec3<i32>(-37450i, -1i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -2611i), vec3<i32>(0i, -22256i, 0i), vec3<i32>(8382i, -32416i, 0i), vec3<i32>(-25598i, -9449i, -1i), vec3<i32>(i32(-2147483648), -42553i, -48492i), vec3<i32>(2147483647i, -24972i, -1i), vec3<i32>(34265i, i32(-2147483648), 36613i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_2(arg_0.d.a, arg_2.b.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, u_input.a.x, ~u_input.c, 22339u << (1u % 32u)), ~vec4<u32>(u_input.a.x, 4294967295u, 82591u, u_input.a.x) & vec4<u32>(u_input.a.x, 13327u, 0u, u_input.b)) == ~u_input.b);
    var var_1 = arg_2.d.b;
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a, -1495f))))), _wgslsmith_div_i32(-global1.x, global1.x) <= 0i);
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1594f - 504f) - _wgslsmith_div_f32(arg_1, arg_0.b.b.a))), 1324f, arg_1, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(max(377f, arg_0.d.b.a)))), arg_2.d, _wgslsmith_f_op_vec2_f32(arg_2.a.yz - vec2<f32>(_wgslsmith_f_op_f32(-1939f - var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.a, var_1.a))))), arg_2.d);
    let var_3 = arg_2.d.b;
    return arg_0.a.yw;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1695f, 359f, 585f, 735f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2586f, -768f, -2042f, -174f))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(1000f), select(false, false, true)), vec2<f32>(_wgslsmith_f_op_f32(step(-724f, 1223f)), _wgslsmith_f_op_f32(-1000f - 595f)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(-1270f), false)), 604f, Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(331f, 834f, 253f, -1000f) * vec4<f32>(1300f, 418f, -1042f, 147f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, 548f, 543f, 2196f) - vec4<f32>(-1319f, -400f, -566f, -1892f)), vec4<bool>(true, true, true, true))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(604f), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(391f, -801f))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(-1463f), false)), vec2<i32>(global1.x, ~(-37779i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3493f, -418f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1030f, -826f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2772f, -257f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -277f)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -274f, -2721f, -363f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(348f, var_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -896f, var_0.x, 242f) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, -2369f, 1487f, -467f))))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(var_0.x), any(vec4<bool>(true, true, true, true))), vec2<f32>(var_0.x, var_0.x), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x > 920f, all(vec4<bool>(true, false, true, true)), true, -1000f <= var_0.x), any(vec3<bool>(true, true, true))), Struct_1(var_0.x), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(false, false, false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(var_0));
    global2 = array<vec3<i32>, 19>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2008f, var_0.x, var_0.x) - vec4<f32>(var_1.d.b.a, var_0.x, 1364f, -921f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1062f + 956f), _wgslsmith_f_op_f32(max(1000f, var_2.x)), var_3.a), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_1.a)) - vec4<f32>(_wgslsmith_f_op_f32(-564f + var_3.a), _wgslsmith_f_op_f32(step(var_2.x, -1000f)), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x)))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = vec4<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.b, u_input.a.x)) ^ _wgslsmith_mult_u32(0u, u_input.b), ~abs(_wgslsmith_mult_u32(u_input.b, 4294967295u)) | u_input.c, 31287u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c << (89904u % 32u), ~u_input.a.x, _wgslsmith_add_u32(u_input.b, u_input.b)), 4294967295u)));
    global1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(global1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 53920i, 23878i, -2147483647i), vec4<i32>(-20315i, global1.x, global1.x, global1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 74943i, 59052i, global1.x), vec4<i32>(global1.x, 0i, -2147483647i, 1i))), firstLeadingBit(countOneBits(-29169i)), _wgslsmith_div_i32(-global1.x, -36242i << (0u % 32u))), abs(max(select(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 6266i, global1.x, global1.x), vec4<i32>(global1.x, 0i, global1.x, 1i)), vec4<i32>(-14117i, -1i, 0i, -2147483647i) << (var_0 % vec4<u32>(32u)), all(global0[_wgslsmith_index_u32(4294967295u, 17u)])), ~vec4<i32>(-43703i, -6212i, -1i, 1i))));
    global0 = array<vec2<bool>, 17>();
    var var_1 = arg_0.d;
    var_1 = arg_0.b;
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -182f))) + _wgslsmith_f_op_f32(f32(-1f) * -4036f)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<vec2<bool>, 17>();
    global0 = array<vec2<bool>, 17>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(7258u, 74054u), vec2<u32>(19453u, u_input.b), false), firstLeadingBit(u_input.a)), ~firstTrailingBit(42332u)) ^ firstLeadingBit(vec2<u32>(u_input.b, ~u_input.c)), vec2<u32>(countOneBits(u_input.c), u_input.c) >> ((abs(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.b, 41397u))) >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(121f, 391f, 657f, arg_0.a), vec4<f32>(arg_0.a, 125f, arg_3.a, -295f))), Struct_2(vec4<bool>(true, true, false, true), arg_0, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 2374f) * vec2<f32>(arg_0.a, arg_3.a)), Struct_2(vec4<bool>(false, true, true, true), arg_0, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1554f - 660f) - _wgslsmith_f_op_f32(-arg_1)), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, arg_3.a, -1349f, arg_0.a)), Struct_2(vec4<bool>(true, true, false, false), arg_0, true), _wgslsmith_div_vec2_f32(vec2<f32>(-112f, -661f), vec2<f32>(arg_0.a, -219f)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(-852f), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(46728i, arg_2.x), arg_2.yy >> (u_input.a % vec2<u32>(32u))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.a), -967f))), -152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<f32>(765f, arg_0.a, arg_0.a, 1352f), Struct_2(vec4<bool>(true, false, true, true), Struct_1(arg_3.a), true), vec2<f32>(arg_1, arg_3.a), Struct_2(vec4<bool>(true, true, false, true), arg_3, false)), arg_0.a, Struct_3(vec4<f32>(-423f, -105f, arg_0.a, 477f), Struct_2(vec4<bool>(false, true, true, true), Struct_1(317f), true), vec2<f32>(1134f, 2239f), Struct_2(vec4<bool>(false, true, false, true), arg_0, false)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.x, -1i), global1.zw, vec2<i32>(29472i, 32165i)))).x)), Struct_2(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), Struct_1(arg_3.a), true), vec2<f32>(_wgslsmith_f_op_f32(-1541f * _wgslsmith_f_op_f32(-arg_1)), 1376f), Struct_2(vec4<bool>(true, true, all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 81320u, var_0, 0u), vec4<u32>(89980u, var_0, var_0, 13942u)), 17u)]), !all(vec4<bool>(true, false, true, false))), Struct_1(arg_1), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), any(vec4<bool>(false, false, true, true))))));
    let var_2 = var_1.b.a.zzy;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.a.xwz, var_1.a.xzz, !(!vec3<bool>(true, var_2.x, var_1.d.c)))) - vec3<f32>(var_1.c.x, -277f, _wgslsmith_f_op_f32(arg_0.a * 1773f)));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1282f, -296f, 459f, 2155f))), _wgslsmith_f_op_vec4_f32(func_2())), Struct_2(vec4<bool>(false, true, false, true), Struct_1(-1772f), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, 1590f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-905f, -1737f)))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(943f), true))), _wgslsmith_f_op_f32(-1199f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1520f, 801f)), 236f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<f32>(1181f, -597f, 1339f, 170f), Struct_2(vec4<bool>(false, true, false, true), Struct_1(-651f), false), vec2<f32>(1000f, -1266f), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-1271f), false)), 755f, Struct_3(vec4<f32>(482f, -103f, 461f, -401f), Struct_2(vec4<bool>(true, true, true, false), Struct_1(-767f), false), vec2<f32>(-1794f, -230f), Struct_2(vec4<bool>(false, true, true, false), Struct_1(-761f), true)), vec2<i32>(24262i, -1i))).x))), vec4<i32>(global1.x, global1.x, global1.x, -25595i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f * -1900f) - _wgslsmith_f_op_f32(-1115f * -806f))))));
    global2 = array<vec3<i32>, 19>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(var_0.x), var_0.x, vec4<i32>(global1.x, 34116i, global1.x, 36325i), func_4(Struct_3(vec4<f32>(-533f, var_0.x, var_0.x, -1054f), Struct_2(vec4<bool>(false, false, true, false), Struct_1(var_0.x), false), var_0.yy, Struct_2(vec4<bool>(false, false, true, false), Struct_1(var_0.x), true))))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(trunc(-206f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_0, vec3<f32>(895f, -633f, 855f))))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, -1821f), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1269f, 852f, -807f, var_1.x) * vec4<f32>(641f, 1000f, var_1.x, -630f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1250f, 1672f, 1799f, var_1.x), vec4<f32>(608f, var_0.x, -1306f, 1001f), vec4<bool>(false, false, true, false)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_0.x, var_1.x, 1598f), vec4<f32>(var_0.x, var_1.x, -819f, -888f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1408f, var_1.x, -421f), vec4<f32>(-610f, var_1.x, var_1.x, 731f)))))), vec4<f32>(708f, -179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_0.x)) + -1800f)));
    var var_3 = !any(vec3<bool>(true, true, true));
    return _wgslsmith_add_vec3_u32(~select(~vec3<u32>(0u, u_input.a.x, 1u), ~vec3<u32>(0u, 47828u, u_input.c), true), select(~(vec3<u32>(u_input.a.x, 17127u, 10351u) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), (vec3<u32>(93516u, 4294967295u, u_input.a.x) & vec3<u32>(u_input.c, 4294967295u, 0u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(0u, u_input.b, 42410u)), !all(vec4<bool>(false, true, true, true)))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(~(~46277u), ~u_input.a.x, 4284u >> (_wgslsmith_div_u32(u_input.c, u_input.b) % 32u)), ~firstLeadingBit(vec3<u32>(0u, u_input.c, 94828u) ^ vec3<u32>(u_input.c, u_input.a.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(max(u_input.b, 34439u)), firstTrailingBit(u_input.c), 4294967295u), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.b, u_input.c)))), abs(vec3<u32>(30381u, 3005u, _wgslsmith_dot_vec3_u32(func_1(), vec3<u32>(u_input.a.x, 1u, 1u)))), vec3<u32>(_wgslsmith_clamp_u32(0u, firstTrailingBit(~u_input.c), ~select(u_input.b, u_input.a.x, false)), ~_wgslsmith_add_u32(u_input.a.x, u_input.c), min(4294967295u, _wgslsmith_clamp_u32(u_input.c, _wgslsmith_mod_u32(53009u, u_input.c), 94688u))));
    let var_1 = ~(~19279u);
    var var_2 = all(vec4<bool>(global1.x != global1.x, false, true, true)) || (true & (true | select(true, true, true)));
    let var_3 = ~_wgslsmith_add_u32(32979u, var_1);
    let var_4 = 1593f;
    var var_5 = ~_wgslsmith_sub_vec4_u32(select(select(select(vec4<u32>(4294967295u, var_3, var_1, var_0.x), vec4<u32>(var_0.x, 0u, 1879u, u_input.c), vec4<bool>(false, false, true, true)), vec4<u32>(var_1, var_1, u_input.a.x, 4294967295u), false), ~(vec4<u32>(1u, var_0.x, u_input.a.x, 1u) | vec4<u32>(8040u, 4294967295u, var_0.x, 4294967295u)), true && (1i != global1.x)), max(~firstLeadingBit(vec4<u32>(var_1, 0u, 4294967295u, u_input.c)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_3, 0u, 60576u, 54632u), vec4<u32>(var_0.x, 6920u, var_3, 1u), vec4<bool>(true, true, true, true)), vec4<u32>(58245u, 22487u, var_1, 87024u))));
    global1 = vec4<i32>(global1.x, i32(-1i) * -((global1.x << (1u % 32u)) >> (var_5.x % 32u)), global1.x, ~1i);
    var_0 = vec3<u32>(18357u, ~_wgslsmith_dot_vec2_u32(var_0.zz, u_input.a), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i ^ global1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, -30070i, global1.x, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -14960i, -5404i, -1i), vec4<i32>(0i, global1.x, global1.x, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(77307i, -1i, global1.x, global1.x) | vec4<i32>(global1.x, -43459i, -2147483647i, global1.x), vec4<i32>(12942i, global1.x, global1.x, global1.x)))), vec2<i32>(-2147483647i, 0i), -2147483647i, var_4);
}

