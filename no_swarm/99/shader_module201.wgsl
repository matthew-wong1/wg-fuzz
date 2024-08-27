struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec2<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: bool) -> f32 {
    global2 = vec2<bool>(true, arg_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1005f))))) - _wgslsmith_f_op_f32(select(-406f, _wgslsmith_f_op_f32(618f * 1f), global2.x))) * 419f);
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    global2 = vec2<bool>(true, all(!select(global0[_wgslsmith_index_u32(u_input.b, 26u)], vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.b, 26u)])) | (_wgslsmith_f_op_f32(-1080f + -126f) == _wgslsmith_f_op_f32(-arg_0.x)));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + -319f), arg_0.x, all(global0[_wgslsmith_index_u32(select(637u, 4294967295u, global2.x), 26u)]), _wgslsmith_add_i32(abs(_wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c))), select(u_input.c, firstLeadingBit(3985i), !(u_input.c >= u_input.c))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 29804u), min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(13664u, u_input.a)) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), 2u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, arg_0.x, 271f, 127f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)))))));
    return Struct_1(vec4<i32>(var_0.e.a.x, -2147483647i, 1i, firstLeadingBit(var_0.d)), false, !select(var_0.e.c, select(vec2<bool>(true, global2.x), var_0.e.c, vec2<bool>(false, var_0.e.d)), var_0.e.c), true);
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = select(select(global0[_wgslsmith_index_u32(select(u_input.b, abs(_wgslsmith_div_u32(340u, 4294967295u)), true), 26u)], !select(select(global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(u_input.d, 26u)], vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(global2.x, false, global2.x), global0[_wgslsmith_index_u32(select(32482u, 107125u, false), 26u)]), false), !(!vec3<bool>(true, select(global2.x, global2.x, global2.x), global2.x != global2.x)), global2.x);
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(max(u_input.b, countOneBits(_wgslsmith_add_u32(u_input.b, u_input.a))), u_input.a), 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(1u, 4294967295u, 82226u)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 21794u, 0u), firstLeadingBit(vec3<u32>(u_input.d, 19446u, u_input.b))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, 52886u << (u_input.b % 32u)), u_input.b, ~(u_input.b >> (u_input.d % 32u)))));
    let var_2 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1024f, arg_0.x)), 110f)), _wgslsmith_f_op_f32(floor(-2023f)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + -806f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2.x)) + _wgslsmith_div_f32(arg_0.x, arg_0.x)) * arg_0.x)));
    global1 = array<Struct_1, 2>();
    let var_3 = _wgslsmith_dot_vec2_u32(abs(~var_1.xz), var_1.yy);
    return abs(vec2<u32>(_wgslsmith_div_u32(~51194u, var_1.x), var_1.x) ^ ~firstLeadingBit(reverseBits(var_1.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(!(!(!(false && global2.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, 61429i) >> (vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) % vec4<u32>(32u)), ~vec4<i32>(u_input.c, -1i, 35598i, u_input.c)), reverseBits(2147483647i)) == (_wgslsmith_add_i32(1i, 24595i) << ((~u_input.d & u_input.b) % 32u)));
    var var_0 = global2.x;
    global1 = array<Struct_1, 2>();
    var_0 = !(global2.x && !any(vec4<bool>(true, global2.x, global2.x, false)));
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-894f, 118f)), vec2<f32>(644f, 306f))), vec2<u32>(_wgslsmith_mod_u32(~4294967295u, 1u), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1584f))).x), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.d, u_input.b)))), vec2<u32>(23024u, 0u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) * 1000f), 1531f);
    var var_3 = ~(-reverseBits(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, u_input.c), vec2<i32>(0i, -3274i)))));
    var_0 = any(vec3<bool>(select(global2.x, -var_3.x > var_3.x, select(global2.x | global2.x, global2.x, true)), global2.x, !(!select(false, global2.x, false))));
    var_0 = !(2147483647i <= -u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2));
}

