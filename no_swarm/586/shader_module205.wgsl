struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec2<i32> {
    var var_0 = vec4<f32>(1256f, -119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-555f, -522f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1417f + 1463f) * _wgslsmith_f_op_f32(abs(1452f)))))), -185f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(floor(var_0.x))));
    var var_2 = Struct_1(-u_input.b, -abs(~vec4<i32>(2147483647i, 0i, u_input.b, u_input.b)), !select(vec4<bool>(arg_1, var_0.x <= 474f, arg_1, u_input.a > u_input.a), !select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, arg_1, arg_0.x, true), false), !(!vec4<bool>(true, arg_0.x, arg_0.x, arg_1))));
    var_2 = Struct_1(abs(1i), vec4<i32>(~0i, 1i, -36632i, 2147483647i), !vec4<bool>(any(var_2.c.xyw), true, false | all(var_2.c.ywz), var_2.c.x || !arg_0.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-776f, var_1.a)) - _wgslsmith_f_op_f32(611f + var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, 1452f))), _wgslsmith_f_op_f32(1336f * _wgslsmith_f_op_f32(-var_1.a)), -var_2.b.x > u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - var_0.x)), -811f));
    return vec2<i32>(u_input.b, ~(~u_input.b) >> (0u % 32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(i32(-1i) * -2147483647i, u_input.b) | func_3(vec2<bool>(arg_3.b, !arg_3.b), true), -max(arg_3.a.b.zy, arg_3.c.b.zx), ~countOneBits(abs(~arg_3.a.b.yw)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1179f, _wgslsmith_f_op_f32(ceil(arg_2.a)), -557f, _wgslsmith_f_op_f32(-arg_2.a))));
    var_1 = vec4<f32>(arg_2.a, 1000f, arg_2.a, 477f);
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(1005f, 295f)))) - -934f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(-arg_2.a)) - var_2.a), -812f)));
    return _wgslsmith_f_op_vec3_f32(-var_1.wzy);
}

fn func_4(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = reverseBits(u_input.b);
    var var_1 = false;
    let var_2 = ~9633i;
    var var_3 = Struct_3(vec3<u32>(~countOneBits(u_input.a | 21577u), 1u, 1u), Struct_2(Struct_1(u_input.b, -vec4<i32>(0i, -1i, -2147483647i, 19093i) >> (vec4<u32>(u_input.a, 1u, 26614u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(select(false, true, false), true, true, false)), true, Struct_1(~1i, select(vec4<i32>(var_2, -30794i, 52329i, var_2), vec4<i32>(var_2, 30060i, u_input.b, var_2), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), u_input.a < 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(arg_0.zx)))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -197f)))), -1529f, false || (~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 0i), vec2<i32>(0i, -60567i)) > -12804i), false);
    var var_4 = (~var_3.a.x | abs(var_3.a.x)) != _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.a.x, 56286u, 1u), ~(~37076u));
    return select(select(!var_3.b.a.c, var_3.b.a.c, var_3.b.c.c), !select(select(select(vec4<bool>(var_3.b.b, true, var_3.e, var_3.b.c.c.x), vec4<bool>(true, var_3.e, false, var_3.b.c.c.x), vec4<bool>(false, true, var_3.d, var_3.e)), var_3.b.a.c, !var_3.e), vec4<bool>(false, true, var_3.b.a.c.x, var_3.d), var_3.b.a.c), select(vec4<bool>(!any(var_3.b.a.c.zyx), _wgslsmith_div_u32(0u, u_input.a) > countOneBits(var_3.a.x), var_3.e, all(select(var_3.b.c.c, vec4<bool>(true, var_3.d, var_3.e, false), false))), vec4<bool>(false, true, false, all(!vec3<bool>(var_3.e, true, var_3.e))), -18518i <= ~var_2));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> vec2<bool> {
    var var_0 = select(!func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(62141u, 33388u), u_input.b, Struct_4(-1339f), Struct_2(Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, 33014i, u_input.b), vec4<bool>(true, true, true, true)), false, Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<bool>(false, true, false, false)), vec2<f32>(-361f, arg_0.a)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_0.a, arg_0.a), vec3<f32>(736f, arg_0.a, arg_1))))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-147f, arg_0.a, arg_0.a), vec3<f32>(-1409f, arg_0.a, 249f), false)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = select(vec3<bool>(true, var_0.x, all(vec2<bool>(true, var_0.x))), var_0.zzx, !var_0.x);
    var_0 = !(!vec4<bool>(false, true, true, all(!var_0.zz)));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, min(16721u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(19183u, u_input.a, 3814u)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u))), ~max(u_input.a, firstTrailingBit(u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 1u, 0u, 4294967295u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) ^ u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), abs(vec2<u32>(1u, u_input.a))), ~_wgslsmith_sub_u32(u_input.a, 3363u) & ~0u, 43511u));
    return var_0.xw;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_2.b.x, u_input.b, -16930i)), ~vec3<i32>(0i, u_input.b, 2147483647i)), _wgslsmith_add_i32(u_input.b, -_wgslsmith_mult_i32(arg_2.a, u_input.b))));
    var_0 = -arg_2.b.xy;
    let var_1 = Struct_1(arg_2.b.x, arg_2.b, arg_2.c);
    var_0 = firstLeadingBit(select(~arg_2.b.zz, var_1.b.zw, vec2<bool>(arg_2.c.x, arg_1)));
    var var_2 = var_1;
    return select(arg_2.c, select(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(375f, 421f, 1000f))), vec4<bool>(all(!vec3<bool>(true, true, arg_0)), arg_0, !(1u != u_input.a), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2.c.x, false, var_1.c.x), false))), !all(var_1.c.xy)), select(!vec4<bool>(true, !var_1.c.x, arg_2.c.x, arg_1), vec4<bool>(all(var_2.c) && var_1.c.x, !arg_0, (arg_1 & true) == true, true), select(any(vec3<bool>(false, arg_1, arg_2.c.x)), var_1.c.x, true && arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~vec2<u32>(_wgslsmith_mult_u32(u_input.a, 103461u), u_input.a)) | reverseBits(~(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 142110u) % vec2<u32>(32u)))));
    let var_1 = abs(_wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -14412i, -2147483647i), vec4<i32>(-1i, 42396i, -31817i, 12447i)), _wgslsmith_sub_i32(u_input.b, u_input.b)))) ^ u_input.b;
    let var_2 = !func_5(all(vec3<bool>(true, true, true)), true | all(func_1(Struct_4(840f), -567f)), Struct_1(0i, vec4<i32>(5395i, _wgslsmith_mod_i32(u_input.b, 10384i), var_1, u_input.b), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, 1712f, 725f)))));
    var_0 = ~vec2<u32>(1u, select(var_0.x, abs(u_input.a), !(!var_2.x)));
    var_0 = vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.a, var_0.x, countOneBits(4294967295u)), vec4<u32>(7271u, var_0.x, u_input.a, u_input.a))), _wgslsmith_mod_u32(var_0.x, abs(10207u)));
    let var_3 = ~47404u ^ u_input.a;
    var var_4 = _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.x, ~var_0.x), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, -149f))))), countOneBits(u_input.a));
}

