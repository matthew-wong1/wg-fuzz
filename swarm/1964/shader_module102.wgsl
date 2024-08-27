struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1u, false, 16732u, vec4<u32>(8574u, 28998u, 9841u, 13986u), vec4<i32>(43006i, 1i, -31454i, i32(-2147483648))), Struct_1(11376u, true, 4294967295u, vec4<u32>(23568u, 42246u, 50211u, 8219u), vec4<i32>(15160i, 19901i, -9438i, i32(-2147483648))), Struct_1(4294967295u, false, 1473u, vec4<u32>(0u, 1u, 1u, 32532u), vec4<i32>(0i, 2147483647i, 1i, i32(-2147483648))), Struct_1(0u, false, 4965u, vec4<u32>(0u, 54042u, 0u, 4294967295u), vec4<i32>(34333i, 2147483647i, 0i, 12649i)), Struct_1(4554u, true, 3895u, vec4<u32>(1u, 38974u, 52065u, 65497u), vec4<i32>(i32(-2147483648), 0i, -7648i, 1i)), Struct_1(4294967295u, false, 0u, vec4<u32>(62928u, 35458u, 73611u, 49674u), vec4<i32>(-36595i, -1i, -38006i, 27422i)), Struct_1(12738u, false, 18172u, vec4<u32>(1u, 59883u, 4294967295u, 26851u), vec4<i32>(i32(-2147483648), -16779i, 0i, -11338i)), Struct_1(1u, true, 19307u, vec4<u32>(1u, 10107u, 1u, 28885u), vec4<i32>(-1i, 15822i, -1i, -49874i)));

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

var<private> global3: i32 = 1i;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * global2.x);
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(arg_3 << (arg_2 % 32u)), 8u)];
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -352f)), _wgslsmith_f_op_f32(f32(-1f) * -402f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 359f))));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> u32 {
    global4 = global0[_wgslsmith_index_u32(~1u, 8u)];
    var var_0 = global0[_wgslsmith_index_u32(global4.c, 8u)];
    var_0 = global0[_wgslsmith_index_u32(abs(0u), 8u)];
    var var_1 = _wgslsmith_dot_vec4_u32(global1.d, global4.d);
    let var_2 = vec3<u32>(35861u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(49432u), _wgslsmith_sub_u32(global1.a, global1.d.x)) ^ ~(var_0.a ^ 23785u), ~func_3(vec3<bool>(false, global1.b, true), -730f < global2.x, ~22278u, u_input.c), _wgslsmith_dot_vec2_u32(u_input.a.xy, ~_wgslsmith_div_vec2_u32(vec2<u32>(28001u, global1.d.x), global1.d.xy))), select(4294967295u, _wgslsmith_clamp_u32(global4.c, ~global4.c, ~(~u_input.c)), all(!select(vec4<bool>(false, var_0.b, false, false), vec4<bool>(global1.b, global4.b, true, false), vec4<bool>(arg_2.x, false, arg_2.x, var_0.b)))));
    return u_input.a.x;
}

fn func_1() -> vec2<bool> {
    let var_0 = vec4<f32>(-1163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-183f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))))), global2.x, -556f);
    global4 = global0[_wgslsmith_index_u32(1u, 8u)];
    global3 = 2147483647i;
    global4 = global0[_wgslsmith_index_u32(global4.c | func_2(-reverseBits(u_input.b.x & 0i), _wgslsmith_add_vec2_i32(countOneBits(firstTrailingBit(u_input.b)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(47179i, 1i), vec2<i32>(global4.e.x, global1.e.x)))), !vec2<bool>(!global1.b, u_input.b.x > 0i)), 8u)];
    global0 = array<Struct_1, 8>();
    return !select(!select(vec2<bool>(global4.b, false), vec2<bool>(global4.b, false), global1.b & true), !vec2<bool>(global1.b, !global1.b), vec2<bool>(all(vec2<bool>(global1.b, false)) | !global4.b, _wgslsmith_div_i32(-20739i, global1.e.x) > _wgslsmith_mult_i32(global1.e.x, 62277i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_1());
    global0 = array<Struct_1, 8>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32((1u << (_wgslsmith_mod_u32(u_input.c, global4.c) % 32u)) | u_input.c, ~0u), 8u)];
    var var_2 = Struct_1(~global4.d.x, true, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global4.d.x, var_1.c, global1.c), u_input.c, 1u), var_1.d, global4.e);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1590f, _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(global2.x + global2.x))))), global2.x), global2.x, _wgslsmith_f_op_f32(ceil(-1105f)), _wgslsmith_f_op_f32(-global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(global1.d.x)), var_3.wzz);
}

