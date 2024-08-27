struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_1);
    return arg_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    global0 = ~(-(vec4<i32>(_wgslsmith_mult_i32(global0.x, arg_1), func_2(49589u, u_input.a, Struct_1(arg_0.wyz, 34128u, arg_2.x, arg_2.x)), global0.x, -7635i) & _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 1i, -4032i), vec4<i32>(-9444i, -6722i, global1[_wgslsmith_index_u32(0u, 16u)], -1i) << (vec4<u32>(140806u, 0u, u_input.b, u_input.b) % vec4<u32>(32u)))));
    global1 = array<i32, 16>();
    var var_0 = Struct_3(Struct_2(min(arg_1, firstLeadingBit(abs(40466i)))), _wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_mult_vec3_i32(max(-global0.xww, global0.wyx), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(37468u, 16u)], 2147483647i), global0.yxz)) ^ vec3<i32>(u_input.a, (-1i & arg_1) << ((u_input.b << (26628u % 32u)) % 32u), _wgslsmith_mod_i32(max(0i, global1[_wgslsmith_index_u32(5118u, 16u)]), u_input.a)), Struct_2(_wgslsmith_add_i32(arg_1, _wgslsmith_add_i32(countOneBits(arg_1), min(global0.x, arg_1)))));
    let var_1 = select(-1i, 0i, !(!(arg_2.x == true)));
    var_0 = Struct_3(Struct_2(-(~(~1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.b.x, var_0.b.x, 1000f)), vec4<f32>(-606f, arg_0.x, -1126f, arg_0.x), select(arg_2, vec4<bool>(arg_2.x, arg_2.x, true, false), arg_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.b, vec4<f32>(1346f, var_0.b.x, -474f, -1509f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(var_0.b.x, var_0.b.x, 713f, -328f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -580f, var_0.b.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(ceil(arg_0))), !arg_2))), ~vec3<i32>(1i, ~global1[_wgslsmith_index_u32(u_input.b, 16u)], -var_0.d.a) & _wgslsmith_mult_vec3_i32(global0.xzw, -(global0.xxw | global0.yyy)), var_0.a);
    return _wgslsmith_f_op_f32(trunc(arg_0.x));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b, 16u)] | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.b, 1u, 16273u, u_input.b), vec4<u32>(18930u, 4294967295u, u_input.b, 1u)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<u32>(34401u, reverseBits(43178u), ~u_input.b | u_input.b, 56841u | _wgslsmith_mult_u32(86437u, u_input.b))), 16u)];
    var var_1 = reverseBits(7365u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1124f * 1463f)))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), 1699f));
    let var_3 = 58953u;
    var_1 = select(~13531u, var_3, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1137f, arg_1, arg_1, arg_1))), 1i, select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0.x, true, arg_0.x, true), false), arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-188f - -864f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-568f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f + -1141f)))), _wgslsmith_f_op_f32(func_3(!vec2<bool>(true, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(-2147f, 183f, 439f, -314f), -46i, vec4<bool>(false, true, true, true), true))) - _wgslsmith_f_op_f32(2067f * -465f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(select(-965f, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), 424f)), all(vec2<bool>(true, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-736f, -1000f)) - _wgslsmith_f_op_f32(433f * _wgslsmith_f_op_f32(floor(716f))))), _wgslsmith_f_op_f32(sign(-504f)));
    let var_1 = Struct_1(var_0.zwy, 0u, true, any(vec2<bool>(true, true)));
    global1 = array<i32, 16>();
    let var_2 = -(~vec2<i32>(_wgslsmith_dot_vec2_i32(abs(global0.zw), global0.xw), -2147483647i));
    var var_3 = ~_wgslsmith_add_i32(-1i, -(~global1[_wgslsmith_index_u32(var_1.b, 16u)] & 1i));
    global1 = array<i32, 16>();
    let var_4 = -28904i & (global0.x >> (_wgslsmith_mod_u32(1u, max(4294967295u, ~17386u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-max(vec2<i32>(-4531i, var_4), var_2), global1[_wgslsmith_index_u32(var_1.b, 16u)]);
}

