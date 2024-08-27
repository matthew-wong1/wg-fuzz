struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f + _wgslsmith_f_op_f32(max(276f, -1161f)))), 216f));
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    var var_1 = true;
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(-27173i, 2569i, _wgslsmith_mult_i32(1i, arg_0 & 0i) & (u_input.c ^ min(arg_0, arg_0))), abs(-(arg_0 | -1i)) >> (~38814u % 32u), ~(~(~(-u_input.c))), abs(~u_input.c));
    return -(~24409i);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = array<vec2<f32>, 23>();
    var var_0 = Struct_1(~func_3(arg_0.x << (_wgslsmith_add_u32(u_input.a, u_input.b.x) % 32u)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))) | !(4470u > u_input.a), true), -firstTrailingBit(min(_wgslsmith_div_vec4_i32(vec4<i32>(-5014i, arg_0.x, arg_0.x, 1i), vec4<i32>(arg_0.x, 0i, arg_0.x, 1i)), vec4<i32>(25366i, u_input.c, 15900i, u_input.c))), ~(-33791i), 4294967295u);
    var var_1 = vec2<bool>(var_0.b.x, any(vec3<bool>(var_0.b.x, all(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), false)));
    var var_2 = u_input.b.x;
    var_1 = !var_0.b;
    return countOneBits(max(_wgslsmith_dot_vec2_u32(min(min(u_input.b.zz, u_input.d), vec2<u32>(u_input.b.x, u_input.a) ^ u_input.b.xx), u_input.d ^ ~u_input.b.yy), 4294967295u));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1364f, 1001f, 1000f) - vec3<f32>(-2083f, 763f, 1131f)), _wgslsmith_div_vec3_f32(vec3<f32>(-734f, 814f, 1073f), vec3<f32>(-244f, 122f, 1431f)), u_input.c >= 1i)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-979f, -938f, -524f) * vec3<f32>(418f, -1563f, -1018f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(597f, 947f, -291f), vec3<f32>(1239f, 297f, -843f))))))));
    var var_1 = !select(vec2<bool>(1u <= func_2(vec3<i32>(-2147483647i, 0i, -762i)), true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, var_0.x >= var_0.x)), select(true, true, u_input.d.x > (u_input.b.x ^ u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1091f)));
    var_1 = vec2<bool>(false, any(!vec3<bool>(true, false, all(vec4<bool>(var_1.x, false, var_1.x, true)))));
    var var_3 = vec2<f32>(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2, 502f), 312f, false))), var_0.x));
    return Struct_1(_wgslsmith_sub_i32(func_3(_wgslsmith_add_i32(-u_input.c, u_input.c & -2147483647i)), _wgslsmith_mod_i32(2147483647i, max(-1i, -2147483647i))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), false), !vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))), select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), true)), !select(select(vec2<bool>(true, false), vec2<bool>(false, var_1.x), var_1.x), !vec2<bool>(var_1.x, var_1.x), all(vec3<bool>(var_1.x, false, var_1.x))), select(select(select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), true), vec2<bool>(true, true), any(vec4<bool>(true, var_1.x, true, true))), !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), true), vec2<bool>(true, true))), abs(abs(~(~vec4<i32>(-11216i, 1i, -17430i, u_input.c)))), func_3(u_input.c), ~firstLeadingBit(u_input.b.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(sign(-1000f))) + arg_0), arg_0, _wgslsmith_div_f32(arg_0, arg_0)));
    var var_1 = func_1();
    let var_2 = ~_wgslsmith_dot_vec4_u32(reverseBits(select(vec4<u32>(arg_3.b.e, u_input.d.x, 85888u, 4294967295u), ~vec4<u32>(u_input.a, var_1.e, 37643u, 1u), !arg_3.a.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~49038u, var_1.e, firstTrailingBit(arg_1.e), _wgslsmith_mod_u32(var_1.e, 0u)), vec4<u32>(countOneBits(9039u), 4294967295u, 1u, arg_3.b.e), ~(~vec4<u32>(0u, u_input.d.x, 0u, u_input.b.x))));
    global0 = array<vec2<f32>, 23>();
    let var_3 = Struct_2(arg_1, arg_1, func_1(), func_1().c.zw);
    return arg_3.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    let var_0 = func_4(1851f, func_1(), u_input.c, Struct_2(Struct_1(countOneBits(9174i), vec2<bool>(true, 2147483647i <= u_input.c), abs(firstTrailingBit(vec4<i32>(-2147483647i, -1i, u_input.c, -2147483647i))), 0i, u_input.a >> ((63880u >> (u_input.b.x % 32u)) % 32u)), func_1(), Struct_1(u_input.c, func_1().b, vec4<i32>(-35667i, -25372i, -1i, u_input.c) << (~vec4<u32>(u_input.b.x, 17838u, u_input.d.x, u_input.b.x) % vec4<u32>(32u)), ~abs(-37883i), 4294967295u), vec2<i32>(-1i, func_3(~0i))));
    let var_1 = ~(_wgslsmith_sub_vec4_u32((vec4<u32>(0u, 39090u, u_input.b.x, 18509u) | vec4<u32>(4294967295u, u_input.d.x, 1u, 4294967295u)) << ((vec4<u32>(u_input.a, u_input.a, 18198u, 4294967295u) << (vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~select(vec4<u32>(u_input.d.x, 935u, u_input.b.x, 4294967295u), vec4<u32>(1u, u_input.a, 44080u, 0u), vec4<bool>(var_0, var_0, var_0, true))) << (_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 49842u), vec4<u32>(u_input.a, u_input.d.x, u_input.a, 1937u))), ~countOneBits(vec4<u32>(4294967295u, 76122u, 49653u, u_input.b.x)), ~(vec4<u32>(28908u, u_input.b.x, 38498u, u_input.b.x) & vec4<u32>(29268u, u_input.a, 1u, 4294967295u))) % vec4<u32>(32u)));
    var var_2 = !(!vec4<bool>(all(vec4<bool>(var_0, false, false, false)), var_0, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0, true), vec3<bool>(var_0, false, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_1), _wgslsmith_f_op_f32(-725f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -895f)))));
}

