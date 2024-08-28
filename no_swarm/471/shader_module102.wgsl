struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: Struct_1 = Struct_1(101552u, 2521i, true, 285f, vec2<i32>(17450i, -25029i));

var<private> global3: vec3<u32> = vec3<u32>(11966u, 97095u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_1.a, 27u)];
    var var_1 = arg_2;
    var_0 = global1[_wgslsmith_index_u32(arg_1.a, 27u)];
    var_0 = arg_1;
    var_1 = true;
    return -766f;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = min(vec3<u32>(6670u, 1u, arg_0.a) << (firstLeadingBit(vec3<u32>(global3.x, arg_0.a, u_input.c) ^ vec3<u32>(global3.x, 4294967295u, 54953u)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(84451u, 1u, arg_0.a, 14722u), vec4<u32>(u_input.c, 65733u, global3.x, 1u)), _wgslsmith_clamp_u32(u_input.c, 0u, arg_0.a), 31078u), ~vec3<u32>(global2.a, arg_0.a, global2.a) ^ vec3<u32>(arg_0.a, arg_0.a, global2.a)));
    let var_0 = u_input.d & u_input.d;
    let var_1 = global1[_wgslsmith_index_u32(u_input.c, 27u)];
    var var_2 = arg_0.e | var_1.e;
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(reverseBits(1i), select(24463i, -38274i, arg_0.c), countOneBits(arg_0.b), u_input.b), -u_input.d), vec4<i32>(var_1.e.x << (max(firstTrailingBit(arg_0.a), ~u_input.a) % 32u), var_2.x & reverseBits(u_input.b), -var_1.e.x, _wgslsmith_sub_i32(0i, abs(max(1i, 10605i)))));
    return arg_0.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-39081i, -2046i), -83975i)), global2.e);
    let var_1 = ~_wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(firstTrailingBit(var_0.x) << (1u % 32u), 36586i));
    global2 = global1[_wgslsmith_index_u32(~(~firstLeadingBit(4294967295u)), 27u)];
    let var_2 = global1[_wgslsmith_index_u32(1u, 27u)];
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 29833u), 27u)];
    return StorageBuffer(1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(4294967295u, 27u)], true, global0.x)) * global2.d), -548f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d, var_3.d)) + vec2<f32>(var_3.d, var_3.d)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d, -416f) + vec2<f32>(1125f, var_3.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, global0.x))))), vec4<u32>(1u, _wgslsmith_mult_u32(firstTrailingBit(0u), var_3.a), 0u & ~reverseBits(global3.x), select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 1u, var_3.a), vec3<u32>(0u, 1u, var_3.a)), func_3(global1[_wgslsmith_index_u32(1u, 27u)]), select(var_2.c, var_2.c, global2.c)) & ~var_2.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), var_3.d, -466f), vec3<f32>(_wgslsmith_f_op_f32(-var_3.d), -161f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.d - global2.d))))), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

