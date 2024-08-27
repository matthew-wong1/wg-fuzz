struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(509f, -1144f, 248f), false, -2253f, vec4<i32>(0i, -22822i, 36563i, -22473i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(144f, global0.c, global0.c), true)) + global0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-532f - 227f), -341f, 885f)))), global0.b, -1000f, vec4<i32>(-1i) * -(-global0.d | (u_input.b & vec4<i32>(u_input.b.x, 27610i, u_input.b.x, -1i))));
    var var_1 = min(select(vec3<u32>(_wgslsmith_mult_u32(max(1u, 0u), arg_0), 4294967295u << (arg_0 % 32u), ~_wgslsmith_add_u32(arg_0, 10118u)), abs(~vec3<u32>(13726u, 4294967295u, arg_0)), global0.b), _wgslsmith_mult_vec3_u32(~vec3<u32>(countOneBits(u_input.a), 1u, ~4294967295u), ~(~(vec3<u32>(0u, 1u, u_input.a) ^ vec3<u32>(1u, u_input.a, 9165u)))));
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(37103u, 4294967295u), var_1.zx), vec2<u32>(0u, u_input.a)), var_1.xz | select(var_1.yz, var_1.zy, true)), ~_wgslsmith_add_u32(max(0u, u_input.a), _wgslsmith_mod_u32(var_1.x, 19624u)), ~var_1.x), vec3<u32>(~(~1u), 8505u, arg_0 << (_wgslsmith_mod_u32(countOneBits(var_1.x), 123258u) % 32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, global0.c, _wgslsmith_div_f32(-1922f, 478f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))), -1704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f - -738f)))), var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.a.x)))), u_input.b);
    var var_3 = var_0;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1640f, _wgslsmith_f_op_f32(exp2(var_2.c))))), var_2.a.x) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(sign(740f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -409f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = 5195i;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(global0.a, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 37630u, 1u), vec3<u32>(0u, u_input.a, 4294967295u)))))))), any(select(arg_2.xwz, select(!arg_2.yxz, arg_2.xyy, true), arg_2.x)), arg_1, max(-countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(4827i, -5198i, global0.d.x, arg_0.x), u_input.b)), global0.d));
    var var_1 = -_wgslsmith_add_i32(firstLeadingBit(5514i), ~(firstTrailingBit(global0.d.x) >> (countOneBits(u_input.a) % 32u)));
    return _wgslsmith_f_op_vec3_f32(-global0.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.c))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(max(global0.d.xwz, vec3<i32>(arg_0.x, arg_2, arg_0.x)), 1223f, select(vec4<bool>(global0.b, false, false, global0.b), vec4<bool>(global0.b, true, global0.b, false), vec4<bool>(global0.b, global0.b, global0.b, global0.b)))))), all(!vec3<bool>(!global0.b, false, all(vec4<bool>(global0.b, true, global0.b, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.a)).x * _wgslsmith_div_f32(-405f, var_0)), -(vec4<i32>(-1i) * -(global0.d ^ u_input.b)));
    let var_2 = Struct_1(var_1.a, true, global0.c, vec4<i32>(arg_1, arg_3.x, 16334i, ~(-32584i)));
    var var_3 = Struct_1(var_1.a, !select(var_1.b, any(vec2<bool>(true, true)), !any(vec2<bool>(true, var_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + -1039f)))), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)), vec4<i32>(-1i) * -((u_input.b & vec4<i32>(arg_2, 103076i, global0.d.x, -2147483647i)) ^ -vec4<i32>(13069i, 5744i, var_2.d.x, 1i)));
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -668f), global0.c, _wgslsmith_f_op_f32(-1374f + _wgslsmith_f_op_f32(-var_1.a.x))), false, _wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(_wgslsmith_sub_vec4_i32(~firstTrailingBit(var_1.d), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -20398i, -2147483647i, 17847i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.d.x, var_2.d.x, u_input.b.x, u_input.b.x), global0.d)))));
    return Struct_1(global0.a, true, _wgslsmith_f_op_f32(-var_4.c), var_4.d >> (abs(min(vec4<u32>(92073u, 1u, u_input.a, 50088u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 26708u, 0u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, true, global0.c, vec4<i32>(global0.d.x, _wgslsmith_mod_i32(-21934i, u_input.b.x), -(~17846i), -16156i));
    let var_1 = global0.a.x;
    global0 = var_0;
    let var_2 = true;
    global0 = func_1(~abs(_wgslsmith_mod_vec2_i32(u_input.b.xw, var_0.d.wz)), i32(-1i) * -2147483647i, 1i, u_input.b.yz);
    let var_3 = var_0.d.xz;
    let var_4 = u_input.b.x;
    let var_5 = func_1(vec2<i32>(-1i) * -var_3, ~_wgslsmith_mod_i32(-var_4, u_input.b.x), var_4, vec2<i32>(firstLeadingBit(-2147483647i), -var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.x) + _wgslsmith_f_op_f32(230f * var_5.c)))) - var_0.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, 970f, 1107f, var_5.a.x), vec4<f32>(1099f, global0.c, -1112f, var_0.a.x), vec4<bool>(false, true, var_5.b, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_5.c, 1230f, -961f, -1204f), vec4<f32>(1152f, var_5.a.x, 1793f, var_5.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.zy) - _wgslsmith_f_op_vec2_f32(-func_1(var_3, ~(-1i), ~1i, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -10067i), var_5.d.wx)).a.yz)), _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(_wgslsmith_div_f32(761f, _wgslsmith_f_op_f32(floor(global0.c))), _wgslsmith_div_f32(global0.c, var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x + var_0.c))))));
}

