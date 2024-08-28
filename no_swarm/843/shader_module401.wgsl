struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-1i, false), Struct_2(2147483647i, false), Struct_2(0i, true), Struct_2(-1i, true), Struct_2(9056i, true), Struct_2(0i, true), Struct_2(1i, true), Struct_2(-1i, false), Struct_2(0i, false), Struct_2(42638i, true), Struct_2(5038i, false), Struct_2(1i, false));

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1i), Struct_1(0i), Struct_1(-1418i), Struct_1(24256i), Struct_1(11653i), Struct_1(0i), Struct_1(1i), Struct_1(-1i), Struct_1(27825i), Struct_1(i32(-2147483648)), Struct_1(-291i), Struct_1(-10737i), Struct_1(31702i), Struct_1(8318i), Struct_1(23020i), Struct_1(1089i), Struct_1(60684i), Struct_1(-1i), Struct_1(-36791i), Struct_1(-20340i));

var<private> global2: array<u32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 363f, 1944f)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-158f, -970f, 196f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, -873f), _wgslsmith_f_op_f32(-754f + -334f), _wgslsmith_f_op_f32(1578f * 868f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-853f, -940f, 1104f) + vec3<f32>(-1000f, -1323f, 1607f)) - vec3<f32>(1000f, -562f, -913f)))));
    global2 = array<u32, 24>();
    let var_1 = min(22976u, ~22124u);
    global2 = array<u32, 24>();
    var var_2 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_2, arg_2 ^ 2147483647i), arg_2), _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(13427i, arg_3.x, 2147483647i, 2147483647i)), _wgslsmith_clamp_vec4_i32(min(-vec4<i32>(-2147483647i, -24483i, -73987i, -36928i), select(vec4<i32>(22526i, arg_2, arg_3.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 18722i, -2147483647i), arg_0.x)), vec4<i32>(~arg_3.x, _wgslsmith_add_i32(-2147483647i, u_input.a.x), 1i, -u_input.a.x), abs(vec4<i32>(0i, u_input.a.x, 2147483647i, arg_3.x)))));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(24549u, arg_1, _wgslsmith_add_u32(u_input.b.x, max(18081u, ~arg_1)), arg_1), ~(~select(vec4<u32>(22178u, global2[_wgslsmith_index_u32(1u, 24u)], 0u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(61081u, 24u)], arg_1, arg_1, 1u), arg_0)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 1u, 12074u, 4294967295u) ^ vec4<u32>(u_input.b.x, var_1, var_1, var_1), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 1u, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 4294967295u), vec4<u32>(arg_1, 0u, global2[_wgslsmith_index_u32(1u, 24u)], 3083u))));
}

fn func_2() -> vec4<f32> {
    global2 = array<u32, 24>();
    let var_0 = ~u_input.b.x;
    var var_1 = global0[_wgslsmith_index_u32(var_0, 12u)];
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(func_3(vec4<bool>(var_1.b, false, false, var_1.b), var_0, u_input.a.x, u_input.a), vec4<u32>(1u, 77158u, var_0, 33347u)) << (var_0 % 32u)), u_input.b.x, 4294967295u), 12u)];
    let var_2 = vec3<bool>(var_1.b, all(select(!vec2<bool>(var_1.b, var_1.b), select(!vec2<bool>(var_1.b, false), vec2<bool>(true, true), select(true, var_1.b, var_1.b)), select(vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b), true), true))), !(!select(false & var_1.b, false, true)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(944f, 1000f, 1000f, 248f))), vec4<f32>(-394f, 1676f, -740f, 1179f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, 1232f, 1471f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, -750f, -623f, -1000f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    global0 = array<Struct_2, 12>();
    let var_0 = ~vec4<i32>(1i, select(countOneBits(-2147483647i), -12537i, arg_3.e.x | arg_2), _wgslsmith_mod_i32(arg_0.a, -2147483647i), -arg_3.d.a) ^ select(vec4<i32>(select(arg_0.a, u_input.a.x, arg_3.a.b), select(u_input.a.x, 11555i, arg_3.a.b), select(arg_0.a, 0i, false), _wgslsmith_sub_i32(49907i, arg_0.a)) | countOneBits(vec4<i32>(arg_0.a, 1i, u_input.a.x, arg_0.a)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, arg_3.a.a, arg_0.a, 0i), vec4<i32>(-1i, 0i, -1i, arg_3.a.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-48692i, arg_0.a, arg_0.a, -22982i), vec4<i32>(-2147483647i, arg_3.d.a, 1i, arg_0.a))) >> (~(vec4<u32>(2315u, u_input.b.x, 0u, 4294967295u) & vec4<u32>(0u, arg_3.b.x, 4294967295u, 33783u)) % vec4<u32>(32u)), arg_2);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-815f, _wgslsmith_f_op_f32(-arg_1.x)), -1326f));
    let var_2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(firstLeadingBit(u_input.a.x)), arg_3.d.a, 1i >> (select(arg_3.b.x, global2[_wgslsmith_index_u32(79856u, 24u)], false) % 32u)), vec3<i32>(-1i, 13819i, abs(-46320i)));
    let var_3 = arg_3;
    return 21312u;
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.x);
    var var_1 = func_4(var_0, _wgslsmith_f_op_vec4_f32(func_2()), all(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, all(vec4<bool>(false, false, false, true)))), Struct_3(Struct_2(~0i, true), u_input.b, global1[_wgslsmith_index_u32(abs(~623u), 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], vec2<bool>(true, true))) < ~abs(func_3(vec4<bool>(true, true, true, false), _wgslsmith_sub_u32(27829u, global2[_wgslsmith_index_u32(23593u, 24u)]), 2147483647i, vec2<i32>(u_input.a.x, var_0.a)).x);
    global1 = array<Struct_1, 20>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(ceil(-107f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1586f))), _wgslsmith_f_op_f32(f32(-1f) * -489f)))), -235f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -683f))))));
    return select(select(select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(4294967295u >= global2[_wgslsmith_index_u32(u_input.b.x, 24u)], true, any(vec2<bool>(false, false)), true), vec4<bool>(var_2.x >= 1000f, any(vec3<bool>(false, false, true)), true, all(vec4<bool>(true, true, true, true)))), vec4<bool>(true, select(false, true, true), true, true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, true, true)) || true), vec4<bool>(!any(vec2<bool>(false, false)), false, false, all(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)) && ((var_0.a >> (global2[_wgslsmith_index_u32(26818u, 24u)] % 32u)) == arg_0.x), all(vec2<bool>(true, true)), 1i < (var_0.a ^ -arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-min(vec3<i32>(-1i) * -vec3<i32>(15147i, 0i, 0i), ~max(vec3<i32>(u_input.a.x, u_input.a.x, 22574i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(2443u, 12u)];
    var_1 = Struct_2(0i, true);
    let var_2 = u_input.a.x;
    global2 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1785f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + _wgslsmith_f_op_f32(423f + -2019f)))), ~(~10325u), firstLeadingBit(firstTrailingBit(u_input.b.x)));
}

