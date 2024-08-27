struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1972f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = -(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.c.x, 0i, -2147483647i, -1i), vec4<i32>(-1i, 3730i, 63803i, arg_2.c.x)), -vec4<i32>(0i, 0i, -1i, 1i)) ^ vec4<i32>(_wgslsmith_add_i32(arg_2.a.x, 9010i), select(reverseBits(-1i), ~u_input.c, true), max(select(17858i, 41093i, true), 2147483647i << (u_input.b.x % 32u)), 0i));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_3.e))));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(select(max(vec4<u32>(4294967295u, arg_0.x, arg_1.a.x, 20137u), arg_1.a), firstTrailingBit(arg_1.a), 1419f == arg_1.c) ^ _wgslsmith_sub_vec4_u32(reverseBits(arg_1.a), vec4<u32>(arg_0.x, u_input.b.x, arg_0.x, 1u)), arg_1.a, vec4<u32>(_wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(arg_1.a.x, u_input.b.x)), ~1u, u_input.b.x, ~firstTrailingBit(arg_3.b.x)));
    return !select(vec4<bool>(select(true, arg_2.b == arg_3.a, var_1.x > 1u), false, true, !arg_2.b), vec4<bool>(arg_2.b, select(all(vec3<bool>(false, true, arg_3.a)), all(vec4<bool>(false, arg_3.c, arg_1.b.x, arg_2.b)), all(arg_1.b)), arg_3.a, !any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1200f) != _wgslsmith_f_op_f32(trunc(arg_1.d.d)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_5 {
    global0 = arg_0.e;
    var var_0 = Struct_2(-_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-64816i, -10668i, u_input.a.x), vec3<i32>(-18566i, 15341i, -10173i)), vec3<i32>(-2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -u_input.a.x)), any(select(vec4<bool>(arg_0.a, all(vec2<bool>(true, true)), 1u <= arg_0.b.x, arg_0.a), func_3(_wgslsmith_mult_vec3_u32(arg_0.b, arg_0.b), Struct_3(vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec2<bool>(arg_0.c, arg_0.c), 1000f, arg_0), Struct_2(vec3<i32>(u_input.a.x, u_input.c, -21452i), arg_0.c, vec2<i32>(u_input.a.x, u_input.a.x)), arg_0), vec4<bool>(arg_0.c, true, arg_0.d == arg_0.e, arg_0.a & true))), max(firstLeadingBit(u_input.a), max(-vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c, u_input.a.x), u_input.a, vec2<i32>(-6596i, u_input.c) & u_input.a))));
    var_0 = Struct_2(-(var_0.a << (arg_0.b % vec3<u32>(32u))), arg_0.c, -vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, -7465i, var_0.c.x), ~u_input.c), var_0.a.x));
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.e))));
    return Struct_5(Struct_3(~(~vec4<u32>(arg_1, u_input.b.x, 71525u, 1u) ^ vec4<u32>(4294967295u, u_input.b.x, var_1.b.x, 80201u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)))), Struct_1(false, abs(arg_0.b), _wgslsmith_f_op_f32(sign(-1887f)) > _wgslsmith_f_op_f32(select(var_1.e, 600f, var_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -365f))), _wgslsmith_f_op_f32(-var_1.e))), 539f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.e, -2124f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), true)), 185f, -880f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * -311f)), _wgslsmith_f_op_f32(max(var_1.e, _wgslsmith_f_op_f32(-arg_0.d)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(arg_1.a.a.yz << (arg_2 % vec2<u32>(32u)), vec2<u32>(u_input.b.x, ~reverseBits(arg_2.x))) & vec2<u32>(arg_1.a.a.x, 35642u);
    var var_1 = func_2(func_2(Struct_1(!(!arg_1.a.b.x), (vec3<u32>(26385u, 0u, u_input.b.x) ^ vec3<u32>(25630u, 1u, arg_1.a.a.x)) >> (~arg_1.a.a.xxz % vec3<u32>(32u)), !(!arg_1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), func_2(Struct_1(false, arg_1.a.a.wzy, false, arg_0.x, 1168f), _wgslsmith_mult_u32(var_0.x, 0u), u_input.b.x).a.c), var_0.x, ~4294967295u).a.d, _wgslsmith_div_u32(10764u >> (select(~var_0.x, countOneBits(u_input.b.x), !arg_1.a.b.x) % 32u), 41452u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~select(arg_1.a.a.xzw, arg_1.a.d.b, false), countOneBits(arg_1.a.a.xyw)), ~(~arg_1.a.a.x))).a.c;
    var var_2 = ~vec3<u32>(u_input.b.x, _wgslsmith_div_u32(abs(~8465u), ~arg_2.x), arg_2.x);
    var_2 = vec3<u32>(firstTrailingBit(~(~8715u)), u_input.b.x, var_0.x);
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(~49130u, select(4294967295u, arg_1.a.d.b.x, true)));
    return _wgslsmith_f_op_f32(-arg_1.a.d.e);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = countOneBits(reverseBits(1u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<f32>(583f, _wgslsmith_f_op_f32(arg_1 + 1883f), _wgslsmith_f_op_f32(-arg_1)), func_2(Struct_1(arg_0.x, vec3<u32>(arg_3, arg_3, 1u), arg_0.x, arg_1, arg_1), arg_3, 34884u << (arg_3 % 32u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3, 59132u), vec2<u32>(arg_3, 4294967295u))), Struct_2(min(vec3<i32>(arg_2.x, 4218i, u_input.c), vec3<i32>(17092i, arg_2.x, -2147483647i)), true, u_input.a))) + 306f));
    var var_1 = reverseBits(-u_input.c);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - _wgslsmith_f_op_f32(-arg_1)), !all(vec2<bool>(true, true)));
    var_2 = Struct_4(var_2.a, true);
    return func_2(func_2(func_2(Struct_1(select(true, var_2.b, true), min(vec3<u32>(3498u, u_input.b.x, var_0), vec3<u32>(38317u, var_0, var_0)), true && arg_0.x, -1818f, _wgslsmith_f_op_f32(round(arg_1))), (arg_3 & 4294967295u) | _wgslsmith_clamp_u32(u_input.b.x, arg_3, u_input.b.x), 35367u).a.d, ~func_2(func_2(Struct_1(var_2.b, vec3<u32>(980u, 4294967295u, 0u), arg_0.x, var_2.a, var_2.a), 57320u, var_0).a.d, min(1u, 4294967295u), var_0 & var_0).a.d.b.x, 4294967295u).a.d, 0u, max(u_input.b.x, _wgslsmith_mod_u32(0u, 4294967295u))).a;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<u32> {
    global0 = arg_3.c;
    global0 = _wgslsmith_f_op_f32(arg_1 * arg_1);
    global0 = arg_1;
    var var_0 = 0u;
    var var_1 = -1413f;
    return vec2<u32>(min(firstLeadingBit(u_input.b.x & (arg_3.a.x | arg_3.d.b.x)), 73u), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3.a.x, 1u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(11978u, max(u_input.b.x, u_input.b.x), u_input.b.x), u_input.b.x | (_wgslsmith_add_u32(~1u, u_input.b.x) & max(49992u, reverseBits(53805u))));
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 8819u) << (vec4<u32>(54533u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(41605u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)))), ~(~(~107071u)));
    let var_2 = firstTrailingBit(abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.c, -43502i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-56008i, 1i, u_input.a.x))) << (~(vec3<u32>(u_input.b.x, var_1.x, var_1.x) | vec3<u32>(75141u, u_input.b.x, 0u)) % vec3<u32>(32u))));
    var_1 = func_5(min(_wgslsmith_mult_i32(-11835i, -1i), _wgslsmith_add_i32(firstTrailingBit(~var_2.x), -1i)), _wgslsmith_f_op_f32(f32(-1f) * -657f), -min(vec4<i32>(var_2.x << (4294967295u % 32u), -u_input.c, _wgslsmith_mult_i32(var_2.x, 1i), ~19955i), vec4<i32>(select(u_input.c, var_2.x, true), _wgslsmith_mult_i32(1i, 0i), var_2.x, ~u_input.a.x)), func_1(vec3<bool>(true, false, false), -906f, ~u_input.a, (_wgslsmith_mod_u32(u_input.b.x, var_1.x) | u_input.b.x) ^ (firstTrailingBit(u_input.b.x) ^ abs(var_1.x))));
    var var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, -18816i, u_input.a.x), u_input.a.x);
    var_0 = ~abs(firstTrailingBit(~76877u));
    var_3 = var_2.x << (_wgslsmith_add_u32(var_1.x, ~max(u_input.b.x, u_input.b.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(703f, _wgslsmith_f_op_f32(-1255f - 888f)))), _wgslsmith_dot_vec3_u32(func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f + 844f)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_2.xy, vec2<i32>(10256i, u_input.c)), u_input.c), _wgslsmith_add_u32(1u, u_input.b.x) | 4294967295u).a.wxz, abs(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 13206u) | vec3<u32>(1u, var_1.x, u_input.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) + _wgslsmith_f_op_f32(2000f - -2009f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1092f)), _wgslsmith_f_op_f32(-2186f - 219f), false)))), _wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-441f, 955f, -975f) * vec3<f32>(515f, 552f, 566f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1134f - 424f) + _wgslsmith_div_f32(1169f, 107f)))));
}

