struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_2(-_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -17243i, 37235i, -38881i), ~vec4<i32>(1i, 0i, -2147483647i, 0i)) ^ (-(~(-2147483647i)) | reverseBits(select(0i, -57780i, true))), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(any(vec3<bool>(true, true, false)), false, true, -1642f < arg_0), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, all(vec3<bool>(true, true, true)), false, any(vec4<bool>(false, false, true, true))), true), all(vec2<bool>(true, true))), Struct_1(-firstTrailingBit(vec3<i32>(1i, -2147483647i, 0i)), _wgslsmith_sub_i32(~1i, reverseBits(-1i) << (u_input.b.x % 32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -1456f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1132f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0))), vec2<bool>(false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1301f * -691f) + arg_0) * 656f), _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), !select(vec3<bool>(any(vec2<bool>(true, false)), 519f >= arg_0, any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), all(vec4<bool>(true, false, false, false))), all(vec3<bool>(true, true, true))));
    var var_1 = var_0.d.x;
    var_1 = var_0.b.x;
    let var_2 = Struct_2(-34822i << (_wgslsmith_mod_u32(u_input.b.x << (abs(93285u) % 32u), var_0.c.e) % 32u), var_0.b, var_0.c, vec3<bool>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.c.e, 10337u), 22946u) > u_input.b.x, var_0.d.x, !(var_0.d.x | var_0.d.x)));
    var var_3 = -9876i;
    return ~(abs(46307u) ^ var_0.c.e) > 47679u;
}

fn func_2() -> bool {
    let var_0 = Struct_2(_wgslsmith_mult_i32(-select(firstTrailingBit(34764i), -2147483647i, func_3(219f)), _wgslsmith_sub_i32(_wgslsmith_div_i32(~(-195i), -1i), _wgslsmith_clamp_i32(1i, select(0i, 1i, false), _wgslsmith_sub_i32(1i, 7048i)))), vec4<bool>(true, !select(false, false, true) && true, false, all(vec3<bool>(select(false, false, true), false, true))), Struct_1(vec3<i32>(_wgslsmith_mod_i32(select(6372i, 58989i, false), -2147483647i), select(~0i, 1i, false), 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(1695i, 32355i, 3779i, -2147483647i), vec4<i32>(11770i, -1i, 23168i, -1i)) >> (44506u % 32u), vec2<f32>(_wgslsmith_div_f32(554f, _wgslsmith_f_op_f32(f32(-1f) * -1595f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(432f, -1096f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)), 1u), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.d)));
    var var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(-(firstLeadingBit(vec4<i32>(2147483647i, 0i, var_0.c.a.x, 56474i)) & firstTrailingBit(vec4<i32>(-2147483647i, -54263i, 2147483647i, -31729i))), firstTrailingBit(vec4<i32>(var_0.c.a.x, 0i, 6996i, var_0.c.b) ^ -vec4<i32>(var_0.c.b, var_0.c.b, 2147483647i, var_0.c.a.x)), ~firstTrailingBit(select(vec4<i32>(-17652i, 56150i, -25377i, 5500i), vec4<i32>(-47642i, -42787i, var_0.a, -1i), vec4<bool>(var_0.d.x, true, var_0.b.x, false)))));
    var_2 = vec4<i32>(~(var_2.x ^ ~1i), 2147483647i, 31959i, max(_wgslsmith_sub_i32(i32(-1i) * -var_0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c.b, 48463i, var_2.x, var_2.x), abs(vec4<i32>(var_2.x, var_2.x, 4270i, var_2.x)))), var_2.x));
    let var_3 = var_0;
    return all(!vec3<bool>(select(var_3.d.x, true, true), true, func_3(_wgslsmith_f_op_f32(215f * var_0.c.d))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec3<bool>(4294967295u < firstTrailingBit(arg_0), false, true);
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(1i, 1i, 1i) << ((u_input.a.zzz >> (u_input.a.xyy % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-vec3<i32>(1i, 31217i, -50450i), _wgslsmith_div_vec3_i32(vec3<i32>(1868i, 28709i, 0i), vec3<i32>(-4239i, 1i, 7527i))))), -(min(select(3177i, 1i, false), -1i) & 1i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-260f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(2278f, -453f)))))), _wgslsmith_div_f32(-990f, -646f), arg_0);
    let var_2 = _wgslsmith_clamp_u32(~(~(~(~106587u))), ~_wgslsmith_mod_u32(~4294967295u, ~var_1.e), 4294967295u);
    var var_3 = vec3<bool>(var_0.x, var_0.x, !var_0.x);
    var_3 = select(vec3<bool>(select(false, var_3.x, select(true, false, any(vec2<bool>(var_0.x, var_3.x)))), true, true), !vec3<bool>(var_3.x, any(select(var_0.yx, var_0.xz, vec2<bool>(var_3.x, var_3.x))), func_2() && false), var_0.x);
    return Struct_2(reverseBits(~_wgslsmith_mult_i32(var_1.a.x, -2147483647i)) ^ select(var_1.a.x, 2147483647i, all(vec3<bool>(true, var_0.x, var_0.x))), select(vec4<bool>(u_input.b.x < 4294967295u, var_3.x, 1000f >= _wgslsmith_f_op_f32(select(868f, var_1.d, true)), false || !var_3.x), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, var_0.x, true), var_3.x), !(!vec4<bool>(var_0.x, true, var_0.x, false)), any(select(vec4<bool>(var_3.x, true, true, false), vec4<bool>(var_0.x, var_0.x, var_3.x, false), vec4<bool>(false, true, var_0.x, var_3.x)))), !(!(!var_0.x))), Struct_1(~_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.b, var_1.b, 0i), var_1.a << (u_input.a.xyw % vec3<u32>(32u))), firstTrailingBit(-1i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1566f, _wgslsmith_f_op_f32(-836f - -1071f)), var_1.c)), _wgslsmith_f_op_f32(min(1f, var_1.d)), ~abs(u_input.c.x) & var_1.e), vec3<bool>(var_3.x, max(23399i, -2147483647i) > -var_1.a.x, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.b.x <= 5962u) & true;
    let var_1 = true;
    let var_2 = func_1(u_input.b.x);
    var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.c.x, -539f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.d), _wgslsmith_div_f32(var_2.c.c.x, var_2.c.c.x))) + _wgslsmith_div_f32(var_2.c.d, _wgslsmith_f_op_f32(round(367f))))));
    var_0 = !(!(~0u < var_2.c.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, func_1(51367u).c.e), _wgslsmith_f_op_f32(746f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-722f)), _wgslsmith_f_op_f32(f32(-1f) * -1431f), var_1)))), firstLeadingBit(max(-vec2<i32>(var_2.c.b, 2147483647i), ~abs(var_2.c.a.yx))));
}

