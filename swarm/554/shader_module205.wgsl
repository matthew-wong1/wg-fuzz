struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 8549i, -1i);

var<private> global3: array<f32, 8>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(global0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u ^ u_input.b.x), 8u)])));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(497f, _wgslsmith_f_op_f32(max(781f, global3[_wgslsmith_index_u32(17895u, 8u)])))), global3[_wgslsmith_index_u32(4294967295u ^ abs(u_input.b.x), 8u)])));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], global3[_wgslsmith_index_u32(36947u, 8u)])))))), global3[_wgslsmith_index_u32(max(u_input.b.x, ~u_input.b.x) << (max(58267u, 0u) % 32u), 8u)], _wgslsmith_f_op_f32(1343f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-736f, -2251f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(66396u, 8u)] * 899f), 1079f)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0.a, var_0.a), ~vec3<u32>(var_0.a, u_input.b.x, 37932u)) % 32u), 8u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 6805u), vec3<u32>(var_0.a, 6220u, global0.x)) | 4294967295u, 8u)], -169f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), 8u)])));
    return global0.xx;
}

fn func_2() -> Struct_3 {
    let var_0 = ~(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, func_3()), 4294967295u) | global0.xx);
    var var_1 = global2.x;
    let var_2 = -842f;
    let var_3 = vec3<i32>(~(~global2.x), _wgslsmith_add_i32(firstTrailingBit(-34866i), ~(~global2.x)), global2.x) | -vec3<i32>(7358i, ~min(global2.x, -25425i), 41981i);
    global1 = array<Struct_1, 5>();
    return Struct_3(vec4<f32>(var_2, -606f, 1693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(10301u, 8u)] + var_2) + _wgslsmith_f_op_f32(floor(var_2))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1103f + global3[_wgslsmith_index_u32(4294967295u, 8u)]), var_2)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x & 4294967295u, 2738u, ~u_input.b.x), arg_2.yxw), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 1u, u_input.b.x), countOneBits(vec3<u32>(0u, 0u, global0.x))) << (global0.x % 32u), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, arg_1.x), arg_1.zw) | u_input.a), 0u, 1i);
    return arg_1.yw;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = vec4<i32>(~(~_wgslsmith_add_i32(5880i >> (arg_0.x % 32u), ~u_input.c)), ~global2.x, ~(global2.x >> (firstTrailingBit(0u) % 32u)) >> ((u_input.b.x ^ ~(~35884u)) % 32u), _wgslsmith_dot_vec2_i32(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(2697u, 8u)], global3[_wgslsmith_index_u32(global0.x, 8u)]) + vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], -351f, -704f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 791f, global3[_wgslsmith_index_u32(22422u, 8u)]), vec3<f32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)])))), ~vec4<i32>(u_input.d, global2.x, -2147483647i, global2.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, arg_0.x, 0u, 38588u), vec4<u32>(29684u, 20996u, arg_0.x, 5956u), vec4<u32>(arg_0.x, 1u, u_input.b.x, 4294967295u)), func_2()), _wgslsmith_mult_vec2_i32(global2.yx, vec2<i32>(arg_2, 10451i))));
    let var_1 = countOneBits(_wgslsmith_mult_vec3_i32(abs(var_0.zyx), _wgslsmith_add_vec3_i32(vec3<i32>(0i, firstTrailingBit(-2147483647i), i32(-1i) * -25062i), _wgslsmith_sub_vec3_i32(vec3<i32>(2472i, var_0.x, arg_2), min(var_0.yzy, vec3<i32>(8153i, 15154i, arg_2))))));
    let var_2 = -1000f;
    global2 = _wgslsmith_mult_vec3_i32(var_0.wxx, vec3<i32>(firstLeadingBit(global2.x), 2147483647i, arg_1));
    var_0 = select(_wgslsmith_mult_vec4_i32(reverseBits(-(vec4<i32>(42403i, 2147483647i, -28513i, 0i) ^ vec4<i32>(arg_2, -3682i, var_0.x, -2147483647i))), -vec4<i32>(~0i, global2.x, var_1.x, -28274i)), vec4<i32>((i32(-1i) * -2684i) >> (((arg_0.x << (u_input.b.x % 32u)) >> (7376u % 32u)) % 32u), var_0.x, arg_1, var_0.x), true);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec3<i32>(~(~_wgslsmith_add_i32(global2.x, global2.x)), -(global2.x >> (~u_input.b.x % 32u)), -_wgslsmith_div_i32(1i, 55609i) & -firstLeadingBit(global2.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b.x, global0.x, global0.x), u_input.a, 2147483647i)) + _wgslsmith_f_op_f32(round(-215f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1079f)) * _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(1u, 8u)], 124f))), global3[_wgslsmith_index_u32(abs(15843u), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 8u)]))))));
    global1 = array<Struct_1, 5>();
    var var_1 = any(vec3<bool>(all(vec2<bool>(all(vec3<bool>(false, false, true)), true)), true, true));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(99486u, 79254u), 36493u)), global0.x), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b, global0.zx), 32967u), ~u_input.b >> (global0.zx % vec2<u32>(32u)), !any(vec4<bool>(false, false, false, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i >> (global0.x % 32u)) >> (u_input.b % vec2<u32>(32u)), ~abs(countOneBits(vec2<i32>(global2.x, global2.x)))), _wgslsmith_div_vec3_f32(var_0.zyz, _wgslsmith_f_op_vec3_f32(sign(var_0.yxy))));
}

