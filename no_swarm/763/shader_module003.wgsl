struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: array<vec2<f32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1101f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 32u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)] - -452f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(u_input.b.x, u_input.b.x), 32u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] - -553f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2, arg_2) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(-889f, arg_2.x, arg_1.b.x, -965f) * arg_1.b), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-arg_2)))), abs(abs(~(vec2<u32>(1u, 42955u) & arg_1.c))), countOneBits(countOneBits(u_input.b.x)));
    global0 = array<f32, 32>();
    let var_1 = select(select(vec3<bool>((var_0.b.x > arg_2.x) && true, any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false))), select(vec3<bool>(arg_0 >= -27875i, any(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true)), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), true), !vec3<bool>(any(vec4<bool>(false, true, true, false)), arg_1.b.x == 460f, true), select(true, false, all(vec2<bool>(true, false))) | select(any(vec2<bool>(true, true)), false, true)));
    var var_2 = Struct_1(select(~_wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, arg_1.c.x), vec2<u32>(arg_1.a.x, u_input.b.x), vec2<bool>(var_1.x, var_1.x)), ~u_input.b), abs(~abs(arg_1.a)), any(var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-181f * arg_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(-251f, -13712i)), 2121f)), _wgslsmith_f_op_f32(max(var_0.b.x, -709f)), _wgslsmith_f_op_f32(round(-636f)))), vec2<u32>(~arg_1.c.x, u_input.b.x), arg_1.a.x);
    global0 = array<f32, 32>();
    return select(vec4<bool>(!(!any(var_1)), any(vec4<bool>(true, !var_1.x, any(var_1.zz), false)), !select(true, false, true), false), !(!vec4<bool>(false, true, all(var_1), any(var_1))), any(!(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    var var_0 = u_input.b.x;
    var_0 = 47572u;
    return select(select(vec4<bool>(true, true, !all(vec2<bool>(false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), func_4(-(~2147483647i), Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(9663u, 32u)], -1267f, arg_0.b.x, arg_0.b.x))), u_input.b >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), u_input.b.x | u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 32u)], u_input.a.x)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_0.c.x, 32u)])), _wgslsmith_div_f32(-137f, arg_0.b.x), arg_0.b.x)), vec4<bool>(true, any(vec2<bool>(true, true)), true, 1879f == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.d, 32u)]))), select(!select(func_4(u_input.a.x, arg_0, vec4<f32>(arg_0.b.x, -1000f, global0[_wgslsmith_index_u32(13257u, 32u)], global0[_wgslsmith_index_u32(98757u, 32u)])), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), !select(select(true, true, true), func_4(1459i, arg_0, arg_0.b).x, any(vec2<bool>(true, false)))), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>) -> i32 {
    let var_0 = vec3<u32>(1u, 60902u ^ _wgslsmith_dot_vec3_u32(abs(~arg_1.yzw), ~(~arg_1.www)), u_input.b.x);
    var var_1 = Struct_1(var_0.zx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(arg_1.x, 4294967295u), firstLeadingBit(arg_1.x)), 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.x, 32u)])))), countOneBits(vec2<u32>(4294967295u, 1u)), ~_wgslsmith_add_u32(arg_1.x, _wgslsmith_add_u32(select(arg_1.x, var_0.x, arg_0.x), 16527u)));
    return u_input.a.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_mod_i32(abs(-36216i), _wgslsmith_sub_i32(func_5(func_2(Struct_1(arg_1.c, arg_1.b, vec2<u32>(arg_2.x, 28458u), 15910u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), vec4<u32>(arg_2.x, 37115u, 1u, 5181u)), max(26200u, 1u), u_input.b.x)), firstLeadingBit(1i)));
    let var_1 = Struct_1(reverseBits(vec2<u32>(64465u, firstLeadingBit(arg_2.x))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]), arg_0.x, 931f, 959f), abs(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(3631u, arg_1.a.x), arg_1.a), ~(~vec2<u32>(arg_2.x, u_input.b.x)))), ~arg_1.d);
    let var_2 = arg_1;
    let var_3 = var_1;
    global0 = array<f32, 32>();
    return _wgslsmith_mod_i32(1776i, firstTrailingBit(reverseBits(1i)) & ~(u_input.a.x >> (_wgslsmith_mult_u32(1u, 0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(select(u_input.b.x, 62300u, false), 32u)];
    let var_1 = 0u;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1071f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] * -1821f))) + _wgslsmith_f_op_f32(step(1121f, -1112f)))));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(~func_1(vec3<f32>(global0[_wgslsmith_index_u32(var_1, 32u)], 1371f, global0[_wgslsmith_index_u32(58065u, 32u)]), Struct_1(vec2<u32>(var_1, 0u), vec4<f32>(-826f, 1075f, global0[_wgslsmith_index_u32(43176u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), u_input.b, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec4<bool>(false, true, true, true)), ~u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i) & vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, u_input.a.x))), u_input.a.x);
    let var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -841f))))), -u_input.a.x);
}

