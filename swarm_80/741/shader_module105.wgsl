struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = select(vec3<bool>(true, false, !any(select(vec4<bool>(arg_1.e, false, arg_0.x, true), vec4<bool>(true, arg_1.e, arg_1.e, true), arg_1.e))), !arg_0, arg_0.x);
    return vec4<bool>(true, true, arg_1.e, true);
}

fn func_2() -> vec4<i32> {
    let var_0 = all(!func_3(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true), Struct_1(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.c)), vec4<f32>(2178f, 1306f, 552f, -137f), abs(vec2<u32>(4294967295u, 4294967295u)), 2629u | u_input.b.x, 0u != u_input.c)));
    let var_1 = !select(!(!func_3(vec3<bool>(var_0, var_0, true), Struct_1(vec3<u32>(4294967295u, 42697u, u_input.a), vec4<f32>(796f, -638f, 450f, 933f), u_input.b.zy, 4294967295u, false))), vec4<bool>(var_0, false, any(func_3(vec3<bool>(var_0, false, var_0), Struct_1(vec3<u32>(29176u, 17780u, u_input.a), vec4<f32>(-109f, 361f, 852f, -1148f), u_input.d.xx, 1u, var_0)).wy), any(vec2<bool>(true, true))), true);
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, firstLeadingBit(abs(u_input.b.wzx))), ~u_input.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c >> (54394u % 32u), u_input.b.x), min(abs(u_input.b.xwy), u_input.b.xzx), vec3<u32>(u_input.b.x, u_input.a, select(0u, 4098u, var_0)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 142f), _wgslsmith_f_op_f32(157f - 513f)), _wgslsmith_f_op_f32(f32(-1f) * -502f)), -663f, -524f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2064f)))), 565f)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), 4294967295u), vec2<u32>(~103953u, 0u)) >> (vec2<u32>(~4294967295u, 26977u) % vec2<u32>(32u)), 62736u, var_0);
    let var_3 = var_2;
    var var_4 = var_3.b.x;
    return vec4<i32>(i32(-1i) * -(~(-2147483647i)), 1i, ~((i32(-1i) * -1i) >> (~var_2.a.x % 32u)), u_input.e);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> vec3<u32> {
    var var_0 = abs(-abs(countOneBits(u_input.e)));
    let var_1 = ~_wgslsmith_dot_vec4_i32(reverseBits(-func_2()), countOneBits(vec4<i32>(1i, min(arg_3, u_input.e), reverseBits(-35676i), min(-2147483647i, 1i))));
    var_0 = ~(~var_1);
    var var_2 = Struct_1(u_input.b.yww, arg_2, u_input.d.yx, 0u, arg_0.x);
    var var_3 = ~vec3<u32>(~(~u_input.a), var_2.d | ~_wgslsmith_sub_u32(var_2.c.x, 24777u), ~73991u);
    return vec3<u32>(4294967295u, ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(0u, 71776u)), ~vec2<u32>(1u, 8347u))), firstTrailingBit(reverseBits(_wgslsmith_div_u32(~21954u, ~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>((-1i >> (0u % 32u)) < -u_input.e, true, true));
    var var_1 = -642f;
    var var_2 = Struct_1(func_1(var_0, 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(449f, 812f, -1000f, 1119f) * vec4<f32>(530f, 1347f, 1000f, 1000f))), u_input.e) ^ select(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(1u, u_input.a)), 4294967295u, _wgslsmith_div_u32(0u, 119695u)), vec3<u32>(87208u, 0u, 74759u), select(vec3<bool>(var_0.x, true, var_0.x), !var_0, func_3(vec3<bool>(true, var_0.x, false), Struct_1(u_input.b.zxy, vec4<f32>(-1000f, 1249f, -2067f, -747f), vec2<u32>(24889u, 27875u), u_input.b.x, true)).xxw)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1495f, 847f, false)), -216f, -872f, _wgslsmith_div_f32(-132f, 356f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f - 838f)), -412f, 1473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) + _wgslsmith_f_op_f32(958f - 772f))))), ~_wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.a, 53245u)), min(u_input.d.yz, ~vec2<u32>(12650u, 41563u))), u_input.a >> (u_input.c % 32u), !any(vec4<bool>(var_0.x && var_0.x, false, false, true)));
    let var_3 = ~vec2<i32>(countOneBits(2147483647i), ~u_input.e);
    var_2 = Struct_1(vec3<u32>(~reverseBits(15999u) ^ var_2.a.x, _wgslsmith_add_u32(4294967295u, ~u_input.c & func_1(vec3<bool>(var_0.x, true, var_0.x), var_2.b.x, vec4<f32>(243f, 1255f, -393f, 217f), u_input.e).x), 15216u), var_2.b, ~vec2<u32>(countOneBits(var_2.a.x) ^ min(var_2.a.x, var_2.c.x), u_input.b.x), ~firstLeadingBit(u_input.c), true);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x)));
    let var_4 = ~(~(vec3<i32>(u_input.e, u_input.e, abs(-100817i)) << (~(~u_input.b.zxx) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.b.ww), var_2.b);
}

