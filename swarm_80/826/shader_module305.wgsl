struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(362f, vec2<bool>(true, false));

var<private> global1: array<u32, 10> = array<u32, 10>(0u, 1u, 1u, 0u, 4294967295u, 52342u, 38378u, 33174u, 1u, 29543u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec3<bool>(false, global0.b.x, 1u <= global1[_wgslsmith_index_u32(u_input.a, 10u)]);
    let var_1 = min(u_input.d, -select(~u_input.c, abs(vec4<i32>(u_input.d.x, 0i, u_input.d.x, 0i)), global0.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.a)))), global0.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(-286f * _wgslsmith_f_op_f32(-540f * var_2.a)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(global0.a + var_2.a)))) - _wgslsmith_f_op_f32(ceil(-1977f)));
    return vec3<bool>(2147483647i >= _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.x, -10705i) & _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -(var_1.x >> (global1[_wgslsmith_index_u32(115218u, 10u)] % 32u)), var_1.x & -u_input.c.x), all(!vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, false, var_0.x)), all(vec3<bool>(false, var_0.x, var_0.x)))), all(!select(select(vec3<bool>(false, var_2.b.x, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, var_2.b.x, true), vec3<bool>(false, var_2.b.x, false), vec3<bool>(global0.b.x, var_0.x, false)), !vec3<bool>(false, var_2.b.x, true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(1i, (-42208i | _wgslsmith_mod_i32(u_input.d.x, u_input.b)) | u_input.b, 36945i, _wgslsmith_div_i32(-5733i, firstLeadingBit(_wgslsmith_mod_i32(1i, u_input.b)))));
    global1 = array<u32, 10>();
    let var_1 = false;
    global1 = array<u32, 10>();
    let var_2 = _wgslsmith_mod_i32(var_0, min(u_input.d.x, _wgslsmith_clamp_i32(var_0, -var_0, 43264i >> (arg_0.x % 32u))) >> (arg_0.x % 32u));
    return arg_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<i32> {
    global1 = array<u32, 10>();
    var var_0 = ~u_input.c;
    var var_1 = !(func_4(~select(vec2<u32>(78796u, 8651u), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a), global0.b), select(func_3(), !vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, false)), select(!global0.b, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -360f, 325f, -121f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1182f, global0.a, global0.a, global0.a), vec4<f32>(854f, -669f, global0.a, global0.a)))) <= 52961u);
    var_1 = -443f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(589f + global0.a) + global0.a)));
    var var_2 = _wgslsmith_mod_vec2_u32(~vec2<u32>(34977u >> (global1[_wgslsmith_index_u32(47453u, 10u)] % 32u), global1[_wgslsmith_index_u32(58047u, 10u)]), vec2<u32>(func_4(vec2<u32>(1u, 1u), select(vec3<bool>(global0.b.x, false, arg_0.x), vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, true)), !global0.b, vec4<f32>(global0.a, -313f, -1537f, global0.a)), _wgslsmith_div_u32(min(19185u, global1[_wgslsmith_index_u32(u_input.a, 10u)]), 0u))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(select(abs(vec2<u32>(global1[_wgslsmith_index_u32(111187u, 10u)], u_input.a)), vec2<u32>(1u, 1u), arg_0.x), abs(~vec2<u32>(3324u, 10865u))), vec2<u32>(71097u, 11170u)) % vec2<u32>(32u));
    return arg_1.zz;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.c.yz, select(vec2<i32>(-1i) * -(~vec2<i32>(u_input.d.x, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-14117i, 2147483647i) | u_input.d.xx, u_input.c.wz) ^ ~(-u_input.c.wy), !global0.b.x));
    var var_1 = Struct_2(~reverseBits(func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global0.b.x, global0.b.x)), u_input.c.wxy | u_input.d.yzw)), Struct_1(global0.a, select(global0.b, !vec2<bool>(global0.b.x, global0.b.x), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.b.a, _wgslsmith_f_op_f32(global0.a * global0.a), 126f <= var_1.b.a)))) * 1061f), !(!vec2<bool>(var_1.b.b.x, false)));
    let var_3 = Struct_3(var_1.b, min(1u, u_input.a), vec3<bool>(true, global0.b.x, any(!(!vec2<bool>(global0.b.x, true)))), func_2(!(!select(vec2<bool>(var_2.b.x, false), var_1.b.b, var_1.b.b.x)), u_input.d.yxy).x, var_1.b.b.x);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-139f)), _wgslsmith_f_op_f32(550f * 279f))))), var_2.b);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_1() ^ 4960u, 16166u, ~(~47450u));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), global0.a)), global0.b), 20193u, select(vec3<bool>(!any(global0.b), global0.b.x, true), !vec3<bool>(global0.b.x == global0.b.x, false, false), !vec3<bool>(true, global0.b.x || global0.b.x, true)), u_input.c.x, true);
    global1 = array<u32, 10>();
    var var_2 = vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(294f)))), _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(step(-596f, -1332f)))), global0.b.x)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-726f)), -297f)))), !vec2<bool>(true, ~u_input.d.x < ~u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-834f, 2047f, global0.a))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_1.a.b.x)), -1326f) * vec3<f32>(_wgslsmith_f_op_f32(select(global0.a, global0.a, global0.b.x)), _wgslsmith_f_op_f32(select(-1155f, var_2.x, false)), 465f)))));
    var var_4 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.d.yy), -select(vec2<i32>(2147483647i, var_1.d), vec2<i32>(2147483647i, 2147483647i), var_1.a.b))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-633f, -1021f)))), !vec2<bool>(var_1.c.x || global0.b.x, !var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_4.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1171f, -1706f, 112f, 216f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_3.x, var_1.a.a, var_3.x) * vec4<f32>(var_4.b.a, var_4.b.a, 152f, 1000f))))))));
}

