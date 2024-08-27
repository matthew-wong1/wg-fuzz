struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))))));
    var var_1 = vec4<bool>(all(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), false, true, !((true && any(vec4<bool>(false, false, true, true))) & true));
    let var_2 = true;
    var var_3 = _wgslsmith_sub_u32(~0u, u_input.a);
    let var_4 = -3857i;
    return (~_wgslsmith_sub_i32(var_4, -var_4) <= _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -43812i, -17401i, -2147483647i), vec4<i32>(_wgslsmith_add_i32(var_4, -50828i), -51191i, min(var_4, var_4), var_4 | -12431i))) & select(!(true && any(var_1.yxz)), true, true);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0;
    var var_1 = arg_1.e;
    let var_2 = Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b * vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(721f * 529f), _wgslsmith_f_op_f32(-var_0), var_0)) * vec4<f32>(-468f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1483f * arg_1.b.x) + -411f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-203f - var_0), var_0), -477f)), arg_1.c, !arg_1.a, _wgslsmith_f_op_f32(abs(arg_1.b.x)));
    var_1 = _wgslsmith_f_op_f32(floor(-221f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.b.x, -1000f)), -1369f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(570f - arg_0), _wgslsmith_f_op_f32(abs(-1067f)))))) + _wgslsmith_f_op_f32(-arg_0));
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = ~u_input.a;
    var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(func_4(-360f, Struct_2(func_3(_wgslsmith_f_op_f32(max(-488f, _wgslsmith_div_f32(648f, 191f)))), vec4<f32>(1901f, 1432f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 826f), ~u_input.a, false, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1104f)), _wgslsmith_f_op_f32(-2572f + 522f)))))));
    let var_2 = 1583f;
    var_0 = u_input.a | (4294967295u & select(47418u, u_input.a, arg_0));
    return 0i;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    var var_0 = !select(!(!(!vec2<bool>(true, arg_0.b))), select(!(!vec2<bool>(true, arg_0.b)), select(!vec2<bool>(arg_0.b, false), !vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.b, false), vec2<bool>(true, true), vec2<bool>(false, arg_0.b))), arg_0.b), !select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b)), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), arg_0.b)));
    var var_1 = arg_2.x | arg_0.c;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -815f)) * _wgslsmith_f_op_f32(-397f + 525f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(837f))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = arg_0;
    var var_1 = !func_5(Struct_1(vec2<u32>(~0u, ~1u), arg_2.d, max(_wgslsmith_div_i32(-1i, 2147483647i), -5026i)), max(19708u, var_0.c ^ _wgslsmith_div_u32(43425u, 1u)), vec2<i32>(reverseBits(_wgslsmith_mod_i32(-1i, -2147483647i)), func_2(!var_0.a, -18012i)), _wgslsmith_mod_vec3_u32(vec3<u32>(~27541u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.c, var_0.c, 1u), vec4<u32>(3210u, 4294967295u, 4294967295u, 1u)), arg_0.c), ~max(vec3<u32>(arg_0.c, 5611u, arg_0.c), vec3<u32>(0u, 0u, var_0.c))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-518f, arg_0.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) + arg_0.b.x)))), ~(~_wgslsmith_clamp_i32(2147483647i, 0i, -28529i)) < ~(-1i)));
    var var_3 = -max(_wgslsmith_sub_vec3_i32(~vec3<i32>(1142i, -11864i, -1i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(5015u, u_input.a, 1u), vec3<u32>(12678u, arg_0.c, 20218u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-29408i, 1i, -33959i)), vec3<i32>(-6456i, -1i, 2147483647i) << (vec3<u32>(0u, u_input.a, 91614u) % vec3<u32>(32u)))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(49725i, 2147483647i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(-1i, 34216i, 33168i), vec3<i32>(0i, 32893i, -36098i))));
    let var_4 = vec4<f32>(-169f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.e, -820f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(exp2(arg_2.b.x))))), 2952f, _wgslsmith_f_op_f32(-var_0.b.x));
    return var_3.x;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_add_i32(func_1(var_0, select(select(true, all(vec2<bool>(true, true)), u_input.a == 81557u), true, arg_0.a), arg_0, all(vec2<bool>(true, true))), _wgslsmith_mult_i32(1i & arg_1.c, 2147483647i));
    let var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~select(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c, -2147483647i), vec2<i32>(-7334i, arg_1.c)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), vec2<i32>(arg_1.c, 2147483647i), vec2<i32>(4162i, arg_1.c)), arg_1.b), ~max(~vec2<i32>(var_1, 48899i), firstTrailingBit(vec2<i32>(arg_1.c, -14364i)))), vec2<i32>(arg_1.c, var_1));
    let var_4 = abs(~(-(var_3 | firstLeadingBit(var_1))));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-1000f, 422f, 1528f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(func_1(Struct_2(false, vec4<f32>(var_0.x, -823f, var_0.x, var_0.x), 0u, false, -327f), true, Struct_2(true, vec4<f32>(-565f, -1508f, var_0.x, var_0.x), u_input.a, true, var_0.x), false) >= min(5631i, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1499f, -708f, var_0.x, 489f)))), u_input.a, true, _wgslsmith_f_op_f32(-var_0.x)), Struct_1(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), true, firstTrailingBit(-68804i) >> (~u_input.a % 32u)), vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(ceil(-187f)), Struct_2(true, vec4<f32>(var_0.x, 2711f, var_0.x, var_0.x), u_input.a, true, 1034f))), _wgslsmith_f_op_f32(-var_0.x), -205f), _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(func_4(var_0.x, Struct_2(true, vec4<f32>(var_0.x, var_0.x, 1294f, 947f), 1u, false, var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(846f - var_0.x)))), -378f);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-778f)), -1175f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(714f + var_0.x), _wgslsmith_f_op_f32(select(428f, var_0.x, false)), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_6(Struct_2(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, -663f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2335f, -988f, 1000f, var_0.x), vec4<f32>(-377f, -2299f, var_0.x, -1028f))))), _wgslsmith_mult_u32(1u, 0u), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))))), Struct_1(~(~vec2<u32>(1u, 0u)), _wgslsmith_f_op_f32(floor(var_0.x)) >= 569f, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2440f, var_0.x, -1687f) + vec3<f32>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(var_0.x))))))), firstTrailingBit(u_input.a ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 1u ^ u_input.a, abs(u_input.a))), min(reverseBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, 104300u, 65405u, 41411u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~vec4<u32>(27947u, 4294967295u, 20488u, 72720u))), ~abs(abs(vec4<u32>(u_input.a, 0u, 69838u, 4294967295u)))), -13479i ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-37057i, -2685i), firstTrailingBit(32145i)), -10503i));
}

