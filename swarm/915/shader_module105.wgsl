struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), min(~u_input.b.x, 1u) > _wgslsmith_sub_u32(1u, u_input.a.x)), vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true))), !any(vec4<bool>(true, false, true, true))), vec2<bool>(!all(vec2<bool>(true, true)), _wgslsmith_clamp_u32(50697u, _wgslsmith_div_u32(u_input.b.x, u_input.a.x), u_input.a.x) != 1u));
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec2_i32(~reverseBits(u_input.c), u_input.c), u_input.d, u_input.d);
    let var_2 = vec2<u32>(u_input.a.x, select(1u, abs(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, 56665u))), !(!var_0.x)));
    var var_3 = select(var_0, select(!select(select(var_0, var_0, true), var_0, select(vec2<bool>(true, true), var_0, var_0)), !var_0, false), select(select(var_0, !select(var_0, var_0, vec2<bool>(var_0.x, var_0.x)), !var_0), !var_0, var_0.x));
    var_3 = select(select(select(select(vec2<bool>(true, var_3.x), select(var_0, var_0, vec2<bool>(true, true)), !var_0), !var_0, vec2<bool>(true, select(false, true, var_0.x))), !(!var_0), var_3.x), vec2<bool>(var_3.x, !var_3.x), select(var_0, vec2<bool>(all(var_0), true), !vec2<bool>(var_3.x, any(vec3<bool>(var_0.x, true, var_0.x)))));
    return all(select(!vec3<bool>(select(var_0.x, false, false), !var_3.x, !var_0.x), !(!(!vec3<bool>(var_0.x, var_3.x, var_0.x))), vec3<bool>(var_0.x, false, !any(vec4<bool>(false, true, true, var_0.x)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(firstTrailingBit(2147483647i));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(!(abs(var_0.a) < u_input.d), true), true);
    var var_2 = !(!vec3<bool>(any(select(vec2<bool>(false, true), var_1, var_1)), func_3(), any(var_1)));
    let var_3 = false;
    var var_4 = _wgslsmith_sub_u32(1u, firstLeadingBit(u_input.b.x));
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1254f, -639f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-332f, -187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1532f - -1594f) * _wgslsmith_f_op_f32(min(1386f, 1162f)))))), -660f, -556f);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-20934i, 9984i, u_input.d, 41503i), -vec4<i32>(u_input.d, u_input.d, 1i, u_input.c.x))), -_wgslsmith_mult_i32(1i, u_input.d)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0))));
    var var_3 = var_0;
    var_3 = Struct_1(-2147483647i);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -3075f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(131f, arg_0, -379f) - vec3<f32>(var_2, var_2, 1378f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-800f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), arg_0, func_3())), 1056f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1502f, 1351f, 1459f) - vec3<f32>(-579f, -119f, -398f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, 1687f, -300f)), _wgslsmith_div_vec3_f32(vec3<f32>(661f, 1411f, 1239f), vec3<f32>(-1863f, -340f, -642f))), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1(-1672f)))))));
    var var_1 = vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(~(~1u), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b.x, 52535u), u_input.b), u_input.b), abs(~16137u)), ~(u_input.a.x & u_input.b.x), min(u_input.b.x, 14598u));
    var_1 = vec4<u32>(~u_input.b.x, abs(~1u), ~var_1.x, ~var_1.x >> (8163u % 32u));
    var_1 = vec4<u32>(0u, 32496u, _wgslsmith_dot_vec2_u32(max(u_input.a, _wgslsmith_add_vec2_u32(select(vec2<u32>(12573u, u_input.b.x), u_input.b, true), max(vec2<u32>(8353u, 41184u), u_input.a))), _wgslsmith_mod_vec2_u32(~select(u_input.b, vec2<u32>(var_1.x, u_input.a.x), vec2<bool>(true, false)), u_input.b)), var_1.x);
    var_1 = vec4<u32>(52110u, u_input.b.x, firstLeadingBit(4294967295u | var_1.x), 0u);
    var var_2 = u_input.b.x;
    var var_3 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 0i, u_input.d, -36401i)) | firstLeadingBit(abs(vec4<i32>(u_input.d, 58735i, -1i, 1i))), vec4<i32>(u_input.d, ~u_input.c.x, -59164i, -71571i));
    var_3 = firstTrailingBit(-26540i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

