struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-210f, 371f, arg_0 | true))), _wgslsmith_f_op_f32(round(-1694f)));
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(~u_input.a, func_3(false), 38534u)), firstLeadingBit(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 11370u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 1u, ~u_input.a)));
    var_0 = 22131u;
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, arg_1.x <= 431f), vec2<bool>(true, true)), vec2<bool>(~u_input.a == u_input.a, true)), any(vec3<bool>(all(vec3<bool>(false, true, true)), arg_1.x >= _wgslsmith_f_op_f32(sign(arg_1.x)), true)));
    let var_2 = max(~1u & _wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(u_input.a, u_input.a))), ~(vec2<u32>(u_input.a, 29081u) ^ vec2<u32>(u_input.a, 83423u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 1u)), vec2<u32>(u_input.a, u_input.a)), ~(~4294967295u)) << (44343u % 32u));
    return true;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = select(false, func_2(Struct_1(-u_input.b.x, _wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(-935f, 1461f, -881f)), vec4<i32>(u_input.c, u_input.d, u_input.b.x, u_input.d) >> (~vec4<u32>(u_input.a, 27439u, u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(max(-664f, 256f)), -1387f))), true);
    var var_1 = Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 785f), arg_0)))) * _wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, -u_input.d, ~0i, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-17307i, u_input.b.x, u_input.c, u_input.b.x), reverseBits(firstLeadingBit(vec4<i32>(u_input.c, 1i, u_input.d, 2147483647i)))), firstLeadingBit(~firstTrailingBit(vec4<i32>(1i, u_input.d, -1i, -16335i)))));
    var_1 = Struct_1(_wgslsmith_mod_i32(firstLeadingBit(-48401i), 62885i), arg_0, var_1.c);
    var var_2 = select(vec2<bool>((var_0 & true) | true, var_0), select(vec2<bool>(var_0, 663f < _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)), select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), vec2<bool>(true, true), true), !(!vec2<bool>(var_0, true)), var_0), select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), select(!vec2<bool>(var_0, true), vec2<bool>(true, true), u_input.c <= 37103i), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0, true), var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), false)))), true);
    var_1 = Struct_1(-(59724i >> (~(u_input.a ^ 4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(1422f, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-399f * var_1.b.x), -670f, !var_0)))), vec4<i32>(0i, u_input.b.x, var_1.a, -2147483647i));
    return _wgslsmith_dot_vec2_i32(-var_1.c.xw, vec2<i32>(1i, -40329i)) ^ 80704i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(623f - _wgslsmith_f_op_f32(f32(-1f) * -1550f)), _wgslsmith_f_op_f32(abs(1947f)), -686f);
    let var_2 = Struct_1(-_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 41451i, u_input.c, u_input.d), select(vec4<i32>(u_input.c, -38321i, u_input.c, u_input.c), vec4<i32>(2147483647i, -2147483647i, -1i, u_input.c), false)) | u_input.c, vec3<f32>(var_1.x, var_1.x, 1255f), -vec4<i32>(1i, -52689i, 11229i, u_input.d));
    var var_3 = any(vec3<bool>(select(select(true, true, true), false && (var_1.x >= -859f), true), 0i <= func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, 2298f))), true || any(vec3<bool>(true, true, true))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.x, var_2.b.x), var_1.x) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(423f))))), _wgslsmith_f_op_f32(trunc(-200f)));
    let var_5 = ~(-(-1i & u_input.d));
    var var_6 = Struct_1(_wgslsmith_sub_i32(-(~(-u_input.c)), _wgslsmith_mult_i32(1i, -max(u_input.c, 48766i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.b, _wgslsmith_f_op_vec3_f32(select(var_2.b, var_2.b, vec3<bool>(false, true, false)))))), -(~var_2.c));
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(1u), max(~(~u_input.a), func_3(-925f > var_1.x))), _wgslsmith_mod_i32(23898i, var_2.c.x), max(countOneBits(~vec4<i32>(-14479i, var_6.c.x, -2147483647i, var_5) << (~vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u) % vec4<u32>(32u))), vec4<i32>(min(_wgslsmith_sub_i32(-17450i, -1i), _wgslsmith_mult_i32(var_2.a, -2147483647i)), _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(var_6.c.x, var_2.a)), 6714i ^ firstTrailingBit(-2147483647i), -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_6.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x) * _wgslsmith_div_f32(var_1.x, -761f))))));
}

