struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: f32 = 193f;

var<private> global2: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)));
    var var_0 = Struct_1(arg_0.x ^ ~(1u >> (~4294967295u % 32u)), arg_0.x);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(_wgslsmith_add_u32(61070u, 0u) & _wgslsmith_clamp_u32(arg_0.x, 1u, arg_0.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a, 1u)), ~arg_0.zy), arg_0.x, var_0.a)), 10u)], 78790u, vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), arg_2.x, arg_2.x), global0[_wgslsmith_index_u32(70347u, 10u)]);
    global1 = -466f;
    let var_2 = abs(reverseBits(arg_3.zy));
    return ~arg_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = select(!vec4<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)), false, abs(97675u) == ~arg_0.d.a), !select(vec4<bool>(all(vec2<bool>(true, true)), true, false, any(vec4<bool>(false, true, false, false))), vec4<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(false, true)), select(false, false, false), all(vec3<bool>(true, false, true))), vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true, false)), !(!vec4<bool>(true, all(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, false, false)), all(vec2<bool>(false, true)))));
    let var_1 = 1391f < _wgslsmith_f_op_f32(floor(166f));
    var_0 = select(!select(!(!vec4<bool>(false, false, var_0.x, true)), vec4<bool>(false, all(var_0.xxz), var_1, var_0.x), 1i != _wgslsmith_add_i32(19483i, u_input.c)), select(select(!select(vec4<bool>(var_1, false, false, true), vec4<bool>(false, true, true, var_0.x), false), vec4<bool>(true, true, all(var_0.ywz), -1749f <= arg_0.c.x), true), vec4<bool>(true, false, !(var_1 & true), !any(vec3<bool>(var_1, false, true))), vec4<bool>(func_3(vec4<u32>(arg_2.x, 88147u, arg_0.a.a, arg_2.x), vec3<bool>(true, var_0.x, var_0.x), vec2<f32>(893f, arg_0.c.x), vec3<i32>(-44491i, 1183i, u_input.b.x)) >= _wgslsmith_mult_u32(23827u, 1u), false, true, !any(vec4<bool>(true, true, true, var_0.x)))), !all(select(select(vec4<bool>(var_0.x, var_1, var_1, false), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_1, false, var_1, true), false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_1, var_1, false, false), true))));
    let var_2 = u_input.c;
    let var_3 = all(!select(select(vec4<bool>(var_0.x, true, var_1, var_1), vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, true, var_1, true)), select(vec4<bool>(var_1, false, true, var_0.x), vec4<bool>(var_1, false, false, false), select(vec4<bool>(var_0.x, true, var_1, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, var_0.x, var_1))), !any(vec4<bool>(true, var_0.x, true, true))));
    return ~min(arg_0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2.x, 0u, 55363u) & vec4<u32>(1u, 15116u, arg_2.x, arg_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 6882u, 1u), vec4<u32>(arg_2.x, 32094u, 0u, arg_0.d.a))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_2.x, 39317u), vec4<u32>(13991u, arg_0.a.a, arg_2.x, 4294967295u) & vec4<u32>(arg_2.x, arg_2.x, arg_0.d.b, arg_0.b))));
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 10>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~54363u, 48119u >> ((_wgslsmith_dot_vec3_u32(~vec3<u32>(29183u, 0u, 40775u), vec3<u32>(1u, 1u, 1u)) ^ 1u) % 32u)), 10u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_0.a >> (func_4(Struct_2(global0[_wgslsmith_index_u32(func_3(vec4<u32>(var_0.a, 22796u, var_0.b, 4294967295u), vec3<bool>(false, false, true), vec2<f32>(1943f, 1000f), vec3<i32>(u_input.c, -29849i, u_input.a)), 10u)], ~var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, 740f, 103f) + vec3<f32>(987f, 621f, 1304f)), Struct_1(56156u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -555f, 872f), vec3<f32>(-720f, 796f, 318f)))), firstTrailingBit(vec3<u32>(22396u, var_0.b, var_0.b))) % 32u)), 10u)];
    global1 = _wgslsmith_f_op_f32(ceil(726f));
    let var_2 = Struct_1(var_1.b, var_0.b);
    return u_input.c;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    global2 = true | (_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(u_input.a | -1i, firstTrailingBit(1i))) != _wgslsmith_div_i32(u_input.b.x, min(func_2(), _wgslsmith_mod_i32(u_input.c, -18768i))));
    let var_0 = ~2147483647i;
    global0 = array<Struct_1, 10>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1327f))), -903f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(519f)) * _wgslsmith_f_op_f32(round(276f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(113f))), _wgslsmith_f_op_f32(exp2(1f))))));
    global0 = array<Struct_1, 10>();
    let var_1 = vec4<i32>(countOneBits(u_input.a), abs(-u_input.c), -(_wgslsmith_mod_i32(-2147483647i, u_input.c) ^ max(u_input.a, 1i)), -38463i);
    global1 = _wgslsmith_f_op_f32(sign(var_0.x));
    let var_2 = true;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(-799f)).x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-918f - var_0.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-190f, var_0.x))))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(var_0.x, var_0.x))) - var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 548f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~(~u_input.c), u_input.a, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 29843i, var_1.x, u_input.b.x) & var_1, -(var_1 << (vec4<u32>(4294967295u, 1623u, 41109u, 23226u) % vec4<u32>(32u))))), 14645u, vec2<u32>(1u, 1u), max(vec3<i32>(countOneBits(u_input.a), i32(-1i) * -2147483647i, u_input.b.x), var_1.zxw));
}

