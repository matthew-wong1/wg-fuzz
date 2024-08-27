struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: Struct_4 = Struct_4(Struct_3(vec4<u32>(105103u, 0u, 0u, 13344u), 4744i, 54096i), vec4<bool>(true, false, false, true));

var<private> global3: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> vec2<f32> {
    var var_0 = arg_2;
    let var_1 = -vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-23978i, 0i, global2.a.b), vec3<i32>(-27046i, global2.a.b, 1i)), _wgslsmith_mult_i32(20025i, global2.a.b));
    let var_2 = false;
    let var_3 = 0i;
    var var_4 = arg_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-454f, -1071f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-450f, arg_2)))))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = abs(arg_1.c);
    let var_1 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_div_i32(-51714i, -71672i), _wgslsmith_clamp_i32(52487i, arg_1.d.x, ~arg_1.d.x)), global2.a.b, global2.a.c, abs(-82737i));
    let var_2 = global2.a;
    global4 = global2.b;
    let var_3 = global2.b;
    return ~_wgslsmith_clamp_u32(1u, max(~u_input.a.x >> (1u % 32u), var_2.a.x), var_2.a.x);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> bool {
    var var_0 = 2147483647i;
    var var_1 = Struct_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(52957u, global2.a.a.x, u_input.c, 4294967295u), global2.a.a) & vec4<u32>(_wgslsmith_div_u32(90169u << (global2.a.a.x % 32u), 0u), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(28134u, global2.a.a.x)), u_input.c, 38245u), arg_0, abs(37460i));
    global0 = ~0u;
    var var_2 = ~func_4(false, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(79741u, global2.a.a.x), var_1.a.xy) << (_wgslsmith_mod_u32(global2.a.a.x, 851u) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(var_1.a, global2.a.c, 32761i), var_1.a.x, 1402f))), -76549i, ~vec4<i32>(arg_0, 32728i, global2.a.c, 0i), global2.a.a.x));
    var var_3 = arg_1.yy;
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(arg_2.a.e, arg_1.c, -2980i, ~arg_1.a.d, ~firstTrailingBit(33009u));
    var var_1 = Struct_3(global2.a.a, countOneBits(-98570i), -(i32(-1i) * -1i));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(72095i, arg_2.a.c), abs(~vec2<i32>(var_1.b, global2.a.b))) >> (0u % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.d, 691f, var_0.b.x, 768f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, arg_2.a.b.x, 536f, 1245f) - vec4<f32>(arg_1.d, 1140f, -528f, arg_1.d)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.x, var_0.b.x, -181f, 1000f), vec4<f32>(arg_1.c.x, var_0.b.x, arg_1.c.x, var_0.b.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1537f, arg_1.d, var_0.b.x, 750f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d, var_0.b.x, arg_2.c.x, 666f), vec4<f32>(513f, arg_2.d, -618f, arg_1.d)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.b.x, 1042f, arg_1.a.b.x, 1360f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(349f, -2706f, 2812f, 1496f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1286f, arg_1.d, 1242f, arg_1.c.x))), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(746f, arg_1.a.b.x, -913f, var_0.b.x))), global2.b)));
    global3 = array<vec3<bool>, 7>();
    return vec3<f32>(363f, _wgslsmith_f_op_f32(floor(var_3.x)), var_3.x);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_2(0i, vec4<i32>(~47724i, 1i, -18244i, 1i)), Struct_2(Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, -954f)), -arg_0.x, _wgslsmith_div_vec4_i32(arg_0, vec4<i32>(-8459i, global2.a.c, global2.a.c, arg_0.x)), ~u_input.a.x), all(!global2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, -617f)) - vec2<f32>(1655f, 1938f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global2.a, 20872u, 601f)).x)), Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-682f, 1654f), vec2<f32>(1000f, -1000f))), 23100i, vec4<i32>(global2.a.c, global2.a.b, 1212i, 2147483647i), 1u), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-937f, -1000f), vec2<f32>(400f, 1852f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-871f, -197f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1498f)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -573f, -292f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1011f, 398f, -1000f), vec3<f32>(-721f, 962f, -751f))))))));
    var var_1 = select(~global2.a.a.x, ~u_input.c, func_2(firstTrailingBit(abs(~arg_0.x)), _wgslsmith_add_vec4_i32(select(~vec4<i32>(22030i, 6359i, global2.a.b, arg_0.x), vec4<i32>(global2.a.b, global2.a.b, -1i, global2.a.c) << (global2.a.a % vec4<u32>(32u)), !global2.b), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.yx, arg_0.yw), arg_0.x, select(-2147483647i, global2.a.b, global2.b.x), global2.a.c >> (4294967295u % 32u)))));
    var var_2 = max(global2.a.a.wyw, u_input.a);
    global3 = array<vec3<bool>, 7>();
    let var_3 = i32(-1i) * -global2.a.b;
    return Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_clamp_i32(~1i, 2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(62548i, var_3, arg_0.x, 41991i)), _wgslsmith_div_i32(-9997i, 55173i)), firstTrailingBit(global2.a.c))), arg_0, 37743u);
}

fn func_6(arg_0: Struct_2) -> vec4<bool> {
    global4 = global2.b;
    var var_0 = vec2<i32>(-48941i, global2.a.c);
    var var_1 = global2.a.c;
    return vec4<bool>(all(global4.zzz), true, ~arg_0.a.c < -44795i, true | global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(Struct_2(func_1(-vec4<i32>(global2.a.b, global2.a.b, 1i, -2147483647i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1902f, -391f) - vec2<f32>(414f, -1571f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = _wgslsmith_f_op_f32(1060f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-1992f + 1250f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-774f)) + _wgslsmith_div_f32(-874f, 996f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global2.a, global2.a.a.x, _wgslsmith_f_op_f32(-550f + 409f))).x))));
    var var_2 = Struct_2(func_1(_wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.c, global2.a.b, -6543i, global2.a.c), vec4<i32>(0i, -1i, global2.a.b, global2.a.b)), ~vec4<i32>(global2.a.c, global2.a.b, -45989i, -29854i))), all(!vec4<bool>(true, any(var_0), true, all(vec2<bool>(global4.x, global4.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))) - 207f)));
    global4 = func_6(Struct_2(func_1(func_1(_wgslsmith_mult_vec4_i32(var_2.a.d, vec4<i32>(global2.a.c, var_2.a.d.x, var_2.a.d.x, -19329i))).d), var_2.b, var_2.a.b, var_2.a.b.x));
    global3 = array<vec3<bool>, 7>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, -1493f, var_2.c.x) - vec3<f32>(var_2.a.b.x, 390f, 815f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, -217f, 737f))))));
    let var_4 = (global2.a.b ^ var_2.a.c) & countOneBits(-24050i);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(32695i), max(~u_input.b.x, 11518u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-799f, -1749f, var_1 == var_3.x)), var_3.x)), _wgslsmith_f_op_f32(-var_2.a.b.x), 0u ^ u_input.c);
}

