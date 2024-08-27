struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(0u, 33073u, 1u, 4294967295u);

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-1i, 6452i, 1i, -1i), vec4<i32>(1988i, 63422i, 0i, -45513i), vec4<i32>(18063i, i32(-2147483648), 14360i, 0i), vec4<i32>(0i, -8620i, -51532i, -24653i), vec4<i32>(-1i, 0i, 26697i, 1i), vec4<i32>(-7761i, 46078i, -1i, 1i), vec4<i32>(2147483647i, 11506i, 16006i, -82831i), vec4<i32>(1578i, 0i, 21082i, -1i), vec4<i32>(1i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(20695i, 34908i, 18400i, i32(-2147483648)), vec4<i32>(18273i, 38054i, -37514i, -1i), vec4<i32>(-44275i, -1i, 2147483647i, 59878i), vec4<i32>(-47228i, 2147483647i, -28881i, 0i), vec4<i32>(0i, 0i, 1i, i32(-2147483648)), vec4<i32>(0i, -51177i, 2147483647i, 55360i), vec4<i32>(-29129i, -4066i, -24218i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), vec4<i32>(0i, -51201i, 6088i, 3977i), vec4<i32>(-1i, 56668i, 1625i, -3266i), vec4<i32>(-8805i, i32(-2147483648), 53055i, 2147483647i), vec4<i32>(1i, 2147483647i, 20467i, i32(-2147483648)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = min(62299u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 35158u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], u_input.d)), 0u, 1u), u_input.c), u_input.c >> (~vec3<u32>(u_input.d, u_input.d, 36583u) % vec3<u32>(32u))));
    var var_1 = Struct_3(Struct_1(vec2<bool>(!(-5119i == u_input.a.x), !any(vec2<bool>(true, false))), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, 1561u, u_input.c.x)), vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], reverseBits(u_input.c.x), 1u, 13585u), firstTrailingBit(vec4<u32>(0u, 0u, 0u, 76269u))), _wgslsmith_mult_u32(~u_input.d >> (u_input.c.x % 32u), 1u)), all(select(vec4<bool>(true, false, true, any(vec3<bool>(false, true, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), all(vec3<bool>(true, true, true)))));
    let var_2 = select(vec4<u32>(1u, global0[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(u_input.c.x, 97581u)), 4u)], _wgslsmith_dot_vec2_u32((vec2<u32>(0u, u_input.c.x) ^ vec2<u32>(var_1.a.b.x, 1u)) | min(vec2<u32>(var_1.a.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11588u, 4u)], 4u)]), vec2<u32>(22031u, var_1.a.b.x)), ~(~u_input.c.xx)), max(~global0[_wgslsmith_index_u32(~1u, 4u)], u_input.c.x)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], var_1.a.b.x, _wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_add_u32(var_1.a.b.x, u_input.d)) & _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yz), 27537u), all(!(!select(vec2<bool>(var_1.a.a.x, var_1.a.a.x), vec2<bool>(true, true), vec2<bool>(false, var_1.b)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-215f))), -659f)));
    let var_4 = !var_1.a.a.x;
    return var_1.a.c;
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c.x | func_3(), _wgslsmith_clamp_u32(func_3(), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)] ^ 1u, select(u_input.d, 1u, false)), ~(~13946u)), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 4294967295u, 0u), u_input.c, false), max(u_input.c, u_input.c)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1154f, _wgslsmith_f_op_f32(sign(781f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(827f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f), -1749f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-705f, 391f)), _wgslsmith_f_op_f32(815f * 539f), all(vec2<bool>(false, false))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(637f * 966f), _wgslsmith_f_op_f32(f32(-1f) * -1308f), -968f) + vec3<f32>(_wgslsmith_f_op_f32(-616f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(trunc(-1220f)))))));
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    var var_2 = Struct_1(!select(vec2<bool>(false, false), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), ~vec4<u32>(49159u, 43361u, var_0.x, var_0.x & 8108u), 64893u);
    return Struct_1(select(var_2.a, var_2.a, false), ~_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 4u)], 4u)], 78302u) >> (vec4<u32>(var_2.b.x, 47300u, 4294967295u, 70838u) % vec4<u32>(32u)), ~var_2.b), firstTrailingBit(var_2.b)), 4294967295u & ~(abs(11469u) >> (reverseBits(u_input.c.x) % 32u)));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = ~u_input.a.yzz;
    var var_1 = func_2();
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    let var_2 = select(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(abs(1u), 21u)], u_input.b), u_input.a >> (~countOneBits(~var_1.b) % vec4<u32>(32u)), !vec4<bool>(true, any(select(vec4<bool>(true, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), false)), var_1.a.x, select(var_1.a.x, true, var_1.a.x)));
    return _wgslsmith_div_u32(~4294967295u, select(var_1.c, 1u, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -1i) ^ vec4<i32>(-1i, 43358i, 2147483647i, u_input.b.x)) << (vec4<u32>(u_input.c.x, 14525u, ~u_input.d, func_1(1335f)) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.xy, select(vec2<i32>(0i, u_input.b.x), vec2<i32>(-33109i, -2147483647i), false)), u_input.a.x));
    global0 = array<u32, 4>();
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -max(u_input.a.x, u_input.b.x), u_input.b.x), ~select(firstTrailingBit(-u_input.a.zx), u_input.a.wy, true));
    global0 = array<u32, 4>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(651f, 422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(-168f * 575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f - -929f) - _wgslsmith_f_op_f32(-1000f * 1447f)), _wgslsmith_f_op_f32(-1f))) + vec4<f32>(1f, 1f, 1f, 1f));
    let var_3 = -1170f;
    global0 = array<u32, 4>();
    var var_4 = _wgslsmith_add_i32(35771i, _wgslsmith_clamp_i32(~(~(~(-3268i))), 544i, ~abs(-var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3, 1199f, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, 783f, 312f, var_2.x))))), var_2)));
}

