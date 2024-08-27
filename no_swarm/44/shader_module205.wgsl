struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 32>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(1u, 74308u), vec2<u32>(1u, 50292u), vec2<u32>(137725u, 1u), vec2<u32>(0u, 27911u), vec2<u32>(6085u, 0u), vec2<u32>(4294967295u, 73599u), vec2<u32>(1u, 10090u), vec2<u32>(12707u, 0u), vec2<u32>(22091u, 24526u), vec2<u32>(14162u, 66783u), vec2<u32>(57304u, 28056u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 12844u), vec2<u32>(10260u, 0u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(11784u, 28195u), vec2<u32>(1u, 1u), vec2<u32>(0u, 71050u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = u_input.b.x;
    let var_1 = 1i;
    global1 = array<Struct_3, 32>();
    return _wgslsmith_sub_i32(var_1, ~(-var_1));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global3 = array<vec2<u32>, 20>();
    var var_0 = ~(~(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, 15899i, 46853i, -55382i), vec4<i32>(26905i, 0i, 2147483647i, 29319i), vec4<bool>(true, arg_1.e.x, arg_0.a.b.x, arg_1.c)), vec4<i32>(-30135i, -25015i, 0i, -2147483647i))));
    let var_1 = !vec3<bool>(!arg_0.c.b.x, all(vec4<bool>(true, false, true, true)), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.d, -242f, arg_1.b.d) * vec3<f32>(-1000f, arg_0.a.d, 787f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, -1000f, -529f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, -564f, arg_1.b.d)))) - vec3<f32>(-866f, _wgslsmith_f_op_f32(-arg_0.c.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1360f * arg_1.b.d), -1481f))));
    let var_3 = _wgslsmith_mult_vec2_u32(u_input.b, ~arg_1.d);
    return abs(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(arg_1.b, arg_1), -var_0.x, -min(var_0.x, var_0.x), abs(var_0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, 1i, var_0.x, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, 2147483647i), vec4<i32>(var_0.x, -1i, var_0.x, -1i) ^ vec4<i32>(var_0.x, 39318i, 1i, var_0.x), vec4<i32>(-1i, 1i, var_0.x, -28642i)), vec4<i32>(-1i) * -vec4<i32>(-1i, var_0.x, -2147483647i, -2147483647i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = ~1u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -714f);
    var var_2 = Struct_4(~_wgslsmith_mod_i32(arg_2.a, func_2(Struct_2(Struct_1(false, vec2<bool>(false, true), var_0, 285f), 4294967295u, Struct_1(arg_2.b.x, vec2<bool>(arg_2.b.x, arg_2.b.x), 43436u, 2232f)), Struct_3(vec2<u32>(var_0, 24615u), Struct_1(arg_2.b.x, arg_2.b.xz, u_input.b.x, -1379f), false, vec2<u32>(1u, 64273u), vec2<bool>(true, false)))), !select(!(!vec3<bool>(true, arg_2.b.x, true)), vec3<bool>(arg_2.b.x, arg_2.b.x, true), arg_2.b.x), min(countOneBits(max(-vec4<i32>(-1293i, 2147483647i, -5316i, -2147483647i), arg_2.c)), arg_2.c));
    var var_3 = Struct_1(arg_2.b.x, var_2.b.yx, _wgslsmith_div_u32(~(~1u), 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f * 533f)) + _wgslsmith_f_op_f32(min(-420f, _wgslsmith_f_op_f32(516f * -774f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + -223f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1360f), _wgslsmith_f_op_f32(max(919f, 281f))))))));
    var_3 = Struct_1(_wgslsmith_add_u32(max(var_3.c, countOneBits(var_0)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, var_3.c, 7907u, 0u), min(vec4<u32>(var_0, var_3.c, 1u, 819u), vec4<u32>(var_3.c, 4294967295u, 68815u, 73449u)))) == 43713u, arg_2.b.yx, ~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.d, _wgslsmith_f_op_f32(round(var_3.d)))) * 390f));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -548f), 650f));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(func_2(Struct_2(Struct_1(arg_1.c.b.x, arg_0.b.yy, arg_1.b, arg_1.c.d), u_input.c, Struct_1(arg_1.c.b.x, arg_1.a.b, 1u, arg_1.c.d)), global1[_wgslsmith_index_u32(4294967295u, 32u)]), ~arg_2) ^ arg_0.c.yx, ~arg_0.c.xxw, arg_0));
    var var_1 = ~firstLeadingBit(~vec3<u32>(arg_1.b, u_input.c, u_input.a) & firstLeadingBit(vec3<u32>(0u, arg_1.c.c, 0u)));
    return vec2<u32>(_wgslsmith_add_u32(2849u, arg_1.c.c ^ arg_1.c.c), ~(~(~(u_input.c << (var_1.x % 32u)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(-(~vec2<i32>(1i, 1i)), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(79910i, -15646i, -15092i), vec3<i32>(-46781i, -2641i, 23805i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -1i, 2147483647i, 15159i), ~vec4<i32>(-2147483647i, -2147483647i, 0i, -7798i)))) >> (global3[_wgslsmith_index_u32(arg_2.a.x, 20u)] % vec2<u32>(32u));
    let var_1 = select(vec4<u32>(arg_3.c | 4294967295u, arg_0.x, 1u, _wgslsmith_add_u32(0u, func_1(Struct_4(var_0.x, vec3<bool>(arg_2.b.b.x, arg_3.b.x, arg_3.a), vec4<i32>(1i, var_0.x, 2147483647i, -11881i)), Struct_2(arg_2.b, arg_3.c, Struct_1(arg_2.c, arg_3.b, 47413u, arg_1)), _wgslsmith_dot_vec4_i32(vec4<i32>(-40826i, var_0.x, -1i, var_0.x), vec4<i32>(-1i, var_0.x, 28876i, var_0.x))).x)), vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(30416u, u_input.b.x) ^ vec2<u32>(arg_2.a.x, 7711u), select(u_input.b, vec2<u32>(arg_2.b.c, 34276u), true), arg_3.b.x), reverseBits(select(vec2<u32>(arg_0.x, arg_3.c), vec2<u32>(arg_2.a.x, 4294967295u), arg_2.e.x))), _wgslsmith_mod_u32(max(abs(arg_0.x), 10660u), u_input.b.x), 38600u, abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, arg_0.x), vec3<u32>(23422u, arg_3.c, u_input.b.x)), ~4294967295u))), vec4<bool>(!any(!vec3<bool>(arg_2.b.b.x, false, false)), !arg_3.a, true, all(!(!vec4<bool>(arg_2.e.x, false, false, arg_2.e.x)))));
    let var_2 = 0i;
    let var_3 = u_input.a;
    global1 = array<Struct_3, 32>();
    return _wgslsmith_f_op_vec2_f32(func_4(-firstLeadingBit(var_0), firstLeadingBit(vec3<i32>(countOneBits(-20033i), var_2, 2147483647i)), Struct_4(-_wgslsmith_div_i32(abs(var_2), var_2), !(!select(vec3<bool>(false, arg_3.a, true), vec3<bool>(arg_3.b.x, arg_3.a, arg_2.e.x), vec3<bool>(false, true, arg_2.e.x))), ~vec4<i32>(firstTrailingBit(5748i), var_0.x, -24910i, var_0.x)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1484f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(Struct_4(44288i, vec3<bool>(true, true, false), vec4<i32>(0i, -2147483647i, -30092i, 61603i)), Struct_2(Struct_1(true, vec2<bool>(true, true), 0u, -1444f), u_input.a, Struct_1(false, vec2<bool>(true, false), 18830u, 1000f)), 9482i), _wgslsmith_f_op_f32(sign(167f)), Struct_3(u_input.b, Struct_1(false, vec2<bool>(true, false), 78691u, -258f), true, global3[_wgslsmith_index_u32(u_input.c, 20u)], vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, false), 0u, -1554f)))), vec2<bool>(true, true), 30811u, _wgslsmith_f_op_f32(f32(-1f) * -839f));
    var var_1 = !(!var_0.b.x);
    var_0 = Struct_1(true, select(vec2<bool>(select(var_0.a, true, all(vec4<bool>(true, false, false, var_0.b.x))), any(!vec2<bool>(true, var_0.a))), vec2<bool>(var_0.a, all(var_0.b)), vec2<bool>(var_0.a, true)), var_0.c, _wgslsmith_f_op_f32(func_5(u_input.b, _wgslsmith_f_op_f32(-var_0.d), Struct_3(abs(vec2<u32>(0u, u_input.c) & global3[_wgslsmith_index_u32(u_input.c, 20u)]), Struct_1(false, !var_0.b, ~14935u, var_0.d), var_0.b.x, _wgslsmith_div_vec2_u32(u_input.b, func_1(Struct_4(-11025i, vec3<bool>(var_0.a, var_0.b.x, true), vec4<i32>(2147483647i, 534i, 58807i, -35201i)), Struct_2(Struct_1(var_0.b.x, var_0.b, 2826u, var_0.d), u_input.c, Struct_1(var_0.b.x, vec2<bool>(var_0.b.x, true), u_input.a, 434f)), 2147483647i)), !vec2<bool>(false, var_0.a)), Struct_1(true, vec2<bool>(select(true, var_0.a, var_0.a), var_0.b.x), countOneBits(_wgslsmith_mod_u32(0u, u_input.c)), var_0.d))));
    var var_2 = vec2<bool>(var_0.a, var_0.b.x);
    var var_3 = var_0.b;
    var_0 = Struct_1(!any(!vec4<bool>(false, false, var_2.x, false)), !var_0.b, ~countOneBits(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1473f)))))));
    global2 = -33129i;
    global1 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

