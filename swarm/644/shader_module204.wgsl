struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: array<f32, 7> = array<f32, 7>(-1000f, -124f, 143f, -223f, 550f, -1318f, 192f);

var<private> global1: array<Struct_4, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_4 {
    global1 = array<Struct_4, 30>();
    let var_0 = select(true, true, _wgslsmith_dot_vec4_u32(arg_0, max(vec4<u32>(arg_0.x, 4689u, arg_2.x, u_input.b.x), arg_0)) == ~10454u) & false;
    let var_1 = Struct_3(abs(arg_3.a));
    let var_2 = !(global0[_wgslsmith_index_u32(max(30371u, 85495u), 7u)] != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a, 7u)])));
    global1 = array<Struct_4, 30>();
    return Struct_4(48803u);
}

fn func_3() -> vec3<f32> {
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    var var_0 = -(~vec3<i32>(u_input.a, u_input.a ^ -u_input.a, 1i));
    let var_1 = _wgslsmith_div_i32(select(-(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(i32(-1i) * -71006i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(13703i, 3461i, var_0.x, var_0.x), vec4<i32>(var_0.x, 9538i, -12454i, 2147483647i)), i32(-1i) * -1i, all(vec4<bool>(true, false, false, true)))), 2147483647i >= u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i >> (u_input.b.x % 32u), 0i, _wgslsmith_div_i32(var_0.x, 34822i), u_input.a), vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, 13213i, 2147483647i)), min(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.a, -1i, -38395i), vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x)), ~(-vec4<i32>(var_0.x, var_0.x, 0i, 8433i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(419f, -1081f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-348f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43101u, 7u)]))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) ^ u_input.b.x, 7u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(37108u, 7u)]))))));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1372f) + global0[_wgslsmith_index_u32(~max(u_input.b.x, 27479u), 7u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(491f)) + 1000f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 57705u, 1u)), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), 7u)]), -801f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<i32> {
    global1 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1492f)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x & _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 84914u)), arg_0), 7u)])) + global0[_wgslsmith_index_u32(abs(11054u), 7u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 214f, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec3<f32>(825f, 1041f, global0[_wgslsmith_index_u32(0u, 7u)]))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1357f, -1799f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 52411u), 7u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(318f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] * global0[_wgslsmith_index_u32(arg_0, 7u)]), global0[_wgslsmith_index_u32(select(1u, u_input.b.x, arg_1), 7u)])))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(619f, -182f))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~37915u, 1993u), 7u)], 977f)))));
    var var_2 = Struct_3(~_wgslsmith_clamp_u32(arg_0 | (1u ^ u_input.b.x), 90741u, firstTrailingBit(~arg_0)));
    return -vec2<i32>(u_input.a, 2244i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~vec4<u32>(2100u, abs(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 6857u), _wgslsmith_mult_u32(u_input.b.x, 59375u))), vec2<i32>(abs(_wgslsmith_div_i32(-20487i, u_input.a)), u_input.a), ~(~(~_wgslsmith_mod_vec2_u32(u_input.b, u_input.b))), global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(18159u, u_input.b.x))) | _wgslsmith_clamp_u32(abs(reverseBits(u_input.b.x)), ~1u, _wgslsmith_clamp_u32(0u, ~1u, u_input.b.x)), 30u)]);
    var var_1 = min(_wgslsmith_add_vec2_i32(~func_2(u_input.b.x, true), vec2<i32>(-1i) * -vec2<i32>(0i, u_input.a)), countOneBits(reverseBits(vec2<i32>(u_input.a, 0i)))) << (_wgslsmith_sub_vec2_u32(~u_input.b, ~(~(~vec2<u32>(var_0.a, var_0.a)))) % vec2<u32>(32u));
    var var_2 = global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(abs(_wgslsmith_div_u32(1u, 39880u)), 1u, _wgslsmith_clamp_u32(18601u, reverseBits(u_input.b.x), func_1(vec4<u32>(16669u, 0u, 12665u, 1u), vec2<i32>(1i, 16775i), vec2<u32>(var_0.a, u_input.b.x), Struct_4(3080u)).a)), ~u_input.b.x) | _wgslsmith_add_u32(var_0.a, 87640u), 30u)];
    var var_3 = reverseBits(vec2<u32>(63058u, var_2.a));
    let var_4 = (((~vec4<u32>(1u, 1u, u_input.b.x, var_0.a) >> (select(vec4<u32>(0u, 49554u, var_2.a, u_input.b.x), vec4<u32>(83850u, 86434u, 1u, 49235u), vec4<bool>(false, true, true, false)) % vec4<u32>(32u))) | (~vec4<u32>(var_2.a, 4294967295u, 1u, 29968u) << (abs(vec4<u32>(71505u, var_0.a, var_3.x, 1u)) % vec4<u32>(32u)))) << (select(~vec4<u32>(1u, var_3.x, var_2.a, var_3.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, var_3.x, u_input.b.x, var_2.a), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u)), false) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(max(var_2.a | 1u, abs(u_input.b.x)), ~var_0.a, _wgslsmith_div_u32(u_input.b.x, ~22790u), func_1(vec4<u32>(4294967295u, 8446u, 4294967295u, var_2.a), vec2<i32>(0i, u_input.a), u_input.b, Struct_4(var_3.x)).a >> (abs(var_3.x) % 32u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_0.a, var_3.x)), firstTrailingBit(func_1(vec4<u32>(0u, 46287u, var_0.a, var_3.x), vec2<i32>(1i, -28567i), u_input.b, global1[_wgslsmith_index_u32(var_2.a, 30u)]).a), 0u, firstLeadingBit(1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 4294967295u, 13021u), vec4<u32>(var_2.a, var_3.x, var_3.x, u_input.b.x), vec4<u32>(28159u, var_0.a, var_3.x, var_3.x) << (vec4<u32>(var_2.a, var_0.a, var_0.a, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_5 = Struct_2(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(var_2.a, 7u)], global0[_wgslsmith_index_u32(var_2.a, 7u)], 1152f, global0[_wgslsmith_index_u32(var_3.x, 7u)]), vec4<f32>(-267f, 1699f, 810f, global0[_wgslsmith_index_u32(var_2.a, 7u)]), true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_4.x, 7u)], global0[_wgslsmith_index_u32(var_3.x, 7u)], 856f, 748f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(24766u, 7u)], -1000f, 1657f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(var_3.x, 7u)], global0[_wgslsmith_index_u32(13278u, 7u)], global0[_wgslsmith_index_u32(var_0.a, 7u)]))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(var_2.a, 7u)], global0[_wgslsmith_index_u32(var_2.a, 7u)], -662f, 1849f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4480u, 7u)], 1085f, 493f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_3.x, 7u)], global0[_wgslsmith_index_u32(var_2.a, 7u)], global0[_wgslsmith_index_u32(var_0.a, 7u)], 677f) - vec4<f32>(-186f, -1288f, global0[_wgslsmith_index_u32(var_3.x, 7u)], global0[_wgslsmith_index_u32(37970u, 7u)]))))), select(vec4<bool>(true, false, false, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(select(false, true, true), true, all(vec4<bool>(true, true, false, true))), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    global1 = array<Struct_4, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(88074u, 15101u), u_input.b), var_0.a)));
}

