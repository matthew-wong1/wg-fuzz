struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = vec3<i32>(u_input.a.x, -47614i, _wgslsmith_div_i32(select(-25204i, -1i, false), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(u_input.b.wyy), _wgslsmith_mult_vec3_i32(u_input.b.xzw, vec3<i32>(arg_0.a, u_input.b.x, arg_0.a))), _wgslsmith_add_i32(arg_0.a, 1i) ^ u_input.b.x)));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(abs(u_input.b.x), -23881i, 1i, 60691i), vec4<i32>(reverseBits(arg_0.c.b.b.x), u_input.a.x, arg_0.a, max(-_wgslsmith_clamp_i32(var_0.x, -73604i, u_input.b.x), reverseBits(max(1i, 1i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.b.zy, vec2<f32>(arg_0.b.x, 847f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec2<f32>(-684f, _wgslsmith_f_op_f32(-arg_0.b.x)))));
    var var_3 = Struct_3(min(_wgslsmith_dot_vec2_i32(var_1.zx | u_input.a, firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.b.zy, var_1.wz))), ~(-_wgslsmith_add_i32(43592i, 17063i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b), arg_0.b, any(vec4<bool>(arg_0.c.b.c, false, false, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b, arg_0.b)))), arg_0.c);
    var_2 = var_3.b.zx;
    return arg_0.c.b.b.x;
}

fn func_2() -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0), vec2<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.a.x | var_0, u_input.b.x)), _wgslsmith_sub_i32(func_3(Struct_3(u_input.b.x, vec4<f32>(1335f, -1000f, -494f, 1222f), Struct_2(1u, Struct_1(vec4<u32>(1u, 61287u, u_input.c, u_input.d), u_input.b.zz, true)))), ~(-34902i) >> (1u % 32u))));
    return Struct_2(~(~34062u), Struct_1(~(~select(vec4<u32>(43062u, 1u, 26974u, 62661u), vec4<u32>(4294967295u, 68845u, 30704u, u_input.d), true)), reverseBits(vec2<i32>(23999i, var_1) ^ firstLeadingBit(vec2<i32>(17443i, var_1))), 1u <= u_input.c));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    var var_0 = vec3<u32>(~min(abs(_wgslsmith_mod_u32(u_input.d, u_input.c)), _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.d) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d, 24995u), vec3<u32>(55363u, u_input.c, u_input.d))), u_input.d, select(27185u, u_input.c, arg_1));
    var_0 = vec3<u32>(abs(46573u), 19192u | u_input.d, u_input.d);
    let var_1 = func_2();
    var var_2 = vec4<f32>(671f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1702f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(937f - -1155f), 1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(round(-742f)))))), _wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-851f, 1504f)) - 2298f) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(-1148f, -1147f))))), -637f);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1754f, -514f, 154f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), var_2.x, 461f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(852f, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 1346f) + _wgslsmith_f_op_f32(round(var_2.x))))), var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-816f, var_2.x)), var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(348f, var_2.x)), var_2.x)));
    return !vec4<bool>(var_2.x != _wgslsmith_f_op_f32(f32(-1f) * -2165f), var_1.b.c, true, var_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(4527u, u_input.d);
    let var_1 = select(func_1(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 55270i) << (vec4<u32>(26372u, u_input.d, 22700u, u_input.c) % vec4<u32>(32u))), false), vec4<bool>(select(true, false, all(vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, select(false, false, true)))), !func_2().b.c);
    var_0 = func_2().b.a.x;
    var var_2 = Struct_3(25000i, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(631f * 887f) - -1026f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) - _wgslsmith_f_op_f32(f32(-1f) * -466f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-405f - -783f)), func_2());
    var_0 = ~2818u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b.a);
}

