struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<f32>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = array<vec2<f32>, 29>();
    global0 = Struct_1(_wgslsmith_div_i32(-arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global0.b.x, global0.a), arg_0.a >> (4294967295u % 32u), -u_input.a, u_input.a ^ arg_0.b.x), vec4<i32>(countOneBits(arg_0.a), i32(-1i) * -30282i, 1i, _wgslsmith_add_i32(-2147483647i, arg_0.a)))), countOneBits(global0.b));
    var var_0 = vec4<bool>(true, false, (1i << (u_input.b % 32u)) > _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.a, 5984i)), firstTrailingBit(firstLeadingBit(vec2<i32>(arg_0.a, u_input.a)))), true);
    var var_1 = arg_0;
    global1 = max(vec3<u32>(reverseBits(global1.x | 95934u), reverseBits(5344u), 39084u) >> (select(~(vec3<u32>(24236u, 49881u, global1.x) & vec3<u32>(global1.x, 15794u, global1.x)), vec3<u32>(global1.x, _wgslsmith_clamp_u32(global1.x, global1.x, u_input.b), 40847u << (u_input.b % 32u)), select(var_0.yxw, select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.xxz), false)) % vec3<u32>(32u)), ~abs(vec3<u32>(abs(global1.x), ~global1.x, global1.x)));
    return _wgslsmith_add_i32(global0.b.x, 2147483647i);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(13611i ^ global0.a) >> (global1.x % 32u), func_3(Struct_1(global0.b.x, global0.b)), global0.b.x >> (_wgslsmith_mod_u32(1u, countOneBits(4221u)) % 32u)), abs(vec3<i32>(global0.a ^ global0.a, -1i >> (1u % 32u), -39947i | u_input.a) << (~vec3<u32>(global1.x, u_input.b, global1.x) % vec3<u32>(32u))));
    var var_1 = Struct_1(870i, var_0.zx);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(1u, 29u)] - _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(203f, 105f), vec2<f32>(988f, 255f)) + _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(4294967295u, 29u)] * vec2<f32>(-2244f, -532f))))), _wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(29189u, 29u)]))), vec2<f32>(_wgslsmith_f_op_f32(max(-134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(767f)) + _wgslsmith_f_op_f32(sign(1291f))))), _wgslsmith_f_op_f32(f32(-1f) * -1918f))));
    var var_3 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 205f) * _wgslsmith_f_op_f32(var_2.x - var_2.x)))) <= var_2.x);
    let var_4 = Struct_1(var_0.x, reverseBits(vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(71717i), global0.b.x & var_0.x), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, var_1.a), var_1.b)))));
    return -firstLeadingBit(~(~(-2147483647i)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = abs(vec4<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-25232i, arg_0.b.x, -17619i), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, 2147483647i, global0.b.x), vec3<i32>(arg_0.b.x, u_input.a, -13456i))), ~u_input.a, _wgslsmith_div_i32(func_2(), countOneBits(global0.b.x)), _wgslsmith_mult_i32(-2147483647i, arg_0.a)));
    global0 = arg_0;
    let var_1 = vec2<u32>(global1.x >> (~0u % 32u), ~firstTrailingBit(global1.x));
    global0 = arg_0;
    var_0 = reverseBits(countOneBits(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-6476i, global0.a, -26956i, u_input.a), vec4<i32>(1i, var_0.x, arg_0.a, 5962i))) | -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, arg_0.b.x, var_0.x), vec4<i32>(-59564i, global0.b.x, 1i, 8641i))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.x, _wgslsmith_mod_u32(global1.x, global1.x)), ~_wgslsmith_mult_u32(33386u, u_input.b)), 561u, 56539u);
    global0 = Struct_1(2147483647i, ~vec2<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, 1i), func_1(Struct_1(-26268i, vec2<i32>(58598i, u_input.a))))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(355f + 319f))), -1083f);
    global2 = array<vec2<f32>, 29>();
    let var_1 = u_input.b;
    let var_2 = false;
    var var_3 = Struct_1(-36569i, -_wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(-30341i, -1i)), global0.b));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.a, reverseBits(u_input.a), global0.a & u_input.a)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-12539i, global0.a, u_input.a), vec3<i32>(var_3.a, 0i, global0.b.x) | vec3<i32>(3025i, u_input.a, 1i)))), -global0.b);
    var var_5 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1709f), _wgslsmith_div_f32(-1096f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-311f + -596f), var_0.x)) + var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(79188u, u_input.b, _wgslsmith_add_u32(~(~10255u), 4294967295u >> (~u_input.b % 32u))), 29u)]);
}

