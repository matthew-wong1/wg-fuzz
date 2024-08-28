struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> bool {
    global1 = Struct_1(select(!(!select(global1.a, vec3<bool>(true, global1.a.x, global1.a.x), false)), global0[_wgslsmith_index_u32(52751u, 7u)], global1.a.x), countOneBits(~(~(21632u >> (global1.b % 32u)))));
    var var_0 = ~(~(~_wgslsmith_dot_vec2_i32(max(vec2<i32>(5256i, -1i), vec2<i32>(u_input.e.x, 23312i)), u_input.e)));
    global0 = array<vec3<bool>, 7>();
    let var_1 = select(abs(_wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(0i, u_input.e.x, 0i, u_input.e.x)), vec4<i32>(u_input.e.x, ~(-51473i), 33514i, 13584i), min(-vec4<i32>(u_input.e.x, u_input.e.x, 29557i, 2147483647i), ~vec4<i32>(u_input.e.x, -22079i, u_input.e.x, u_input.e.x)))), select(-(~vec4<i32>(-1i, 2147483647i, 0i, u_input.e.x)), vec4<i32>(u_input.e.x, u_input.e.x << (arg_1 % 32u), countOneBits(-5872i), u_input.e.x) >> ((vec4<u32>(1u, 14923u, global1.b, u_input.c) & vec4<u32>(arg_1, 1u, global1.b, 35598u)) % vec4<u32>(32u)), !select(vec4<bool>(true, false, false, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), !vec4<bool>(false, false, global1.a.x, global1.a.x))), false);
    global0 = array<vec3<bool>, 7>();
    return global1.a.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 7>();
    var var_0 = Struct_1(select(global1.a, !vec3<bool>(global1.a.x, false, false), true), max(1u, u_input.d));
    var var_1 = any(!(!vec3<bool>(all(vec4<bool>(var_0.a.x, true, var_0.a.x, global1.a.x)), global1.a.x, global1.a.x)));
    var var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(1135f + _wgslsmith_f_op_f32(floor(-505f))) <= 1f, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-475f, -465f, 659f, 882f), vec4<f32>(-1000f, 1431f, -868f, 1000f), vec4<bool>(false, true, false, true)))), ~(global1.b >> (16764u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1414f)), all(select(global1.a.yz, var_0.a.xx, select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, true), var_0.a.zz)))), 4294967295u);
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(global1.b, 7u)], _wgslsmith_dot_vec4_u32(vec4<u32>(~(~13392u), 0u, _wgslsmith_add_u32(firstTrailingBit(8986u), abs(var_0.b)), var_0.b), abs(vec4<u32>(var_0.b, ~4294967295u, 1u, global1.b >> (var_0.b % 32u)))));
    return Struct_1(vec3<bool>(global1.a.x, all(select(!vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), !vec4<bool>(false, true, var_2.a.x, false), true)), true), 42039u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    global1 = func_2();
    var var_0 = abs(arg_0.wxy);
    let var_1 = Struct_1(vec3<bool>(arg_1.a.x, arg_1.a.x, false), arg_1.b);
    var var_2 = func_2();
    global0 = array<vec3<bool>, 7>();
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global1.b);
    let var_1 = Struct_1(vec3<bool>(true, !global1.a.x, _wgslsmith_mult_i32(2147483647i, func_1(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), 90963u), u_input.e, u_input.e.x)) != u_input.e.x), u_input.d);
    global1 = func_2();
    var var_2 = Struct_1(vec3<bool>(true, true, true), ~var_1.b);
    var var_3 = vec3<bool>(false, global1.a.x, all(!(!select(vec4<bool>(false, global1.a.x, true, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), true))));
    var var_4 = var_3.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.e.x, min(max(-2147483647i, -2147483647i & u_input.e.x), u_input.e.x | (0i & u_input.e.x))), vec3<u32>(~abs(18549u) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, var_0), ~18111u) % 32u), var_2.b, var_1.b));
}

