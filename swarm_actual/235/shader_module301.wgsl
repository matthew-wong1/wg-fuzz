struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: f32 = -1170f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(false);
    let var_1 = Struct_2(u_input.a, Struct_1(all(!vec3<bool>(var_0.a, true, var_0.a))), firstTrailingBit(~0i), select(-(~abs(vec4<i32>(u_input.a, u_input.c.x, -2147483647i, u_input.a))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -7473i, -1i, u_input.c.x), vec4<i32>(u_input.c.x, 1i, 24602i, 10581i)) & vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.a), min(-vec4<i32>(-2390i, -5637i, -2147483647i, -24231i), vec4<i32>(u_input.a, -62335i, -16852i, u_input.a) >> (global0[_wgslsmith_index_u32(u_input.b, 17u)] % vec4<u32>(32u))), reverseBits(vec4<i32>(u_input.c.x, 0i, u_input.a, 2147483647i)) >> ((vec4<u32>(14386u, 67690u, u_input.b, u_input.b) & global0[_wgslsmith_index_u32(u_input.b, 17u)]) % vec4<u32>(32u))), vec4<bool>(true, true && (var_0.a || false), !var_0.a, var_0.a)), _wgslsmith_clamp_i32(countOneBits(u_input.c.x), u_input.a, _wgslsmith_mult_i32(2147483647i, -u_input.a >> (firstTrailingBit(7103u) % 32u))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1612f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1439f, -488f, var_2.b.a)), -1211f), 1233f))) - vec3<f32>(-1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1353f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1159f + 215f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 - var_3) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_3 + vec3<f32>(var_3.x, -425f, var_3.x)))), _wgslsmith_f_op_vec3_f32(-var_3))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))), 434f, _wgslsmith_f_op_f32(min(932f, var_3.x))));
    return ~(~countOneBits(_wgslsmith_dot_vec3_i32(var_2.d.yzy, vec3<i32>(36513i, u_input.c.x, var_1.e)))) >> (countOneBits(u_input.b) % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: i32) -> vec4<bool> {
    let var_0 = vec3<bool>(true, _wgslsmith_mod_i32(func_3(), arg_0.x) < 1i, true);
    var var_1 = Struct_2(u_input.c.x, Struct_1(var_0.x), ~countOneBits(~u_input.c.x) << (arg_2.x % 32u), reverseBits(-(~arg_0) << (~countOneBits(vec4<u32>(arg_1.x, 20562u, 0u, u_input.b)) % vec4<u32>(32u))), ~countOneBits(2147483647i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -1610f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f + -1000f))))));
    var var_3 = Struct_2(1i, var_1.b, -1i, ~vec4<i32>(~(-18655i) >> ((u_input.b ^ u_input.b) % 32u), 2147483647i, 2147483647i, ~_wgslsmith_mod_i32(0i, 2147483647i)), var_1.d.x);
    let var_4 = Struct_1(any(vec3<bool>(true, var_1.b.a, true)));
    return select(!vec4<bool>(arg_3 <= firstTrailingBit(-15162i), !var_1.b.a || var_4.a, true == any(vec2<bool>(var_0.x, var_1.b.a)), var_0.x), !(!(!vec4<bool>(true, var_4.a, false, false))), any(vec2<bool>(!var_4.a && false, var_4.a)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = ~(~u_input.b);
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    let var_2 = select(select(func_2(abs(~vec4<i32>(11195i, 1i, u_input.c.x, 2147483647i)), ~select(vec3<u32>(u_input.b, 27874u, var_1), vec3<u32>(9569u, 0u, 45979u), true), vec2<u32>(abs(var_1), _wgslsmith_mod_u32(arg_0, u_input.b)), -countOneBits(arg_1.c)), vec4<bool>(false, !any(vec2<bool>(arg_2.x, true)), arg_3, arg_3), vec4<bool>(any(vec4<bool>(arg_1.b.a, true, arg_1.b.a, arg_2.x)), true, true, arg_1.b.a)), !arg_2, vec4<bool>(arg_2.x, (arg_2.x & true) || !(!arg_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(404f * 318f) * _wgslsmith_f_op_f32(round(-1496f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(446f, -799f, false)), _wgslsmith_div_f32(1007f, -1450f))), all(vec3<bool>(any(vec3<bool>(true, arg_1.b.a, false)), !arg_1.b.a, true))));
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_u32(~(~(~32697u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(22515u & ~u_input.b, u_input.b, u_input.b & 1u), 0u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1448f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_0 = true | !((_wgslsmith_sub_i32(2147483647i, u_input.a) != 1i) | func_4(func_1(4294967295u, Struct_2(-1i, Struct_1(true), u_input.a, vec4<i32>(1i, u_input.c.x, 2147483647i, -46238i), u_input.a), vec4<bool>(true, false, false, false), true), u_input.a, func_1(u_input.b, Struct_2(u_input.c.x, Struct_1(false), u_input.a, vec4<i32>(-30802i, u_input.a, 1i, -5493i), u_input.a), vec4<bool>(true, false, false, true), false)));
    var var_1 = vec3<bool>(any(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_1(1u, Struct_2(2803i, Struct_1(true), u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.a), u_input.a), vec4<bool>(true, false, true, false), true).a, true))), false);
    let var_2 = ~30590u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1000f, -2471f), 1921f, _wgslsmith_f_op_f32(sign(667f)), _wgslsmith_f_op_f32(f32(-1f) * -528f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1539f, -911f, -299f, -1209f) - vec4<f32>(955f, -1517f, 1000f, 121f)))), vec4<f32>(-331f, -633f, 1f, -1838f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(-42999i, u_input.a, u_input.c.x) << (min(vec3<u32>(var_2, 0u, var_2), ~vec3<u32>(35496u, 1u, 3631u)) % vec3<u32>(32u))), vec3<u32>(10429u, var_2, u_input.b), _wgslsmith_dot_vec3_i32(abs(reverseBits(vec3<i32>(u_input.a, u_input.a, 0i))) << (~vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(abs(14826i), 1i), -firstLeadingBit(5913i), firstTrailingBit(i32(-1i) * -4047i))), select(var_2 << (4294967295u % 32u), abs(~var_2), !var_1.x));
}

