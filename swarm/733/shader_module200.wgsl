struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(32342u, 4294967295u), vec2<u32>(0u, 56558u), vec2<u32>(4294967295u, 7324u), vec2<u32>(1u, 20053u), vec2<u32>(1u, 28917u), vec2<u32>(1u, 0u), vec2<u32>(1u, 79490u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 39077u), vec2<u32>(2669u, 0u), vec2<u32>(49090u, 11923u), vec2<u32>(72577u, 1u), vec2<u32>(51903u, 4294967295u), vec2<u32>(4294967295u, 2272u), vec2<u32>(4294967295u, 30957u), vec2<u32>(3141u, 0u), vec2<u32>(86387u, 0u), vec2<u32>(16076u, 0u), vec2<u32>(0u, 0u), vec2<u32>(49341u, 1u), vec2<u32>(90337u, 62028u), vec2<u32>(1u, 6028u), vec2<u32>(20721u, 1u), vec2<u32>(0u, 8142u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 76846u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<vec2<u32>, 28>();
    let var_0 = vec2<u32>(4294967295u, ~(~(~0u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_div_f32(-790f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x))), -1000f)));
    let var_2 = 4294967295u >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 3268u), 4294967295u) % 32u);
    let var_3 = -25021i;
    return vec2<bool>(((arg_3.a | 1i) != u_input.c) | any(select(vec2<bool>(true, arg_0), select(arg_3.d, vec2<bool>(arg_2, false), true), all(vec4<bool>(false, true, true, false)))), true);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(abs(max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 5850u), vec2<u32>(0u, 0u)), 0u)), ~57947u, arg_2) < ~arg_2;
    var var_1 = Struct_1(~arg_0.a << (0u % 32u), vec3<f32>(-830f, -1850f, arg_0.b.x), any(vec4<bool>(false, !arg_0.c, true, !arg_0.d.x)), vec2<bool>(true, true));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -414f, arg_0.b.x, var_1.b.x)), vec4<f32>(arg_0.b.x, arg_0.b.x, -1403f, var_1.b.x), vec4<bool>(var_1.d.x, true, false, var_1.d.x)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-470f, -876f))), _wgslsmith_f_op_f32(min(var_1.b.x, -914f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-277f, -570f, false)) * _wgslsmith_f_op_f32(-var_1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(449f, -515f))) * -925f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, var_1.b.x, arg_0.d.x)) + _wgslsmith_f_op_f32(round(591f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-660f)))))), -1014f));
    var var_3 = Struct_1(14947i, _wgslsmith_f_op_vec3_f32(-var_1.b), var_1.d.x, vec2<bool>(false, any(select(vec4<bool>(true, var_1.d.x, arg_0.c, false), vec4<bool>(arg_0.d.x, false, false, var_1.c), arg_0.c)) & var_1.d.x));
    var_3 = Struct_1(-arg_1, vec3<f32>(1f, var_2.x, var_1.b.x), !arg_0.d.x, var_3.d);
    return min(select(countOneBits(4294967295u), ~24282u, true) ^ 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_2, 0u), arg_2, ~arg_2) >> (vec3<u32>(abs(1u), ~41234u, 11419u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(27382u, arg_2, 4294967295u)), abs(vec3<u32>(4294967295u, arg_2, 55080u)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = 4294967295u;
    global0 = array<vec2<u32>, 28>();
    let var_1 = arg_0.x;
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    return Struct_1(1i, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) * -1442f)), -351f), arg_2, func_2(true, Struct_1(-8481i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(727f, 379f, 1169f))), !arg_2, vec2<bool>(u_input.c != arg_3.x, any(vec2<bool>(true, false)))), true, Struct_1(-firstTrailingBit(var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1176f, -320f, 952f) + vec3<f32>(1f, 1f, 1f)), !func_2(arg_2, Struct_1(var_1, vec3<f32>(783f, -814f, -1425f), false, vec2<bool>(arg_2, arg_2)), arg_2, Struct_1(8497i, vec3<f32>(1000f, 490f, -891f), arg_2, vec2<bool>(arg_2, arg_2))).x, !(!vec2<bool>(arg_2, arg_2)))));
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_clamp_vec4_i32(~(~(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x))), ~(~(vec4<i32>(1i, 12717i, u_input.b.x, -20122i) | u_input.d)), vec4<i32>(1i, 7102i, 0i | u_input.d.x, ~u_input.b.x) | (_wgslsmith_mult_vec4_i32(vec4<i32>(47426i, -19614i, 0i, u_input.d.x), vec4<i32>(u_input.d.x, -33753i, u_input.b.x, u_input.b.x)) | -vec4<i32>(43893i, u_input.b.x, 32829i, u_input.d.x))), func_3(Struct_1(1345i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -408f, -720f) * vec3<f32>(-1251f, 442f, -358f)), all(vec2<bool>(false, false)), func_2(false, Struct_1(u_input.b.x, vec3<f32>(1476f, -1637f, 633f), true, vec2<bool>(false, true)), true, Struct_1(-10711i, vec3<f32>(612f, -1000f, 519f), true, vec2<bool>(true, false)))), -(~(-1i)), 1u) ^ 10326u, true || any(vec4<bool>(select(false, false, true), all(vec3<bool>(false, false, false)), true, true)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, u_input.b.x, 2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), vec2<i32>(-2147483647i, u_input.c)), 1i), -2147483647i));
    var var_1 = Struct_1(-var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.b, var_0.b)) + vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-329f - 644f)), _wgslsmith_f_op_f32(abs(var_0.b.x)), var_0.b.x)), var_0.c, vec2<bool>(true, all(select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.c, true), vec4<bool>(true, false, false, false), var_0.d.x), select(vec4<bool>(var_0.d.x, var_0.c, false, true), vec4<bool>(var_0.d.x, var_0.c, var_0.d.x, var_0.d.x), false)))));
    var_0 = Struct_1(-(firstTrailingBit(-53238i) | _wgslsmith_mult_i32(1i, -2147483647i)), var_1.b, any(select(!vec4<bool>(true, var_0.c, var_1.d.x, true), vec4<bool>(var_1.d.x, true, var_0.c, var_1.d.x), any(vec2<bool>(false, var_0.c)))), vec2<bool>(all(!(!vec2<bool>(var_1.c, true))), true));
    var_1 = Struct_1(-_wgslsmith_sub_i32(-16058i, ~(-4935i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-349f, _wgslsmith_f_op_f32(var_1.b.x + -1361f), var_1.b.x), _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, -322f, var_0.b.x)))), vec3<bool>(func_4(u_input.d, 0u, false, vec2<i32>(var_0.a, 2147483647i)).d.x, func_2(var_0.c, Struct_1(u_input.a, vec3<f32>(659f, -965f, var_0.b.x), true, var_1.d), var_0.c, Struct_1(var_1.a, vec3<f32>(-809f, 745f, var_1.b.x), false, var_0.d)).x, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), 1658f, -406f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b - var_1.b))))), !all(select(select(vec3<bool>(true, var_1.c, false), vec3<bool>(var_1.d.x, false, false), var_1.c), vec3<bool>(var_0.c, var_1.c, true), var_1.d.x & false)), !vec2<bool>(func_4(vec4<i32>(var_0.a, var_0.a, u_input.a, 2147483647i), 0u, var_1.d.x, u_input.d.xy).d.x | any(vec4<bool>(true, var_0.c, true, var_1.c)), func_2(true, func_4(u_input.d, 77435u, true, vec2<i32>(-57600i, 0i)), true, func_4(u_input.d, 48463u, true, vec2<i32>(-1i, var_1.a))).x));
    global0 = array<vec2<u32>, 28>();
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-810f, _wgslsmith_f_op_f32(f32(-1f) * -639f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1537f, 1828f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-165f - -832f) - _wgslsmith_f_op_f32(f32(-1f) * -712f)), -2670f)));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d.x, 2147483647i), max(u_input.d.x, max(-(i32(-1i) * -35092i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -3923i)), u_input.d.yyw))));
    var var_2 = true != any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true)), !any(vec4<bool>(false, false, false, true))));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(u_input.d.wx, u_input.b.xy, true), select(vec2<i32>(-2147483647i, ~(-14406i)), -firstTrailingBit(u_input.d.ww), !select(vec2<bool>(true, true), vec2<bool>(false, false), false))), -abs(_wgslsmith_dot_vec2_i32(u_input.b.yz, min(u_input.d.zy, vec2<i32>(u_input.d.x, 0i)))), ~(-1i), u_input.d.x);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 1275f)), 1922f)) + -357f), var_0.x, _wgslsmith_f_op_f32(func_1()), 479f);
    global0 = array<vec2<u32>, 28>();
    var var_5 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -1i, -1529i), min(vec3<i32>(var_3.x, -2147483647i, u_input.c), var_3.zxy)), u_input.d.x, u_input.a, _wgslsmith_dot_vec4_i32(select(u_input.d, vec4<i32>(u_input.c, -77709i, 29981i, -2147483647i), vec4<bool>(false, true, true, true)), u_input.d)), countOneBits(-u_input.d << (vec4<u32>(13462u, 52828u, 93019u, 0u) % vec4<u32>(32u))), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_5.yx, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(53207i, u_input.a, var_5.x, -1i), u_input.d) >> (1u % 32u), 2147483647i, -1i, -25997i) | _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, -vec4<i32>(31834i, -2147483647i, u_input.c, 2147483647i), u_input.d), select(vec4<i32>(-32513i, 2147483647i, var_5.x, var_5.x), max(u_input.d, vec4<i32>(var_3.x, var_5.x, -1i, 1i)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-235f, var_4.x))), -vec3<i32>(32685i, -_wgslsmith_sub_i32(-1i, var_5.x), u_input.a));
}

