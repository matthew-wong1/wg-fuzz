struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = array<u32, 30>();
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = func_3();
    let var_1 = func_3();
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.c, global0[_wgslsmith_index_u32(arg_0.c, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25585u, 30u)], 30u)]), abs(vec4<u32>(arg_0.c, 30427u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global0[_wgslsmith_index_u32(4093u, 30u)]))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(arg_0.c, 30u)], 6209u, 20236u), vec4<u32>(arg_0.c, 30975u, 4294967295u, 13444u))), abs(64464u)) ^ ~vec2<u32>(global0[_wgslsmith_index_u32(min(abs(24642u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 30u)], arg_0.c), vec3<u32>(arg_0.c, arg_0.c, 17464u))), 30u)], ~global0[_wgslsmith_index_u32(0u, 30u)] << (1u % 32u));
    let var_3 = vec2<bool>(!any(vec3<bool>(true, true, false)), all(vec4<bool>(all(select(vec2<bool>(var_0, var_1), vec2<bool>(arg_2, var_0), arg_3)), true, !arg_3, arg_3)));
    var var_4 = select(vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_f_op_f32(abs(arg_0.a))) <= 1000f, arg_2), !vec2<bool>(arg_3, func_3()), var_3);
    return _wgslsmith_f_op_f32(-1339f - arg_0.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    global0 = array<u32, 30>();
    var var_0 = 0i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(arg_0.x, Struct_1(arg_2, vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, arg_0.x)), global0[_wgslsmith_index_u32(43473u, 30u)]), Struct_1(arg_1.b.a, vec3<f32>(1028f, arg_1.b.b.x, arg_0.x)), all(vec4<bool>(true, true, false, true)), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), 586f))), Struct_1(_wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.b.x, -1i), i32(-1i) * -7150i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, 395f)), _wgslsmith_f_op_f32(881f * 1f), arg_0.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c, 18372u, global0[_wgslsmith_index_u32(36817u, 30u)]), vec3<u32>(arg_1.c, arg_1.c, 26907u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 5819u, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(arg_1.c, 0u, arg_1.c))), ~min(vec3<u32>(30305u, 37777u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(991u, 30u)], 0u, 12492u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1.c, 4455u), vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(arg_1.c, 30u)])) | min(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 56607u), vec3<u32>(43280u, 30771u, 4955u)), vec3<u32>(0u, 1u, 1u))));
    var_0 = 34659i;
    var var_2 = vec2<u32>(countOneBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])), abs(vec2<u32>(arg_1.c, 0u))), 30u)], ~reverseBits(var_1.c))), _wgslsmith_dot_vec4_u32((~vec4<u32>(global0[_wgslsmith_index_u32(29783u, 30u)], var_1.c, arg_1.c, arg_1.c) << ((vec4<u32>(arg_1.c, 4294967295u, 28123u, 1u) | vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 30u)], var_1.c, 0u)) % vec4<u32>(32u))) & vec4<u32>(~0u, firstLeadingBit(global0[_wgslsmith_index_u32(var_1.c, 30u)]), select(arg_1.c, 4188u, false), arg_1.c), vec4<u32>(global0[_wgslsmith_index_u32(~(~4294967295u), 30u)], _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(arg_1.c, 30u)], 0u), ~21480u, var_1.c)));
    return 1999f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~27454u, 30u)], abs(~4294967295u), 0u, ~(76025u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33959u, 30u)], 30u)])), ~vec4<u32>(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(1u, 30u)], 14265u), 30u)], abs(global0[_wgslsmith_index_u32(51301u, 30u)]), select(9163u, 60974u, true), abs(1708u)), max(firstTrailingBit(min(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(0u, 30u)], 43078u), vec4<u32>(7939u, 36024u, global0[_wgslsmith_index_u32(6612u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78081u, 30u)], 30u)], 30u)]))), firstLeadingBit(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 4294967295u, 0u, global0[_wgslsmith_index_u32(35286u, 30u)])))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(-597f, 1000f, -834f, 1403f), Struct_2(1002f, Struct_1(1i, vec3<f32>(219f, -880f, 419f)), var_0.x), u_input.b.x))))), Struct_1(-u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, _wgslsmith_f_op_f32(min(-772f, 608f)), _wgslsmith_f_op_f32(f32(-1f) * -834f)))), global0[_wgslsmith_index_u32(var_0.x, 30u)] & ~var_0.x);
    var var_2 = ~(-u_input.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, 504f, var_1.a, -700f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1874f, 579f, 789f, -398f) + vec4<f32>(-483f, var_1.b.b.x, var_1.a, -1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), 150f, _wgslsmith_f_op_f32(ceil(var_1.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -238f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.b.x, var_1.a, var_1.a, -2838f), vec4<f32>(1000f, 1612f, 501f, var_1.b.b.x))))));
    global0 = array<u32, 30>();
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a))) + var_3.x), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_1.b.b, _wgslsmith_f_op_vec3_f32(var_1.b.b * var_1.b.b), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, -413f, -478f), var_3.xyx)) - _wgslsmith_f_op_vec3_f32(select(var_1.b.b, var_1.b.b, vec3<bool>(false, false, true))))))), _wgslsmith_dot_vec4_u32(abs(abs(var_0)), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(674f, var_3.x), _wgslsmith_f_op_f32(-var_3.x)))), var_0.xw & var_0.xx, 0u, abs(~(-2147483647i)), var_1.b.a >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 80363u), vec3<u32>(1u, global0[_wgslsmith_index_u32(var_1.c, 30u)], 49369u)) % 32u));
}

