struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = var_1.c;
    var var_3 = var_0.b.x;
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_0.c.d.x, 15556u), _wgslsmith_clamp_u32(1u, ~var_0.a, var_1.c.d.x)), _wgslsmith_clamp_vec2_u32(select(u_input.a.yy, var_0.c.d.xz, !var_1.c.a.x), ~vec2<u32>(var_2.d.x, var_1.a), vec2<u32>(var_2.c, 0u) | firstTrailingBit(vec2<u32>(var_0.c.d.x, 1u)))), firstLeadingBit(abs(arg_0.c.d.yx)));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1606f - 583f)) - 595f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b + var_0.c.b), arg_0.c.b)), _wgslsmith_f_op_f32(trunc(arg_0.c.b)), var_1.c.b);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-514f, -128f) + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(1191f + arg_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(~0u, vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(vec3<bool>(false, true, true), -1364f, 0u, vec4<u32>(19746u, 23241u, u_input.a.x, 0u))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<f32>(_wgslsmith_div_f32(490f, 182f), _wgslsmith_f_op_f32(-1435f * -497f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, -325f, arg_0.x, -444f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1693f, 936f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, -1070f, -924f), vec4<f32>(arg_0.x, arg_0.x, 381f, -328f)))))));
    var var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b.x >> (1u % 32u), 1i), vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(~33321i, 2147483647i, _wgslsmith_add_i32(u_input.b.x, 0i))), select(vec2<bool>(arg_0.x >= var_0.x, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)), u_input.b.xy);
    return Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec4<bool>(false, true, false, true))), vec3<bool>(true, any(vec2<bool>(true, false)), any(vec2<bool>(true, false))), true), var_0.x, ~u_input.a.x, vec4<u32>(abs(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)) >> (u_input.a.x % 32u), 4294967295u, 1u, 30451u));
}

fn func_1() -> vec2<u32> {
    let var_0 = u_input.b.x;
    var var_1 = 475f;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) - -110f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(922f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(612f, -1000f)), _wgslsmith_f_op_f32(round(-773f))), any(vec4<bool>(true, false, false, true))))))));
    var var_2 = Struct_2(select(~u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1950u, 8405u), vec4<u32>(u_input.a.x, u_input.a.x, 75461u, 1u)), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x))) & 1u, false), abs(_wgslsmith_mod_vec2_i32(u_input.b.xw, firstTrailingBit(u_input.b.zx) << (~u_input.a.xx % vec2<u32>(32u)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1477f, -1608f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(798f, 624f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(380f, -538f) * vec2<f32>(327f, -1401f))))));
    var var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~var_0, reverseBits(16781i)), abs(var_2.b)), select(~var_2.b, -u_input.b.yx, !vec2<bool>(!var_2.c.a.x, 64688u > u_input.a.x)));
    return vec2<u32>(~(~u_input.a.x), ~_wgslsmith_clamp_u32(u_input.a.x, min(0u, 30008u | u_input.a.x), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    var var_1 = u_input.b.zz;
    var var_2 = _wgslsmith_clamp_vec2_u32(u_input.a.yy, ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(34277u, 0u)), func_1()) & _wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.yy);
    var_2 = ~vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), u_input.a.xx), var_2.x, u_input.a.x ^ var_2.x, _wgslsmith_add_u32(u_input.a.x, var_2.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 20231u, 1804u, u_input.a.x), vec4<u32>(20128u, 2360u, 12085u, 4294967295u))));
    var_0 = ~(-firstLeadingBit(-48217i));
    let var_3 = 68794u;
    var_0 = i32(-1i) * -min(-1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 7421u, 98778u, var_2.x), vec4<u32>(var_3, 4294967295u, var_3, 4294967295u)) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, u_input.b.x), ~vec2<i32>(-1i, -47994i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -810f), 232f, -u_input.b.x & countOneBits(abs(var_1.x)), countOneBits(2147483647i));
}

