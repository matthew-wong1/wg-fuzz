struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-12900i, 0i, 0i), vec3<f32>(1996f, 1680f, -499f), 809f, false);

var<private> global2: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-14765i, -29759i, i32(-2147483648), i32(-2147483648)), vec4<i32>(32215i, 17734i, 5144i, 35220i), vec4<i32>(9835i, -6346i, 18190i, 1i), vec4<i32>(0i, 34593i, -26572i, 0i), vec4<i32>(i32(-2147483648), -4115i, i32(-2147483648), -3872i), vec4<i32>(58967i, 73167i, i32(-2147483648), -28707i), vec4<i32>(0i, -3430i, 1i, 14887i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.c, global1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, global1.c)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.x - -1142f), -294f))) - -1266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - global1.b.x)), _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(select(global1.c, 848f, !all(vec4<bool>(false, false, false, global1.d)))))));
    let var_1 = select(any(!select(vec3<bool>(global1.d, false, false), !vec3<bool>(global1.d, true, global1.d), global1.d | global1.d)), global1.d, any(!select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, false), vec2<bool>(false, global1.d))) == any(!select(vec3<bool>(global1.d, global1.d, false), vec3<bool>(true, false, global1.d), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.wzx)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.b), global1.b))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    global1 = arg_0;
    global1 = Struct_1(global1.a, global1.b, global1.b.x, global1.d);
    return arg_0.c == arg_0.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(arg_0.d, 0i, u_input.a, vec4<f32>(_wgslsmith_f_op_f32(global1.b.x - 967f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + _wgslsmith_f_op_f32(433f - arg_0.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(select(-765f, _wgslsmith_f_op_f32(-201f + global1.b.x), arg_0.d))));
    global2 = array<vec4<i32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    global1 = arg_0;
    global2 = array<vec4<i32>, 7>();
    return Struct_3(func_4(Struct_1(-vec3<i32>(arg_0.a.x, 42330i, 83573i), _wgslsmith_f_op_vec3_f32(func_3(u_input.b, vec2<u32>(u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.c))), -715f, true), 32206u) || !select(var_0.a, all(vec2<bool>(var_0.a, var_0.a)), false), -u_input.a, var_0.c, var_0.d);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    let var_0 = arg_1.d.wx;
    var var_1 = Struct_2(_wgslsmith_div_f32(383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f))), ~(-16667i), reverseBits(~firstTrailingBit(global2[_wgslsmith_index_u32(~3929u, 7u)])));
    global0 = array<vec3<i32>, 2>();
    let var_2 = Struct_2(var_0.x, arg_0.x, countOneBits(_wgslsmith_sub_vec4_i32(~arg_0, global2[_wgslsmith_index_u32(u_input.b, 7u)])));
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(17864u, 0u), countOneBits(u_input.b)) >> (u_input.c % 32u), firstLeadingBit(1u)), ~_wgslsmith_div_u32(abs(u_input.b), max(u_input.b, u_input.c)), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 52457u), vec2<u32>(23186u, 65293u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 43323u), vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 4294967295u))), u_input.c)), 47358u << (~(~u_input.b) % 32u));
    return ~(~abs(1i));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-627f, -1018f) - global1.b.x)), u_input.a, firstLeadingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, global1.a.x, global1.a.x, -44999i), global2[_wgslsmith_index_u32(1u, 7u)])) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(0u, 2u)], vec3<i32>(0i, u_input.a, u_input.a)), abs(vec3<i32>(u_input.a, u_input.a, 1i))), func_5(-global2[_wgslsmith_index_u32(0u, 7u)], func_2(Struct_1(vec3<i32>(global1.a.x, global1.a.x, -2147483647i), global1.b, -760f, false)), vec3<bool>(global1.d, global1.d, true), -global1.a.x), _wgslsmith_dot_vec4_i32(-global2[_wgslsmith_index_u32(u_input.b, 7u)], vec4<i32>(1i, 46817i, u_input.a, u_input.a)), select(reverseBits(32818i), _wgslsmith_clamp_i32(global1.a.x, global1.a.x, -10533i), any(vec4<bool>(global1.d, false, global1.d, false)))));
    global2 = array<vec4<i32>, 7>();
    let var_1 = func_2(Struct_1(firstLeadingBit(countOneBits(vec3<i32>(u_input.a, -27525i, 25783i))), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.c, vec2<u32>(17285u, 33741u), vec4<u32>(0u, u_input.b, u_input.b, 4294967295u))).x + _wgslsmith_f_op_f32(1038f + 1625f)), var_0.a), _wgslsmith_f_op_f32(-674f + _wgslsmith_f_op_f32(f32(-1f) * -1290f)), false));
    global1 = Struct_1(reverseBits(~abs(global1.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.d.zwx * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-541f, global1.c, -578f)), _wgslsmith_f_op_vec3_f32(global1.b * global1.b), !vec3<bool>(var_1.a, var_1.a, false)))), var_1.d.wxx, select(vec3<bool>(global1.d, global1.d && false, false), !(!vec3<bool>(var_1.a, global1.d, var_1.a)), select(select(vec3<bool>(var_1.a, global1.d, false), vec3<bool>(false, var_1.a, false), global1.d), vec3<bool>(false, var_1.a, global1.d), global1.d)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * var_1.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_1.d.x), _wgslsmith_f_op_f32(ceil(var_0.a)))))), -44063i < (_wgslsmith_clamp_i32(min(1i, 2147483647i), -34965i, _wgslsmith_dot_vec3_i32(global1.a, var_0.c.yyx)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(33491u, u_input.c, 4294967295u, u_input.b), vec4<u32>(u_input.c, 12846u, 4294967295u, u_input.c) | vec4<u32>(u_input.c, 18675u, 0u, 4294967295u)) % 32u)));
    let var_2 = Struct_3(!global1.d, global1.a.x, 1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)))));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(-1093f)), _wgslsmith_f_op_f32(f32(-1f) * -1930f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + 1193f) * var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 2>();
    global1 = Struct_1(~vec3<i32>(0i, abs(u_input.a), global1.a.x) & _wgslsmith_sub_vec3_i32(select(-vec3<i32>(-25102i, global1.a.x, -19207i), -global1.a, select(vec3<bool>(global1.d, true, global1.d), vec3<bool>(true, true, global1.d), vec3<bool>(global1.d, false, global1.d))), min(-global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, global1.a.x, 0i), vec3<i32>(-12213i, -1i, -7560i)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(exp2(global1.b))), _wgslsmith_f_op_vec3_f32(func_1())), global1.b.x, select(any(!select(vec3<bool>(true, true, global1.d), vec3<bool>(false, global1.d, true), false)), !(!(-19886i >= u_input.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + _wgslsmith_f_op_f32(957f * -692f))));
    global2 = array<vec4<i32>, 7>();
    global0 = array<vec3<i32>, 2>();
    var var_0 = !vec2<bool>(!(global1.c < _wgslsmith_f_op_f32(-global1.c)), true);
    var_0 = select(!vec2<bool>(var_0.x, select(global1.d, !var_0.x, any(vec3<bool>(false, false, global1.d)))), select(select(vec2<bool>(!var_0.x, true), !vec2<bool>(false, global1.d), vec2<bool>(var_0.x == var_0.x, true)), vec2<bool>(false, var_0.x), any(!(!vec3<bool>(var_0.x, true, global1.d)))), all(!select(!vec3<bool>(global1.d, global1.d, true), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, ~(~u_input.b) & _wgslsmith_mod_u32(~117798u, ~u_input.b)));
}

