struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(abs(1f))))));
    let var_1 = Struct_2(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), !(376f != var_0.x))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(round(-131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(abs(arg_0.x))))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-361f, 747f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0.wx), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-381f, -593f), arg_0.ww), _wgslsmith_div_vec2_f32(vec2<f32>(119f, var_0.x), var_0.wx), true))))));
    var var_2 = vec4<bool>(~_wgslsmith_add_i32(firstTrailingBit(u_input.e.x), _wgslsmith_clamp_i32(u_input.e.x, -1i, u_input.e.x)) >= (firstTrailingBit(-1i) & -1i), true, any(vec4<bool>(var_1.a, any(var_1.b.b), var_1.b.b.x, false)) && (var_0.x == _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(var_0.x)))), var_1.b.b.x);
    let var_3 = ~(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-54523i, -83553i) ^ vec2<i32>(arg_1.x, arg_1.x), u_input.d.zz), ~(-u_input.e.x)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.x, 1u, u_input.c.x), arg_3) % 32u));
    var var_4 = select(vec4<bool>(any(!vec4<bool>(false, var_2.x, true, true)), var_2.x, false, all(var_1.b.b)), select(!vec4<bool>(false != var_1.b.b.x, false, !var_1.b.b.x, var_1.a), !select(select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(false, true, false, var_1.b.b.x), vec4<bool>(true, true, false, var_1.b.b.x)), !vec4<bool>(var_1.a, false, true, false), vec4<bool>(var_1.a, var_1.b.b.x, false, var_1.a)), !(!var_2.x)), vec4<bool>(select(_wgslsmith_f_op_f32(step(arg_0.x, 367f)) != arg_0.x, var_1.b.b.x, false), true, (-323f == _wgslsmith_f_op_f32(-var_1.b.c.x)) || var_2.x, false));
    return !select(vec4<bool>(all(select(vec4<bool>(var_1.a, true, false, false), vec4<bool>(var_2.x, true, true, true), false)), true || (arg_3.x <= 1u), var_1.b.b.x, true), !vec4<bool>(var_2.x, var_4.x, var_4.x, all(vec3<bool>(true, false, var_2.x))), all(vec3<bool>(var_1.a, all(var_1.b.b), !var_4.x)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~(-abs(_wgslsmith_mult_vec2_i32(u_input.d.yx ^ vec2<i32>(2147483647i, 50714i), ~u_input.e.xy)));
    var var_1 = vec4<bool>(!any(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1947f, 715f, 628f, 1093f)), countOneBits(vec4<i32>(0i, 23211i, var_0.x, 2147483647i)), ~vec3<u32>(4294967295u, 18768u, u_input.b), vec4<u32>(u_input.b, 0u, 0u, u_input.c.x))), all(!vec3<bool>(true, true, any(vec3<bool>(true, false, true)))), arg_0 <= var_0.x, u_input.b == ~u_input.c.x);
    var var_2 = u_input.d.x;
    var var_3 = any(!vec4<bool>(any(vec3<bool>(true, var_1.x, true)) && var_1.x, select(any(vec3<bool>(var_1.x, false, var_1.x)), var_1.x | false, u_input.b != 0u), var_1.x, var_1.x));
    var_2 = var_0.x;
    return Struct_1(-766f, vec3<bool>(any(var_1.xy), !(!func_3(vec4<f32>(-359f, 467f, -1096f, 171f), vec4<i32>(0i, 1i, var_0.x, 19616i), vec3<u32>(u_input.b, u_input.c.x, u_input.b), vec4<u32>(u_input.c.x, 47332u, 7837u, 4294967295u)).x), !(_wgslsmith_dot_vec3_i32(u_input.d, u_input.e) <= arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-367f)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_2(false, func_2(4602i));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(abs(var_0.b.a))))));
    var var_2 = !(!vec4<bool>(_wgslsmith_f_op_f32(-var_0.b.c.x) >= var_1, true, arg_2, true));
    let var_3 = _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 64629u), vec3<u32>(u_input.c.x, 12161u, 0u)), ~vec3<u32>(u_input.b, 14402u, 1u)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(u_input.c.x, u_input.b)) % 32u)), u_input.c.x, ~(~_wgslsmith_add_u32(~u_input.c.x, u_input.c.x ^ u_input.b)));
    let var_4 = Struct_2(arg_0.a, func_2(_wgslsmith_add_i32(min(reverseBits(arg_3.x), arg_3.x >> (1u % 32u)), select(~1i, _wgslsmith_dot_vec2_i32(arg_3.yz, vec2<i32>(u_input.e.x, 2147483647i)), arg_0.b.b.x))));
    return arg_3.x >= -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_2(any(!select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, false))), Struct_1(746f, vec3<bool>(true, var_0, func_1(Struct_2(true, Struct_1(-324f, vec3<bool>(var_0, true, true), vec2<f32>(-157f, 871f))), 2004f, var_0, u_input.d) || var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, _wgslsmith_f_op_f32(-1565f + 172f)))));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x << (u_input.c.x % 32u), u_input.b), vec2<u32>(u_input.b ^ u_input.b, _wgslsmith_add_u32(0u, 74731u))) < _wgslsmith_dot_vec3_u32(vec3<u32>(1u ^ u_input.c.x, min(u_input.c.x, u_input.b), _wgslsmith_mult_u32(48096u, 18601u)), _wgslsmith_div_vec3_u32(vec3<u32>(16223u, u_input.b, 1u), firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, 1u)))), var_1.b);
    let var_3 = var_2.b.a;
    let var_4 = func_2(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -30447i, ~_wgslsmith_mod_i32(-1i << (u_input.b % 32u), -45346i & u_input.d.x)));
    var var_5 = var_2;
    var var_6 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(max(-222f, _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(trunc(var_2.b.c.x))))), vec3<bool>(var_1.b.b.x, func_2(u_input.a.x).b.x, !(u_input.d.x > u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a)), _wgslsmith_f_op_f32(var_1.b.c.x * 1689f))));
    var var_7 = vec4<i32>(_wgslsmith_div_i32(~2147483647i, ~u_input.a.x), u_input.d.x, 2147483647i, _wgslsmith_add_i32(-1i, ~0i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) * var_5.b.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.c.x), -2757f))), vec3<i32>(~_wgslsmith_clamp_i32(u_input.d.x, 2147483647i, ~var_7.x), ~(~u_input.d.x), -1i));
}

