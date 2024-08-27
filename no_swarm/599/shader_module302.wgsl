struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    return max(108359u, arg_0.x) >> (~u_input.c.x % 32u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_3(false, arg_1.x, _wgslsmith_f_op_f32(round(-336f)));
    let var_1 = Struct_3(arg_2 | var_0.b, !all(arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(617f * -872f)))));
    var var_2 = select(!vec3<bool>(true, select(true, var_1.b, true) != arg_1.x, var_1.a || any(vec2<bool>(false, false))), select(select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(var_1.a, true, arg_1.x)), !(!vec3<bool>(false, arg_2, var_0.a)), any(vec3<bool>(var_1.b, var_0.b, false))), !select(select(vec3<bool>(arg_1.x, var_0.a, false), vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_2, var_1.a, var_1.b)), !vec3<bool>(arg_2, arg_2, var_0.b), vec3<bool>(true, true, arg_2)), true), false);
    let var_3 = Struct_2(vec3<i32>(~_wgslsmith_sub_i32(u_input.b.x, ~u_input.d), _wgslsmith_div_i32(max(~u_input.e, ~1i), 1i), u_input.e), vec4<u32>(323u, _wgslsmith_dot_vec3_u32(~abs(u_input.c.xxy), _wgslsmith_add_vec3_u32(vec3<u32>(27696u, 68563u, 4294967295u) ^ arg_3, ~arg_3)), 1u, abs(~u_input.a << (~19109u % 32u))), vec3<bool>(!(all(vec3<bool>(false, var_0.b, false)) == all(var_2.xx)), arg_1.x, any(!(!vec4<bool>(true, var_1.b, false, true)))));
    var_2 = !select(!(!(!vec3<bool>(arg_1.x, true, true))), vec3<bool>(!all(vec4<bool>(var_1.a, false, var_0.b, var_3.c.x)), !(var_3.c.x != var_0.a), all(vec2<bool>(arg_1.x, var_0.b))), var_3.c);
    return vec3<bool>(var_0.b, true, false);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(4294967295u, firstTrailingBit(1i), -1731f, select(vec3<bool>(~(-45645i) != arg_0.x, false, any(vec2<bool>(true, false)) != any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), !any(vec2<bool>(true, true))));
    var var_1 = any(!(!var_0.d.yx));
    var_0 = Struct_1(min(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, max(u_input.a, u_input.a), u_input.a), u_input.c.xxz), 1u), select(-2147483647i, -2147483647i << (reverseBits(~var_0.a) % 32u), var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * var_0.c) + _wgslsmith_f_op_f32(var_0.c * var_0.c)) * var_0.c)), func_3(1i, select(!(!var_0.d.yx), !vec2<bool>(true, var_0.d.x), select(select(var_0.d.zz, vec2<bool>(var_0.d.x, true), vec2<bool>(false, false)), vec2<bool>(var_0.d.x, var_0.d.x), var_0.d.zy)), false, vec3<u32>(~u_input.a, 1u, 3887u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f))), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-116f - var_0.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + 662f), 1565f)))));
    let var_3 = vec2<i32>(-1i) * -arg_0.xw;
    return Struct_1(_wgslsmith_dot_vec3_u32(~select(u_input.c.xwy, ~u_input.c.zyz, true), u_input.c.xzy), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_0, arg_0), ~vec4<i32>(var_0.b, -1i, var_3.x, 15601i)) ^ u_input.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))))))), vec3<bool>(abs(_wgslsmith_dot_vec2_i32(var_3, vec2<i32>(arg_0.x, 28239i))) <= (~(-2147483647i) << (~var_0.a % 32u)), true, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, ~(-2147483647i)), abs(36334i)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -4227i, 20073i, arg_3.b), vec4<i32>(arg_2.x, 3353i, -1i, 32630i)), _wgslsmith_mod_i32(-arg_1, _wgslsmith_clamp_i32(arg_1, 0i, u_input.e))), arg_2.x, 19495i);
    let var_1 = func_1(u_input.c.yxz | u_input.c.xxy);
    let var_2 = arg_2.x;
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~var_2, abs(select(4753i, 0i, arg_0.x))), _wgslsmith_mult_i32(var_2, 1i), max(-func_2(vec4<i32>(1i, arg_3.b, var_2, u_input.d)).b, firstLeadingBit(_wgslsmith_mod_i32(-57755i, 1i))), arg_3.b), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, arg_1, var_2, -305i), ~vec4<i32>(66767i, -39955i, -7115i, arg_2.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_1, arg_2.x, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.x, arg_1, -1i), vec4<i32>(arg_2.x, arg_3.b, 0i, var_2))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, arg_3.b, -1301i, var_2), _wgslsmith_add_vec4_i32(vec4<i32>(10320i, 0i, -56705i, arg_1), vec4<i32>(0i, u_input.e, -12633i, -40686i))), vec4<i32>(select(u_input.e, -2147483647i, arg_0.x), _wgslsmith_div_i32(var_2, arg_2.x), 55732i, arg_2.x))), _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(0i, 2147483647i, 35235i, arg_3.b)), vec4<i32>(arg_2.x, arg_3.b, u_input.b.x, 2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-35258i, -8477i, 13081i, var_2)), vec4<i32>(-13281i, arg_2.x, arg_3.b, -10121i) | vec4<i32>(var_0.x, -29935i, arg_2.x, u_input.b.x)), (vec4<i32>(-1i, arg_3.b, arg_1, -2147483647i) << (vec4<u32>(arg_3.a, u_input.a, 31966u, 30886u) % vec4<u32>(32u))) | vec4<i32>(1i, 23070i, u_input.e, -11524i))));
    let var_3 = Struct_3(!arg_3.d.x, any(vec4<bool>(arg_0.x, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.c + arg_3.c)))) - arg_3.c));
    return abs(_wgslsmith_add_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, var_0.x), var_0.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = Struct_1(select(~func_1(vec3<u32>(u_input.a, 85217u, 1u)), _wgslsmith_sub_u32(abs(~17462u), 0u), true), _wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_dot_vec2_i32(func_4(vec2<bool>(false, true), 0i, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 26115i, u_input.b.x), vec3<i32>(-28944i, u_input.b.x, -41686i)), func_2(vec4<i32>(u_input.e, u_input.d, u_input.d, u_input.b.x))), abs(abs(vec2<i32>(u_input.b.x, -2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-223f, 1656f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f - 424f)))), vec3<bool>(true, true, true));
    let var_2 = ~u_input.c.wxy;
    let var_3 = vec4<f32>(555f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c * var_1.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * var_1.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(func_2(vec4<i32>(-2147483647i, 39448i, u_input.b.x, -10161i)).c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f))))));
    var_0 = u_input.e;
    let var_4 = _wgslsmith_add_i32(1i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-972f + _wgslsmith_f_op_f32(var_3.x * -733f)), _wgslsmith_f_op_f32(step(var_3.x, var_1.c))), _wgslsmith_f_op_f32(var_3.x - var_1.c), var_3.x), u_input.c.xzw, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-402f - var_1.c)), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x)), 1292f, _wgslsmith_f_op_f32(ceil(var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_3.x, 852f, var_1.c)))))), 1i);
}

