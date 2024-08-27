struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1059f;

var<private> global1: Struct_1 = Struct_1(1u, true, vec3<f32>(1471f, -2143f, -1230f), 15712i);

var<private> global2: array<i32, 17> = array<i32, 17>(-24925i, 1i, i32(-2147483648), -71977i, 2657i, 0i, 1i, -1i, 2147483647i, 22762i, -22212i, 1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, 1i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> bool {
    global0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c.x - arg_1)))))));
    global2 = array<i32, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - global1.c.x));
    global0 = 879f;
    var var_1 = _wgslsmith_div_f32(375f, _wgslsmith_f_op_f32(select(-1000f, 1157f, all(select(!vec3<bool>(global1.b, global1.b, true), !vec3<bool>(global1.b, global1.b, false), global1.b)))));
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~0u | _wgslsmith_div_u32(global1.a, 4294967295u), 4294967295u, min(arg_3.x, u_input.a.x)), arg_3) ^ (~vec3<u32>(min(arg_1.a, arg_3.x), 76915u, ~arg_1.a) << (vec3<u32>(_wgslsmith_mod_u32(select(arg_3.x, arg_3.x, arg_1.b), arg_3.x << (52976u % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, u_input.a.x)), u_input.a.zy), ~9938u) % vec3<u32>(32u)));
    global2 = array<i32, 17>();
    global2 = array<i32, 17>();
    let var_1 = u_input.a.yz;
    global0 = arg_1.c.x;
    return 4734u | var_0.x;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = vec3<bool>(!global1.b, true, all(!vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, all(vec3<bool>(true, global1.b, global1.b)))));
    var var_1 = 1u & func_3(Struct_1(select(global1.a, arg_1, global1.b), func_2(_wgslsmith_add_vec4_i32(vec4<i32>(5353i, 51255i, u_input.b.x, 1365i), vec4<i32>(2147483647i, global1.d, u_input.b.x, 23083i)), _wgslsmith_f_op_f32(global1.c.x - 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c * vec3<f32>(global1.c.x, -1000f, global1.c.x)) * vec3<f32>(-219f, 593f, -1127f)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i) ^ vec3<i32>(global1.d, -1i, u_input.b.x), countOneBits(vec3<i32>(-2757i, global2[_wgslsmith_index_u32(global1.a, 17u)], -2147483647i)))), Struct_1(1u, var_0.x, _wgslsmith_f_op_vec3_f32(abs(global1.c)), global1.d), global1.d, ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_1), vec3<u32>(37288u, 0u, 43589u)) << (~u_input.a % vec3<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_add_u32(~19963u, ~arg_1), !(_wgslsmith_div_u32(~arg_1, 0u) == arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global1.c.x, -555f) - global1.c)))), -12079i);
    var_1 = ~global1.a;
    var var_3 = Struct_1(arg_0, true, var_2.c, _wgslsmith_mult_i32(-global1.d, -11641i | _wgslsmith_clamp_i32(~(-8450i), ~global2[_wgslsmith_index_u32(4294967295u, 17u)], -1i)));
    return Struct_1(~global1.a, var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1072f, var_2.c.x, global1.c.x))) + var_3.c)) * global1.c), _wgslsmith_add_i32(u_input.b.x, global2[_wgslsmith_index_u32(~(arg_0 | ~global1.a), 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec4<bool>(~0u < _wgslsmith_div_u32(u_input.a.x, u_input.a.x), !all(vec3<bool>(global1.b, true, global1.b)), global1.b, false));
    var var_1 = _wgslsmith_f_op_f32(-global1.c.x);
    var var_2 = func_1(global1.a, global1.a);
    var_0 = false;
    let var_3 = firstLeadingBit(vec4<i32>(u_input.b.x, var_2.d, _wgslsmith_div_i32(countOneBits(-1i), u_input.b.x) ^ _wgslsmith_add_i32(-var_2.d, abs(7973i)), _wgslsmith_sub_i32(1i, -28710i)));
    let var_4 = Struct_1(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(var_2.a, 6452u), u_input.a.x), func_2(~countOneBits(_wgslsmith_mult_vec4_i32(var_3, var_3)), var_2.c.x), vec3<f32>(func_1(0u, _wgslsmith_mod_u32(4294967295u, 4294967295u)).c.x, 2737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x)))), var_2.d & _wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.b.zx), abs(countOneBits(var_3.xx))));
    global0 = -1000f;
    let var_5 = ~(-_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.d, 3606i, 2147483647i, global2[_wgslsmith_index_u32(37450u, 17u)]), vec4<i32>(1i, var_3.x, global1.d, 1i)), -vec4<i32>(var_3.x, global1.d, 0i, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-7475i, var_2.d), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_2.a, 4294967295u, var_2.a) & vec4<u32>(func_3(var_4, var_4, 0i, vec3<u32>(var_4.a, u_input.a.x, u_input.a.x)), min(global1.a, global1.a), u_input.a.x, 4294967295u), ~vec4<u32>(select(48180u, 1u, global1.b), 1u, _wgslsmith_div_u32(var_4.a, global1.a), ~var_4.a)), ~112068u, global1.c);
}

