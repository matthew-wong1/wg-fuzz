struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    var var_0 = vec4<bool>(all(!select(select(vec3<bool>(false, true, arg_2.a), vec3<bool>(false, arg_2.a, arg_2.a), false), vec3<bool>(arg_2.a, arg_2.a, false), !vec3<bool>(true, arg_2.a, false))), true, all(vec3<bool>(any(vec4<bool>(true, arg_2.a, false, true)), !arg_2.a, all(vec2<bool>(arg_2.a, false)))), false);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, ~(~2147483647i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_0, arg_0, u_input.c.x, -1i)), -vec4<i32>(-1i, 37251i, u_input.a, u_input.c.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, u_input.a), vec2<i32>(0i, u_input.c.x), var_0.yy), u_input.c), abs(u_input.a), firstTrailingBit(-1i))), ~abs(firstLeadingBit(vec3<i32>(arg_0, u_input.a, arg_0))));
    var_0 = vec4<bool>(var_0.x, select(u_input.b.x >= firstTrailingBit(u_input.b.x), var_0.x, true), true, true);
    var_0 = vec4<bool>(var_0.x, !(var_0.x && (_wgslsmith_div_f32(arg_1.a.x, -622f) >= -1478f)), all(var_0.ww), all(select(var_0.yx, var_0.wz, !(!var_0.wx))));
    var var_2 = vec4<i32>(var_1.x, var_1.x & _wgslsmith_dot_vec3_i32(~(var_1 | var_1), _wgslsmith_sub_vec3_i32(~var_1, _wgslsmith_clamp_vec3_i32(var_1, vec3<i32>(var_1.x, u_input.a, -44391i), vec3<i32>(arg_0, var_1.x, 1i)))), 2147483647i, abs(~_wgslsmith_mult_i32(-25391i, ~var_1.x)));
    return !all(select(var_0.wxy, !vec3<bool>(arg_2.a, var_0.x, true), select(!arg_2.a, arg_2.a, false)));
}

fn func_2() -> f32 {
    let var_0 = vec4<bool>(func_3(~abs(_wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a)), Struct_2(vec3<f32>(-688f, _wgslsmith_div_f32(-345f, 1564f), _wgslsmith_f_op_f32(345f - -142f)), Struct_1(vec3<f32>(1f, 1f, 1f))), Struct_3(!any(vec3<bool>(false, false, false)))), false, false, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)) || (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 18651u, 34009u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u) % vec4<u32>(32u))) >= ~abs(0u)));
    return _wgslsmith_f_op_f32(-1698f - -1680f);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = arg_1.x;
    let var_1 = !(_wgslsmith_div_f32(-2549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) + _wgslsmith_f_op_f32(f32(-1f) * -1359f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(select(589f, 1902f, arg_1.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2347f), -1799f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(864f)) * -1208f)) < _wgslsmith_f_op_f32(sign(384f));
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, u_input.c.x, u_input.a, -15518i), vec4<i32>(u_input.a, arg_0.x, 0i, u_input.a)), _wgslsmith_sub_i32(abs(1i), 0i)), 2147483647i), _wgslsmith_clamp_i32(i32(-1i) * -(~u_input.a), _wgslsmith_mod_i32(-firstLeadingBit(u_input.a), 0i), u_input.a), _wgslsmith_mult_i32(3439i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.yy, vec2<i32>(arg_0.x, u_input.c.x)), vec2<i32>(arg_0.x, arg_0.x)) << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x) % 32u)));
    var var_4 = true;
    return 41477u;
}

fn func_4(arg_0: u32, arg_1: bool) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(306f, 1000f, -3316f))), vec3<f32>(418f, -690f, 1000f)), vec3<f32>(-326f, _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(1694f - -104f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-912f, 493f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(896f)) - -1308f), -1964f)));
    var var_1 = vec4<bool>(true, arg_1, arg_1, any(vec4<bool>(arg_1, func_1(vec3<i32>(34536i, -100988i, 19002i), vec2<bool>(arg_1, false)) > _wgslsmith_sub_u32(19746u, arg_0), !arg_1, arg_1)));
    var_1 = select(select(vec4<bool>(arg_1, true, -2147483647i < u_input.a, var_0.a.x <= _wgslsmith_f_op_f32(round(var_0.a.x))), !(!(!vec4<bool>(arg_1, false, arg_1, true))), !select(select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(var_1.x, arg_1, true, arg_1), vec4<bool>(false, false, var_1.x, false)), !vec4<bool>(var_1.x, arg_1, arg_1, false), vec4<bool>(var_1.x, arg_1, false, arg_1))), select(vec4<bool>(true, _wgslsmith_f_op_f32(-837f - 599f) <= var_0.b.a.x, any(!vec2<bool>(false, arg_1)), var_1.x), select(select(vec4<bool>(false, arg_1, arg_1, true), !vec4<bool>(var_1.x, var_1.x, true, true), !arg_1), !(!vec4<bool>(false, var_1.x, false, arg_1)), select(vec4<bool>(false, arg_1, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, true, false), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x), !vec4<bool>(true, arg_1, false, true))), false), false || !arg_1);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), 1769f))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-162f, var_0.b.a.x, var_0.a.x))), vec3<f32>(1003f, 1513f, 286f)))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(362f)), 1792f))), Struct_1(var_0.a));
    return ~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, 0i, u_input.a) << (vec4<u32>(49613u, u_input.b.x, arg_0, 29341u) % vec4<u32>(32u)), vec4<i32>(u_input.a, -2147483647i, 2147483647i, 1i), vec4<i32>(107850i, u_input.c.x, 9137i, 23441i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_4(func_1(select(vec3<i32>(u_input.c.x, 2147483647i, u_input.a), vec3<i32>(1i, u_input.a, u_input.c.x), vec3<bool>(true, false, true)) << (vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), u_input.b.x != ~(~u_input.b.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, _wgslsmith_f_op_f32(-1f), 1326f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 588f, 1128f)))));
    let var_2 = vec2<bool>(true, any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(true, true, true))));
    let var_3 = reverseBits(var_0.wy);
    let var_4 = select(var_3, var_3, select(vec2<bool>(!var_2.x, true), vec2<bool>(var_2.x, var_2.x), select(select(var_2, vec2<bool>(var_2.x, var_2.x), var_2), var_2, true))) << (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, select(0u, 404u, true)), 1u), _wgslsmith_sub_vec2_u32(~min(vec2<u32>(0u, 0u), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.xz)) % vec2<u32>(32u));
    let var_5 = any(select(!select(vec3<bool>(var_2.x, false, false), select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, false, var_2.x), var_2.x), !var_2.x), select(!vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, false, false), true), any(vec2<bool>(var_2.x, var_2.x))), !vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(var_2.x, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~vec4<i32>(~func_4(4294967295u, true).x, ~(-u_input.a), ~2147483647i | _wgslsmith_mult_i32(var_4.x, u_input.c.x), var_0.x), vec4<f32>(1834f, var_1.b.a.x, var_1.a.x, _wgslsmith_f_op_f32(-var_1.b.a.x)));
}

