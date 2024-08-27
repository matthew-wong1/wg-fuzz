struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = ~u_input.c;
    var var_1 = Struct_1(firstLeadingBit(~vec4<u32>(22942u, ~22196u, u_input.a, 4294967295u)), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), all(vec2<bool>(true, true)), false, select(true, 2965u > u_input.a, true)));
    var var_2 = ~(i32(-1i) * -1i);
    var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(44256u, var_1.a.x, var_1.a.x, 32813u))), var_1.a, var_1.a), var_1.b);
    let var_3 = Struct_1(var_1.a, var_1.b);
    return vec4<bool>(!(!var_3.b.x & all(select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), var_3.b, vec4<bool>(var_1.b.x, true, false, false)))), var_3.b.x, all(var_1.b.yx), !any(var_1.b.xwx));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = arg_1 == abs(-2147483647i);
    let var_1 = Struct_1(vec4<u32>(~(~4294967295u), u_input.b.x, _wgslsmith_mult_u32(~abs(44713u), arg_2), arg_2), vec4<bool>(var_0, false, true, any(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), var_0))));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -496f) * vec3<f32>(arg_0, -1135f, 292f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-794f, 1288f, arg_0))), _wgslsmith_div_vec3_f32(vec3<f32>(-919f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, 174f)))));
    let var_3 = var_1;
    let var_4 = ~arg_1 ^ arg_1;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, vec4<bool>(any(vec3<bool>(true, true, true)) == all(vec3<bool>(true, false, false)), arg_0.b.x & false, all(arg_0.b.wy), true));
    var var_1 = Struct_1(~vec4<u32>(arg_1, _wgslsmith_mod_u32(~var_0.a.x, 2407u), arg_0.a.x, 0u), !(!vec4<bool>(var_0.b.x || false, all(vec3<bool>(var_0.b.x, var_0.b.x, true)), 25985i <= u_input.d.x, func_2(627f, u_input.d.x, 0u))));
    return arg_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = -192f;
    let var_1 = func_1(Struct_1(vec4<u32>(arg_0.x, ~19609u, ~4294967295u, ~arg_0.x) >> (vec4<u32>(1u, 1u, 45654u & u_input.b.x, 1u) % vec4<u32>(32u)), !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, -1573f, -744f)))), 117212u);
    var var_2 = var_1.b.xz;
    let var_3 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.d.wzw, u_input.c.zyy)) & -_wgslsmith_mod_i32(u_input.c.x, (u_input.d.x | u_input.d.x) | -u_input.d.x);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1247f));
    return ~arg_1.a.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(u_input.a), 1u, u_input.a, _wgslsmith_dot_vec2_u32(min(u_input.b.xz, u_input.b.zy ^ vec2<u32>(u_input.a, 20748u)), func_4(vec4<u32>(u_input.a, 1u, u_input.a, 20743u), func_1(Struct_1(vec4<u32>(75277u, 1u, u_input.b.x, 0u), vec4<bool>(false, false, false, true)), 0u)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1436f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1799f + 2055f), _wgslsmith_f_op_f32(-280f - 1070f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f * -407f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(729f)))), u_input.d.x == (u_input.c.x << (_wgslsmith_mult_u32(0u, u_input.b.x) % 32u)))), _wgslsmith_div_u32(countOneBits(~u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x >> (u_input.a % 32u), u_input.b.x | 0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2368f + 1063f)))))));
}

