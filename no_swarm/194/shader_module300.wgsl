struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(i32(-2147483648), 67833i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -48332i, -1i), vec4<i32>(2147483647i, 15747i, -1i, -40019i), vec4<i32>(0i, 0i, -20755i, -75049i), vec4<i32>(2147483647i, 43428i, 0i, 46255i), vec4<i32>(10051i, 1i, 10435i, 511i), vec4<i32>(6996i, 1i, -28430i, -55965i), vec4<i32>(1i, 55829i, -13951i, -1i), vec4<i32>(1i, -32890i, 2147483647i, -12974i), vec4<i32>(-1i, 10812i, -52139i, 2147483647i), vec4<i32>(12558i, 8057i, i32(-2147483648), -1i), vec4<i32>(0i, i32(-2147483648), 0i, 76017i), vec4<i32>(-49187i, -16985i, 2147483647i, -17089i), vec4<i32>(49611i, -33973i, 38958i, 13964i), vec4<i32>(-1i, -66413i, -1i, 46651i), vec4<i32>(0i, -31233i, 37387i, 68239i), vec4<i32>(33964i, 1i, -3875i, 4694i), vec4<i32>(i32(-2147483648), 2147483647i, 39586i, 2147483647i), vec4<i32>(i32(-2147483648), 21608i, 2147483647i, i32(-2147483648)), vec4<i32>(-21305i, 35823i, -28087i, i32(-2147483648)), vec4<i32>(2147483647i, -56i, 1i, 19974i), vec4<i32>(1i, 1i, 29703i, 18770i), vec4<i32>(0i, -21933i, -27694i, 0i), vec4<i32>(-11600i, 1i, -16808i, -11171i), vec4<i32>(1i, 1i, 23950i, 42980i), vec4<i32>(2147483647i, 1i, -1i, 5208i), vec4<i32>(2147483647i, i32(-2147483648), 26459i, 2147483647i), vec4<i32>(31592i, -676i, 81842i, 75836i), vec4<i32>(1i, 6502i, 51948i, 0i), vec4<i32>(-51334i, -46065i, -1323i, 1873i), vec4<i32>(14346i, 49666i, -29237i, 0i), vec4<i32>(i32(-2147483648), 1i, 24015i, -52984i));

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 99905u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> vec2<i32> {
    var var_0 = -2147483647i;
    global1 = array<vec4<i32>, 32>();
    global0 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, -48497i, arg_2) | (u_input.d >> (vec4<u32>(4294967295u, global2.x, 0u, 26352u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.d), -vec4<i32>(arg_2, arg_0, arg_0, -9845i))));
    var var_1 = ~vec2<i32>(-arg_0 & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 46288i), vec2<i32>(arg_2, arg_2)), arg_0) | -u_input.d.yz;
    global1 = array<vec4<i32>, 32>();
    return select(firstTrailingBit(~vec2<i32>(-1i, ~(-32129i))), u_input.d.ww, vec2<bool>(_wgslsmith_dot_vec4_i32(~u_input.d, vec4<i32>(arg_0, -2147483647i, -1i, 0i)) < ~(arg_2 & 0i), false));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = arg_0.d;
    let var_0 = u_input.d.www;
    var var_1 = Struct_3(arg_0.c.x, -(~var_0.x), u_input.d.x << (~91515u % 32u), vec4<i32>(-1i, -1i, max(u_input.d.x, _wgslsmith_sub_i32(var_0.x, var_0.x >> (global2.x % 32u))), -26808i), vec3<u32>(30451u, 0u, ~arg_0.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-683f, -948f, -1015f, 1635f) - vec4<f32>(-1283f, 1111f, -1000f, -1012f)) - vec4<f32>(703f, 345f, -2202f, -1224f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1534f, -231f, -548f, -773f))) - vec4<f32>(-205f, -243f, 577f, -184f))))) - vec4<f32>(-152f, _wgslsmith_div_f32(-912f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(438f - -559f), -796f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -134f))), _wgslsmith_f_op_f32(select(306f, -265f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-129f))))));
    var_1 = Struct_3(false, abs(~_wgslsmith_sub_i32(-2147483647i, -3528i | u_input.d.x)), _wgslsmith_clamp_i32(~_wgslsmith_div_i32(-2147483647i, 2147483647i) & (9088i >> (_wgslsmith_clamp_u32(1u, 0u, u_input.b) % 32u)), -_wgslsmith_div_i32(~(-15227i), 1i), _wgslsmith_mod_i32(1i, -func_1(u_input.d.x, vec2<f32>(-282f, 352f), 63997i, -125f).x)), -firstLeadingBit(~(-vec4<i32>(-2994i, 2147483647i, u_input.d.x, 1i))), ~(~countOneBits(select(vec3<u32>(9517u, global2.x, u_input.b), u_input.c, true))));
    return !(!select(vec4<bool>(true, arg_0.c.x, var_1.a && var_1.a, !var_1.a), vec4<bool>(arg_0.c.x, select(arg_0.c.x, arg_0.c.x, false), false, false), !any(vec4<bool>(arg_0.c.x, var_1.a, var_1.a, var_1.a))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = array<vec4<i32>, 32>();
    var var_0 = countOneBits(i32(-1i) * -4582i);
    let var_1 = !select(func_3(Struct_1(1u, vec2<u32>(global2.x, global2.x), vec2<bool>(true, true), -2147483647i >> (u_input.b % 32u))), !func_3(Struct_1(u_input.c.x, u_input.e, vec2<bool>(true, true), 0i)), abs(~0u) < (global2.x << (~u_input.e.x % 32u)));
    let var_2 = Struct_3(true, (-_wgslsmith_clamp_i32(arg_0.x, arg_0.x, u_input.d.x) >> (abs(u_input.e.x << (82750u % 32u)) % 32u)) ^ arg_0.x, _wgslsmith_dot_vec3_i32(u_input.d.ywz, vec3<i32>(-1i) * -vec3<i32>(-1041i, arg_0.x, -2147483647i)), -(~vec4<i32>(arg_0.x, -1i, 40110i, arg_0.x)) & global1[_wgslsmith_index_u32(1u, 32u)], u_input.c);
    global1 = array<vec4<i32>, 32>();
    return !vec4<bool>(true, true, any(func_3(Struct_1(u_input.a, u_input.e, var_1.ww, -66540i))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.yyx;
    let var_1 = func_2(-_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d.x, var_0.x), u_input.d.x), max(func_1(var_0.x, vec2<f32>(-970f, 1568f), var_0.x, 933f), vec2<i32>(3010i, -1i))));
    let var_2 = Struct_3(true, select(_wgslsmith_sub_i32(33221i, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, u_input.d.x), u_input.d.x)), -var_0.x, !var_1.x), 43015i, reverseBits(u_input.d) | _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, -1i, var_0.x), -vec4<i32>(var_0.x, var_0.x, u_input.d.x, u_input.d.x)), vec4<i32>(~u_input.d.x, abs(-2147483647i), -2147483647i, u_input.d.x << (u_input.c.x % 32u))), select(abs(max(vec3<u32>(0u, 53722u, u_input.e.x), u_input.c)), u_input.c, var_1.x));
    var var_3 = !(!(!var_1));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-851f, 1613f, var_2.a)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(381f + -506f))))), 1000f);
    var var_5 = _wgslsmith_mult_vec2_i32(var_0.yy, vec2<i32>(0i, select(i32(-1i) * -37597i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 20082i), vec2<i32>(20i, 2147483647i)), !var_3.x))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(0u, 4294967295u, var_2.e.x)), ~var_2.e)), ~u_input.e ^ firstLeadingBit(vec2<u32>(u_input.b, 30596u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 1u, _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_4.x))))));
}

