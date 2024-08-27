struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(true, vec4<i32>(u_input.b, ~u_input.b, -7328i, 110481i));
    let var_1 = !(true & any(vec4<bool>(var_0.a, any(vec4<bool>(true, false, var_0.a, false)), all(vec4<bool>(false, true, false, true)), false)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2645f), -482f, _wgslsmith_f_op_f32(select(-1258f, 350f, var_0.a))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-940f, -173f, 1825f))))));
    let var_3 = Struct_2(~(~(~vec2<u32>(u_input.a, 0u))), abs((vec2<u32>(1u, 52229u) | vec2<u32>(u_input.a, 4294967295u)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, u_input.a)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(4478u, 4294967295u))) % vec2<u32>(32u)), !(!vec2<bool>(!var_0.a, var_1)));
    var_0 = Struct_1(all(select(!var_3.c, !(!vec2<bool>(var_3.c.x, false)), var_3.c)), vec4<i32>(~u_input.b, i32(-1i) * -42973i, i32(-1i) * -u_input.b, reverseBits(u_input.b)));
    return _wgslsmith_f_op_f32(1191f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, -526f))) * _wgslsmith_f_op_f32(select(282f, _wgslsmith_f_op_f32(ceil(122f)), var_2.a.x >= -962f))))));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = 325f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())));
    let var_1 = select(~_wgslsmith_mod_u32(5822u, u_input.a) ^ ~firstTrailingBit(abs(u_input.a)), u_input.a, all(vec4<bool>(!(!arg_0), any(!vec2<bool>(arg_0, true)), any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_0))), true)));
    var var_2 = (!arg_0 && arg_0) && (arg_0 && false);
    var var_3 = -36375i;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1398f, -1000f, 131f, 928f) * vec4<f32>(-177f, -1000f, -1753f, 924f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(471f, -1560f, 217f, 1599f) - vec4<f32>(-1154f, 614f, 181f, 263f)), select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(959f, -1042f, 579f, -547f), vec4<f32>(382f, 788f, -116f, 1339f))))))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(true, arg_1.c.b);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(var_1.a))));
    let var_3 = vec2<i32>(u_input.b, 71706i);
    var var_4 = reverseBits(_wgslsmith_dot_vec2_i32(var_0.b.xw | ~var_3, -firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), var_3))));
    return Struct_2(firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.a, _wgslsmith_add_vec2_u32(arg_1.a, vec2<u32>(9789u, u_input.a))), reverseBits(vec2<u32>(u_input.a, 4294967295u)) | arg_1.a, _wgslsmith_clamp_vec2_u32(arg_1.a, arg_1.a, vec2<u32>(0u, 4294967295u)))), abs(arg_1.a), select(!arg_1.b.yy, !arg_1.b.xx, var_2.x < 1000f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec3_i32(-min(-vec3<i32>(0i, u_input.b, -2147483647i), vec3<i32>(-29859i, ~25700i, arg_1)), _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -10791i), -u_input.b, arg_1), reverseBits(vec3<i32>(74074i, -1i, 49880i) & vec3<i32>(u_input.b, arg_1, u_input.b)) << (vec3<u32>(11362u, 17012u, firstLeadingBit(1u)) % vec3<u32>(32u))));
    let var_1 = Struct_2(min(vec2<u32>(0u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, 0u, arg_2.a.x), vec3<u32>(25047u, 102218u, 4294967295u)))), vec2<u32>(59487u, countOneBits(~0u))), arg_2.a, vec2<bool>(any(!(!vec3<bool>(arg_2.c.x, arg_2.c.x, false))), false));
    var var_2 = arg_0;
    var var_3 = func_1(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -454f)))), Struct_3(~_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_2.b), countOneBits(vec2<u32>(arg_2.b.x, arg_2.a.x))), !vec3<bool>(-1953f == arg_0, all(vec4<bool>(true, var_1.c.x, var_1.c.x, arg_2.c.x)), false), Struct_1(any(select(vec3<bool>(true, var_1.c.x, var_1.c.x), vec3<bool>(var_1.c.x, true, false), vec3<bool>(true, false, arg_2.c.x))), vec4<i32>(-1i) * -vec4<i32>(-22814i, 2147483647i, var_0.x, 1i)), abs(_wgslsmith_mod_u32(65063u, min(1u, arg_2.b.x)))));
    var var_4 = Struct_1(any(vec2<bool>(true & arg_2.c.x, arg_2.c.x)), firstLeadingBit(vec4<i32>(arg_1, var_0.x, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b, -2147483647i), vec3<i32>(var_0.x, 0i, -36856i)))));
    return vec4<u32>(abs(0u), countOneBits(max(_wgslsmith_mod_u32(countOneBits(0u), _wgslsmith_mult_u32(arg_2.b.x, 1831u)), 26742u)), 15898u & var_1.a.x, max(~17443u, ~func_1(Struct_4(vec3<f32>(arg_0, arg_0, arg_0)), Struct_3(arg_2.b, vec3<bool>(var_1.c.x, var_3.c.x, true), Struct_1(false, vec4<i32>(-14509i, -36992i, 22940i, var_4.b.x)), u_input.a)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(576f, 1370f)), _wgslsmith_f_op_f32(floor(-2283f)))), ~(~func_4(_wgslsmith_f_op_f32(706f - 735f), u_input.b ^ u_input.b, func_1(Struct_4(vec3<f32>(-2403f, -183f, -651f)), Struct_3(vec2<u32>(4294967295u, 41141u), vec3<bool>(false, false, false), Struct_1(true, vec4<i32>(29i, u_input.b, 43584i, -16587i)), u_input.a)))), ~_wgslsmith_div_vec2_i32(~vec2<i32>(1i, u_input.b) >> (vec2<u32>(9320u, 1u) % vec2<u32>(32u)), select(vec2<i32>(6948i, u_input.b), abs(vec2<i32>(2147483647i, -2147483647i)), true)));
}

