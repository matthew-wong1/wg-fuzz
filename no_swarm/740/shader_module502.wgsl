struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    return -628f;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = 1u;
    let var_1 = any(!vec4<bool>(true, true, true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    let var_2 = Struct_1(countOneBits(u_input.a), var_1);
    let var_3 = var_1;
    var var_4 = Struct_1(firstLeadingBit(-abs(countOneBits(var_2.a))), all(!(!vec2<bool>(var_2.b, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1026f, 392f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1540f) - _wgslsmith_f_op_f32(arg_1 * arg_1)), arg_1))) * -797f);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.x, -115f, vec3<f32>(-1249f, -507f, -2611f)))), _wgslsmith_f_op_f32(max(-310f, -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1939f, -1585f, false)), -417f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(302f + -365f) + -346f) * 344f), 1f, _wgslsmith_f_op_f32(func_3(~abs(arg_2.x), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(615f, -114f, -337f) + vec3<f32>(624f, 1000f, 611f)))))), -267f));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, arg_1), arg_1 << (arg_2.x % 32u)), arg_1 << (4294967295u % 32u)), u_input.b.x, ~101921u, arg_2.x) << (vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.b.zzw, max(vec3<u32>(u_input.b.x, arg_1, 1u), arg_2.wzw))), arg_2.x, ~(~max(arg_1, 35922u)), firstTrailingBit(~arg_2.x)) % vec4<u32>(32u));
    var var_2 = ~arg_2;
    var_1 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(~arg_1, arg_1 ^ 4294967295u, var_2.x, var_1.x), vec4<u32>(5242u, arg_1, arg_2.x, var_1.x) >> (~vec4<u32>(arg_1, u_input.b.x, 9368u, 25208u) % vec4<u32>(32u))) | vec4<u32>(18530u, ~_wgslsmith_div_u32(arg_2.x, 35571u), (var_2.x | u_input.b.x) << (39445u % 32u), (var_2.x | arg_1) << (~var_1.x % 32u)));
    let var_3 = Struct_1(u_input.a, false);
    return -_wgslsmith_dot_vec3_i32(~vec3<i32>(~u_input.a, reverseBits(var_3.a), _wgslsmith_sub_i32(-2147483647i, u_input.a)), -(~(-vec3<i32>(u_input.a, 2147483647i, 14522i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 24>();
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.b.wz, ~u_input.b.zw);
    var var_1 = abs(func_1(vec4<bool>(any(vec2<bool>(true, true)), false, true || all(vec3<bool>(false, false, true)), true), 10643u, u_input.b));
    let var_2 = Struct_1(u_input.a, any(vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_add_u32(var_0, 1u) >= 90806u, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)))));
    global0 = array<vec2<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(433f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f + -1589f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<i32>(~var_2.a, countOneBits(1i), _wgslsmith_clamp_i32(countOneBits(u_input.a), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(2147483647i, -61976i, u_input.a, -1i)), firstLeadingBit(vec4<i32>(var_2.a, -32775i, -32410i, 3764i))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 16131i, 26786i, -25890i), vec4<i32>(u_input.a, -1i, 35841i, 2147483647i))))), vec2<u32>(~(~_wgslsmith_mod_u32(var_0, 1u)), 23472u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1019f, -1349f))))));
}

