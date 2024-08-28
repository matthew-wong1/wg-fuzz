struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(arg_0, firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)))), ~_wgslsmith_mult_u32(1u, ~12515u), 0u);
    var var_1 = _wgslsmith_dot_vec2_u32(var_0.wx, _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(80317u, arg_0) | arg_1.d)) & 1u;
    let var_2 = vec3<bool>(!(!(true && select(true, true, true))), arg_1.c.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(876f + -436f)), !(countOneBits(_wgslsmith_div_i32(19912i, u_input.d.x)) == ~arg_1.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - -916f);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -17447i;
    var var_1 = 79878u;
    var_1 = firstTrailingBit(_wgslsmith_add_u32(~(~arg_0.a), ~_wgslsmith_clamp_u32(u_input.b.x >> (arg_0.a % 32u), ~1u, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1709f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, 1026f, false)), _wgslsmith_f_op_f32(func_3(arg_0.a, Struct_2(0u, var_0, vec3<f32>(-1000f, -1058f, -1328f), vec2<u32>(4294967295u, arg_0.a)))))))));
    let var_3 = ~_wgslsmith_add_i32(var_0, var_0);
    return Struct_1(select(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, 1u), u_input.b.yw & u_input.b.xy), 0u >> (_wgslsmith_mult_u32(~arg_0.a, ~4496u) % 32u), true));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_1(1u);
    var var_1 = func_2(arg_0).a;
    var var_2 = vec3<bool>(false, any(vec2<bool>(!arg_2.x || (arg_0.a == arg_3.b.d.x), arg_2.x)), arg_2.x);
    var var_3 = arg_3.b;
    var var_4 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(22789i, -2147483647i, 2147483647i), (var_3.b >> (arg_0.a % 32u)) | max(29098i, var_3.b)), arg_3.b.b), abs(vec2<u32>(arg_1, _wgslsmith_add_u32(_wgslsmith_mult_u32(44697u, arg_0.a), var_3.a))), all(arg_2.xwy));
    return u_input.d.x;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = 4980i;
    var var_1 = vec3<u32>(~73384u, u_input.b.x, 0u);
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(abs(arg_0.c.x))), _wgslsmith_f_op_f32(abs(-347f))))), Struct_2(var_1.x, arg_1, vec3<f32>(arg_0.c.x, 1f, arg_0.c.x), vec2<u32>(~_wgslsmith_clamp_u32(1u, 52276u, 4294967295u), 4294967295u)));
    var_1 = ~vec3<u32>(~22215u & _wgslsmith_dot_vec2_u32(vec2<u32>(94738u, 0u), vec2<u32>(102963u, arg_0.d.x)), _wgslsmith_sub_u32(~12472u, 29961u), 1u) << (select(abs(u_input.b.wxx), vec3<u32>(var_2.b.d.x, 0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(34686u, 39412u), ~var_1.x)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))) % vec3<u32>(32u));
    var var_3 = 1571f;
    return Struct_3(countOneBits(_wgslsmith_mult_vec2_i32(~(u_input.d.yy | vec2<i32>(var_2.b.b, arg_1)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 1i))), var_2.b.d, any(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_5(Struct_2(~1u, func_4(func_2(Struct_1(arg_0.b.x)), 32313u, !(!vec4<bool>(var_0.c, var_0.c, arg_1, false)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 348f)), Struct_2(u_input.b.x, -18309i, vec3<f32>(1269f, -1101f, -1519f), u_input.b.xw))), vec3<f32>(-875f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(932f, -663f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) * _wgslsmith_div_f32(607f, 1850f))), countOneBits(select(firstTrailingBit(vec2<u32>(0u, var_0.b.x)), vec2<u32>(var_0.b.x, 113120u), vec2<bool>(true, true)))), var_0.a.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(389f, 1583f)) + _wgslsmith_f_op_f32(-1883f + -1049f))), _wgslsmith_f_op_f32(abs(-893f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1498f, 510f)))))) + -745f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1174f, -484f)) * -763f)))), -1000f);
    var_0 = Struct_3(vec2<i32>(arg_0.a.x, ~var_0.a.x), vec2<u32>(_wgslsmith_div_u32(var_0.b.x, u_input.b.x), abs(abs(~arg_0.b.x))), var_0.c);
    let var_2 = Struct_1(arg_0.b.x);
    return Struct_1(_wgslsmith_div_u32(~var_2.a, var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-202f, -1500f, 605f) + vec3<f32>(-1320f, -488f, -491f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, 2563f, 837f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-630f))), _wgslsmith_f_op_f32(ceil(-173f)), _wgslsmith_f_op_f32(-806f - _wgslsmith_f_op_f32(-699f * -920f))))));
    var var_1 = func_1(Struct_3(_wgslsmith_mod_vec2_i32(u_input.d.zy, u_input.d.yw), ~vec2<u32>(0u, u_input.b.x), all(vec2<bool>(true, true))), true);
    var var_2 = ~(0i >> (~func_2(Struct_1(1u)).a % 32u));
    var_2 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-27995i, u_input.c)), countOneBits(-_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, u_input.c), ~vec2<i32>(-6818i, 6540i))));
    var_1 = Struct_1(countOneBits(var_1.a) << (var_1.a % 32u));
    var_1 = Struct_1(func_2(Struct_1(~u_input.b.x & 36484u)).a);
    let var_3 = vec2<u32>(u_input.b.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1608i, -2147483647i, -383i, _wgslsmith_div_i32(~1689i, u_input.c ^ u_input.c)) | -vec4<i32>(func_5(Struct_2(0u, -1i, vec3<f32>(var_0.x, 1000f, var_0.x), var_3), u_input.a).a.x, _wgslsmith_div_i32(u_input.c, u_input.d.x), firstTrailingBit(2147483647i), u_input.c), ~u_input.d.x, 0i);
}

