struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> i32 {
    global0 = array<i32, 25>();
    return -8643i;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = 88723u;
    let var_1 = select(-(~vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 25u)], arg_0.a.x, global0[_wgslsmith_index_u32(u_input.a, 25u)], -31967i)) ^ abs(vec4<i32>(min(9834i, arg_0.a.x), -arg_0.a.x, -2147483647i, min(arg_1, arg_1))), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-14090i, arg_1, ~global0[_wgslsmith_index_u32(arg_2, 25u)], -24610i)), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_1, arg_0.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 2147483647i, 1i, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec4<i32>(0i, global0[_wgslsmith_index_u32(86296u, 25u)], -42928i, arg_1)))), arg_0.c);
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, arg_2), ~countOneBits(36452u) << (arg_2 % 32u)), u_input.e);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), vec3<bool>(any(select(!vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), !vec4<bool>(false, arg_0.c, true, false), select(vec4<bool>(arg_0.c, arg_0.c, false, false), vec4<bool>(true, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c)))), arg_0.c, arg_0.c), !select(!select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true)), vec4<bool>(arg_0.c, true, true, arg_0.c), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(arg_0.c, arg_0.c)))), arg_0.c, min(4294967295u, ~(~19597u)));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_3(Struct_1(select(vec3<i32>(firstLeadingBit(u_input.c), -106i, func_2(Struct_2(-1201f, vec3<bool>(false, false, false), vec4<bool>(true, true, true, false), false, 93173u))), reverseBits(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, 1i))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -672f) - 453f), true), u_input.c, 0u);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), ~select(var_0.e, 30018u, var_0.b.x)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(33578u, 4294967295u), u_input.d.yx), ~u_input.d.yz >> (_wgslsmith_mult_vec2_u32(u_input.d.xy, u_input.d.xz) % vec2<u32>(32u)), all(select(var_0.c.wyz, var_0.b, var_0.b)))) << (61007u % 32u), 25u)];
    var var_2 = func_3(Struct_1(vec3<i32>(~(-13454i >> (u_input.d.x % 32u)), ~global0[_wgslsmith_index_u32(u_input.b, 25u)] | -24021i, global0[_wgslsmith_index_u32(4294967295u, 25u)]), 217f, all(func_3(Struct_1(vec3<i32>(u_input.c, u_input.c, 1i), var_0.a, true), ~(-11399i), ~27974u).c)), ~(~reverseBits(u_input.c)) ^ _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~(~16155u), 25u)], _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -1i, u_input.c, global0[_wgslsmith_index_u32(var_0.e, 25u)]), vec4<i32>(u_input.c, u_input.c, u_input.c, -8069i))), 1u);
    let var_3 = vec3<bool>(!(global0[_wgslsmith_index_u32(~reverseBits(1u), 25u)] < _wgslsmith_mod_i32(firstLeadingBit(2147483647i), u_input.c >> (4294967295u % 32u))), var_2.e < _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(u_input.d, u_input.d, true), max(u_input.d, u_input.d)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_0.e, 1u, var_0.e)), vec3<u32>(0u, var_2.e, 50111u) ^ vec3<u32>(86486u, var_0.e, var_2.e))), any(vec3<bool>(u_input.c == u_input.c, all(select(vec3<bool>(true, var_2.b.x, var_0.d), vec3<bool>(true, var_0.c.x, var_2.d), vec3<bool>(var_0.b.x, var_2.d, true))), any(!vec4<bool>(var_2.d, var_0.c.x, false, var_2.b.x)))));
    global0 = array<i32, 25>();
    return StorageBuffer(select(u_input.d, vec3<u32>(var_0.e, var_2.e, var_0.e) >> (u_input.d % vec3<u32>(32u)), select(func_3(Struct_1(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(18076u, 25u)], -2147483647i), var_2.a, var_0.c.x), global0[_wgslsmith_index_u32(14220u, 25u)], var_2.e).b, vec3<bool>(false, var_2.d, true), !vec3<bool>(var_3.x, false, var_0.b.x))) | select(~vec3<u32>(0u, 15051u, 1u) & (vec3<u32>(u_input.e, u_input.e, var_0.e) | u_input.d), firstTrailingBit(u_input.d), var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(130f, 225f, var_2.a, var_2.a), vec4<f32>(var_0.a, var_0.a, -1076f, -1378f))) * vec4<f32>(var_2.a, var_0.a, -109f, -106f)) + vec4<f32>(_wgslsmith_f_op_f32(max(var_2.a, var_0.a)), _wgslsmith_f_op_f32(max(-515f, var_2.a)), var_0.a, _wgslsmith_f_op_f32(exp2(var_0.a))))), 13144u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(u_input.d.x & firstTrailingBit(4294967295u), ~(~u_input.b));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(abs(0i) ^ (global0[_wgslsmith_index_u32(u_input.b, 25u)] | 11661i), _wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(1i, u_input.c, u_input.c))), global0[_wgslsmith_index_u32(~u_input.d.x << (_wgslsmith_div_u32(8485u, u_input.d.x) % 32u), 25u)] & (-global0[_wgslsmith_index_u32(10500u, 25u)] << (u_input.e % 32u)), _wgslsmith_mult_i32(countOneBits(u_input.c), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-221f)))), true);
    let x = u_input.a;
    s_output = func_1();
}

