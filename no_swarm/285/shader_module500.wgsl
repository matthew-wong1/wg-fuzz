struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<bool>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = Struct_2(vec2<bool>(true, all(!vec2<bool>(arg_1, true)) && true), Struct_1(~u_input.b));
    var_0 = Struct_2(!vec2<bool>(!(!arg_0), select(all(vec4<bool>(true, var_0.a.x, true, arg_1)), true, var_0.a.x)), Struct_1(vec3<u32>(u_input.a.x, ~16584u, 29093u)));
    var_0 = Struct_2(!var_0.a, Struct_1(~u_input.a.yyy));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -12251i, arg_2, u_input.d.x), vec4<i32>(-2156i, -67155i, arg_2, u_input.d.x)), -12020i | u_input.d.x, -10002i)), ~(-_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(27601i, -46256i, arg_2)), vec3<i32>(arg_2, arg_2, u_input.d.x))));
    return vec4<i32>(~u_input.d.x, -_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_2 << (u_input.c.x % 32u), 2147483647i), -1i), -_wgslsmith_mult_i32(8541i, firstTrailingBit(abs(-2147483647i))), u_input.d.x);
}

fn func_2() -> bool {
    let var_0 = false;
    let var_1 = ~vec3<i32>(-1i, 32689i, ~select(12307i, u_input.d.x, true));
    var var_2 = abs(_wgslsmith_add_vec4_i32(func_3(var_0, var_0, -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-883f, -1444f, 303f))), ~reverseBits(vec4<i32>(var_1.x, u_input.d.x, 0i, 28484i))));
    let var_3 = Struct_2(select(!select(!vec2<bool>(true, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), var_0)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_0, var_0)), !vec2<bool>(var_0, var_0), var_0), var_0), Struct_1(~(~(~vec3<u32>(u_input.c.x, u_input.a.x, u_input.b.x)))));
    var_2 = abs(-(~vec4<i32>(~u_input.d.x, 0i, 0i, 1i)));
    return all(vec3<bool>(true, !all(!vec2<bool>(true, var_0)), var_3.a.x));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(select(!vec2<bool>(arg_1, true), vec2<bool>(arg_0 > _wgslsmith_f_op_f32(step(arg_0, arg_0)), all(vec2<bool>(arg_1, arg_1)) && arg_1), vec2<bool>(false, true)), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~3587u, _wgslsmith_mod_u32(u_input.b.x, 0u), u_input.c.x), ~(vec3<u32>(0u, u_input.b.x, 4294967295u) << (u_input.b % vec3<u32>(32u))))));
    let var_1 = abs(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(u_input.a.zwx, ~u_input.a.yxy)), ~(vec3<u32>(4294967295u, 43226u, var_0.b.a.x) | reverseBits(u_input.b))));
    var_0 = Struct_2(vec2<bool>((any(vec3<bool>(arg_1, var_0.a.x, arg_1)) && select(arg_1, var_0.a.x, false)) || !(false || var_0.a.x), any(var_0.a)), var_0.b);
    var_0 = Struct_2(select(var_0.a, vec2<bool>(true, true), select(!var_0.a, vec2<bool>(var_0.a.x, !arg_1), vec2<bool>(true, arg_1))), Struct_1(~vec3<u32>(~1u, var_0.b.a.x, min(var_0.b.a.x, 1u))));
    var var_2 = ~min(vec2<u32>(4294967295u, _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), ~4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 51426u) & vec2<u32>(4294967295u, var_1.x), vec2<u32>(1u, 46947u)) << (((vec2<u32>(var_0.b.a.x, var_0.b.a.x) ^ vec2<u32>(var_0.b.a.x, var_1.x)) | vec2<u32>(1u, 415u)) % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.a.x, ~4294967295u, ~(~var_2.x)), firstLeadingBit(_wgslsmith_add_vec3_u32(var_1, vec3<u32>(4294967295u, 63180u, 0u))) << (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, var_0.b.a.x, var_0.b.a.x), _wgslsmith_sub_vec3_u32(var_0.b.a, var_0.b.a)) % vec3<u32>(32u))));
}

fn func_1() -> vec2<bool> {
    var var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) | (-19312i > reverseBits(-_wgslsmith_div_i32(u_input.d.x, 1i)));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1345f))), select(false, true, func_2()));
    var var_2 = vec2<bool>(firstTrailingBit(u_input.d.x) < min(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-25559i, 2147483647i, 13468i)) ^ u_input.d.x, abs(60479i)), true);
    var_0 = var_2.x;
    var_0 = !(!var_2.x && !(!var_2.x));
    return vec2<bool>(select(~_wgslsmith_sub_u32(var_1.a.x, 4294967295u) > ~1u, _wgslsmith_dot_vec2_i32(-vec2<i32>(42562i, -63955i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), u_input.d.yz, vec2<i32>(-42523i, u_input.d.x))) < u_input.d.x, true), !(!var_2.x));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_2.x;
    var_0 = max(arg_2.x, arg_2.x) << (~(~_wgslsmith_sub_u32(~0u, arg_3.b.a.x)) % 32u);
    let var_1 = _wgslsmith_div_u32(72670u, firstTrailingBit(_wgslsmith_mult_u32(arg_3.b.a.x, 4294967295u)));
    var_0 = 0i;
    var_0 = 26098i;
    return u_input.a | vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3.b.a, firstTrailingBit(func_4(arg_1, false).a)), _wgslsmith_mod_u32(~22877u, arg_3.b.a.x), ~var_1, func_4(_wgslsmith_f_op_f32(1f + -1467f), arg_0).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    let var_1 = func_5(true, _wgslsmith_f_op_f32(-1f), vec4<i32>(~(-22252i), _wgslsmith_dot_vec3_i32(~u_input.d, select(vec3<i32>(-1792i, 2147483647i, 1i), vec3<i32>(u_input.d.x, u_input.d.x, 31930i), all(vec4<bool>(true, true, true, true)))), u_input.d.x, firstLeadingBit(u_input.d.x)), Struct_2(select(func_1(), vec2<bool>(true, any(vec2<bool>(true, false))), select(func_1(), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)))), Struct_1(vec3<u32>(12975u, u_input.b.x, _wgslsmith_sub_u32(28414u, u_input.c.x)))));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1209f, -383f, -828f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(780f, -953f, -231f) + vec3<f32>(1500f, -1007f, -1672f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-456f, -885f, -488f), _wgslsmith_f_op_vec3_f32(vec3<f32>(811f, -125f, 1988f) * vec3<f32>(-1000f, -681f, 2063f)), vec3<bool>(true, var_2, var_2)))))), vec3<bool>(any(vec3<bool>(!var_2, var_2, select(var_2, var_2, var_2))), (var_2 & var_2) && any(select(vec2<bool>(var_2, false), vec2<bool>(true, var_2), vec2<bool>(true, var_2))), !(u_input.d.x > abs(u_input.d.x)))));
    var_0 = true;
    var var_4 = -305f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1772f * -699f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_3.x, var_3.x)), 445f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-130f)))))), -vec2<i32>(26719i, -8902i) ^ ~select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 58777i), u_input.d.xy), u_input.d.yz, true), ~u_input.d.x, _wgslsmith_f_op_f32(-var_3.x), abs(u_input.d.x));
}

