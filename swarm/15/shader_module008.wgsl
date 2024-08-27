struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_clamp_i32(firstTrailingBit(-1i), -(~u_input.c.x) & reverseBits(~(-u_input.a.x)), 1i);
    let var_1 = Struct_1(countOneBits(~u_input.e.x), !vec3<bool>(true, !select(false, false, true), false), _wgslsmith_sub_i32(u_input.c.x, u_input.a.x & (0i << (u_input.b % 32u))), min(reverseBits(_wgslsmith_div_vec2_u32(abs(u_input.e.xy), u_input.e.zz)), _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), u_input.e.zx)), abs(~vec2<u32>(u_input.b, u_input.e.x)), firstTrailingBit(~u_input.e.zz))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1674f + 1212f)) + _wgslsmith_f_op_f32(floor(-368f))))));
    let var_2 = Struct_2(~firstLeadingBit(var_1.d.x), u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, var_1.c, -1i) << (u_input.e % vec3<u32>(32u))), countOneBits(abs(vec3<i32>(-16588i, var_0, var_0)))), ~_wgslsmith_sub_i32(u_input.a.x, 1i) >> (~var_1.d.x % 32u)), countOneBits(_wgslsmith_add_vec4_u32(abs(abs(vec4<u32>(u_input.e.x, u_input.e.x, var_1.a, u_input.d))), ~vec4<u32>(41237u, u_input.b, var_1.a, 24475u) | countOneBits(vec4<u32>(0u, 90732u, 8178u, 90160u)))));
    let var_3 = Struct_3(!any(select(var_1.b.yx, var_1.b.xx, var_1.b.yx)) & all(vec3<bool>(select(var_1.b.x, var_1.b.x, true), true, all(vec3<bool>(true, var_1.b.x, var_1.b.x)))), var_2, Struct_1(min(var_1.d.x, var_1.d.x), select(select(vec3<bool>(false, var_1.b.x, true), select(var_1.b, var_1.b, var_1.b), all(vec3<bool>(var_1.b.x, var_1.b.x, true))), vec3<bool>(false, var_1.b.x | var_1.b.x, var_1.b.x), !vec3<bool>(true, var_1.b.x, var_1.b.x)), var_0, _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a, 1u), vec2<u32>(49254u, 18681u)), vec2<u32>(~29210u, 0u), u_input.e.xz), var_1.e), var_2, var_2.d.yyx);
    var var_4 = !(!all(!select(vec3<bool>(var_3.c.b.x, var_3.a, var_1.b.x), vec3<bool>(true, var_3.a, true), vec3<bool>(true, true, false))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.e, _wgslsmith_f_op_f32(select(-1538f, -281f, false)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e), var_1.e)) * _wgslsmith_f_op_f32(-var_3.c.e)))));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(28384u, u_input.b, u_input.c.x, abs(vec4<u32>(u_input.e.x, _wgslsmith_add_u32(u_input.d, ~2457u), _wgslsmith_mod_u32(1u, ~u_input.b), ~u_input.b)));
    var var_1 = var_0;
    let var_2 = select(vec3<bool>(select(true, any(vec2<bool>(true, true)), true), false, true), vec3<bool>(false, -2414i >= ~var_1.c, any(vec3<bool>(true, true, false))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), true)) && (var_1.c != -(u_input.c.x | 2147483647i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_4 = var_0;
    return var_0.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(4839i, -5794i), _wgslsmith_clamp_i32(2147483647i, ~(-2147483647i), u_input.c.x), -min((0i | u_input.c.x) << (46479u % 32u), -27287i), _wgslsmith_mult_i32(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1255i, -2147483647i), vec3<i32>(4707i, arg_1.c, 24515i)), -34603i), ~(-(u_input.a.x | 1i))));
    let var_1 = -2333f;
    var var_2 = min(-45451i ^ min(~abs(-26415i), arg_1.c), _wgslsmith_clamp_i32(-func_2(), -(~(-u_input.a.x)), -var_0.x));
    var var_3 = arg_0.x;
    let var_4 = arg_1.c;
    return arg_1.a >> (~u_input.e.x % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.b), _wgslsmith_mod_u32(firstLeadingBit(u_input.b | arg_0.d.x), max(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.d.x, 26769u, u_input.e.x), u_input.e))), ~(min(arg_0.d.x, arg_0.d.x) | _wgslsmith_add_u32(u_input.b >> (71954u % 32u), 1u)));
    var_0 = (arg_0.b & firstTrailingBit(9510u)) & select(_wgslsmith_clamp_u32(1u, u_input.e.x, _wgslsmith_mod_u32(4294967295u, arg_0.d.x) >> (var_1.x % 32u)), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d, 1u) ^ ~var_1.x, ~u_input.b), true);
    var_0 = 92361u;
    let var_2 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), !select(vec3<bool>(arg_0.b == var_1.x, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), all(vec2<bool>(true, true))), !(!vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false)))));
    return Struct_1(min(0u, 1u), select(!vec3<bool>(false, select(false, false, var_2.x), u_input.a.x >= arg_0.c), vec3<bool>(true, any(var_2.zz), any(!vec2<bool>(true, var_2.x))), var_2.x), arg_0.c, arg_0.d.zy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-559f * 132f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_f_op_f32(abs(1697f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = 1092f;
    var var_2 = func_4(Struct_2(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), false), Struct_1(1u, vec3<bool>(false, false, false), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, -515i, var_0), vec4<i32>(-17425i, 35776i, 27947i, var_0)), vec2<u32>(u_input.b, u_input.e.x), _wgslsmith_f_op_f32(-var_1)), -535f), u_input.e.x, func_2(), ~(~vec4<u32>(98263u, 59925u, 10752u, 0u)) >> (~max(vec4<u32>(u_input.e.x, u_input.d, u_input.d, 1u), vec4<u32>(83777u, u_input.b, 4294967295u, 1u)) % vec4<u32>(32u))), vec4<i32>(-(var_0 ^ u_input.c.x) << (~1u % 32u), 54296i, 1i, ~(-(u_input.c.x & -2147483647i))));
    let var_3 = 1i;
    var var_4 = 2147483647i;
    var_4 = ~_wgslsmith_mult_i32(var_2.c, 1i);
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(363f, -428f), vec2<f32>(var_1, 868f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1112f, 683f))))), ~(~7148u), _wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(var_0), ~var_0, var_3, abs(var_5.x)) ^ abs(min(vec4<i32>(2147483647i, var_5.x, var_3, var_5.x), vec4<i32>(-45434i, 0i, var_0, var_2.c))), firstTrailingBit(reverseBits(-vec4<i32>(var_0, -2147483647i, var_0, var_5.x)))));
}

