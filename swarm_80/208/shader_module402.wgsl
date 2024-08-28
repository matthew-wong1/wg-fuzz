struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(arg_2.xx, _wgslsmith_div_vec2_f32(arg_2.xz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) + vec2<f32>(-129f, arg_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1491f, 424f)))), vec2<f32>(-818f, _wgslsmith_div_f32(-422f, arg_2.x)))))));
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, firstLeadingBit(~u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.a.x), u_input.b.zz), ~arg_0))));
    return arg_2.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    return ~4294967295u;
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = ~vec3<u32>(~1u, 1u, abs(42393u));
    var var_1 = vec2<i32>(-27792i, 2147483647i);
    var_1 = vec2<i32>(-_wgslsmith_div_i32(var_1.x, -var_1.x), 0i << (reverseBits(var_0.x) % 32u));
    let var_2 = true;
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(~func_3(Struct_1(var_0.x, vec4<f32>(-1957f, -1659f, 1631f, -1000f), vec4<bool>(var_2, true, true, true)), Struct_1(u_input.a.x, vec4<f32>(107f, 753f, -595f, 162f), vec4<bool>(true, var_2, false, false)), 0u, 1f), countOneBits(0u & (0u & u_input.b.x)), arg_0.x), _wgslsmith_mult_u32(~var_0.x, select(~u_input.b.x, _wgslsmith_add_u32(arg_0.x ^ var_0.x, _wgslsmith_dot_vec2_u32(var_0.xx, arg_0)), !all(vec4<bool>(var_2, true, var_2, true)))), ~(max(arg_0.x, countOneBits(1u)) ^ ~(~arg_0.x)));
    return vec4<u32>(0u, 4294967295u, 0u, _wgslsmith_div_u32(~var_0.x, _wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(func_3(Struct_1(1u, vec4<f32>(250f, 1083f, -1329f, 273f), vec4<bool>(var_2, var_2, var_2, true)), Struct_1(var_0.x, vec4<f32>(-525f, 206f, 134f, 916f), vec4<bool>(var_2, var_2, var_2, true)), 12158u, 603f), countOneBits(var_0.x)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.d;
    var var_1 = var_0;
    var_1 = Struct_1(abs(firstTrailingBit(u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)))), _wgslsmith_f_op_f32(round(arg_2.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-587f, arg_2.b.x, false)), _wgslsmith_div_f32(-378f, 1000f), var_1.c.x))), arg_2.d.b.x), !select(var_0.c, !select(vec4<bool>(var_1.c.x, var_0.c.x, arg_2.d.c.x, var_1.c.x), var_0.c, arg_2.d.c), !var_1.c.x));
    let var_2 = arg_2.d;
    var var_3 = vec3<i32>(arg_1, min(-(1i ^ arg_1) | -31329i, arg_1), ~(_wgslsmith_div_i32(0i, abs(43019i)) & (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 91101i, -3697i), arg_2.e.zyx) << (~16532u % 32u))));
    return Struct_1(1u, _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(floor(var_2.b.x))), 1975f, arg_2.d.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x - -1000f), 164f))), select(vec4<bool>(all(!arg_2.d.c.yw), !all(arg_2.d.c.wwx), arg_2.a, !(0i >= arg_1)), !arg_2.d.c, var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(0u << (firstTrailingBit(27568u) % 32u), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b.x, 46938i, vec3<f32>(379f, -376f, 820f), false)) * 531f), 1559f)), vec4<bool>(true, ~(~25082u) != u_input.b.x, !(_wgslsmith_f_op_f32(352f + 980f) >= _wgslsmith_f_op_f32(func_1(u_input.b.x, 36012i, vec3<f32>(1513f, -216f, 221f), true))), (_wgslsmith_add_u32(1u, u_input.b.x) | u_input.a.x) > 1u));
    let var_1 = 28844u;
    var_0 = func_4(var_0.c.wyx, firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -43561i, 2147483647i, 61259i) << (func_2(u_input.a) % vec4<u32>(32u)), ~abs(vec4<i32>(29962i, 13676i, 7825i, -2147483647i)))), Struct_2(all(var_0.c.yy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))), -1373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(444f, var_0.b.x, true)) * _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))), -19771i, Struct_1(func_2(vec2<u32>(var_1, 0u)).x & ~var_0.a, vec4<f32>(-1000f, var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x)), !select(vec4<bool>(true, true, false, var_0.c.x), var_0.c, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(22749i, 1i, _wgslsmith_div_i32(2147483647i, -1i), 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_2 = Struct_2(var_0.c.x, vec3<f32>(-1490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1776f - 838f), -349f)) * _wgslsmith_f_op_f32(func_1(~0u, 2147483647i, var_0.b.wzw, var_0.c.x))), var_0.b.x), 5563i, Struct_1(reverseBits(37079u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, -547f, 1490f, -261f), vec4<f32>(-356f, var_0.b.x, var_0.b.x, -1627f)))), vec4<f32>(var_0.b.x, -1000f, 647f, _wgslsmith_f_op_f32(-var_0.b.x))), select(!vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), func_4(select(var_0.c.zxz, var_0.c.xyw, var_0.c.yyy), -15732i, Struct_2(false, vec3<f32>(1000f, 1032f, var_0.b.x), 32535i, Struct_1(u_input.a.x, vec4<f32>(var_0.b.x, -298f, 1089f, var_0.b.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), vec4<i32>(0i, 0i, 2147483647i, 0i))).c, select(!vec4<bool>(var_0.c.x, false, false, true), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), var_0.c, var_0.c)))), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 63825i, 7798i), select(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(1i, 2147483647i, -2147483647i), var_0.c.zzy)), 1i, -1i, 0i) ^ vec4<i32>(firstTrailingBit(2147483647i), -43995i, abs(1i), -1i));
    var_0 = func_4(vec3<bool>((true | !var_0.c.x) | ((true || var_2.a) & var_0.c.x), true, false), -min(firstTrailingBit(1i), 40129i), var_2);
    let var_3 = vec3<bool>(var_0.c.x, !(!func_4(var_2.d.c.ywz, 2147483647i, var_2).c.x), var_0.c.x && false);
    var_0 = Struct_1(_wgslsmith_div_u32(~u_input.b.x, 90946u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.d.b, vec4<f32>(-229f, -1749f, _wgslsmith_f_op_f32(select(1000f, var_0.b.x, false)), _wgslsmith_f_op_f32(747f - var_2.b.x)))), func_4(select(func_4(func_4(var_2.d.c.ywy, -2147483647i, var_2).c.xwx, var_2.e.x >> (49291u % 32u), Struct_2(false, vec3<f32>(var_2.d.b.x, var_0.b.x, -1002f), var_2.e.x, var_2.d, vec4<i32>(-49769i, var_2.e.x, var_2.c, 0i))).c.wwx, !vec3<bool>(var_2.a, false, false), select(!var_3, var_3, !var_0.c.wwz)), _wgslsmith_mod_i32(var_2.e.x, -1i), var_2).c);
    var_0 = Struct_1(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_2.b.x, -1000f), var_2.d.b)))), vec4<bool>(true, !var_0.c.x, ((var_2.c | var_2.c) | var_2.c) >= select(var_2.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, 29386i, 2147483647i), vec3<i32>(26073i, var_2.c, var_2.c)), true), any(!select(var_0.c, var_0.c, var_3.x))));
    global0 = 2630u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.e), ~(~select(u_input.b, vec3<u32>(var_2.d.a, var_2.d.a, 5826u) ^ vec3<u32>(var_2.d.a, 85502u, 4294967295u), var_3.x)), var_2.e.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), var_2.d.b.x));
}

