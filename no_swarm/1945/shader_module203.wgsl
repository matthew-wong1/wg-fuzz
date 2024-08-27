struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = arg_0.x;
    var_0 = -((i32(-1i) * -u_input.a.x) | -28807i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-668f))), 1u, ~vec2<u32>(29053u, 103532u), 1i, !vec3<bool>(all(vec3<bool>(true, true, true)), true | select(true, true, true), true));
    let var_2 = min(select(u_input.a.xz, vec2<i32>(arg_0.x, -arg_0.x), false), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 0i ^ var_1.d), vec3<i32>(0i, 13515i, var_1.d)), ~abs(min(82861i, var_1.d))));
    global1 = ~_wgslsmith_add_i32(7093i, ~(-(-2147483647i | u_input.a.x)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -995f))))))));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.a;
    var var_1 = abs(~(~arg_0.a.c));
    var var_2 = arg_0;
    var_1 = ~abs(~select(_wgslsmith_mod_vec2_u32(var_2.a.c, vec2<u32>(arg_0.a.c.x, 2879u)), var_0.c, var_2.a.e.xz));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(reverseBits(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1498f)), all(arg_0.a.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    return !(true || arg_0.a.e.x);
}

fn func_1() -> i32 {
    var var_0 = select(all(vec2<bool>(true, false)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(Struct_2(Struct_1(-1470f, 4294967295u, vec2<u32>(4294967295u, 0u), u_input.a.x, vec3<bool>(true, true, true)))))), true);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(338f, -1744f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 4294967295u, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(49605u, 0u, 22328u), reverseBits(67568u)), countOneBits(select(vec2<u32>(0u, 46775u), vec2<u32>(4294967295u, 42466u), true))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(17248i, u_input.a.x, u_input.a.x)), ~(~vec3<i32>(-634i, 1i, u_input.a.x))), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    let var_2 = var_1.a.a;
    let var_3 = u_input.a;
    var var_4 = Struct_1(var_1.a.a, _wgslsmith_add_u32(abs(1u), (~4294967295u << (~var_1.a.b % 32u)) >> (42104u % 32u)), vec2<u32>(~1u, 1u), _wgslsmith_dot_vec4_i32(-select(-vec4<i32>(-2147483647i, u_input.a.x, 10136i, 19617i), vec4<i32>(var_1.a.d, -12735i, -1i, 14062i), true), ~firstTrailingBit(vec4<i32>(0i, var_3.x, u_input.a.x, -25690i))), var_1.a.e);
    return u_input.a.x | ~(-_wgslsmith_sub_i32(-24732i, 1738i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = max(-1i, -func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-7919i, -6798i ^ u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_div_vec3_u32(~max(~vec3<u32>(1u, 1u, 4294967295u), min(vec3<u32>(90694u, 34557u, 1u), vec3<u32>(23005u, 4294967295u, 36496u))), vec3<u32>(1u, 1u, 1u)));
}

