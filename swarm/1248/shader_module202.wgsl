struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: bool;

var<private> global4: f32 = -1049f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = firstTrailingBit(global1.d.x) | 84911u;
    let var_1 = global0.d.x;
    var var_2 = select(vec4<i32>(-2147483647i, 4758i, 2147483647i, 2147483647i), firstLeadingBit(abs(_wgslsmith_add_vec4_i32(vec4<i32>(global1.e, -2147483647i, -16953i, global1.e), select(vec4<i32>(2147483647i, global0.e, 15114i, global1.e), u_input.b, true)))), !select(vec4<bool>(!arg_1.x, any(vec4<bool>(global1.a.x, false, global0.a.x, global1.a.x)), global1.a.x, 132f < global0.c), vec4<bool>(global1.a.x, select(false, false, false), global0.a.x, global1.a.x), select(select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(arg_1.x, true, false, true)), select(vec4<bool>(true, false, global1.a.x, arg_1.x), vec4<bool>(global1.a.x, arg_1.x, true, false), vec4<bool>(global1.a.x, false, true, true)), all(vec3<bool>(global1.a.x, global0.a.x, global0.a.x)))));
    let var_3 = Struct_1(global1.a, abs(_wgslsmith_mult_u32(var_0, global1.d.x)), _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(-global1.c))), ~(vec4<u32>(countOneBits(12809u), global0.d.x, 40290u, ~global1.b) ^ vec4<u32>(_wgslsmith_add_u32(var_0, 20502u), ~48969u, ~41833u, countOneBits(70845u))), _wgslsmith_add_i32(global0.e, var_2.x));
    let var_4 = global0.a.x;
    return !(!vec4<bool>(any(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(false, true, global1.a.x, global0.a.x), true)), any(select(global0.a, arg_1, global0.a)), true, global1.c == _wgslsmith_div_f32(-410f, global0.c)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    return false && any(vec4<bool>(!(global1.d.x <= 1u), false, true, all(func_3(1u, global0.a))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    return select(global1.d.x, arg_2.b, func_2(arg_0, arg_2, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(0u, global1.b);
    global1 = Struct_1(!global1.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(global1.c * -328f)), true))), select(~vec4<u32>(1u, ~global1.d.x, global1.b, global0.b), _wgslsmith_div_vec4_u32(vec4<u32>(global1.b << (21100u % 32u), func_1(Struct_1(vec3<bool>(true, true, global1.a.x), 1232u, 1466f, vec4<u32>(1u, 0u, global0.d.x, 1u), u_input.a.x), 2147483647i, Struct_1(global0.a, global1.b, global0.c, global1.d, global0.e)), global0.b, ~60401u), ~max(vec4<u32>(global1.b, global1.b, global0.d.x, global0.d.x), global1.d)), !select(select(vec4<bool>(true, global1.a.x, global0.a.x, false), vec4<bool>(true, global0.a.x, true, true), vec4<bool>(global1.a.x, true, global1.a.x, false)), !vec4<bool>(global0.a.x, global0.a.x, global1.a.x, global1.a.x), global0.a.x && global1.a.x)), 1i);
    let var_1 = 1i;
    global2 = u_input.b.x;
    var var_2 = firstTrailingBit(global0.b);
    var var_3 = -305f;
    var var_4 = Struct_1(!global1.a, global0.b, -773f, _wgslsmith_clamp_vec4_u32(global0.d, ~global0.d, vec4<u32>(0u, 20956u, global1.d.x, ~(~4294967295u))), global1.e);
    let var_5 = ~(-23900i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c)), 490f, vec2<i32>(-30866i, ~min(var_5, abs(-35294i))), ~(~vec4<u32>(_wgslsmith_mult_u32(global1.d.x, var_4.b), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global1.b, var_4.b), var_4.d.wyz), var_4.b, 10100u)), global1.c);
}

