struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(1273f, -1024f, -2727f, 933f, 281f, 854f, 459f, -1000f, 303f, 934f, 1597f, -1490f, 818f, -1165f, -1000f, 246f, 510f, 1259f, -451f, -306f, 903f, -331f, 166f, -431f, 1566f, 1422f, -2229f, 541f, 2023f, 231f, -1076f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: vec3<bool>) -> bool {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-483f))))));
    let var_2 = arg_1;
    let var_3 = 0i;
    global0 = array<f32, 31>();
    return 4294967295u == arg_0.b.b.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_1(u_input.b.x);
    global0 = array<f32, 31>();
    let var_1 = Struct_2(select(arg_0.x, !func_3(Struct_3(arg_3.x, Struct_2(arg_0.x, Struct_1(0u), vec3<i32>(-18226i, 22593i, -1i)), Struct_2(arg_0.x, Struct_1(u_input.b.x), vec3<i32>(arg_2.x, 1i, 16963i)), u_input.b.x), Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], Struct_2(arg_0.x, var_0, vec3<i32>(arg_2.x, 1i, arg_2.x)), Struct_2(false, var_0, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.b.x), -110357i, !vec3<bool>(false, arg_0.x, false)), !(var_0.a != 70643u)), var_0, abs(vec3<i32>(_wgslsmith_div_i32(-1i, 2147483647i), u_input.a.x, -1242i)) ^ select(-vec3<i32>(arg_2.x, arg_2.x, u_input.a.x), select(~vec3<i32>(arg_2.x, 39226i, arg_2.x), ~vec3<i32>(-75161i, u_input.a.x, u_input.a.x), vec3<bool>(arg_0.x, arg_0.x, true)), select(select(arg_0.yyw, vec3<bool>(arg_0.x, arg_0.x, true), arg_0.xzz), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x))));
    let var_2 = 1561f;
    var var_3 = 0u != ~(~countOneBits(var_0.a));
    return _wgslsmith_f_op_vec2_f32(-arg_3);
}

fn func_2() -> Struct_4 {
    global0 = array<f32, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(!(!vec4<bool>(true, func_3(Struct_3(1601f, Struct_2(false, Struct_1(1u), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), Struct_2(false, Struct_1(u_input.b.x), vec3<i32>(u_input.a.x, u_input.a.x, -53468i)), 0u), Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], Struct_2(false, Struct_1(0u), vec3<i32>(-1i, 0i, u_input.a.x)), Struct_2(true, Struct_1(55963u), vec3<i32>(u_input.a.x, u_input.a.x, -57138i)), 18790u), 1i, vec3<bool>(false, true, false)), true, u_input.b.x < u_input.b.x)), u_input.b & _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(countOneBits(u_input.b.x), ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u))), _wgslsmith_div_vec2_i32(~select(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.a.x)), ~u_input.a, vec2<bool>(true, true)), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(927i, -5417i, 2147483647i, u_input.a.x), vec4<i32>(-8435i, u_input.a.x, u_input.a.x, -1i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2042f, global0[_wgslsmith_index_u32(8959u, 31u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], 250f), true)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(9973u, 31u)], 1256f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], 696f))))))));
    let var_1 = Struct_4(Struct_2(!func_3(Struct_3(var_0.x, Struct_2(false, Struct_1(475u), vec3<i32>(-21135i, u_input.a.x, u_input.a.x)), Struct_2(false, Struct_1(4294967295u), vec3<i32>(-18785i, 1i, 82120i)), u_input.b.x), Struct_3(-1000f, Struct_2(true, Struct_1(u_input.b.x), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_2(false, Struct_1(u_input.b.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.b.x), u_input.a.x, select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), Struct_1(5530u), reverseBits(-vec3<i32>(-29184i, -1i, u_input.a.x))));
    var var_2 = _wgslsmith_div_f32(1470f, -315f);
    var var_3 = ~select(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b | u_input.b), vec3<u32>(~u_input.b.x, 1u, 32233u), _wgslsmith_f_op_f32(ceil(1444f)) <= _wgslsmith_f_op_f32(-422f * global0[_wgslsmith_index_u32(4294967295u, 31u)])) << (select(min(vec3<u32>(25428u, ~86027u, var_1.a.b.a), vec3<u32>(0u, var_1.a.b.a, 1u)), vec3<u32>(u_input.b.x, countOneBits(4294967295u), ~u_input.b.x) | ~u_input.b, reverseBits(1u) < u_input.b.x) % vec3<u32>(32u));
    return var_1;
}

fn func_1() -> vec3<f32> {
    global0 = array<f32, 31>();
    let var_0 = func_2();
    global0 = array<f32, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -780f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-450f, global0[_wgslsmith_index_u32(31691u, 31u)]) * vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 652f))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], 1411f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)])))))))));
    var var_2 = func_2().a;
    return vec3<f32>(var_1.x, -1000f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(abs(func_2().a.b.a), 31u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x * _wgslsmith_f_op_f32(floor(1558f))), Struct_2(true, Struct_1((140u ^ u_input.b.x) >> (select(4294967295u, u_input.b.x, false) % 32u)), func_2().a.c), Struct_2(!func_2().a.a, func_2().a.b, vec3<i32>(u_input.a.x & (i32(-1i) * -1i), select(abs(u_input.a.x), u_input.a.x, func_3(Struct_3(var_0.x, Struct_2(false, Struct_1(4294967295u), vec3<i32>(2147483647i, u_input.a.x, 21584i)), Struct_2(true, Struct_1(u_input.b.x), vec3<i32>(9423i, -47089i, 27509i)), u_input.b.x), Struct_3(global0[_wgslsmith_index_u32(57641u, 31u)], Struct_2(true, Struct_1(u_input.b.x), vec3<i32>(u_input.a.x, -1i, -37381i)), Struct_2(false, Struct_1(u_input.b.x), vec3<i32>(1i, -2147483647i, u_input.a.x)), u_input.b.x), 1i, vec3<bool>(false, true, false))), 2147483647i)), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~110914u, u_input.b.x), ~u_input.b.x, u_input.b.x));
    global0 = array<f32, 31>();
    let var_2 = var_1.c.b;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(-635f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * global0[_wgslsmith_index_u32(2145u, 31u)]))))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2548f + 127f)));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(136f - -399f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~91511u, 5377u) & countOneBits(u_input.b.xy));
}

