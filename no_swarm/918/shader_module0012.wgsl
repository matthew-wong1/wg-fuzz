struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.x);
    var_0 = Struct_1(arg_1.x);
    global0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(false, global0.x, select(global0.x, global0.x, true)), !(!vec3<bool>(false, true, global0.x))));
    global0 = vec3<bool>(true || any(!vec4<bool>(global0.x, global0.x, global0.x, false)), global0.x, !global0.x);
    let var_1 = vec3<i32>(-var_0.a, i32(-1i) * -arg_1.x, -1081i);
    return Struct_1(-(i32(-1i) * -2147483647i));
}

fn func_1() -> bool {
    var var_0 = u_input.a <= (15007u ^ (~u_input.a >> (0u % 32u)));
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)))), vec3<i32>(min(firstTrailingBit(-1i) << (abs(u_input.a) % 32u), max(-834i >> (u_input.a % 32u), -2147483647i)), -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(reverseBits(2147483647i), i32(-1i) * -25136i), ~(-2147483647i))));
    return false;
}

fn func_3() -> vec3<bool> {
    global0 = vec3<bool>(false, true, global0.x);
    global0 = !(!(!select(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(true, false, global0.x), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, false), global0.x))));
    var var_0 = func_2(_wgslsmith_f_op_f32(select(185f, _wgslsmith_f_op_f32(f32(-1f) * -352f), global0.x)), vec3<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-55725i, 0i, 25995i), vec3<i32>(34318i, -30498i, 1i))), ~firstTrailingBit(0i), min(_wgslsmith_div_i32(0i, -33083i << (u_input.a % 32u)), -(~3252i))));
    var_0 = func_2(_wgslsmith_div_f32(-2769f, 1000f), -(~vec3<i32>(select(0i, var_0.a, global0.x), abs(var_0.a), reverseBits(var_0.a))));
    global0 = select(!vec3<bool>(all(!vec3<bool>(true, global0.x, global0.x)), global0.x, !global0.x), !vec3<bool>(global0.x, (108256u <= u_input.a) | global0.x, !(!global0.x)), global0.x);
    return !(!select(!select(vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, true)), !select(vec3<bool>(true, global0.x, false), vec3<bool>(false, true, true), vec3<bool>(true, false, global0.x)), vec3<bool>(global0.x, global0.x, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 44694u;
    global0 = select(vec3<bool>(!global0.x, false, !global0.x), select(select(!vec3<bool>(true, true, global0.x), vec3<bool>(true, true, global0.x), !global0.x), select(vec3<bool>(global0.x, all(global0.xx), global0.x == false), vec3<bool>(!global0.x, func_1(), any(vec3<bool>(true, global0.x, false))), !func_3()), u_input.a > 34449u), !vec3<bool>(all(vec4<bool>(global0.x, global0.x, false, false)), global0.x, false));
    var_0 = max(4294967295u, u_input.a);
    global0 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~u_input.a, u_input.a, ~(~(~vec4<u32>(1u, u_input.a, 16737u, 22788u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 31480u, u_input.a, 74241u), vec4<u32>(u_input.a, u_input.a, u_input.a, 5302u)) % vec4<u32>(32u)))));
}

