struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = -1000f;
    var var_1 = u_input.a;
    var var_2 = (vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(23813u, 0u, u_input.a), ~vec3<u32>(22494u, 0u, 51487u)), ~(~4294967295u), ~(~6625u), 102966u) << (vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(0u, u_input.a)), ~1u, reverseBits(~1u)) % vec4<u32>(32u))) | vec4<u32>(51977u, max(u_input.a, ~u_input.a), ~14939u, countOneBits(_wgslsmith_sub_u32(select(10377u, 1u, true), u_input.a)));
    var var_3 = select(any(select(vec4<bool>(true, u_input.b.x < 4380i, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), all(vec4<bool>(true, true, true, true)))), (true || all(vec4<bool>(true, true, true, true))) && (~u_input.a >= u_input.a), true);
    var var_4 = vec2<bool>(false, true);
    return !vec3<bool>(var_4.x, any(vec2<bool>(!var_4.x, all(vec3<bool>(var_4.x, var_4.x, var_4.x)))), select(u_input.a, ~u_input.a, false) != ~u_input.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    let var_0 = firstTrailingBit(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 16429u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(28548u, u_input.a, 4294967295u, 1u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, 0u))));
    global0 = (2147483647i | (_wgslsmith_dot_vec3_i32(min(vec3<i32>(22211i, arg_3.x, 4973i), vec3<i32>(-38612i, u_input.b.x, -2147483647i)), _wgslsmith_mult_vec3_i32(arg_2.a.b.xyw, vec3<i32>(2147483647i, u_input.b.x, 1i))) ^ 0i)) | 26519i;
    var var_1 = Struct_3(Struct_2(arg_2.a, arg_2.a, vec4<bool>(0u >= ~u_input.a, arg_2.e.x || !arg_2.b.c.x, _wgslsmith_sub_i32(2147483647i, arg_1) == u_input.b.x, true), arg_2.a, select(!vec3<bool>(arg_2.a.c.x, arg_2.b.c.x, arg_2.e.x), arg_2.d.c, true)), vec3<u32>(~u_input.a, firstLeadingBit(var_0.x), abs(~(var_0.x | u_input.a))), Struct_1(_wgslsmith_f_op_f32(step(194f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.a, arg_2.a.d.x)) * _wgslsmith_f_op_f32(-arg_2.d.d.x)))), abs(vec4<i32>(u_input.b.x, arg_1, u_input.b.x, -1i)), arg_2.e, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 414f) * vec2<f32>(928f, 2582f)), arg_0.xx))));
    let var_2 = Struct_4(func_3(abs(vec4<i32>(abs(9672i), _wgslsmith_sub_i32(arg_2.b.b.x, var_1.a.b.b.x), 12199i, _wgslsmith_mult_i32(2147483647i, arg_3.x)))), arg_2.c.x, Struct_3(var_1.a, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(var_1.b.x, 0u, 133394u), var_1.b), vec3<u32>(var_0.x, var_1.b.x, 0u) ^ vec3<u32>(12582u, 14738u, u_input.a)), reverseBits(vec3<u32>(var_1.b.x, var_1.b.x, u_input.a))), Struct_1(arg_2.b.d.x, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_1, arg_2.a.b.x, arg_1), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, arg_1)), ~arg_3), select(select(vec3<bool>(true, var_1.c.c.x, var_1.c.c.x), var_1.c.c, vec3<bool>(true, var_1.a.b.c.x, false)), vec3<bool>(true, var_1.c.c.x, arg_2.a.c.x), true), _wgslsmith_f_op_vec2_f32(exp2(arg_0.xx)))), arg_2);
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, ~var_0.x, 0u, 36709u), ~select(vec4<u32>(var_0.x, var_2.c.b.x ^ 0u, 1u, ~44769u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 1u), vec4<u32>(var_2.c.b.x, 4294967295u, u_input.a, 0u), vec4<u32>(13993u, u_input.a, var_0.x, 0u)), !var_1.a.d.c.x || false));
    return ~(~arg_1);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> vec4<i32> {
    global0 = u_input.b.x;
    var var_0 = _wgslsmith_clamp_i32(countOneBits(-u_input.b.x), -_wgslsmith_mod_i32(2147483647i, (0i >> (1u % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.b.x), u_input.b)), 65481i);
    global0 = countOneBits(func_4(vec3<f32>(-1301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f + -525f)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(step(1908f, -212f)))), 51243i, Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, false), arg_0.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, -642f)))), Struct_1(_wgslsmith_f_op_f32(-323f * -407f), vec4<i32>(-23541i, u_input.b.x, u_input.b.x, u_input.b.x), func_3(vec4<i32>(-2147483647i, -21041i, u_input.b.x, 8252i)), vec2<f32>(1135f, 662f)), select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), true), select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, true), arg_0.x), true), Struct_1(_wgslsmith_f_op_f32(exp2(arg_1)), max(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(33909i, 16091i, u_input.b.x, -8760i)), vec3<bool>(false, arg_0.x, arg_0.x), vec2<f32>(189f, arg_1)), vec3<bool>(arg_1 > arg_1, false, arg_0.x)), -vec4<i32>(u_input.b.x, 1i, -74160i, 12449i) | vec4<i32>(i32(-1i) * -21587i, u_input.b.x, ~(-1i), _wgslsmith_mult_i32(u_input.b.x, 0i))));
    let var_1 = -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b.x, u_input.b.x | 10932i, 0i), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), firstLeadingBit(u_input.b.x), countOneBits(-1i));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f * 300f)), select(~vec4<i32>(u_input.b.x, u_input.b.x, -2711i, -16731i), _wgslsmith_mod_vec4_i32(vec4<i32>(-48537i, 0i, var_1, u_input.b.x), vec4<i32>(-2147483647i, 14372i, 58345i, var_1)), 36704u == u_input.a), vec3<bool>(false, arg_0.x && arg_0.x, !arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), 2163f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(665f, arg_1) - _wgslsmith_f_op_f32(floor(-831f))), vec4<i32>(select(u_input.b.x, u_input.b.x, true), u_input.b.x << (u_input.a % 32u), -u_input.b.x, u_input.b.x), vec3<bool>(true, !arg_0.x, false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1))))), vec4<bool>(true, all(vec3<bool>(true, true, true)) & select(arg_0.x, false, arg_0.x), arg_0.x, true), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + arg_1), 843f)), max(firstLeadingBit(vec4<i32>(var_1, -15434i, var_1, u_input.b.x)), ~vec4<i32>(u_input.b.x, u_input.b.x, var_1, 1i)), vec3<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -164f))), !vec3<bool>(arg_0.x && true, true, false)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(~31716u, firstTrailingBit(u_input.a), _wgslsmith_mult_u32(u_input.a, 87736u))), vec3<u32>(u_input.a, 1u, firstLeadingBit(35457u ^ u_input.a)), countOneBits(min(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), Struct_1(-900f, abs(vec4<i32>(u_input.b.x, var_1 ^ var_1, var_1 >> (44099u % 32u), -u_input.b.x)), select(vec3<bool>(select(true, true, true), true, !arg_0.x), vec3<bool>(false, true, true), func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-2607i, -33491i, 12950i, 2147483647i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 18858i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) * vec2<f32>(-1023f, _wgslsmith_f_op_f32(f32(-1f) * -484f)))));
    return -vec4<i32>(var_2.a.a.b.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(43465i, 51517i, var_2.c.b.x), max(var_1, 69360i)) & var_1, min(var_1, -61584i) << (_wgslsmith_mult_u32(u_input.a, 66710u) % 32u), u_input.b.x);
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-241f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f + -1509f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) + 1004f) * _wgslsmith_f_op_f32(f32(-1f) * -554f))), ~(~select(func_2(vec2<bool>(false, false), 104f), _wgslsmith_add_vec4_i32(vec4<i32>(-18502i, 0i, arg_0, u_input.b.x), vec4<i32>(arg_0, arg_0, 14993i, u_input.b.x)), true)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(397f, -757f), vec2<f32>(777f, -1757f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(118f, 587f), vec2<f32>(-1300f, -794f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(-2215f, -1183f), vec2<f32>(-341f, 1542f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-783f, -794f), vec2<f32>(224f, -425f)))))));
    global0 = u_input.b.x;
    global0 = var_0.b.x & _wgslsmith_clamp_i32(8869i, 5174i, _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(1i, ~arg_0, 1i, abs(arg_0))));
    return Struct_3(Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1122f)), min(var_0.b, -var_0.b), select(var_0.c, var_0.c, !var_0.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(318f, 668f) - var_0.d) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, 1803f))))), select(!vec4<bool>(var_0.c.x, var_0.c.x, false, true), !select(vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), vec4<bool>(false, false, var_0.c.x, true), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2044f), var_0.b, var_0.c, vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(min(892f, var_0.d.x)))), var_0.c), abs(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.a, 36901u, 4971u) << (vec3<u32>(54036u, 4294967295u, u_input.a) % vec3<u32>(32u))), ~vec3<u32>(1u, 36600u, 12370u), vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 1u, ~u_input.a))), Struct_1(_wgslsmith_f_op_f32(-var_0.a), select(_wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, u_input.b.x, -19579i, arg_0)), var_0.b, !vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), select(vec3<bool>(67025u < u_input.a, true, true), vec3<bool>(false | var_0.c.x, var_0.c.x & var_0.c.x, var_0.d.x > var_0.d.x), var_0.c.x), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(countOneBits(-1i));
    var var_1 = u_input.a ^ 37198u;
    var_1 = ~(4294967295u << (firstLeadingBit(select(_wgslsmith_mod_u32(1877u, 41672u), ~1u, true)) % 32u));
    global0 = func_2(vec2<bool>(!var_0.c.c.x, false), -368f).x;
    let var_2 = ~(_wgslsmith_add_vec2_u32(var_0.b.xx, vec2<u32>(select(4212u, 1u, false), func_1(-2147483647i).b.x)) >> (vec2<u32>(abs(~var_0.b.x), ~u_input.a) % vec2<u32>(32u)));
    var var_3 = Struct_1(var_0.a.b.a, ~vec4<i32>(0i, u_input.b.x, var_0.a.b.b.x, var_0.a.b.b.x), var_0.a.c.xww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 955f))))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(436f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.a * -1737f))), -_wgslsmith_add_vec4_i32(var_0.a.b.b, max(vec4<i32>(var_3.b.x, -25736i, u_input.b.x, 2379i), vec4<i32>(var_3.b.x, 3401i, var_0.c.b.x, u_input.b.x))), func_1(var_0.c.b.x).a.a.c, _wgslsmith_f_op_vec2_f32(select(var_0.c.d, var_0.a.a.d, var_3.c.zy))), Struct_1(-513f, ~var_0.a.d.b >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 4458u, 12492u), vec4<u32>(var_0.b.x, u_input.a, var_0.b.x, var_2.x)) % vec4<u32>(32u)), var_3.c, var_3.d), vec4<bool>(!(var_3.c.x & (53445u <= var_2.x)), any(var_0.c.c), select(var_3.c.x, all(!vec2<bool>(false, var_0.a.b.c.x)), all(vec3<bool>(true, var_3.c.x, var_0.c.c.x))), var_0.a.c.x), func_1(var_0.a.a.b.x).c, func_3(var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1471f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.d.x - -813f))))), vec2<u32>(1u, var_0.b.x));
}

