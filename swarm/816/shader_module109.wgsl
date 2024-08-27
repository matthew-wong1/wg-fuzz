struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = countOneBits(19532u);
    return -163f;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(_wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-222f, -744f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f + 242f) - -2161f) - -974f)));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 57863u), 3u)];
    let var_2 = abs(abs(0u));
    global0 = array<Struct_1, 3>();
    var var_3 = 33488u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1901f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-316f, arg_0.a.x)) - 1000f))), _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, arg_0.c, arg_0.c, u_input.a.x)), ~(-vec4<i32>(u_input.a.x, arg_0.c, 1i, -2147483647i))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_div_f32(-351f, 698f)), 440f), var_0.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(-57175i, var_0.c), arg_0.c), firstLeadingBit(vec2<i32>(firstLeadingBit(var_0.c), var_0.c))));
    var var_2 = 57355u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 132f) - vec2<f32>(arg_0.b, arg_0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-664f, arg_0.a.x) - vec2<f32>(arg_0.a.x, -1400f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f - var_0.b)), -1i);
    global0 = array<Struct_1, 3>();
    return var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.x, 1575f))) + _wgslsmith_f_op_vec2_f32(max(arg_2, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1.xz + arg_0.a)))))), arg_1.x, -(i32(-1i) * -arg_0.c));
    var var_1 = 461f;
    var var_2 = var_0.a.x;
    let var_3 = firstLeadingBit(~(~(-9881i)));
    var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3()), -1372f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, arg_2.x)), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.c, arg_0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1689i, u_input.a.x, arg_0.c), vec3<i32>(var_3, u_input.a.x, u_input.a.x))), firstTrailingBit(var_3) | select(var_3, arg_0.c, false))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3, arg_3), abs(vec3<u32>(arg_3, arg_3, 79670u))), 32605u) << (firstTrailingBit(countOneBits(vec2<u32>(arg_3, arg_3))) % vec2<u32>(32u))));
    return var_0;
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-406f, -2565f), vec2<f32>(352f, arg_0.a.x))) * vec2<f32>(-1472f, arg_0.b)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(arg_0.a.x, -153f)))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-820f * -726f))) * func_2(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.a.x, arg_0.b, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)), 47246u >> (0u % 32u)).a.x), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, arg_0.b, arg_0.a.x, -2630f)), vec4<f32>(-1000f, -725f, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-607f, 380f, -419f, arg_0.a.x))), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(148f, 513f, arg_0.a.x, 1045f)) * vec4<f32>(1689f, -958f, 660f, arg_0.b)))), vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -644f)), 0u);
    global0 = array<Struct_1, 3>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-186f + _wgslsmith_f_op_f32(sign(548f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1313f, var_0.a.x))))) + _wgslsmith_f_op_f32(1236f + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -1000f)))));
    global0 = array<Struct_1, 3>();
    let var_2 = 1u;
    return all(!(!vec2<bool>(true, arg_0.b >= 729f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = ~(-vec2<i32>(u_input.a.x, -2147483647i));
    global0 = array<Struct_1, 3>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(u_input.a)))));
    let var_2 = _wgslsmith_mult_i32(min(var_0.x, var_0.x), u_input.a.x);
    var var_3 = !vec2<bool>(!func_5(func_2(Struct_1(vec2<f32>(929f, -611f), -1915f, var_2), vec4<f32>(2269f, 750f, -400f, -372f), vec2<f32>(-630f, -1051f), 1u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~24803u, 0u, ~4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -924f));
}

