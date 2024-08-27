struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<u32>) -> i32 {
    global0 = array<bool, 8>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-624f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -269f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1203f, 885f)), _wgslsmith_f_op_f32(select(853f, -233f, false))), -264f), 1037f)));
    global0 = array<bool, 8>();
    return _wgslsmith_add_i32(13760i, ~(-1i));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global0 = array<bool, 8>();
    var var_0 = Struct_1(~(~(~func_3(Struct_1(u_input.a), Struct_1(u_input.a), arg_0.yz, vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    let var_1 = select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], true, global0[_wgslsmith_index_u32(87255u, 8u)], true), !select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 8u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(arg_0.x, 8u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], true, global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(1u, 8u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(~1u, 8u)], !global0[_wgslsmith_index_u32(118246u, 8u)], true)), vec4<bool>(_wgslsmith_mult_i32(var_0.a, var_0.a) == min(-2147483647i, var_0.a), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.b)), 8u)], true, true), _wgslsmith_f_op_f32(min(-823f, _wgslsmith_f_op_f32(sign(164f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(908f * -1368f))), !select(select(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(arg_0.x, 8u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(80279u, 8u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(12093u, 8u)], false, global0[_wgslsmith_index_u32(0u, 8u)])), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(76078u, 8u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(52745u, 8u)]), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.x, 8u)], false))), vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(~u_input.b), 8u)], var_0.a == -2147483647i, false, u_input.a >= 2147483647i));
    var_0 = Struct_1(var_0.a);
    global0 = array<bool, 8>();
    return -13211i;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, -55131i, 0i), vec4<i32>(arg_2.x, -2147483647i, 2147483647i, 25457i)), vec4<i32>(15527i, 2147483647i, arg_2.x, u_input.a)), 0i, ~(-arg_2.x)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(min(func_2(vec3<u32>(u_input.b, 1u, u_input.b)), max(u_input.a, u_input.a)) & arg_2.x, _wgslsmith_add_i32(func_3(Struct_1(var_0.a), Struct_1(u_input.a), vec2<u32>(40190u, 35942u), vec3<u32>(u_input.b, arg_3.x, 50564u)), u_input.a)));
    let var_2 = var_1;
    var var_3 = Struct_1(var_1.a);
    let var_4 = -abs(-countOneBits(vec4<i32>(u_input.a, u_input.a, var_0.a, 61507i) & vec4<i32>(16412i, var_0.a, -31068i, 12738i)));
    return Struct_1(~(0i & var_3.a));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_u32(4294967295u, arg_0);
    var var_1 = arg_1;
    var var_2 = arg_2;
    return -186f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(212f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-889f)) + _wgslsmith_f_op_f32(1130f + 399f))), _wgslsmith_f_op_f32(func_4(~_wgslsmith_add_u32(u_input.b, u_input.b), max(vec2<i32>(-6426i, u_input.a), vec2<i32>(-102635i, u_input.a) << (vec2<u32>(54941u, u_input.b) % vec2<u32>(32u))), func_1(_wgslsmith_f_op_f32(round(-1571f)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], true, false, false), global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<i32>(u_input.a, 5907i) & vec2<i32>(u_input.a, u_input.a), vec4<u32>(u_input.b, u_input.b, 35302u, 57249u))))), u_input.b);
}

