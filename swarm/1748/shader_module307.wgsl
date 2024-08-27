struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = all(vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x))) <= global2.x, any(vec4<bool>(true, true, true, true))));
    var var_1 = !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)));
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(abs(-468f))) * -1000f)), global2.zx, _wgslsmith_f_op_f32(round(413f)), _wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(u_input.a, 1u, 26314u))), max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 30435u, 4294967295u), vec3<u32>(73802u, 54542u, u_input.a)), min(vec3<u32>(u_input.a, 9233u, 72737u), ~vec3<u32>(u_input.a, 69459u, 1u)))), u_input.a << (select(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(0u, 1u, u_input.c)), 2017u), true) % 32u));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(countOneBits(52674u), 6u)]) * global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(80171u, 7213u), vec2<u32>(var_2.d, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, u_input.c), vec2<u32>(108658u, u_input.a)), 1u), 20716u), 6u)]);
    var_1 = !((any(vec2<bool>(true, true)) | (-1000f > _wgslsmith_f_op_f32(global2.x + -297f))) | true);
    return global2.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(_wgslsmith_sub_vec4_i32(abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b))), ~vec4<i32>(u_input.b >> (u_input.a % 32u), 2147483647i >> (u_input.c % 32u), 0i, countOneBits(-1i))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.x)), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(func_3()))) + global2.x))), Struct_2(Struct_1(-286f), -abs(countOneBits(vec3<i32>(u_input.b, -1i, u_input.b))), (_wgslsmith_mod_i32(u_input.b, -17538i) >> (~u_input.c % 32u)) <= -1i));
    let var_1 = Struct_3(firstLeadingBit(var_0.d.b), var_0.d, var_0.d, var_0.d.a);
    var_0 = Struct_4(var_0.a, Struct_1(var_1.d.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -743f), -112f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x)))), var_1.b.c | (all(vec4<bool>(true, var_0.d.c, true, var_0.d.c)) || !var_0.d.c))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(229f, _wgslsmith_f_op_f32(var_1.d.a - var_1.c.a.a)))), ~vec3<i32>(firstLeadingBit(var_0.d.b.x), _wgslsmith_add_i32(u_input.b, var_0.d.b.x), select(u_input.b, u_input.b, var_1.c.c)), var_1.c.c));
    var var_2 = -28293i;
    let var_3 = Struct_5(var_1.b.a, vec2<f32>(_wgslsmith_f_op_f32(min(415f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-435f)), 1791f))), global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.a.a))) + -1392f), _wgslsmith_clamp_u32(((u_input.c & u_input.a) << (0u % 32u)) >> (~13270u % 32u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, ~u_input.c, ~23906u), vec3<u32>(_wgslsmith_sub_u32(41609u, 17967u), abs(2132u), ~u_input.a))), u_input.c);
    return _wgslsmith_f_op_f32(abs(var_3.a.a));
}

fn func_1() -> vec4<f32> {
    global2 = vec4<f32>(215f, _wgslsmith_f_op_f32(func_2()), global2.x, _wgslsmith_f_op_f32(exp2(global2.x)));
    global1 = array<vec3<bool>, 7>();
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(-44667i, ~max(-2147483647i, u_input.b), -min(u_input.b, u_input.b)), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(2147483647i, -2147483647i, u_input.b), vec3<i32>(21442i, -24840i, u_input.b)) & -vec3<i32>(-19611i, u_input.b, u_input.b)));
    var_0 = vec3<i32>(~var_0.x, _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(~_wgslsmith_mod_i32(43835i, u_input.b), i32(-1i) * -2147483647i)), 2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    return global0[_wgslsmith_index_u32(~57093u, 6u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, -461f)))))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) + -198f) + _wgslsmith_f_op_f32(func_3())))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)] + vec4<f32>(global2.x, arg_0.x, -287f, -1639f)), vec4<f32>(arg_1, -1652f, arg_1, arg_0.x), any(vec4<bool>(false, false, true, false)))))));
    var var_1 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1180f));
    let var_2 = vec2<i32>(-reverseBits(-36593i), u_input.b) ^ vec2<i32>(_wgslsmith_add_i32(min(~u_input.b, u_input.b), -countOneBits(2147483647i)), abs(-22887i));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.xzw;
    let var_1 = ~(~29507u);
    let var_2 = Struct_2(Struct_1(var_0.x), ~vec3<i32>(911i, abs(u_input.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, 0i))), true);
    var_0 = _wgslsmith_f_op_vec3_f32(-global2.yww);
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - global0[_wgslsmith_index_u32(~(~var_1), 6u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(35452u, 6u)])), vec4<f32>(-1157f, global2.x, -850f, global2.x), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1()).x))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(159f)), var_0.x), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(var_1 << (10314u % 32u), 6u)] - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 18724u), vec2<u32>(u_input.c, 13117u)), 6u)]), false))));
    var var_4 = vec4<i32>(-10054i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 1i, 16766i, u_input.b)), -vec4<i32>(u_input.b, var_2.b.x, u_input.b, var_2.b.x))), vec3<i32>(2147483647i, var_2.b.x, min(u_input.b, -2147483647i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, var_1) >> (vec3<u32>(68931u, 4294967295u, 19899u) % vec3<u32>(32u)), vec3<u32>(59967u, var_1, 0u)) % vec3<u32>(32u))), 62110i, var_2.b.x);
    let var_5 = all(!vec3<bool>(var_2.c, true, _wgslsmith_mult_i32(-30228i, u_input.b) <= select(44688i, -1i, var_2.c)));
    var var_6 = -233f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-31588i));
}

