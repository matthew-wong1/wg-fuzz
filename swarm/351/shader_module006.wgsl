struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_1(firstTrailingBit(28682u << (u_input.e % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b, arg_0.b), arg_0.b)))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_add_u32(min(min(_wgslsmith_mod_u32(1u, arg_2), 10459u | var_1.a) & 31883u, arg_2), 1u);
    var var_3 = vec2<bool>(select(arg_1.x, arg_1.x, true), all(vec4<bool>(all(arg_1), arg_0.b > _wgslsmith_f_op_f32(round(var_1.b)), false, !arg_1.x)));
    let var_4 = _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, 1u), countOneBits(~vec2<u32>(5630u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.a, arg_0.a), vec3<u32>(arg_2, u_input.e, arg_2)))));
    return arg_0.b;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = select(select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 1u, 5094u), vec4<u32>(u_input.e, 0u, 4294967295u, 52971u))), vec4<u32>(firstLeadingBit(~0u), ~78641u, u_input.e, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.a, 0u, u_input.e, 1u)), vec4<u32>(44799u, arg_0.a, u_input.e, 23337u) | vec4<u32>(u_input.e, arg_0.a, arg_0.a, u_input.e))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, false, true)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, 34097u, _wgslsmith_mod_u32(u_input.e, u_input.e), ~1u), abs(countOneBits(vec4<u32>(5547u, arg_0.a, arg_0.a, arg_0.a)))), vec4<u32>(countOneBits(u_input.e << (52280u % 32u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(74133u, 4294967295u, 1u), _wgslsmith_div_u32(4294967295u, 4294967295u)), firstTrailingBit(6598u), ~(~arg_0.a))), true);
    let var_1 = arg_0;
    let var_2 = 1i;
    var_0 = firstTrailingBit(~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, var_0.x, arg_0.a, 1u), vec4<u32>(var_1.a, u_input.e, arg_0.a, 3139u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.e, var_1.a, u_input.e), vec4<u32>(1u, arg_0.a, var_1.a, var_1.a)) % vec4<u32>(32u))) | vec4<u32>(reverseBits(u_input.e), ~(4350u >> (1u % 32u)), firstTrailingBit(124776u), var_1.a));
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_0.x, 11178u, u_input.e) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, arg_0.a, var_1.a, arg_0.a), vec4<u32>(arg_0.a, 0u, 1u, var_0.x), vec4<u32>(u_input.e, 2167u, 0u, 80245u)) % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.a, 31436u, u_input.e, arg_0.a))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.e, 1u, arg_0.a), ~(~vec4<u32>(u_input.e, u_input.e, var_0.x, u_input.e)), vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), var_1.a << (17299u % 32u), 81133u, ~u_input.e))), vec4<u32>(49384u, var_0.x, reverseBits(var_0.x), 4294967295u));
    return arg_0.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: i32) -> vec4<i32> {
    var var_0 = Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(44259u, _wgslsmith_f_op_f32(func_3(Struct_1(12143u, -1000f), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), u_input.e, u_input.c)))))));
    var_0 = Struct_1(~(~var_0.a), 309f);
    var_0 = Struct_1(u_input.e, arg_0.x);
    var_0 = Struct_1(~(~6349u), arg_0.x);
    let var_1 = Struct_1(u_input.e, _wgslsmith_f_op_f32(1253f + var_0.b));
    return _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 1i, _wgslsmith_add_i32(select(-u_input.d, -1i, select(arg_1.x, arg_1.x, true)), select(min(2147483647i, 19174i), ~32757i, -723f != var_0.b)), firstLeadingBit(min(_wgslsmith_clamp_i32(u_input.a, arg_2, -2147483647i), -43490i))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_2 | abs(0i), _wgslsmith_mult_i32(~14417i, _wgslsmith_mult_i32(0i, arg_2)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, -6070i), vec2<i32>(-1i, 2147483647i)), abs(vec2<i32>(u_input.d, u_input.c.x)))), ~select(vec4<i32>(-12588i, u_input.c.x, 0i, arg_2) | vec4<i32>(u_input.c.x, arg_2, -27853i, -14221i), abs(vec4<i32>(u_input.d, 5433i, arg_2, 1i)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, u_input.d, -2147483647i), vec4<i32>(2147483647i, u_input.c.x, 48595i, u_input.c.x)), func_2(vec4<f32>(-2128f, arg_1.b, 1000f, arg_1.b), vec2<bool>(false, false), u_input.c.x), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 58055i, u_input.a, 10127i), -vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -25076i)), reverseBits(func_2(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, 492f), vec2<bool>(true, false), arg_0.x)))), -42085i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1530f)), -1108f, _wgslsmith_f_op_f32(func_4(Struct_1(arg_2, arg_1.b))), _wgslsmith_f_op_f32(round(arg_1.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b - 1488f), -1354f, 555f, _wgslsmith_f_op_f32(arg_1.b - -1876f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, arg_1.b, arg_1.b, arg_1.b)))));
    let var_2 = Struct_1(_wgslsmith_div_u32(0u, arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(ceil(var_1.x)), true)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1154f;
    var var_1 = 68986u;
    var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(0u), ~_wgslsmith_add_u32(u_input.e, u_input.e) << (4294967295u % 32u)), 0u);
    var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_1(u_input.c, Struct_1(u_input.e, var_0), u_input.e), 53422u, 19296u), abs(~vec3<u32>(u_input.e, u_input.e, u_input.e))) ^ ~firstLeadingBit(u_input.e);
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e | u_input.e, 1u, 20967u), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(20617u, u_input.e, 15971u)), vec3<u32>(1u, 41260u, u_input.e)), min(_wgslsmith_mod_vec3_u32(vec3<u32>(16882u, 30098u, 27759u), vec3<u32>(u_input.e, 4294967295u, 0u)), ~vec3<u32>(59052u, u_input.e, u_input.e))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 8576u, 1u), vec3<u32>(1u, u_input.e, 1u))) % vec3<u32>(32u)), vec3<u32>(~(1u << ((39328u & u_input.e) % 32u)), reverseBits(u_input.e << (u_input.e % 32u)), u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(-30541i, _wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1795f - -816f)), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-1000f * var_0))))));
}

