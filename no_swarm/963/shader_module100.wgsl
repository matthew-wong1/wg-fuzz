struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-257f, -1208f, _wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(sign(1165f))));
    let var_1 = Struct_1(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-1398f + _wgslsmith_f_op_f32(-arg_0))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.a.x)), var_1.a.x)), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1348f)), true)) - -153f), _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = Struct_1(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1947f)));
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(964f)) * _wgslsmith_f_op_f32(step(1154f, 246f)))));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = select(!vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), false, false), vec3<bool>(true, !(any(vec3<bool>(true, true, true)) || true), !(_wgslsmith_add_i32(u_input.c, u_input.c) < -7772i)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false))) & ((23905i != -u_input.c) && true));
    let var_1 = -u_input.c;
    var var_2 = false;
    return min(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(var_1, 1i) & vec2<i32>(u_input.c, u_input.c)) | _wgslsmith_sub_vec2_i32(~(vec2<i32>(25039i, 0i) << (u_input.a.yw % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 21181i), vec2<i32>(-8472i, u_input.c)))), select(min(_wgslsmith_sub_vec2_i32(vec2<i32>(-64125i, u_input.c), vec2<i32>(0i, 2147483647i)) & vec2<i32>(3267i, -2147483647i), vec2<i32>(u_input.c, 2147483647i)), select(reverseBits(vec2<i32>(u_input.c, 99305i)) & -vec2<i32>(var_1, u_input.c), select(abs(vec2<i32>(5549i, u_input.c)), -vec2<i32>(-2147483647i, u_input.c), var_0.xx), any(!var_0)), false));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~1u, 6865u), ~(~28153u), 33831u), vec3<u32>(_wgslsmith_div_u32(~u_input.b.x, ~u_input.a.x), _wgslsmith_add_u32(reverseBits(49772u), u_input.b.x), ~(~74257u))), vec3<u32>(u_input.b.x, u_input.b.x, 5995u), u_input.b);
    let var_1 = Struct_2(~(~vec3<u32>(u_input.b.x, 33297u, u_input.b.x)) >> (~(~var_0) % vec3<u32>(32u)));
    let var_2 = false;
    let var_3 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3(-433f, vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) * arg_0.yx), !(!vec2<bool>(false, var_2))))));
    var var_4 = _wgslsmith_f_op_f32(-arg_0.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(arg_0.yy)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_2(vec3<u32>(~_wgslsmith_mult_u32(arg_3.x & arg_3.x, ~27487u), select(68158u, ~_wgslsmith_mult_u32(68640u, 17206u), true), ~u_input.a.x));
    var var_1 = firstLeadingBit(vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(select(1i, -1i, false), ~arg_0)), -1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, -32163i, -39344i, arg_0), ~vec4<i32>(u_input.c, -1i, u_input.c, -2147483647i)))));
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(935f)) + arg_2.a.x)), 381f, _wgslsmith_f_op_f32(abs(-791f))));
    let var_3 = var_1.xz;
    var_2 = Struct_1(arg_2.a);
    return -883f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -274f);
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_i32(reverseBits(abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, -37433i)), -vec4<i32>(-1i, u_input.c, u_input.c, u_input.c)))), min(1i, u_input.c));
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i) & vec2<i32>(var_2, 20918i), vec2<i32>(var_2, 0i)) ^ countOneBits(vec2<i32>(-1i, -18069i) & vec2<i32>(u_input.c, 0i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-3667i, u_input.c), vec2<i32>(u_input.c, u_input.c))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), select(vec2<i32>(select(0i, -86i, true), ~u_input.c), -firstTrailingBit(vec2<i32>(2147483647i, var_2)), _wgslsmith_sub_i32(u_input.c, u_input.c) < -16986i), vec2<i32>((u_input.c | -13237i) << (_wgslsmith_mult_u32(1u, 35986u) % 32u), max(-u_input.c, _wgslsmith_add_i32(-6471i, -20332i)))));
    var var_4 = true;
    var_4 = (~u_input.b.x >> (0u % 32u)) == _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, 0u)), vec2<u32>(49970u, var_1) << (countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 35550u), u_input.b.yy)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, -330f, 461f, 1176f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(136f, 1006f, -1911f, -280f), vec4<f32>(1465f, 1000f, 485f, -505f), vec4<bool>(true, false, true, false)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -429f)))), 1024f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i, 1i, Struct_1(vec2<f32>(904f, -1479f)), u_input.b.yx))))));
}

