struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 29>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    global1 = array<u32, 29>();
    let var_0 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.a != -1i, true), all(vec4<bool>(true, true, true, true))), vec4<bool>(arg_1.x == _wgslsmith_mod_u32(28227u, 40568u), true, true, firstTrailingBit(1u) != global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32729u, arg_1.x), vec3<u32>(25880u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 29u)], 29u)], 29u)], 60731u)), 29u)]), false);
    let var_1 = arg_1.zyy;
    let var_2 = Struct_1(0i, arg_1.x);
    global0 = true;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = all(select(vec2<bool>(true, arg_0), vec2<bool>(true, 1u <= global1[_wgslsmith_index_u32(17965u, 29u)]), select(select(select(vec2<bool>(true, false), vec2<bool>(false, arg_0), true), vec2<bool>(false, false), arg_0), !vec2<bool>(arg_0, true), arg_0)));
    let var_1 = _wgslsmith_add_vec2_u32(reverseBits(max(vec2<u32>(global1[_wgslsmith_index_u32(1u, 29u)], max(36653u, 4294967295u)), ~reverseBits(vec2<u32>(1502u, 0u)))), vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 0u), _wgslsmith_div_u32(30795u, 26470u)), 29u)], 29u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66932u, 29u)], 29u)], 29u)], 29u)], 29u)], _wgslsmith_mult_u32(669u, global1[_wgslsmith_index_u32(1u, 29u)]))), ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~1u, 29u)], 29u)]));
    global0 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-861f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -310f) - _wgslsmith_f_op_f32(sign(1026f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(~(~42992i >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42664u, 29u)], 29u)] % 32u))), 1u);
    var var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), true)));
    global0 = var_1.x | !(!(!(var_0.b != 23762u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(var_1.x, ~(~_wgslsmith_div_vec3_i32(u_input.b.wxw, firstLeadingBit(u_input.b.zww)))));
    var var_3 = vec3<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 47126u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 29u)], var_0.b)) << ((vec2<u32>(global1[_wgslsmith_index_u32(var_0.b, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 29u)], 29u)], 29u)]) | vec2<u32>(1u, var_0.b)) % vec2<u32>(32u)), ~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 29u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)]))), 29u)], min(~global1[_wgslsmith_index_u32(~0u, 29u)], var_0.b >> (12382u % 32u)) << (global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~var_0.b, 19433u), 29u)] % 32u), var_0.b);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    let var_0 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false));
    var var_1 = _wgslsmith_f_op_f32(step(arg_1, 278f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(max(global1[_wgslsmith_index_u32(arg_0.b, 29u)] & 0u, global1[_wgslsmith_index_u32(4761u, 29u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(~min(global1[_wgslsmith_index_u32(29028u, 29u)], global1[_wgslsmith_index_u32(arg_0.b, 29u)]), countOneBits(arg_0.b ^ global1[_wgslsmith_index_u32(0u, 29u)])), ~(~abs(vec2<u32>(6651u, 30307u))))), 29u)];
    var_1 = var_2.x;
    return StorageBuffer(max(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 51669i), vec2<i32>(u_input.a, 5402i)), u_input.b.ww, ~(~u_input.b.wx)), reverseBits(vec2<i32>(u_input.a, i32(-1i) * -557i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a <= -2147483647i;
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1799f, _wgslsmith_div_f32(-371f, 102f)))));
    var_2 = _wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_1(912f, vec4<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 4294967295u, 856u, 109375u)))))), 255f)));
    var var_3 = vec3<f32>(1f, -607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-840f)) + -1138f));
    let x = u_input.a;
    s_output = func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_i32(6832i, 11962i) == var_1, u_input.b.ywx)).x - 206f));
}

