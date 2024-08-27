struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 14524u, vec4<f32>(-281f, 365f, -1279f, 463f), true, 2147483647i);

var<private> global1: array<vec4<u32>, 28>;

var<private> global2: array<i32, 24> = array<i32, 24>(1i, i32(-2147483648), 1i, -29108i, -42960i, 2147483647i, 1i, 0i, 1i, -1i, -29777i, 0i, -4969i, -1i, 18731i, 27345i, 44777i, -19323i, -20755i, i32(-2147483648), 2775i, i32(-2147483648), 8326i, 0i);

var<private> global3: bool;

var<private> global4: vec4<u32> = vec4<u32>(1002u, 25568u, 0u, 45906u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = 114474u;
    var var_2 = -firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-20737i, global0.e, 0i, global2[_wgslsmith_index_u32(4294967295u, 24u)]) << (vec4<u32>(18763u, 20266u, 4294967295u, 52593u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec4<i32>(global0.e, -2147483647i, 2147483647i, -31489i))) << (~select(vec4<u32>(u_input.b.x, global4.x, u_input.b.x, 3846u), vec4<u32>(34439u, global4.x, 9924u, u_input.b.x), vec4<bool>(global0.d, arg_2.x, true, arg_0)) % vec4<u32>(32u)));
    global1 = array<vec4<u32>, 28>();
    var_1 = u_input.b.x;
    return _wgslsmith_clamp_u32(0u ^ firstLeadingBit(global0.b), global0.b, 39745u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> bool {
    global4 = abs(vec4<u32>(1u, u_input.b.x, 60144u, 0u));
    var var_0 = global0.c.x;
    global0 = Struct_1(~(~(~(~u_input.b.x))), _wgslsmith_dot_vec3_u32(~arg_0.wzw, vec3<u32>(9104u, arg_1, 1u) ^ (vec3<u32>(global0.a, global4.x, 29471u) | arg_0.www)) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, global4.x, arg_0.x, 0u), countOneBits(~vec4<u32>(4294967295u, arg_1, arg_0.x, 27539u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) - _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 608f)))))), global0.d, select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(20588u, _wgslsmith_mod_u32(global0.a, global4.x)), 24u)] >> (max(global4.x >> (arg_0.x % 32u), 19102u) % 32u), -4897i, true));
    var var_1 = _wgslsmith_mult_u32(global4.x, _wgslsmith_mod_u32(arg_0.x, 0u));
    var var_2 = Struct_2(false, Struct_1(min(28357u, arg_0.x), _wgslsmith_add_u32(_wgslsmith_div_u32(global4.x, global4.x), abs(89590u)) | 20758u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(global0.c, global0.c))))), !(global0.d | any(vec3<bool>(global0.d, true, global0.d))), -2147483647i), Struct_1(~4294967295u, ~53221u, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(617f)), _wgslsmith_f_op_f32(min(549f, global0.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, false)), global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f - -465f)), _wgslsmith_f_op_f32(max(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -123f)))), global0.d, _wgslsmith_div_i32(global0.e >> (1u % 32u), 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(min(-634f, global0.c.x)), _wgslsmith_f_op_f32(-global0.c.x), global0.c.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.x, global0.c.x, 377f, global0.c.x))))), select(vec4<bool>(true, global0.d, false, true), vec4<bool>(true, global0.d, true, false), select(vec4<bool>(true, global0.d, global0.d, false), vec4<bool>(false, global0.d, true, global0.d), vec4<bool>(global0.d, global0.d, false, global0.d)))))));
    return any(!select(select(!vec3<bool>(var_2.a, true, global0.d), !vec3<bool>(var_2.b.d, var_2.b.d, true), !vec3<bool>(var_2.a, global0.d, global0.d)), select(select(vec3<bool>(global0.d, global0.d, false), vec3<bool>(false, global0.d, var_2.b.d), vec3<bool>(false, false, false)), !vec3<bool>(global0.d, var_2.a, true), global0.d && false), vec3<bool>(true, all(vec4<bool>(true, var_2.c.d, false, var_2.a)), true)));
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = Struct_3(true);
    global1 = array<vec4<u32>, 28>();
    global4 = vec4<u32>(func_2(true, global2[_wgslsmith_index_u32(arg_1, 24u)], !(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), vec2<bool>(true, true)))), ~firstLeadingBit(global4.x), ~0u, global4.x);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global0.c.x, -847f)), -968f, _wgslsmith_f_op_f32(1135f - global0.c.x), _wgslsmith_f_op_f32(global0.c.x * global0.c.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.x, 1000f, global0.c.x, 1604f))) + _wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(global0.c.x, 994f, global0.c.x, -300f))), vec4<bool>(true, false, var_0.a && false, func_3(vec4<u32>(arg_1, arg_1, 45181u, 15689u), global4.x))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(108f + global0.c.x), _wgslsmith_f_op_f32(trunc(-420f)), select(true, var_0.a, true))), global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1757f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-146f, global0.c.x))), -533f)));
    return arg_1 | ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(i32(-1i) * -select(abs(2147483647i), select(1i, -1i, global0.d), global0.d == false));
    let var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(46715i, var_0), ~0i) & global2[_wgslsmith_index_u32(firstLeadingBit(abs(global4.x)), 24u)], _wgslsmith_mult_i32(-15136i, -52630i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(global0.e, -64199i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global0.a, 24u)], -2147483647i, -1i, 9855i) << (vec4<u32>(0u, 55658u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(-16933i, u_input.a.x, global2[_wgslsmith_index_u32(14852u, 24u)], 2147483647i))) << (~(~func_1(11155i, global0.b)) % 32u), -global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, 1u, _wgslsmith_add_u32(global4.x, 10816u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a, u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(countOneBits(0u), 28u)])), 24u)], _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, var_0, 25122i, 25836i), reverseBits(vec4<i32>(2147483647i, u_input.a.x, -10634i, 2147483647i))), abs(vec4<i32>(global2[_wgslsmith_index_u32(9701u, 24u)] << (global0.b % 32u), u_input.a.x, ~(-2147483647i), var_0))));
    var var_2 = firstTrailingBit(u_input.b.x ^ firstTrailingBit(reverseBits(4294967295u))) << (_wgslsmith_mod_u32(abs(18942u), 15524u ^ _wgslsmith_div_u32(select(u_input.b.x, global4.x, global0.d), _wgslsmith_mult_u32(global4.x, 4294967295u))) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-global0.c);
    var var_4 = !(!(!(!vec2<bool>(global0.d, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(var_3.x, global0.c.x)))) - 2017f), var_0, ~firstTrailingBit(u_input.a), _wgslsmith_mod_i32(-1i, -20906i), u_input.b.x);
}

