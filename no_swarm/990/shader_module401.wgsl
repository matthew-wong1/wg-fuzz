struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-3754i, true, vec2<bool>(true, false), -6858i);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = global1.x;
    global1 = vec2<bool>(false, true);
    var var_1 = !vec4<bool>(global0.c.x | true, all(vec3<bool>(!global0.b, true, !global0.b)), select(global0.c.x, -1i > global0.a, global1.x), false);
    var var_2 = global2[_wgslsmith_index_u32(106307u, 5u)];
    var var_3 = global2[_wgslsmith_index_u32(87880u, 5u)];
    return ~(~4294967295u);
}

fn func_2() -> i32 {
    global2 = array<Struct_1, 5>();
    global0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(9175i, global0.d), vec2<i32>(u_input.c.x, global0.a)), 1i), global0.a), global1.x, !(!global0.c), global0.a);
    var var_0 = any(select(!vec3<bool>(true, any(global0.c), !global1.x), select(!(!vec3<bool>(true, global1.x, global1.x)), !vec3<bool>(global1.x, true, global1.x), select(select(vec3<bool>(global0.b, global0.b, global1.x), vec3<bool>(false, global1.x, true), false), !vec3<bool>(global0.b, global1.x, global0.b), vec3<bool>(global1.x, false, false))), any(vec2<bool>(global1.x, any(vec2<bool>(global1.x, true))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1081f)));
    global1 = !select(!vec2<bool>(all(global0.c), all(vec3<bool>(false, false, global0.c.x))), vec2<bool>(false, global1.x), global0.c);
    return -(~(abs(~(-2147483647i)) >> (_wgslsmith_div_u32(func_3(), 14821u | u_input.d) % 32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(~(-10461i)), -(arg_1.a << (24144u % 32u))), _wgslsmith_sub_i32(global0.d, _wgslsmith_mod_i32(~u_input.c.x, 16599i)), -2147483647i), -53891i, reverseBits(_wgslsmith_mult_i32(func_2(), global0.d)));
    var_0 = !any(vec2<bool>(true, arg_1.c.x));
    global1 = !vec2<bool>(false, all(vec4<bool>(arg_0, !global0.b, global0.c.x, any(vec4<bool>(true, true, false, global0.c.x)))));
    var_1 = -(vec3<i32>(~(-global0.d), -31526i, reverseBits(-global0.d)) ^ vec3<i32>(-6135i, u_input.c.x, -59161i));
    return Struct_1(15871i, !arg_0, select(vec2<bool>(-var_1.x > 35667i, false), global0.c, !arg_1.b), -1i);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = arg_3.a;
    var var_1 = u_input.c.wxy;
    var_0 = -2147483647i;
    var var_2 = u_input.c.x;
    var var_3 = arg_3;
    return StorageBuffer(~vec2<u32>(~24348u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22380u, u_input.b, u_input.d) ^ vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), countOneBits(vec4<u32>(44348u, 41845u, 28798u, u_input.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(830f)), _wgslsmith_f_op_f32(1407f - -1128f), _wgslsmith_f_op_f32(step(arg_2, 1669f)), -566f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 658f, 595f, 1479f) * vec4<f32>(151f, 933f, 269f, -598f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, select(global0.b && !(!global0.b), all(!vec4<bool>(false, true, global1.x, global0.b)) | !(0u != u_input.a), max(4294967295u, abs(28212u)) <= u_input.d), vec2<bool>(!global1.x, false), u_input.c.x);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-837f - -1632f), func_1((46892u == ~u_input.d) == (_wgslsmith_f_op_f32(ceil(-1274f)) < _wgslsmith_f_op_f32(469f + 407f)), Struct_1(25144i, var_0.c.x, vec2<bool>(all(vec3<bool>(global0.c.x, global1.x, false)), all(vec2<bool>(var_0.b, global0.b))), i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(195f * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-294f))))), func_1(!all(select(vec2<bool>(false, global1.x), vec2<bool>(var_0.c.x, true), global1.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.d, u_input.b, 1u, u_input.a)), select(min(vec4<u32>(1108u, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.b, u_input.b, 1383u, u_input.d)), vec4<u32>(5820u, 1u, u_input.b, 4294967295u) << (vec4<u32>(1u, u_input.d, 1u, 4294967295u) % vec4<u32>(32u)), false)), 5u)]));
}

