struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(-234f, -972f)), _wgslsmith_f_op_f32(579f + 496f), _wgslsmith_f_op_f32(f32(-1f) * -549f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(1362f)), 2374f, _wgslsmith_f_op_f32(f32(-1f) * -941f)))))));
    var var_1 = Struct_1(_wgslsmith_add_u32(~(~41060u), 1u));
    return 49888i;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = countOneBits(~(u_input.a >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.a, u_input.a.x, 4294967295u, u_input.b.x), u_input.a) % vec4<u32>(32u))));
    var_0 = ~firstLeadingBit(countOneBits(~vec4<u32>(1u, 4294967295u, 73418u, u_input.a.x)));
    var_0 = vec4<u32>(~_wgslsmith_mult_u32(arg_0.a.a, abs(4294967295u)), ~arg_0.a.a, u_input.b.x, 6278u ^ ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 27511u, 28268u), u_input.a.wyz) << (arg_0.a.a % 32u)));
    let var_1 = firstTrailingBit(arg_1.b);
    var_0 = u_input.a;
    return firstTrailingBit(~(~u_input.b.x));
}

fn func_2() -> bool {
    let var_0 = select(true, true, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))));
    var var_1 = _wgslsmith_mult_i32(1i, 30763i);
    var var_2 = Struct_1(func_3(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.xyy, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), Struct_3(vec3<bool>(var_0, var_0, var_0 || true), ~(~(-47411i)))));
    let var_3 = !vec4<bool>(all(select(vec4<bool>(var_0, true, false, false), !vec4<bool>(true, true, var_0, var_0), true)), !select(var_0, var_0 | false, true), true, var_0);
    var_1 = ~_wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(min(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, -35421i)), vec2<i32>(1i, 1i)), select(-vec2<i32>(-1i, 4310i), abs(vec2<i32>(2147483647i, -2147483647i)), var_3.yw)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-40540i, 2147483647i)), select(vec2<i32>(-47471i, -21729i), vec2<i32>(15039i, 2147483647i), var_3.x), vec2<i32>(-16787i, -2147483647i))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -min(~(~vec4<i32>(-1i, -1i, 2147483647i, 2147483647i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(50476i, -2147483647i, -2147483647i, 0i), vec4<i32>(-36662i, 0i, 0i, -26925i))) & vec4<i32>(_wgslsmith_mod_i32(-select(0i, -15432i, false), -46386i), _wgslsmith_add_i32(~1i << (min(u_input.a.x, 4294967295u) % 32u), 0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-28771i, -486i, -1i), vec3<i32>(1i, 1i, 1i)), 5194i);
    var var_1 = var_0.x;
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(func_1(vec2<bool>(true, true), vec2<u32>(u_input.a.x << (u_input.b.x % 32u), u_input.b.x)), select(1i, var_0.x, true) << (firstLeadingBit(select(59255u, 22463u, false)) % 32u)), var_0.x);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f + 1102f)))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-536f, -1000f), _wgslsmith_f_op_f32(ceil(-212f))) + -156f), !(!func_2()), all(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true)), true);
    var_1 = var_2.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, -136f, 448f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1332f, 881f, 401f), vec3<f32>(-624f, 1563f, -755f), var_3.xyw)) * vec3<f32>(796f, -722f, -1323f))))), _wgslsmith_div_vec3_f32(vec3<f32>(-157f, _wgslsmith_f_op_f32(f32(-1f) * -1390f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(807f, -840f)), _wgslsmith_f_op_f32(f32(-1f) * -1134f)))), vec3<f32>(-866f, _wgslsmith_f_op_f32(f32(-1f) * -525f), 1000f)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(var_4.yx)), var_2.x, var_0.x, vec4<u32>(reverseBits(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.yyx, vec3<u32>(u_input.a.x, 4294967295u, 0u)))), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(13892u, u_input.b.x), ~u_input.b.x), ~abs(~u_input.b.x), ~u_input.a.x), ~((u_input.b.x ^ ~40966u) & ~1u));
}

