struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: array<bool, 16>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = vec3<u32>(~1u, 1u, ~(35369u >> (global1.x % 32u)));
    var var_1 = ~global1.x;
    var_0 = firstLeadingBit(vec3<u32>(~global1.x, min(select(1u, 14231u >> (global1.x % 32u), arg_2.a || arg_0.a), _wgslsmith_mult_u32(var_0.x, var_0.x)), _wgslsmith_div_u32(4294967295u, ~global1.x)));
    let var_2 = Struct_2(29706u, global0.x, _wgslsmith_add_u32(reverseBits(u_input.a.x), 70383u), arg_1.x ^ (58774i << (~u_input.b.x % 32u)));
    var_0 = reverseBits(~u_input.b.xzx);
    return max(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.d, -44019i, arg_1.x), ~vec3<i32>(var_2.d, 1i, 26542i)), vec3<i32>(abs(arg_1.x), var_2.d, 0i)), firstTrailingBit(-33604i) << (u_input.b.x % 32u), 2147483647i), -abs(-vec3<i32>(var_2.d, -1i, -2147483647i) | ~vec3<i32>(-4606i, 39921i, arg_1.x)));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1022f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f - -517f))), _wgslsmith_f_op_f32(sign(350f))));
    let var_0 = -select(_wgslsmith_clamp_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(0i, 1i, 40689i))), vec3<i32>(_wgslsmith_mult_i32(2431i, 23939i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -17353i, 1i, 39542i), vec4<i32>(-2147483647i, 2147483647i, 1i, -3592i)), 0i), func_2(Struct_1(false), vec2<i32>(1i, 2147483647i), Struct_1(true)) >> (abs(vec3<u32>(37051u, 9034u, arg_1)) % vec3<u32>(32u))), abs(vec3<i32>(abs(0i), 1i, 14791i << (arg_1 % 32u))), true);
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(~(~30466u)), 68585u), 16u)]);
    var var_2 = 0u;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 627f, _wgslsmith_f_op_f32(-global0.x))));
    return false;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: u32) -> vec3<u32> {
    global1 = u_input.a;
    global2 = array<bool, 16>();
    let var_0 = 1i;
    var var_1 = Struct_2(~_wgslsmith_div_u32(global1.x >> (_wgslsmith_dot_vec3_u32(u_input.b.yyx, u_input.b.xzw) % 32u), arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global0.x)), u_input.b.x, var_0);
    let var_2 = Struct_1(false);
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(4294967295u, 0u, global1.x)), firstTrailingBit(vec3<u32>(0u, arg_3, u_input.a.x) | u_input.b.xyw)), 22070u, min(min(firstTrailingBit(u_input.b.x), u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 66963u, 131439u), u_input.b.zwx) % 32u)), abs((var_1.a | var_1.c) ^ abs(var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_3(-1223f, _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x) >> (global1.x % 32u), func_1(global2[_wgslsmith_index_u32(4294967295u, 16u)], global1.x), _wgslsmith_add_u32(4294967295u, 0u)), u_input.b.yxx);
    var var_1 = _wgslsmith_f_op_f32(ceil(-481f));
    let x = u_input.a;
    s_output = StorageBuffer(89519u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.wwy, global0.zyw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1189f, global0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1295f), _wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_f_op_f32(f32(-1f) * -984f)) + vec3<f32>(global0.x, global0.x, 1046f)), global0.xzx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 405f) * _wgslsmith_f_op_vec2_f32(select(global0.zw, vec2<f32>(138f, -132f), vec2<bool>(global2[_wgslsmith_index_u32(3935u, 16u)], true)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(654f)), _wgslsmith_f_op_f32(f32(-1f) * -519f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1212f, global0.x), vec2<f32>(global0.x, 1566f)))));
}

