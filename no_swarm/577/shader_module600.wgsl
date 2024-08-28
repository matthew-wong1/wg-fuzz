struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    global0 = ~39247i;
    let var_0 = firstLeadingBit(u_input.e.x);
    var var_1 = Struct_3(arg_0.x, Struct_2(Struct_1(vec4<i32>(~(-1i), _wgslsmith_mult_i32(u_input.c, u_input.d), _wgslsmith_mod_i32(u_input.d, u_input.d), -u_input.a.x), var_0, u_input.e.xz, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, 0i, -2147483647i), vec4<i32>(u_input.a.x, 0i, -45143i, 0i)), _wgslsmith_mod_i32(-1i, -1i), u_input.c ^ -1i), vec4<f32>(959f, _wgslsmith_f_op_f32(1350f + arg_1.x), -779f, _wgslsmith_f_op_f32(round(arg_1.x)))), 1i, u_input.b.x | firstTrailingBit(u_input.e.x)), arg_1.x, 4294967295u & (u_input.e.x << (firstTrailingBit(var_0) % 32u)));
    var var_2 = Struct_3(true, var_1.b, _wgslsmith_f_op_f32(var_1.c + var_1.c), reverseBits(1u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.e.x, -1294f, 1284f, 251f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.a.e)) * _wgslsmith_f_op_vec4_f32(-var_1.b.a.e)))));
    return var_2.b;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    var var_0 = ~vec4<u32>(arg_0, _wgslsmith_sub_u32(10159u, arg_0), _wgslsmith_mult_u32(arg_0, reverseBits(~u_input.b.x)), u_input.b.x >> (_wgslsmith_dot_vec2_u32(~u_input.b, arg_2.a.c >> (vec2<u32>(arg_2.a.c.x, 4294967295u) % vec2<u32>(32u))) % 32u));
    let var_1 = var_0.wyx;
    global0 = 2147483647i ^ arg_2.b;
    let var_2 = func_2(select(vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false)), 0i < _wgslsmith_div_i32(-arg_2.a.a.x, func_2(vec3<bool>(false, false, true), vec2<f32>(arg_2.a.e.x, arg_2.a.e.x), true).b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy) - vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_2.a.e.x - -986f))) - arg_1.zw), !(true || select(any(vec2<bool>(true, true)), true, any(vec4<bool>(false, true, true, false)))));
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(59973u, 20711u, arg_2.c, 31861u), ~vec4<u32>(var_0.x, abs(countOneBits(39962u)), 0u, 4294967295u));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> i32 {
    global0 = _wgslsmith_mod_i32(abs(-_wgslsmith_add_i32(19248i, 1i)), ~u_input.d) & countOneBits(arg_1.x >> (~_wgslsmith_sub_u32(0u, u_input.e.x) % 32u));
    global0 = min(~_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, arg_1.x) & _wgslsmith_dot_vec4_i32(arg_1, arg_1), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 35786i, u_input.c), arg_1))), abs(-1i));
    global0 = -arg_1.x;
    global0 = -arg_1.x;
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1381f)), 1548f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-722f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))), Struct_2(Struct_1(arg_1, u_input.b.x, select(vec2<u32>(u_input.e.x, 4294967295u), ~vec2<u32>(u_input.b.x, u_input.e.x), !arg_0.x), ~vec3<i32>(69581i, arg_1.x, arg_1.x), vec4<f32>(_wgslsmith_f_op_f32(step(794f, 178f)), -571f, _wgslsmith_f_op_f32(-397f - 1000f), 1290f)), _wgslsmith_clamp_i32(u_input.c, select(countOneBits(7025i), -2147483647i, true), u_input.c), _wgslsmith_mult_u32(u_input.e.x, 21758u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, 511f)), _wgslsmith_f_op_f32(776f * -507f))))), u_input.b.x);
    return -(u_input.a.x ^ ~2147483647i);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> vec3<i32> {
    global0 = func_4(vec3<bool>(_wgslsmith_f_op_f32(abs(arg_3.b.a.e.x)) > -145f, false, func_3(1u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(-arg_3.b.a.e.x), -560f, -688f), func_2(!vec3<bool>(false, arg_3.a, true), arg_3.b.a.e.xx, 4294967295u == arg_3.b.a.c.x))), max(-_wgslsmith_add_vec4_i32(~vec4<i32>(35370i, 20403i, arg_2.x, 4931i), -arg_3.b.a.a), func_2(select(vec3<bool>(arg_1.x, arg_3.a, arg_3.a), select(vec3<bool>(arg_3.a, arg_1.x, true), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, true, false)), 0u > u_input.b.x), arg_3.b.a.e.yw, !arg_3.a).a.a));
    var var_0 = Struct_1(min(vec4<i32>(-(~arg_2.x), ~(-arg_3.b.b), _wgslsmith_mult_i32(func_4(vec3<bool>(false, true, true), vec4<i32>(-1i, 1i, -28099i, -15051i)), arg_0.x), _wgslsmith_div_i32(arg_0.x >> (37675u % 32u), reverseBits(0i))), vec4<i32>(max(29430i, 1944i), -1i, u_input.c, -(arg_2.x >> (4294967295u % 32u)))), u_input.e.x, vec2<u32>(1u, ~u_input.e.x) | (firstLeadingBit(select(arg_3.b.a.c, u_input.b, false)) >> (vec2<u32>(u_input.e.x, ~7040u) % vec2<u32>(32u))), ~vec3<i32>(abs(-2147483647i), _wgslsmith_mult_i32(0i, arg_0.x) & min(2147483647i, arg_0.x), (arg_0.x & arg_0.x) ^ arg_0.x), arg_3.b.a.e);
    let var_1 = func_2(vec3<bool>(false, arg_1.x, select(any(vec3<bool>(arg_3.a, true, arg_1.x)), arg_1.x, all(vec4<bool>(arg_1.x, false, arg_3.a, arg_1.x))) == (u_input.e.x == ~0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(arg_3.c + var_0.e.x))), arg_3.a);
    let var_2 = arg_1.x;
    var var_3 = ~select(min(arg_0.x, -arg_0.x) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_3.b.a.b, 4294967295u, arg_3.d, arg_3.b.c)), vec4<u32>(arg_3.b.c, 0u, 53153u, var_0.c.x) << (vec4<u32>(var_0.b, 56650u, 43880u, arg_3.b.c) % vec4<u32>(32u))) % 32u), min(~_wgslsmith_mult_i32(arg_3.b.a.d.x, -15974i), -2147483647i), true);
    return -vec3<i32>(_wgslsmith_mult_i32(-var_1.b ^ _wgslsmith_mult_i32(-2092i, u_input.d), -1i), -11269i, -(~arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_i32(u_input.d ^ 1i, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(func_1(u_input.a.xz, vec2<bool>(true, true), vec4<i32>(1i, 2147483647i, u_input.a.x, u_input.c), Struct_3(true, Struct_2(Struct_1(vec4<i32>(u_input.d, -55368i, -2147483647i, 15211i), u_input.e.x, u_input.b, vec3<i32>(-18270i, u_input.c, 2404i), vec4<f32>(332f, -387f, -314f, -492f)), u_input.c, u_input.e.x), 145f, u_input.b.x)), u_input.a >> (u_input.e % vec3<u32>(32u))) >> (u_input.e % vec3<u32>(32u))));
    var var_0 = func_2(vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), all(vec2<bool>(true, true)) & false, true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(240f, 188f)))), vec2<f32>(_wgslsmith_f_op_f32(-1f), 1f))), !all(vec2<bool>(u_input.e.x >= u_input.e.x, false))).a;
    let var_1 = all(vec4<bool>(false, true, true, false));
    let var_2 = Struct_3(~u_input.b.x <= _wgslsmith_mod_u32(~1u, ~countOneBits(var_0.b)), Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.d, 1i, u_input.a.x, 0i), var_0.a, vec4<bool>(var_1, var_1, true, var_1)), var_0.a, vec4<i32>(48006i, 5203i, u_input.a.x, var_0.d.x)), max(1u, ~1u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(23677u, var_0.b), vec2<u32>(u_input.b.x, 19942u)), vec2<u32>(0u, u_input.e.x) << (u_input.e.zy % vec2<u32>(32u))), -reverseBits(var_0.d), var_0.e), min(var_0.a.x, var_0.d.x), 0u), 1462f, countOneBits(_wgslsmith_mult_u32(0u | ~var_0.c.x, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e))));
    let var_3 = vec4<i32>(abs(_wgslsmith_div_i32(-36630i, firstTrailingBit(2147483647i))), -2147483647i, max(max(-var_2.b.a.d.x, ~_wgslsmith_mult_i32(u_input.c, var_0.d.x)), u_input.c), abs(_wgslsmith_mult_i32(-min(var_0.a.x, -1i), -u_input.c)));
    let var_4 = -1000f;
    let var_5 = var_2.b.a;
    var var_6 = _wgslsmith_div_f32(func_2(!vec3<bool>(true, var_2.a, !var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.e.x, -511f)), true).a.e.x, -313f);
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b.a.a.x);
}

