struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 51167i, i32(-2147483648));

var<private> global1: vec3<i32> = vec3<i32>(-20846i, -10409i, 3132i);

var<private> global2: Struct_4;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = 4294967295u;
    let var_1 = Struct_4(Struct_3(global2.b.a, global2.a.b, _wgslsmith_dot_vec3_u32(select(~global2.b.d, vec3<u32>(var_0, var_0, global2.b.d.x), vec3<bool>(arg_3.x, false, arg_3.x)), vec3<u32>(u_input.a, u_input.a, 1u)), (vec3<u32>(global2.a.d.x, 43682u, 57275u) & (vec3<u32>(32866u, 2876u, arg_2.b) ^ global2.b.d)) ^ vec3<u32>(select(var_0, 13940u, arg_3.x), u_input.a, 102146u)), global2.b);
    return !select(select(vec4<bool>(global2.a.b.b.x, arg_2.c, global2.b.b.b.x | true, false), !vec4<bool>(false, true, true, arg_2.d.x), select(!vec4<bool>(arg_3.x, global2.a.b.b.x, arg_3.x, false), vec4<bool>(global2.b.b.b.x, global2.b.b.b.x, arg_2.d.x, false), vec4<bool>(false, false, arg_2.c, false))), select(select(select(vec4<bool>(false, arg_2.d.x, arg_2.d.x, false), vec4<bool>(true, true, global2.a.b.b.x, true), vec4<bool>(var_1.a.b.a.d.x, false, false, true)), vec4<bool>(arg_2.c, true, arg_2.d.x, global2.b.b.a.d.x), select(vec4<bool>(var_1.a.b.a.d.x, false, arg_3.x, arg_2.c), vec4<bool>(global2.b.b.b.x, true, var_1.b.b.a.c, var_1.b.b.c), true)), select(vec4<bool>(true, arg_3.x, true, true), select(vec4<bool>(arg_2.c, var_1.b.b.b.x, true, arg_2.c), vec4<bool>(false, var_1.a.b.b.x, global2.a.b.c, arg_3.x), arg_2.d.x), 1900f != var_1.a.a), vec4<bool>(false, var_1.a.b.c, arg_2.c, any(arg_3))), var_1.a.b.c);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    var var_0 = !(!select(!func_3(vec2<i32>(u_input.c, global2.a.b.a.a.x), vec3<f32>(-2430f, -1063f, arg_1), Struct_1(vec3<i32>(32i, global2.b.b.a.a.x, 16819i), 25782u, true, global2.b.b.b), vec3<bool>(false, false, global2.a.b.a.c)), vec4<bool>(false, any(vec4<bool>(false, false, global2.a.b.a.c, false)), !global2.a.b.b.x, true), !(!vec4<bool>(false, global2.b.b.b.x, global2.a.b.c, true))));
    var var_1 = select(var_0.wy, var_0.wz, !select(!select(vec2<bool>(false, global2.b.b.c), var_0.wy, vec2<bool>(global2.a.b.c, var_0.x)), vec2<bool>(var_0.x, false), true));
    global1 = global2.b.b.a.a;
    var var_2 = global2.a.b;
    var var_3 = vec4<bool>(any(select(select(func_3(vec2<i32>(24996i, 24982i), vec3<f32>(-2169f, -1000f, -1074f), Struct_1(var_2.a.a, u_input.a, global2.b.b.a.d.x, global2.b.b.a.d), var_0.yzz), vec4<bool>(false, var_1.x, false, var_0.x), !var_0.x), select(select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(false, global2.b.b.c, true, global2.b.b.c), vec4<bool>(true, global2.a.b.c, false, true)), select(vec4<bool>(var_2.b.x, var_1.x, false, false), vec4<bool>(var_0.x, true, false, var_1.x), vec4<bool>(true, false, var_2.b.x, var_1.x)), !vec4<bool>(var_2.c, var_0.x, false, false)), !select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_2.b.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_2.a.d.x, global2.a.b.a.c, global2.b.b.b.x)))), var_2.b.x, true, false);
    return ~(~abs(firstLeadingBit(1u)));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = true;
    var var_1 = firstTrailingBit(_wgslsmith_add_vec3_u32(global2.a.d, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), global2.a.d), vec3<u32>(25634u, 16761u, u_input.a)), ~vec3<u32>(34878u, global2.a.d.x, 4294967295u) & vec3<u32>(40690u, 32483u, global2.b.b.a.b))));
    let var_2 = ~reverseBits(global2.b.d.x ^ 1u);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -204f)) + 242f), global2.b.b, func_2(select(countOneBits(-vec2<i32>(global2.a.b.a.a.x, u_input.c)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, global1.x) << (var_1.zx % vec2<u32>(32u)), ~global1.xz), vec2<bool>(all(arg_0.xwy), true)), global2.b.a), vec3<u32>(~18532u, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(31397u, u_input.a)), 4294967295u) | global2.b.d);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - -679f) != _wgslsmith_f_op_f32(2124f - _wgslsmith_div_f32(global2.b.a, -386f));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-48511i, -1i, _wgslsmith_clamp_i32(-1i, -59202i, func_1(vec4<bool>(true, true, u_input.a != 14171u, all(vec2<bool>(global2.a.b.b.x, global2.a.b.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1754f, global2.b.a, global2.b.a, global2.b.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-957f, 807f, -1000f, -826f) * vec4<f32>(global2.b.a, global2.b.a, -768f, global2.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.a, global2.a.a, global2.b.a, 926f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a, 191f, -1567f, 588f) - vec4<f32>(-1908f, global2.b.a, 969f, 772f)))) * vec4<f32>(_wgslsmith_f_op_f32(631f - -560f), -343f, _wgslsmith_div_f32(-1732f, 514f), global2.a.a))));
}

