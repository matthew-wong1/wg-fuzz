struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.c, -35637i, -20221i, -1i)), vec4<i32>(0i, arg_0.e, arg_0.e, 2147483647i) << (arg_0.a % vec4<u32>(32u))), 2147483647i, -_wgslsmith_sub_i32(arg_0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 12435i, u_input.d.x), u_input.a))), u_input.a.xxw);
    var var_2 = -u_input.a.x;
    var_2 = ~(firstTrailingBit(_wgslsmith_mod_i32(-23726i | var_1.x, _wgslsmith_dot_vec3_i32(var_1, var_1))) << (~_wgslsmith_div_u32(~arg_1.b, ~4703u) % 32u));
    let var_3 = !arg_1.c.b;
    return 72489u;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c) + -391f) < _wgslsmith_f_op_f32(-arg_0.c.c), select(func_3(Struct_1(vec4<u32>(u_input.e, arg_0.b, 37452u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.b, u_input.b, u_input.b), vec4<u32>(arg_0.b, 0u, 1u, 0u)), arg_0.c.a | 1i, u_input.d.x, ~arg_0.c.a), Struct_4(arg_0.c.b.x, 30886u >> (0u % 32u), arg_0.c)), 24791u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 14509u, 1u), vec3<u32>(0u, u_input.b, 59321u)), u_input.b), arg_0.c.b.x), arg_0.c);
    let var_1 = vec4<u32>(select(1u, arg_0.b, var_0.c.b.x), _wgslsmith_sub_u32(0u, ~(~(~u_input.e))), _wgslsmith_div_u32(4294967295u, firstTrailingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(17102u, 0u, var_0.b)), vec3<u32>(0u, var_0.b, 4294967295u)))), ~arg_0.b);
    let var_2 = true;
    var var_3 = -484f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c - var_0.c.c) * var_0.c.d);
    return Struct_3(Struct_1(vec4<u32>(4294967295u, arg_0.b, var_1.x | _wgslsmith_div_u32(11103u, arg_0.b), max(arg_0.b, 1u)), arg_0.b, u_input.a.x, -37706i, 35384i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-837f, -1885f, 1717f, var_0.c.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, arg_0.c.d, arg_0.c.d, 585f))))))), countOneBits(~abs(-vec2<i32>(u_input.c, -26576i))), u_input.e);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = arg_1.b;
    let var_1 = Struct_2(1i, vec3<bool>(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, false, false, true), true)), u_input.c <= _wgslsmith_mult_i32(~u_input.d.x, arg_1.a.c), all(vec2<bool>(any(vec3<bool>(false, false, false)), true))), _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(710f)))), var_0.x, select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), any(vec3<bool>(true, true, true))), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !all(vec4<bool>(false, true, true, true))));
    let var_2 = Struct_2(~_wgslsmith_mod_i32(firstLeadingBit(u_input.a.x), -24196i), var_1.b, var_0.x, _wgslsmith_f_op_f32(abs(-734f)), select(vec3<bool>(true, !var_1.b.x, !any(var_1.e)), select(vec3<bool>(true, true, true), !var_1.b, false), !var_1.b));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_2.d))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(arg_1.b.wz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xw)), vec2<bool>(var_1.b.x, false)))), var_1.b.yy));
    return abs(select(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 0i), u_input.a.wwx), _wgslsmith_dot_vec4_i32(-vec4<i32>(-3251i, -31409i, 21230i, -28892i), vec4<i32>(var_1.a, arg_1.a.c, -38105i, var_1.a)), !all(var_2.e)) ^ ~0i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_vec3_i32(u_input.a.zxw, countOneBits(-firstTrailingBit(u_input.a.zzw)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.b, u_input.e, arg_1.b, arg_1.b), ~(vec4<u32>(22460u, u_input.b, u_input.e, 22247u) | vec4<u32>(75481u, arg_1.b, arg_1.b, u_input.e))), 38223u, _wgslsmith_mult_i32(31189i, ~arg_0.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, var_0.x, -54801i), vec3<i32>(0i, var_0.x, arg_1.c.a)) << (1u % 32u), 0i), _wgslsmith_mult_i32(-1i, select(~(-86712i), 0i, true & arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.d, -540f, arg_1.c.c, arg_1.c.d)) * vec4<f32>(895f, 1045f, -1052f, arg_1.c.d))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.c.c)))), 515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.d) + _wgslsmith_f_op_f32(arg_1.c.c - arg_1.c.d)), arg_1.c.d)), select(var_0.zy >> (_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.b, u_input.e), reverseBits(vec2<u32>(u_input.b, u_input.e))) % vec2<u32>(32u)), u_input.d, arg_1.c.b.x), u_input.e);
    let var_2 = ~firstTrailingBit(2147483647i) & -23697i;
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1605f)), _wgslsmith_f_op_f32(-arg_1.c.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.c.c)), var_1.b.x), -1781f, arg_1.c.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, 1513f, var_1.b.x, arg_1.c.d)))), arg_1.a)), u_input.d, 1u);
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(step(var_1.b, _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_1.b.x, 270f, _wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x * -638f))))), vec2<i32>(abs(i32(-1i) * -7432i), 14680i), var_1.a.a.x);
    return Struct_3(Struct_1(vec4<u32>(var_1.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 114561u, 53005u, arg_1.b), vec4<u32>(0u, var_1.a.a.x, var_1.a.a.x, u_input.e)), _wgslsmith_div_u32(4294967295u, u_input.b), var_1.a.a.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), u_input.e), _wgslsmith_clamp_u32(~27278u, ~var_1.a.b, 4294967295u)), _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(var_2, var_2)), -2757i), -1i, -((-64970i << (1u % 32u)) ^ _wgslsmith_sub_i32(arg_0.x, 8846i))), _wgslsmith_f_op_vec4_f32(var_1.b * var_1.b), ~vec2<i32>(max(61080i, select(-1i, -1i, arg_1.a)), _wgslsmith_add_i32(var_0.x, arg_1.c.a) & ~1i), ~_wgslsmith_div_u32(arg_1.b, countOneBits(_wgslsmith_mod_u32(arg_1.b, arg_1.b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    var var_0 = func_5(vec2<i32>(_wgslsmith_div_i32(func_4(vec2<u32>(1u, 15396u), func_2(arg_2)), _wgslsmith_sub_i32(-2147483647i, firstTrailingBit(1i))), i32(-1i) * -9873i), Struct_4(select(!(!arg_2.c.b.x), all(vec3<bool>(false, arg_2.a, true)), arg_2.a), abs(u_input.b), Struct_2(u_input.a.x | (1i | arg_1.c.x), !vec3<bool>(false, true, arg_2.a), 1371f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1097f + arg_0.x), _wgslsmith_f_op_f32(floor(-1401f))), vec3<bool>(all(vec2<bool>(arg_2.a, arg_2.c.b.x)), true, arg_2.a || false))));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~countOneBits(u_input.c), ~arg_1.a.c, max(u_input.a.x, var_0.a.d)), select(u_input.a.yxy, u_input.a.zyz, true)) | vec3<i32>(u_input.a.x, arg_1.a.e, -u_input.c);
    var var_2 = Struct_2(firstTrailingBit(~_wgslsmith_add_i32(40042i, -9587i)), select(vec3<bool>(arg_2.a, _wgslsmith_f_op_f32(var_0.b.x - -736f) <= -2399f, false), !select(!arg_2.c.e, !vec3<bool>(false, arg_2.c.e.x, true), all(arg_2.c.b.xx)), arg_2.c.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1728f - -1358f), !vec3<bool>(arg_2.a, min(73140i, -40640i) != _wgslsmith_mult_i32(-16179i, arg_2.c.a), !arg_2.c.e.x & true));
    var var_3 = arg_2;
    var_0 = arg_1;
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(u_input.c);
    let var_1 = vec4<i32>(~(-u_input.d.x), ~firstTrailingBit(_wgslsmith_mult_i32(0i, 2147483647i)) | -17988i, _wgslsmith_mod_i32(u_input.d.x, 0i ^ (u_input.c & -2147483647i)), -(select(_wgslsmith_clamp_i32(-20365i, -78370i, u_input.d.x), func_1(vec4<f32>(1000f, -324f, -1220f, -313f), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, u_input.b, 60563u), u_input.e, u_input.d.x, u_input.a.x, u_input.c), vec4<f32>(151f, 1784f, 1000f, 369f), vec2<i32>(u_input.a.x, u_input.a.x), 72115u), Struct_4(true, 0u, Struct_2(13472i, vec3<bool>(false, true, false), 1246f, 234f, vec3<bool>(false, true, true)))), false) ^ u_input.c));
    var_0 = _wgslsmith_mult_i32(-22454i << (_wgslsmith_mod_u32(u_input.b, ~46839u) % 32u), -20226i);
    var_0 = reverseBits(u_input.c);
    var var_2 = func_5(firstLeadingBit(var_1.wz), Struct_4(true, 92968u, Struct_2(1i, vec3<bool>(any(vec3<bool>(true, false, false)), false, true), _wgslsmith_f_op_f32(-2494f * _wgslsmith_f_op_f32(sign(-1269f))), -1461f, select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)))));
    let var_3 = select(vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), 8737u <= u_input.b)), u_input.b == 23098u, true), !select(vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec4<bool>(true, true, false, true)), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), true)));
    let var_4 = Struct_2(_wgslsmith_mult_i32(var_1.x, ~(func_4(vec2<u32>(0u, u_input.b), Struct_3(var_2.a, var_2.b, vec2<i32>(-14161i, u_input.c), 12636u)) & _wgslsmith_add_i32(var_2.c.x, -2147483647i))), !(!(!(!var_3.zyx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(select(791f, -380f, var_3.x)), select(!vec3<bool>(var_3.x, !var_3.x, true), select(vec3<bool>(true, u_input.d.x > 23245i, var_2.b.x == var_2.b.x), !(!vec3<bool>(false, var_3.x, var_3.x)), !(!vec3<bool>(true, var_3.x, false))), select(!var_3.xxw, !select(var_3.yyz, vec3<bool>(false, false, false), false), !var_3.zzx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~28065i, ~2147483647i) << (vec2<u32>(~abs(var_2.d), 9771u) % vec2<u32>(32u)));
}

