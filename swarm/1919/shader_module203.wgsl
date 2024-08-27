struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, u_input.c <= ~1u), any(vec2<bool>(true, false)));
    var var_1 = var_0.x;
    var var_2 = Struct_3(Struct_2(vec3<bool>(any(select(var_0, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x))), 2147483647i < _wgslsmith_mod_i32(u_input.a, u_input.b.x), true), true, firstLeadingBit(min(u_input.b.x, 15842i) | _wgslsmith_mult_i32(u_input.b.x, -44561i))), i32(-1i) * -u_input.b.x);
    var var_3 = u_input.a;
    let var_4 = ~u_input.c;
    return 1000f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(1111f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1078f, 1000f, true))))));
    let var_1 = ~(~_wgslsmith_add_vec4_u32(~min(vec4<u32>(34289u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 45182u)), vec4<u32>(1u | u_input.c, 32477u, select(u_input.c, u_input.c, false), 4294967295u ^ u_input.c)));
    let var_2 = vec2<bool>(all(vec3<bool>(var_1.x != 1u, any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, true, false)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)))));
    let var_3 = -min(-1i, ~(-1i));
    let var_4 = Struct_2(select(vec3<bool>(false, var_2.x, true), !vec3<bool>(false, !var_2.x, var_2.x), select(!select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, false, true), var_2.x), select(vec3<bool>(true, true, var_2.x), !vec3<bool>(false, true, var_2.x), vec3<bool>(false, false, var_2.x)), !(!var_2.x))), true, 2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_3, var_3), ~var_3, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -24348i), u_input.b), max(-1i, var_3)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -8535i, var_3, var_3)));
    return Struct_2(select(!var_4.a, vec3<bool>(!any(vec4<bool>(var_4.a.x, var_4.a.x, false, var_4.b)), true, var_4.a.x || false), vec3<bool>(any(vec2<bool>(true, var_2.x)), var_2.x, var_4.b)), !(43605u == min(countOneBits(var_1.x), ~83325u)), abs(-1i));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_2(select(var_0.a, !var_0.a, all(!vec4<bool>(true, true, true, var_0.b))), var_0.b, var_0.c >> (u_input.c % 32u));
    let var_1 = max(~(u_input.c >> ((~u_input.c | ~u_input.c) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>((u_input.c ^ u_input.c) << (u_input.c % 32u), u_input.c, _wgslsmith_sub_u32(~82612u, u_input.c), _wgslsmith_mod_u32(~u_input.c, 0u)), ~countOneBits(vec4<u32>(u_input.c, 33612u, 0u, u_input.c))));
    return Struct_1(firstTrailingBit(abs(56628u)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(firstTrailingBit(~28128u), ~firstTrailingBit(arg_0.a));
    let var_1 = select(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(arg_0.a, 22873u, u_input.c) ^ vec3<u32>(1u, u_input.c, arg_0.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, 31145u), vec3<u32>(73120u, u_input.c, 14914u), vec3<u32>(1u, 1u, 47806u)), vec3<u32>(_wgslsmith_mod_u32(arg_0.a, 1u), _wgslsmith_mod_u32(arg_0.a, u_input.c), 53563u)), vec3<u32>(1u, max(0u, 25245u), ~4294967295u) ^ firstTrailingBit(vec3<u32>(31915u, arg_0.a, 1u)), vec3<bool>(true, true, true)) & vec3<u32>(u_input.c, select(28876u, ~4294967295u, (1u == arg_0.a) & true), abs(~(~5693u)));
    let var_2 = _wgslsmith_mod_u32(0u << (_wgslsmith_div_u32(~arg_0.a, min(~arg_0.a, _wgslsmith_dot_vec3_u32(var_1, var_1))) % 32u), firstTrailingBit(~arg_0.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-569f, -573f)))))))));
    var var_4 = Struct_3(func_2(), _wgslsmith_clamp_i32(-36919i, ~2147483647i, -(u_input.b.x >> (11728u % 32u))));
    return Struct_2(var_4.a.a, any(vec4<bool>(var_4.a.a.x, var_4.a.b, var_4.a.b, var_4.a.a.x)), -2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_1(4294967295u);
    var var_1 = !arg_0.a.x;
    let var_2 = arg_0;
    var_1 = !all(!(!select(var_2.a, vec3<bool>(var_2.b, arg_0.a.x, false), arg_0.a)));
    let var_3 = func_1();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_4(func_1()), _wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(37474u, 9488u)) & vec2<u32>(1u, ~1u), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-711f - 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f + 847f) * _wgslsmith_f_op_f32(floor(1707f))))), _wgslsmith_mult_i32(0i, u_input.a));
    var_0 = Struct_3(func_2(), 2147483647i);
    let var_1 = Struct_2(!(!func_5(Struct_2(vec3<bool>(var_0.a.a.x, true, true), false, var_0.a.c), vec2<u32>(4294967295u, u_input.c) & vec2<u32>(u_input.c, u_input.c), -2147483647i, _wgslsmith_f_op_f32(1488f - -638f)).a), !(var_0.a.b & true) | !(true && !var_0.a.b), 1i);
    var_0 = Struct_3(var_1, _wgslsmith_mult_i32(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-29273i, -52990i, 28693i), -vec3<i32>(0i, u_input.a, -2147483647i))));
    var var_2 = func_2().a.x;
    var_0 = Struct_3(var_1, 0i);
    let var_3 = select(select(!vec4<bool>(var_0.a.b, func_2().b, var_0.a.b, true), !(!(!vec4<bool>(var_0.a.b, var_0.a.a.x, true, var_1.a.x))), true), select(vec4<bool>(!(var_1.a.x && true), var_1.a.x, true, select(false, all(var_0.a.a.yx), !var_1.a.x)), select(select(select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(true, var_0.a.a.x, false, false), var_0.a.a.x), select(vec4<bool>(var_0.a.b, false, false, false), vec4<bool>(var_1.a.x, var_0.a.a.x, var_1.a.x, var_0.a.b), var_1.b), select(vec4<bool>(var_0.a.b, false, true, var_1.a.x), vec4<bool>(false, var_0.a.a.x, false, var_0.a.b), false)), select(vec4<bool>(false, var_1.a.x, var_0.a.b, false), select(vec4<bool>(var_1.b, var_0.a.a.x, false, true), vec4<bool>(var_0.a.b, false, true, true), vec4<bool>(var_1.a.x, true, var_0.a.a.x, true)), !vec4<bool>(true, true, var_1.b, false)), select(!vec4<bool>(var_1.a.x, false, var_1.b, true), select(vec4<bool>(false, var_1.a.x, var_1.b, var_0.a.b), vec4<bool>(var_1.b, false, false, false), false), !var_1.b)), select(!select(vec4<bool>(var_0.a.b, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.b, false, false), vec4<bool>(var_0.a.a.x, false, var_1.b, var_1.a.x)), vec4<bool>(false, true, true, var_0.a.b), !(!vec4<bool>(true, var_1.b, false, var_1.b)))), select(!vec4<bool>(var_1.a.x, var_1.a.x || false, true, true), select(vec4<bool>(true | var_1.b, var_0.a.a.x, true, var_0.a.b), !vec4<bool>(true, var_0.a.b, false, true), true), vec4<bool>(!var_1.b, true, var_1.a.x, true)));
    let var_4 = firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.c, min(u_input.c, 0u), abs(u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c) | vec3<u32>(0u, u_input.c, 1u), select(vec3<u32>(193u, 4294967295u, u_input.c), vec3<u32>(1u, u_input.c, u_input.c), var_1.a))), vec2<u32>(~(u_input.c >> (u_input.c % 32u)), ~u_input.c)));
    var var_5 = func_4(func_1()).a;
    let x = u_input.a;
    s_output = StorageBuffer(-42795i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-211f, -1016f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(121f, -1129f), vec2<f32>(535f, 147f), var_5.x))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(195f, 1371f))))), var_4);
}

