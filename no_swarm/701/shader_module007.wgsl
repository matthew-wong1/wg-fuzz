struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec2<bool>(true, true), Struct_1(i32(-2147483648), vec2<bool>(false, false)), 0i), Struct_2(vec2<bool>(false, false), Struct_1(-29616i, vec2<bool>(true, true)), -1i), Struct_2(vec2<bool>(true, true), Struct_1(-1i, vec2<bool>(true, false)), -25563i), Struct_2(vec2<bool>(true, true), Struct_1(-44130i, vec2<bool>(false, true)), 2147483647i), Struct_2(vec2<bool>(false, true), Struct_1(-1i, vec2<bool>(false, true)), 31497i), Struct_2(vec2<bool>(true, true), Struct_1(-1i, vec2<bool>(false, true)), 0i), Struct_2(vec2<bool>(false, false), Struct_1(1i, vec2<bool>(true, true)), 3533i), Struct_2(vec2<bool>(false, true), Struct_1(0i, vec2<bool>(false, false)), -4405i), Struct_2(vec2<bool>(true, false), Struct_1(2147483647i, vec2<bool>(false, true)), 0i), Struct_2(vec2<bool>(false, false), Struct_1(-12858i, vec2<bool>(false, true)), 24144i), Struct_2(vec2<bool>(true, true), Struct_1(0i, vec2<bool>(true, true)), 19280i), Struct_2(vec2<bool>(false, true), Struct_1(28989i, vec2<bool>(false, false)), -23808i), Struct_2(vec2<bool>(false, false), Struct_1(-4291i, vec2<bool>(false, false)), 8600i), Struct_2(vec2<bool>(true, true), Struct_1(0i, vec2<bool>(false, false)), -28948i), Struct_2(vec2<bool>(true, false), Struct_1(-854i, vec2<bool>(true, false)), -45052i), Struct_2(vec2<bool>(false, true), Struct_1(-10690i, vec2<bool>(true, false)), 1i), Struct_2(vec2<bool>(true, false), Struct_1(1i, vec2<bool>(true, true)), -1i), Struct_2(vec2<bool>(true, true), Struct_1(2147483647i, vec2<bool>(false, false)), -6551i), Struct_2(vec2<bool>(false, false), Struct_1(-1i, vec2<bool>(true, false)), -5282i), Struct_2(vec2<bool>(false, false), Struct_1(-17665i, vec2<bool>(true, false)), -23803i), Struct_2(vec2<bool>(true, true), Struct_1(2147483647i, vec2<bool>(false, false)), 59176i), Struct_2(vec2<bool>(false, true), Struct_1(21035i, vec2<bool>(false, false)), 29215i), Struct_2(vec2<bool>(false, false), Struct_1(i32(-2147483648), vec2<bool>(false, false)), -1i), Struct_2(vec2<bool>(false, false), Struct_1(16073i, vec2<bool>(false, true)), 0i), Struct_2(vec2<bool>(true, true), Struct_1(i32(-2147483648), vec2<bool>(true, false)), 0i), Struct_2(vec2<bool>(true, false), Struct_1(21418i, vec2<bool>(true, true)), 25516i), Struct_2(vec2<bool>(false, true), Struct_1(2147483647i, vec2<bool>(true, false)), i32(-2147483648)), Struct_2(vec2<bool>(true, false), Struct_1(2147483647i, vec2<bool>(true, true)), 2147483647i), Struct_2(vec2<bool>(true, true), Struct_1(0i, vec2<bool>(false, false)), 2147483647i), Struct_2(vec2<bool>(true, false), Struct_1(0i, vec2<bool>(false, false)), -19120i));

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(98i, vec2<bool>(false, false)), Struct_1(-5720i, vec2<bool>(true, false)), Struct_1(1i, vec2<bool>(true, false)), Struct_1(-39270i, vec2<bool>(false, true)), Struct_1(0i, vec2<bool>(false, true)), Struct_1(2147483647i, vec2<bool>(true, false)), Struct_1(38964i, vec2<bool>(false, true)), Struct_1(0i, vec2<bool>(true, true)), Struct_1(-5402i, vec2<bool>(false, false)), Struct_1(0i, vec2<bool>(true, true)), Struct_1(-8710i, vec2<bool>(true, true)), Struct_1(-21731i, vec2<bool>(true, true)), Struct_1(1997i, vec2<bool>(true, false)), Struct_1(2147483647i, vec2<bool>(true, false)), Struct_1(0i, vec2<bool>(true, false)), Struct_1(37978i, vec2<bool>(true, false)), Struct_1(1i, vec2<bool>(false, false)), Struct_1(16055i, vec2<bool>(true, false)), Struct_1(64739i, vec2<bool>(false, false)), Struct_1(1i, vec2<bool>(false, false)));

var<private> global3: array<vec2<i32>, 28>;

var<private> global4: u32 = 12882u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    var var_0 = select(select(!vec3<bool>(all(vec3<bool>(false, false, false)), false, true), select(vec3<bool>(all(vec4<bool>(arg_1.b.x, true, arg_1.b.x, false)), arg_1.b.x, arg_1.b.x), vec3<bool>(true, true, arg_1.b.x), true), vec3<bool>(arg_1.b.x, all(!vec4<bool>(arg_0.x, arg_1.b.x, false, true)), arg_0.x)), vec3<bool>(arg_0.x, arg_1.b.x, true), false);
    var var_1 = u_input.c;
    let var_2 = select(select(select(vec3<bool>(arg_1.a > 1480i, var_0.x, select(false, true, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, false, arg_1.b.x), false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, false), true), any(vec4<bool>(false, false, var_0.x, arg_1.b.x))), _wgslsmith_f_op_f32(min(global1.x, 105f)) < global1.x), vec3<bool>(arg_0.x || true, _wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(global1.x - -1000f), !var_0.x), true), select(select(!vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, true), arg_0.x), select(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(arg_0.x, var_0.x, arg_0.x), vec3<bool>(var_0.x, true, arg_1.b.x)), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_1.b.x, true), vec3<bool>(true, arg_1.b.x, var_0.x)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(arg_1.b.x, false, false), vec3<bool>(arg_1.b.x, true, var_0.x))), !(!vec3<bool>(false, arg_0.x, var_0.x)), _wgslsmith_f_op_f32(floor(412f)) >= -470f), !(!vec3<bool>(false, arg_0.x, arg_0.x))), !(!select(!vec3<bool>(arg_1.b.x, arg_0.x, arg_1.b.x), select(vec3<bool>(var_0.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_0.x, arg_1.b.x, arg_1.b.x), vec3<bool>(false, arg_1.b.x, true)), !vec3<bool>(arg_1.b.x, var_0.x, var_0.x))));
    var var_3 = _wgslsmith_f_op_f32(global1.x + arg_2);
    return reverseBits(vec4<i32>(-1i, -15314i, arg_1.a & (i32(-1i) * -12191i), ~0i));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    var var_0 = max(countOneBits(_wgslsmith_mult_vec4_i32(func_3(arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 352f), ~vec4<i32>(2147483647i, 2147483647i, -1i, 1i) << (u_input.c % vec4<u32>(32u)))), -(~_wgslsmith_mult_vec4_i32(-vec4<i32>(-12709i, -2147483647i, 18248i, -36203i), select(vec4<i32>(0i, 40512i, 39902i, 2147483647i), vec4<i32>(2147483647i, 16247i, -2147483647i, -67660i), vec4<bool>(true, arg_1.x, true, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-722f)), global1.x, 778f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1567f)), _wgslsmith_f_op_f32(sign(144f)), global1.x) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1236f, global1.x, global1.x) - vec3<f32>(global1.x, -376f, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(global1.x, global1.x, global1.x)), arg_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(-1000f + 743f), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, true))))));
    let var_2 = true;
    var var_3 = Struct_1(-((i32(-1i) * -38544i) ^ func_3(arg_1, Struct_1(2147483647i, arg_1), _wgslsmith_f_op_f32(-728f - var_1.x)).x), select(arg_1, select(select(vec2<bool>(arg_1.x, false), arg_1, !arg_1.x), select(arg_1, arg_1, true), select(vec2<bool>(var_2, arg_1.x), vec2<bool>(true, true), !arg_1)), true));
    let var_4 = firstLeadingBit(~arg_0.x) | _wgslsmith_add_u32(4294967295u, firstTrailingBit(arg_0.x));
    return !var_3.b.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = -(~countOneBits(~vec3<i32>(2147483647i, arg_0.x, arg_0.x))) ^ (select(-vec3<i32>(0i, 5303i, arg_0.x), vec3<i32>(-1i) * -vec3<i32>(52974i, arg_1.a, 15387i), all(arg_1.b)) & vec3<i32>(-arg_0.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1.a, arg_0.x), _wgslsmith_mult_i32(-26242i, arg_0.x)), firstLeadingBit(-1i) << (~u_input.a % 32u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1136f)), global1.x, func_2(u_input.c, vec2<bool>(arg_1.b.x, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_f_op_f32(421f + -418f));
    global4 = _wgslsmith_add_u32(1u, ~(~(u_input.c.x ^ 23509u)));
    let var_2 = arg_1.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1129f, global1.x, global1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(244f, 798f, -784f), vec3<f32>(global1.x, 1956f, -175f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1418f, global1.x, 181f), vec3<f32>(global1.x, global1.x, global1.x), var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-422f, -1270f, global1.x) + vec3<f32>(124f, 1960f, global1.x)))))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    var var_0 = select(_wgslsmith_add_vec4_u32(~vec4<u32>(~u_input.c.x, u_input.b.x, select(4294967295u, u_input.a, false), 60091u ^ u_input.d.x), abs(abs(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x))))), u_input.c, _wgslsmith_sub_i32(~(-1i), _wgslsmith_clamp_i32(2147483647i, 1i, _wgslsmith_add_i32(12593i, 995i))) == ~1i);
    var_0 = u_input.b;
    var var_1 = ~(-2147483647i) | _wgslsmith_div_i32(-(~_wgslsmith_mod_i32(15497i, 23351i)), abs(func_1(global3[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(22293i, vec2<bool>(false, false)))) >> (~abs(var_0.x) % 32u));
    var_1 = ~_wgslsmith_mult_i32(0i, -2147483647i);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_0.x | ~var_0.x), 20u)];
    var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~u_input.c.x, var_0.x)), ~(~(vec2<u32>(var_0.x, var_0.x) ^ var_0.wx))), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-942f, _wgslsmith_f_op_f32(-global1.x))));
}

