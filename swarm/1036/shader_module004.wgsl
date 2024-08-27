struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(561f, 1746f, -1217f, -949f), vec4<f32>(-555f, -1431f, 111f, -3306f), vec4<f32>(-392f, -825f, 1418f, 174f), vec4<f32>(-495f, -863f, -986f, -872f), vec4<f32>(926f, 216f, -1315f, -785f), vec4<f32>(-786f, 505f, -158f, 1434f), vec4<f32>(-1000f, 238f, -333f, -189f), vec4<f32>(-563f, -376f, -576f, -903f), vec4<f32>(-650f, -297f, 1326f, 514f), vec4<f32>(-360f, -757f, 1207f, 206f), vec4<f32>(-619f, 1000f, -1898f, 1151f), vec4<f32>(404f, 155f, 1017f, 667f));

var<private> global3: array<vec4<u32>, 9>;

var<private> global4: array<f32, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global4 = array<f32, 9>();
    var var_0 = ((~(-41994i) << (1u % 32u)) ^ ~u_input.b.x) << (u_input.a % 32u);
    let var_1 = ~(~_wgslsmith_mult_vec3_u32(arg_0, arg_0) & vec3<u32>(u_input.a, ~(~23438u), ~reverseBits(76479u)));
    var var_2 = global4[_wgslsmith_index_u32(var_1.x, 9u)];
    let var_3 = Struct_1(abs(1i), i32(-1i) * -u_input.b.x);
    return arg_0.x << (_wgslsmith_mult_u32(min(firstLeadingBit(0u), u_input.a), select(15794u, var_1.x, all(vec3<bool>(true, false, false)))) % 32u);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: i32) -> vec4<u32> {
    var var_0 = arg_1.d;
    global1 = array<vec2<bool>, 18>();
    global4 = array<f32, 9>();
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2583f), -1000f))), _wgslsmith_f_op_vec3_f32(-arg_2.yzx)));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~(~(~53686u)), var_0.a.x >> (83738u % 32u), _wgslsmith_add_u32(~func_3(vec3<u32>(arg_0, 25375u, var_0.a.x)), ~select(arg_1.d.a.x, arg_0, false))), max(select(~(~global3[_wgslsmith_index_u32(0u, 9u)]), ~abs(vec4<u32>(u_input.a, 1u, arg_0, var_0.a.x)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true)), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.a.x, 17557u, 37196u, 4294967295u), global3[_wgslsmith_index_u32(var_0.a.x, 9u)]))));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = ~(global3[_wgslsmith_index_u32(0u, 9u)] | (func_2(99408u, Struct_4(global4[_wgslsmith_index_u32(u_input.a, 9u)], vec4<i32>(-1i, 37950i, 1i, u_input.b.x), Struct_2(vec2<u32>(1u, u_input.a)), Struct_2(arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(-152f, -555f, global4[_wgslsmith_index_u32(u_input.a, 9u)], global4[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<f32>(541f, global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(3016u, 9u)], -1074f)), u_input.b.x & -2147483647i) ^ _wgslsmith_clamp_vec4_u32(~global3[_wgslsmith_index_u32(4294967295u, 9u)], firstLeadingBit(vec4<u32>(0u, arg_0.x, arg_0.x, 18349u)), countOneBits(global3[_wgslsmith_index_u32(u_input.a, 9u)]))));
    global1 = array<vec2<bool>, 18>();
    let var_1 = ~(var_0.x ^ ~min(4294967295u, var_0.x)) ^ firstLeadingBit(4294967295u);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.x, 9u)]) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(108733u, 9u)])) - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 9u)])), global4[_wgslsmith_index_u32(~var_0.x, 9u)]))), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, -1i, 1i), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -22056i, 0i), ~vec3<i32>(u_input.b.x, 1i, u_input.b.x)), -u_input.b.x, ~(-928i))), Struct_2(_wgslsmith_mod_vec2_u32(~(arg_0 >> (arg_0 % vec2<u32>(32u))), var_0.zx)), Struct_2((_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1), arg_0) << (arg_0 % vec2<u32>(32u))) ^ ~vec2<u32>(0u, arg_0.x)));
    global3 = array<vec4<u32>, 9>();
    return StorageBuffer(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 51624u), vec3<u32>(arg_0.x, u_input.a, var_2.c.a.x)))), 25084i, abs(14061u), (firstLeadingBit(u_input.b.x) >> (var_2.d.a.x % 32u)) ^ 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(185f, _wgslsmith_f_op_f32(select(-916f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~0u ^ ~u_input.a, 9u)]), true))));
    let var_1 = -u_input.b.x;
    global1 = array<vec2<bool>, 18>();
    var var_2 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~20311u), vec2<u32>(_wgslsmith_mult_u32(49418u, u_input.a), u_input.a) & max(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 3778u) ^ vec2<u32>(1u, 33645u))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(28514i, -68823i, reverseBits(select(_wgslsmith_clamp_i32(-21114i, u_input.b.x, var_1), -1i, any(vec4<bool>(false, true, true, true))))), vec3<i32>(u_input.b.x, countOneBits(u_input.b.x), countOneBits(~1i)));
    let x = u_input.a;
    s_output = func_1(~vec2<u32>(~(~u_input.a), u_input.a));
}

