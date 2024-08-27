struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    return arg_0.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = -147f;
    let var_1 = true;
    var var_2 = vec2<i32>(~u_input.a, u_input.c);
    var var_3 = Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~71482u, _wgslsmith_sub_u32(4294967295u, 0u)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 0u, 8939u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1721u), vec3<u32>(0u, 5738u, 71592u), vec3<u32>(12426u, 1u, 20975u))), vec2<u32>(1u, 1u));
    var_3 = Struct_1(vec3<u32>(var_3.a.x, ~var_3.a.x, func_3(Struct_1(vec3<u32>(781u, var_3.a.x, var_3.b.x), var_3.b), var_0 <= var_0, all(vec4<bool>(true, false, var_1, var_1)), select(vec3<bool>(true, true, var_1), vec3<bool>(true, true, var_1), var_1))) ^ firstLeadingBit(~(~vec3<u32>(2399u, 0u, var_3.b.x))), ~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(17767u, var_3.a.x), var_3.a.xx) << (abs(var_3.b) % vec2<u32>(32u)))));
    return Struct_1(var_3.a, vec2<u32>(var_3.b.x, var_3.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec2<u32> {
    return reverseBits(arg_1.a.xz);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.b.zx), -2147483647i), _wgslsmith_div_i32(23923i >> (arg_0.a.x % 32u), u_input.c)), -12609i, u_input.a ^ u_input.b.x), func_2(), func_2(), Struct_1(~firstTrailingBit(arg_0.a), ~_wgslsmith_clamp_vec2_u32(~arg_2.xy, arg_2.zz ^ vec2<u32>(30823u, arg_0.b.x), arg_1.a.xy)), vec3<i32>(u_input.c, firstTrailingBit(0i), abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, 38370i), vec4<i32>(1i, -1i, u_input.b.x, u_input.a)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -949f);
    var var_2 = ~(~func_4(Struct_3(var_0, var_0), func_2(), var_0, _wgslsmith_clamp_i32(0i, var_0.a.x, 0i)) | func_2().b);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(838f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f - 678f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1273f * -1216f) + _wgslsmith_f_op_f32(-229f + 320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(554f)))))));
    var var_3 = select(select(!vec2<bool>(true, any(vec4<bool>(true, true, false, false))), !vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, true, true)))), vec2<bool>(var_0.a.x < ~u_input.a, firstTrailingBit(var_0.e.x) < _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, 2147483647i), -13878i)), true);
    return Struct_2(~(~select(var_0.e & vec3<i32>(2147483647i, -2147483647i, 21105i), vec3<i32>(19745i, 0i, 7008i) & var_0.e, !vec3<bool>(true, true, var_3.x))), Struct_1(var_0.c.a, _wgslsmith_add_vec2_u32(~arg_0.b ^ (arg_1.a.xx ^ vec2<u32>(var_2.x, 1u)), arg_2.yy)), func_2(), func_2(), (u_input.b | (_wgslsmith_mod_vec3_i32(u_input.b, u_input.b) & vec3<i32>(-69754i, var_0.a.x, u_input.b.x))) | vec3<i32>(-2147483647i << (_wgslsmith_dot_vec3_u32(var_0.d.a, vec3<u32>(arg_0.b.x, arg_1.b.x, var_0.c.a.x)) % 32u), 74133i, -1150i));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1608f), -130f))), _wgslsmith_f_op_f32(floor(-949f))));
    var var_1 = Struct_2(vec3<i32>(~u_input.b.x, arg_2.a.e.x, 2893i), arg_2.b.c, arg_2.b.d, Struct_1(~(~(~arg_2.b.d.a)), arg_3), u_input.b | -_wgslsmith_mod_vec3_i32(-u_input.b, ~vec3<i32>(arg_2.a.a.x, 29817i, -1i)));
    var var_2 = true;
    var_1 = func_5(arg_2.b.c, Struct_1(var_1.c.a, max(~arg_2.a.c.b, func_4(arg_2, func_2(), arg_2.b, var_1.e.x))), func_2().a);
    let var_3 = -211f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(reverseBits(~(~min(u_input.c, 57159i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2044f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2028f)) * _wgslsmith_f_op_f32(2751f + -888f)) * -1751f)));
    let var_2 = select(vec4<bool>(false, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_1(vec4<u32>(10409u, 50381u, 1u, 0u), true, Struct_3(Struct_2(vec3<i32>(var_0, var_0, -1i), Struct_1(vec3<u32>(37835u, 1u, 11589u), vec2<u32>(0u, 5501u)), Struct_1(vec3<u32>(54672u, 1u, 37056u), vec2<u32>(6566u, 4294967295u)), Struct_1(vec3<u32>(7737u, 0u, 66076u), vec2<u32>(1u, 1u)), u_input.b), Struct_2(u_input.b, Struct_1(vec3<u32>(4294967295u, 1u, 14374u), vec2<u32>(4294967295u, 68510u)), Struct_1(vec3<u32>(1u, 94317u, 1u), vec2<u32>(12676u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 45550u), vec2<u32>(54695u, 4294967295u)), vec3<i32>(u_input.a, 8668i, var_0))), vec2<u32>(0u, 1u)))) > -538f, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, all(vec2<bool>(true, true))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, false, any(vec2<bool>(true, false)), true)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(true, true, any(vec3<bool>(false, false, false)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true, _wgslsmith_add_i32(var_0, u_input.a) < -u_input.a)), !(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -279f))))) * -578f);
    var_3 = _wgslsmith_f_op_f32(-var_1.x);
    var var_4 = func_5(func_2(), Struct_1(~vec3<u32>(1348u, ~4294967295u, ~1u), ~(~vec2<u32>(29618u, 91239u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(1u, 4294967295u, true), 1855u, ~(~26141u)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 1u)), vec2<u32>(1u, 0u)), func_2().a.x, func_5(func_2(), Struct_1(vec3<u32>(1u, 1u, 0u), vec2<u32>(45104u, 4722u)), vec3<u32>(0u, 5332u, 1065u)).b.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(52629u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 48598u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~select(vec3<u32>(26209u, 4294967295u, 8070u), vec3<u32>(53681u, 0u, 71359u), var_2.wyy))));
    let var_5 = _wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(var_4.b.a, min(vec3<u32>(0u, var_4.d.b.x, 1u), var_4.c.a)), abs(var_4.d.a)), _wgslsmith_add_vec3_u32(var_4.b.a, var_4.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, var_1.x), 2147483647i ^ var_4.e.x, u_input.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.x, 472f) + vec3<f32>(var_1.x, -979f, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -524f, var_1.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, 1017f, var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), var_1.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), var_2.wxy)))));
}

