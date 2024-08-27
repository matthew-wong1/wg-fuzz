struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    return firstTrailingBit((select(vec4<i32>(-12985i, -13068i, -10886i, 4147i), -vec4<i32>(4163i, 7470i, 1i, -1i), true) << (abs(vec4<u32>(u_input.c, 0u, 1u, 37566u) & u_input.b) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u)));
}

fn func_2() -> f32 {
    let var_0 = 116f;
    let var_1 = vec4<i32>(-1i) * -(~func_3());
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(select(var_0, 482f, all(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-713f + _wgslsmith_f_op_f32(step(822f, var_0))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + -1486f), 423f))) + var_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-1276f * _wgslsmith_f_op_f32(ceil(218f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -2279f), -371f)))));
    var var_1 = countOneBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<i32>(~(-30239i), 0i, 1i), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<i32>(~func_3().x, -3289i, 2147483647i)));
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.a, ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.a, 1u), 76750u, 4294967295u), u_input.a));
    var_1 = -vec3<i32>(-1i, 0i, select(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), vec4<i32>(var_1.x, -36245i, -1i, var_1.x)) ^ _wgslsmith_sub_i32(var_1.x, 2147483647i), true || any(vec2<bool>(false, false))));
    var_1 = func_3().yxy;
    return Struct_1(var_2);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    var var_0 = arg_2;
    var var_1 = arg_0.a;
    var_1 = func_1(arg_0.b, arg_2);
    var var_2 = vec2<bool>(true, all(!vec2<bool>(26935u >= var_0.x, true)));
    var_2 = select(select(!select(arg_0.c.zx, vec2<bool>(true, true), arg_0.c.x), select(arg_0.c.yz, arg_0.c.zz, select(select(vec2<bool>(false, true), arg_0.c.zy, arg_0.c.yx), vec2<bool>(false, false), true)), vec2<bool>(!arg_0.c.x, false)), arg_0.c.yy, arg_0.c.zz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)) * -1535f);
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(!all(vec2<bool>(true, true)) || any(vec2<bool>(true, false)), true, true), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true)), true);
    let var_1 = Struct_2(Struct_1(4294967295u), func_1(func_1(func_1(Struct_1(u_input.a.x), _wgslsmith_clamp_vec3_u32(arg_1.wzw, vec3<u32>(arg_1.x, u_input.b.x, arg_1.x), vec3<u32>(96178u, u_input.c, arg_1.x))), ~(~arg_1.xwz)), u_input.a), vec3<bool>(var_0.x, false, !var_0.x & true));
    var var_2 = !(!(!select(vec4<bool>(var_1.c.x, var_1.c.x, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1.c.x, true, true), false), true)));
    var var_3 = var_1;
    let var_4 = var_1;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(func_1(Struct_1(4294967295u), u_input.b.yyz), func_1(Struct_1(4294967295u), vec3<u32>(u_input.b.x, u_input.a.x, 79104u)), vec3<bool>(true, true, true)), firstLeadingBit(-22096i), max(select(vec3<u32>(4294967295u, u_input.a.x, u_input.b.x), u_input.a, true), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(u_input.a.x, u_input.c, u_input.d))))), _wgslsmith_f_op_f32(max(-1727f, _wgslsmith_f_op_f32(trunc(-483f))))), select(~abs(u_input.b), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_div_u32(0u, u_input.c), min(u_input.a.x, 0u), ~u_input.d, ~45113u)), vec4<bool>(true, true, true, true)));
    var var_1 = u_input.a.x;
    var_1 = 1u;
    let var_2 = true;
    var var_3 = ~var_0.a;
    var_1 = var_0.a;
    var var_4 = select(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(0i, -33765i)), ~(-vec2<i32>(42120i, 0i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 18469i, 19548i, -41306i), reverseBits(vec4<i32>(1i, 2147483647i, -2147483647i, -1870i)))), reverseBits(_wgslsmith_mult_i32(-18993i, firstLeadingBit(_wgslsmith_mult_i32(3152i, 0i)))), any(select(vec2<bool>(all(vec2<bool>(var_2, true)), var_2), vec2<bool>(all(vec3<bool>(var_2, var_2, var_2)), true), !vec2<bool>(true, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-101f, 231f)), _wgslsmith_f_op_f32(-747f * -1833f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(2198f - -973f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-313f)), 186f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2099f) - _wgslsmith_f_op_f32(step(-472f, _wgslsmith_f_op_f32(f32(-1f) * -985f)))), _wgslsmith_f_op_f32(floor(1000f))), 584f);
}

