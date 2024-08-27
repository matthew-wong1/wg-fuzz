struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32413u;

var<private> global1: Struct_1 = Struct_1(true, -867f);

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(16024i, -7995i, 1i, -4171i), vec4<i32>(-29128i, 1i, i32(-2147483648), 0i));

var<private> global3: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = ~vec2<i32>(u_input.b.x, -2147483647i);
    global1 = arg_2;
    let var_1 = select(vec2<bool>(true, any(vec4<bool>(true, global1.a, true, !arg_2.a))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, arg_2.a)), global1.a), !arg_0.a), select(select(select(vec2<bool>(global1.a, arg_2.a), vec2<bool>(arg_2.a, global1.a), vec2<bool>(global1.a, arg_0.a)), select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), vec2<bool>(true, arg_2.a)), !vec2<bool>(false, arg_2.a)), vec2<bool>(true, !global1.a), 0i >= firstTrailingBit(2147483647i)), any(select(!vec4<bool>(false, arg_2.a, false, true), !vec4<bool>(arg_0.a, true, true, true), vec4<bool>(global1.a, false, true, global1.a)))), _wgslsmith_div_i32(-(i32(-1i) * -1i), u_input.c) > u_input.b.x);
    var var_2 = arg_0;
    var_2 = arg_0;
    return all(vec4<bool>(arg_0.a == (_wgslsmith_div_i32(var_0.x, u_input.d) <= _wgslsmith_clamp_i32(-33925i, var_0.x, 72965i)), arg_2.a, false, var_1.x || global1.a));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = select(countOneBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, 1118u)), u_input.e.wyx)), 1u, !func_3(Struct_1(arg_0.x || true, -700f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -490f) - vec2<f32>(global1.b, global1.b)))), Struct_1(!arg_0.x, global1.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-921f - -1536f)))), global1.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, 1854f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, global1.b) + vec2<f32>(global1.b, 1141f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(195f, var_1))))));
    var var_3 = vec4<bool>(false, !(global1.a && arg_0.x), (u_input.c > countOneBits(_wgslsmith_sub_i32(-1i, -41864i))) && false, any(vec4<bool>(false, all(!vec3<bool>(arg_0.x, arg_0.x, true)), true, !(true & arg_0.x))));
    var var_4 = u_input.b.xxz | u_input.b.xzw;
    return Struct_1(1u != ~_wgslsmith_clamp_u32(1u, min(u_input.e.x, 32947u), _wgslsmith_sub_u32(u_input.e.x, 52625u)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), -170f)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    global3 = arg_3.a;
    global1 = arg_3;
    var var_0 = 39731i;
    let var_1 = func_2(!(!arg_1));
    let var_2 = var_1.a;
    return select(select(vec2<bool>(!(!var_1.a), func_3(Struct_1(false, 270f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, -978f), vec2<f32>(arg_3.b, -1474f), false)), arg_3)), select(arg_1, select(!arg_1, arg_1, any(vec3<bool>(var_2, global1.a, false))), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(329f + -541f))) >= -1007f), select(select(!vec2<bool>(true, global1.a), !arg_1, select(!arg_1, select(vec2<bool>(false, arg_3.a), vec2<bool>(var_1.a, true), vec2<bool>(var_2, false)), false && var_2)), vec2<bool>(true, global1.a), select(vec2<bool>(var_2 && false, true), select(vec2<bool>(true, var_2), arg_1, arg_1), all(select(vec4<bool>(true, arg_1.x, var_2, global1.a), vec4<bool>(arg_3.a, true, true, false), vec4<bool>(var_2, false, var_1.a, arg_1.x))))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(any(select(select(vec3<bool>(false, true, global1.a), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), !vec3<bool>(false, false, global1.a), !vec3<bool>(global1.a, false, true))), any(select(vec2<bool>(false, false), func_1(-1233f, vec2<bool>(global1.a, false), 28641u, Struct_1(true, global1.b)), true)), global1.a, global1.a), select(!vec4<bool>(false, true, global1.a, any(vec3<bool>(false, false, global1.a))), vec4<bool>(!(-487f >= global1.b), false, any(!vec4<bool>(global1.a, global1.a, global1.a, true)), false), select(select(!vec4<bool>(false, global1.a, global1.a, global1.a), select(vec4<bool>(global1.a, false, false, true), vec4<bool>(global1.a, true, true, global1.a), vec4<bool>(false, global1.a, true, false)), vec4<bool>(global1.a, global1.a, global1.a, true)), vec4<bool>(func_1(1359f, vec2<bool>(true, global1.a), u_input.a.x, Struct_1(global1.a, 1285f)).x, true, func_2(vec2<bool>(true, global1.a)).a, any(vec4<bool>(global1.a, global1.a, true, false))), true)), !select(!(!vec4<bool>(global1.a, false, global1.a, true)), vec4<bool>(!global1.a, select(global1.a, global1.a, false), true, any(vec2<bool>(global1.a, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1347f, 340f) * vec2<f32>(global1.b, global1.b))))), 2147483647i);
}

