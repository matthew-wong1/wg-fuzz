struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<bool>(all(vec4<bool>(any(vec4<bool>(false, arg_3.e.x, arg_3.e.x, arg_2.x)), true, arg_2.x || false, true)) && any(select(select(arg_2.xz, arg_2.zy, true), select(arg_2.xz, vec2<bool>(arg_3.e.x, arg_2.x), true), !arg_2.xz)), !(_wgslsmith_sub_u32(arg_3.c.x, 36796u) <= ~arg_3.c.x) & any(arg_3.e), arg_2.x);
    let var_1 = ~u_input.a;
    var_0 = vec3<bool>(!arg_2.x, !arg_2.x, max(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, var_1, 54869u, arg_3.c.x), vec4<u32>(6708u, 72712u, 54146u, arg_3.c.x)), ~4294967295u | arg_3.c.x) == ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c.x, 1u, 4294967295u) | u_input.e, max(u_input.e, vec3<u32>(u_input.a, u_input.a, u_input.c.x))));
    global0 = array<Struct_1, 23>();
    let var_2 = 0u;
    return reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(var_2), 27760u), ~arg_3.c.x) | arg_3.c.x);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(618f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1772f))));
    global0 = array<Struct_1, 23>();
    var var_1 = -u_input.b.x;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), 544f, _wgslsmith_mod_i32(u_input.d, u_input.d) > ~(-(5730i & u_input.b.x))));
    var var_2 = ~1u;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(min(func_3(vec2<f32>(-1531f, 1178f), u_input.b.yw, vec3<bool>(true, false, false), Struct_1(-2147483647i, vec4<i32>(-1i, -1i, 1i, u_input.d), vec2<u32>(u_input.a, u_input.c.x), u_input.b, vec2<bool>(false, false))), _wgslsmith_mod_u32(4294967295u, u_input.c.x)), countOneBits(select(u_input.c.x, u_input.e.x, true)), reverseBits(27618u), 13943u) >> (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.e.x, u_input.e.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.c.x, u_input.e.x, u_input.a), vec4<u32>(u_input.c.x, u_input.a, u_input.a, 38655u)))) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(u_input.a, 0u, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.c.x, 17210u, u_input.e.x), false), vec4<u32>(reverseBits(0u), u_input.e.x >> (u_input.c.x % 32u), ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 82440u, 0u, u_input.e.x), vec4<u32>(25671u, u_input.c.x, 1u, u_input.c.x)))), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e, u_input.e), reverseBits(u_input.e)), u_input.c.x, ~u_input.c.x), ~(~28815u) <= _wgslsmith_add_u32(~1u, ~u_input.e.x)));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(countOneBits(vec4<u32>(~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), func_2() >> (~5742u % 32u), _wgslsmith_mult_u32(1u & u_input.e.x, ~u_input.e.x), _wgslsmith_add_u32(u_input.a, ~u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(810f + -475f), -838f))) + -1523f), global0[_wgslsmith_index_u32(countOneBits(select(u_input.e.x, u_input.c.x, true)), 23u)], Struct_1(countOneBits(~(i32(-1i) * -2147483647i)), u_input.b, _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, 4294967295u)), abs(vec2<u32>(u_input.c.x, u_input.e.x))), ~abs(u_input.b), vec2<bool>(true, all(vec2<bool>(true, true)))), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, false), -10817i != u_input.d), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true)));
    var_0 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(48173u, 13233u, var_0.c.c.x, _wgslsmith_div_u32(~u_input.e.x, ~var_0.d.c.x)), ~vec4<u32>(20814u, ~4294967295u, ~var_0.d.c.x, u_input.a)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-1f)), Struct_1(-u_input.d, u_input.b, ~(~select(vec2<u32>(var_0.c.c.x, var_0.c.c.x), vec2<u32>(u_input.c.x, 4294967295u), vec2<bool>(var_0.e.x, var_0.e.x))), vec4<i32>(u_input.d, 0i, _wgslsmith_clamp_i32(firstLeadingBit(-27063i), u_input.b.x ^ 25776i, u_input.b.x), i32(-1i) * -u_input.d), vec2<bool>(any(vec4<bool>(var_0.d.e.x, var_0.d.e.x, false, true)), select(false, !var_0.c.e.x, true))), global0[_wgslsmith_index_u32(select(~u_input.a, u_input.c.x, false), 23u)], select(select(select(vec3<bool>(var_0.e.x, false, true), select(vec3<bool>(true, true, false), vec3<bool>(var_0.c.e.x, true, var_0.d.e.x), false), var_0.e), var_0.e, vec3<bool>(any(vec4<bool>(true, var_0.d.e.x, var_0.e.x, false)), select(var_0.d.e.x, var_0.c.e.x, true), all(var_0.e.zy))), vec3<bool>(var_0.c.e.x, !var_0.d.e.x && false, var_0.e.x), false));
    let var_1 = Struct_2(~(firstLeadingBit(var_0.a) | select(~vec4<u32>(var_0.d.c.x, u_input.e.x, 0u, 0u), ~var_0.a, !vec4<bool>(false, var_0.c.e.x, var_0.c.e.x, var_0.e.x))), var_0.b, var_0.d, Struct_1(-1i, -vec4<i32>(var_0.d.a, 0i, 0i, ~var_0.d.b.x), ~min(vec2<u32>(86054u, var_0.c.c.x), vec2<u32>(39454u, var_0.a.x)), -vec4<i32>(3020i, 48503i, u_input.d | var_0.c.d.x, 2382i), select(!select(var_0.d.e, vec2<bool>(var_0.d.e.x, var_0.d.e.x), var_0.d.e), !(!var_0.e.yy), !select(var_0.e.xy, var_0.d.e, var_0.c.e))), var_0.e);
    global0 = array<Struct_1, 23>();
    var var_2 = false;
    return select(!vec2<bool>(var_0.d.e.x, all(!vec4<bool>(var_0.d.e.x, var_1.c.e.x, var_1.e.x, var_1.e.x))), !var_1.d.e, var_0.d.e.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = !all(vec2<bool>(all(arg_0.e), true)) | (~reverseBits(arg_3.c.c.x) <= max(u_input.a, 0u));
    let var_1 = Struct_2(reverseBits(arg_3.a | ~vec4<u32>(u_input.c.x, 4357u, 9757u, 57802u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(224f * arg_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))), Struct_1(arg_2.x, -(~vec4<i32>(1i, -1i, 27458i, arg_3.c.a)), max(vec2<u32>(countOneBits(19148u), func_2()), max(arg_0.c, arg_0.c | vec2<u32>(arg_0.c.x, 7834u))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.b.x, 297i), vec3<i32>(-1435i, 2147483647i, arg_0.a)) ^ arg_2.x, 0i, -(25138i & arg_2.x), 45688i), arg_3.d.e), global0[_wgslsmith_index_u32(~(arg_0.c.x ^ func_2()), 23u)], select(select(select(vec3<bool>(true, arg_0.e.x, true), vec3<bool>(true, true, arg_0.e.x), vec3<bool>(true, true, true)), arg_3.e, vec3<bool>(select(arg_0.e.x, arg_3.c.e.x, arg_0.e.x), true, arg_3.e.x)), !(!select(arg_3.e, vec3<bool>(true, true, arg_0.e.x), arg_0.e.x)), any(!select(vec4<bool>(true, true, arg_3.d.e.x, arg_0.e.x), vec4<bool>(false, arg_3.d.e.x, arg_3.d.e.x, arg_3.c.e.x), arg_0.e.x))));
    var_0 = true;
    var_0 = any(vec3<bool>(var_1.b <= arg_3.b, all(arg_0.e), arg_0.e.x));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(Struct_1(-_wgslsmith_clamp_i32(-34152i, 1i, u_input.b.x), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -8985i, 18759i, u_input.b.x), u_input.b ^ vec4<i32>(-2147483647i, u_input.b.x, u_input.d, 2147483647i)), abs(vec2<u32>(9048u, u_input.c.x) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 13430i), u_input.b), max(16619i, 1i), -u_input.d, -26525i ^ u_input.d), select(func_1(), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1953f, -297f, -1338f))))), abs(-(~u_input.b.zz)), Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, 4294967295u) ^ vec4<u32>(72765u, u_input.e.x, u_input.e.x, 254u), ~vec4<u32>(0u, 52380u, u_input.c.x, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -782f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, ~u_input.e.x), 23u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.e.x, u_input.a) | 0u, 23u)], vec3<bool>(true, true, true))), -128f, Struct_1(4069i, ~(~u_input.b), ~select(u_input.c, u_input.c, true), -u_input.b, func_1()), Struct_1(u_input.b.x, select(min(vec4<i32>(u_input.b.x, -2147483647i, 16335i, -2147483647i), u_input.b) << (min(vec4<u32>(91343u, 44877u, u_input.e.x, 84369u), vec4<u32>(u_input.e.x, 0u, 1u, 0u)) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 87912i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -2147483647i), u_input.b.yxw), u_input.d), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true)), u_input.c, -u_input.b, vec2<bool>(true, true)), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(func_1().x | true, true, true), vec3<bool>(true, func_1().x, all(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-var_0.c.b.zw, vec2<i32>(38242i, -10527i)), u_input.b.wx), 47130i, -u_input.d, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(17241i, u_input.b.x), _wgslsmith_mod_i32(0i, u_input.b.x), -1i, -17906i & _wgslsmith_add_i32(u_input.d, 1i)), countOneBits(u_input.b)));
    var var_2 = !var_0.c.e;
    var_2 = func_1();
    let var_3 = ~u_input.e.x;
    let var_4 = false;
    var var_5 = ~min(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_3, 10193u, 4294967295u, 20257u)), var_0.a >> (vec4<u32>(14862u, u_input.a, u_input.c.x, 1u) % vec4<u32>(32u))), max(vec4<u32>(~38287u, 0u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.e.xx)), var_0.a << (var_0.a % vec4<u32>(32u))));
    var var_6 = _wgslsmith_f_op_f32(exp2(var_0.b));
    let var_7 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_div_f32(660f, 952f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-715f, abs(~_wgslsmith_mod_u32(u_input.e.x, var_3)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-523f, var_0.b, 1148f), vec3<f32>(var_0.b, var_7, var_0.b))))))), var_0.d.d);
}

