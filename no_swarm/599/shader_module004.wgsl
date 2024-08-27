struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i ^ (~u_input.a.x & (1i << (1u % 32u))), select(reverseBits(-13507i), ~_wgslsmith_clamp_i32(u_input.a.x, arg_0.b.b.x, arg_0.b.b.x), arg_0.b.a.x), 14109i, 29407i), ~(arg_0.a.d ^ vec4<i32>(7077i, u_input.e.x, arg_0.a.d.x, u_input.e.x)));
    let var_1 = Struct_3(true, !arg_0.a.a, Struct_2(firstLeadingBit(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.c, u_input.c), vec4<u32>(2576u, 10910u, u_input.b.x, u_input.b.x)), select(77507u, 26572u, false))), _wgslsmith_sub_u32(u_input.c >> (u_input.b.x % 32u), ~(~u_input.b.x))), Struct_2(1u, select(_wgslsmith_mult_u32(u_input.c, u_input.b.x | u_input.c), abs(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(0u, 42731u))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, -1079f, 1739f, 1480f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(897f, 363f, arg_0.a.b.x, arg_0.a.b.x), vec4<f32>(1377f, -176f, arg_0.a.b.x, arg_0.a.b.x))), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b.x, 241f, arg_0.a.b.x, 286f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.b.x, -1847f, arg_0.a.b.x, arg_0.a.b.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x) * vec4<f32>(-1000f, -1432f, 196f, arg_0.a.b.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.b.x, -1000f, 576f, arg_0.a.b.x)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1130f, arg_0.a.b.x, arg_0.a.b.x, -1000f), vec4<f32>(796f, 1004f, -1000f, arg_0.a.b.x))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1312f, 1216f) * _wgslsmith_f_op_f32(f32(-1f) * -826f)))), arg_0.a.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.b.x))), arg_0.a.b.x)));
    let var_3 = _wgslsmith_dot_vec4_u32(select(reverseBits(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c.b, u_input.b.x, u_input.c, 6344u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.a, u_input.c, var_1.d.b, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 0u, u_input.b.x), vec4<u32>(var_1.d.b, var_1.c.b, 4294967295u, 0u)))), ~max(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 1u), ~vec4<u32>(1u, 1u, u_input.b.x, 0u)), arg_0.a.c), vec4<u32>(u_input.b.x, 21290u, _wgslsmith_div_u32(var_1.c.a << (var_1.c.a % 32u), u_input.c ^ u_input.b.x), ~u_input.b.x | 55707u) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.d.b, 1u, 1u) >> (vec4<u32>(52035u, 4294967295u, 0u, 0u) % vec4<u32>(32u)), vec4<u32>(var_1.d.a, 20463u, u_input.b.x, var_1.c.a)), 1u, 1u, 26461u) % vec4<u32>(32u)));
    var_2 = var_1.e;
    return select(select(select(vec4<bool>(arg_0.a.c.x, true == arg_0.b.a.x, true, true), !vec4<bool>(false, false, false, arg_0.b.a.x), vec4<bool>(all(vec3<bool>(true, var_1.b, true)), any(vec4<bool>(var_1.a, var_1.a, arg_0.b.a.x, false)), true, arg_0.a.c.x)), select(select(!vec4<bool>(false, var_1.a, var_1.a, arg_0.a.c.x), !vec4<bool>(false, false, arg_0.b.a.x, true), true), vec4<bool>(var_1.a & arg_0.b.a.x, 6376u >= var_3, any(arg_0.a.c.yzx), var_1.a), select(select(vec4<bool>(var_1.b, arg_0.b.a.x, arg_0.a.c.x, false), arg_0.a.c, arg_0.a.a), arg_0.a.c, select(vec4<bool>(arg_0.b.a.x, true, false, var_1.b), arg_0.a.c, false))), arg_0.a.c), select(select(arg_0.a.c, arg_0.a.c, arg_0.a.c), !(!vec4<bool>(false, var_1.b, false, true)), select(arg_0.a.c, arg_0.a.c, arg_0.b.a.x)), true);
}

fn func_2(arg_0: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_3(any(!func_3(Struct_5(Struct_1(false, vec3<f32>(-414f, 895f, arg_0.x), vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, -50432i, u_input.e.x, u_input.d.x)), Struct_4(vec3<bool>(true, true, true), vec4<i32>(u_input.e.x, u_input.e.x, -51980i, u_input.e.x))))), true, Struct_2(_wgslsmith_div_u32(~u_input.c, u_input.c), 66871u), Struct_2(0u, 19596u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -691f), vec4<f32>(arg_0.x, arg_0.x, 483f, arg_0.x))), vec4<f32>(219f, -771f, 772f, 776f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-694f, 741f, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-700f, 180f, -442f, arg_0.x)))))));
    var_0 = Struct_3(!var_0.b, any(vec2<bool>(!var_0.b, any(vec2<bool>(true, var_0.a)))) == func_3(Struct_5(Struct_1(false, var_0.e.wwx, vec4<bool>(true, false, false, false), vec4<i32>(1i, u_input.d.x, u_input.e.x, -1797i)), Struct_4(vec3<bool>(var_0.b, true, var_0.a), vec4<i32>(u_input.e.x, 4181i, -31175i, u_input.a.x)))).x, Struct_2(_wgslsmith_dot_vec3_u32(~min(u_input.b, vec3<u32>(1815u, 1u, 80676u)), u_input.b), firstLeadingBit(var_0.c.a) >> (((var_0.c.a | 32708u) | var_0.c.a) % 32u)), Struct_2(_wgslsmith_mult_u32(var_0.d.b, _wgslsmith_sub_u32(~var_0.c.b, _wgslsmith_mod_u32(1u, 13346u))), _wgslsmith_dot_vec2_u32(reverseBits(u_input.b.zy ^ u_input.b.xy), _wgslsmith_add_vec2_u32(u_input.b.yz << (u_input.b.xz % vec2<u32>(32u)), vec2<u32>(0u, var_0.c.a)))), vec4<f32>(478f, _wgslsmith_f_op_f32(-var_0.e.x), -304f, arg_0.x));
    var_0 = Struct_3(any(!func_3(Struct_5(Struct_1(true, vec3<f32>(750f, -817f, arg_0.x), vec4<bool>(var_0.a, var_0.b, false, var_0.a), vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.e.x)), Struct_4(vec3<bool>(false, var_0.a, var_0.b), vec4<i32>(20534i, -59014i, 19551i, u_input.d.x)))).xy), true, Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(70429u, 0u, var_0.d.b, 1u), vec4<u32>(var_0.d.b, 1u, 0u, var_0.d.b)), vec4<u32>(86568u, ~75698u, _wgslsmith_clamp_u32(4294967295u, var_0.c.b, u_input.c), var_0.c.b)), _wgslsmith_sub_u32(var_0.d.b, firstTrailingBit(1u))), Struct_2(firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(abs(u_input.b.x) ^ 10149u, select(~var_0.d.a, u_input.b.x, !var_0.a))), var_0.e);
    var_0 = Struct_3(var_0.b, var_0.b, var_0.d, var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(767f, 643f, arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, -774f, _wgslsmith_f_op_f32(621f + 713f), _wgslsmith_f_op_f32(var_0.e.x - arg_0.x)))));
    var var_1 = vec4<bool>(any(vec2<bool>(abs(70604u) == countOneBits(var_0.d.b), true)), var_0.a, var_0.b, all(vec3<bool>(false, !var_0.a, true)));
    return Struct_5(Struct_1(var_1.x, var_0.e.wxy, !vec4<bool>(false, u_input.a.x > 2147483647i, select(false, var_1.x, var_0.b), 4226u > var_0.c.b), _wgslsmith_clamp_vec4_i32(-vec4<i32>(41029i, -2147483647i, 1i, u_input.d.x), vec4<i32>(6877i, _wgslsmith_sub_i32(u_input.e.x, u_input.e.x), select(u_input.d.x, u_input.d.x, var_0.a), u_input.d.x), -_wgslsmith_add_vec4_i32(vec4<i32>(-15219i, 2147483647i, u_input.d.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.d.x, 2147483647i)))), Struct_4(vec3<bool>(any(var_1.yw), firstTrailingBit(-1062i) != 1i, _wgslsmith_f_op_f32(round(500f)) <= _wgslsmith_f_op_f32(trunc(-201f))), -(~(~vec4<i32>(1308i, -78261i, u_input.e.x, u_input.e.x)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5) -> Struct_5 {
    var var_0 = 102f;
    let var_1 = Struct_3(!(func_3(Struct_5(Struct_1(true, vec3<f32>(arg_1.b.x, arg_2.a.b.x, 1593f), arg_1.c, arg_1.d), arg_2.b)).x & all(select(vec4<bool>(arg_1.a, arg_2.b.a.x, true, false), vec4<bool>(true, false, arg_1.c.x, arg_2.a.a), arg_1.c.x))), false, Struct_2(min(_wgslsmith_mod_u32(~1u, firstTrailingBit(4294967295u)), u_input.b.x), 4294967295u), Struct_2(abs(u_input.c), u_input.b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, arg_2.a.b.x, 1302f, arg_1.b.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.b.x, arg_2.a.b.x, -810f, arg_2.a.b.x) + vec4<f32>(112f, arg_2.a.b.x, 344f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(992f, arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x) * vec4<f32>(arg_2.a.b.x, 1018f, arg_2.a.b.x, arg_1.b.x)))))));
    var_0 = _wgslsmith_f_op_f32(970f * func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-537f, -860f), vec2<f32>(arg_1.b.x, 151f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_1.b.x) - arg_2.a.b.yx)) + arg_1.b.xy)).a.b.x);
    let var_2 = abs(-1i);
    let var_3 = _wgslsmith_div_u32(u_input.c, ~abs(var_1.c.a));
    return Struct_5(Struct_1(true, vec3<f32>(-537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), var_1.e.x), arg_1.c, vec4<i32>(31643i, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(min(u_input.a.x, -1i), 46716i), 1i)), Struct_4(func_3(arg_2).xxw, arg_1.d));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = func_4(vec3<bool>(true, true, false), Struct_1(!(arg_0 | !arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f * -148f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2094f)) - -707f), 311f), !(!(!vec4<bool>(arg_0, true, arg_0, false))), abs(-vec4<i32>(-1i, u_input.a.x, u_input.d.x, -2916i))), func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1123f * 736f))), _wgslsmith_f_op_f32(467f + 562f))));
    return true && arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(~u_input.c < ~u_input.c, _wgslsmith_sub_u32(u_input.b.x, u_input.c) <= _wgslsmith_mult_u32(u_input.c, 13575u), true, func_1(true)), vec4<bool>(~u_input.c == u_input.c, u_input.d.x > _wgslsmith_div_i32(u_input.a.x & -8257i, ~0i), any(func_3(func_2(vec2<f32>(974f, 426f)))), abs(u_input.b.x ^ 237u) <= 43451u), !select(func_4(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), func_2(vec2<f32>(1150f, -1434f)).a, func_4(vec3<bool>(true, true, true), Struct_1(false, vec3<f32>(-1112f, 765f, -1342f), vec4<bool>(true, true, true, false), vec4<i32>(u_input.a.x, u_input.e.x, -6235i, u_input.d.x)), Struct_5(Struct_1(true, vec3<f32>(-124f, 124f, 1116f), vec4<bool>(false, true, true, false), vec4<i32>(3360i, u_input.a.x, -2674i, u_input.e.x)), Struct_4(vec3<bool>(false, false, true), vec4<i32>(u_input.d.x, 0i, -2147483647i, 1i))))).a.c, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), func_2(vec2<f32>(-761f, 1621f)).a.c), false));
    var_0 = vec4<bool>(var_0.x, all(!select(func_3(Struct_5(Struct_1(false, vec3<f32>(-2659f, 1626f, -1000f), vec4<bool>(false, var_0.x, false, false), vec4<i32>(u_input.a.x, u_input.e.x, -1i, 0i)), Struct_4(vec3<bool>(var_0.x, true, var_0.x), vec4<i32>(-2147483647i, 38564i, u_input.e.x, 1i)))), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), var_0.x)), !any(var_0.zy), all(!(!vec2<bool>(var_0.x, false))));
    var var_1 = Struct_5(func_4(!var_0.zzx, func_4(vec3<bool>(true, !var_0.x, true), Struct_1(var_0.x || var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-549f, 649f, -1170f) - vec3<f32>(202f, -1590f, -531f)), !vec4<bool>(var_0.x, true, false, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.e.x)), func_4(select(var_0.xxx, var_0.xzx, true), func_4(var_0.yyw, Struct_1(true, vec3<f32>(-1671f, 118f, -1000f), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<i32>(u_input.d.x, -1i, u_input.e.x, u_input.d.x)), Struct_5(Struct_1(var_0.x, vec3<f32>(1000f, 1525f, 460f), vec4<bool>(false, var_0.x, false, var_0.x), vec4<i32>(-2147483647i, 2147483647i, u_input.d.x, u_input.a.x)), Struct_4(vec3<bool>(var_0.x, var_0.x, false), vec4<i32>(u_input.d.x, 6359i, u_input.d.x, u_input.e.x)))).a, func_4(vec3<bool>(var_0.x, var_0.x, true), Struct_1(var_0.x, vec3<f32>(-236f, 236f, -321f), vec4<bool>(var_0.x, false, var_0.x, false), vec4<i32>(0i, u_input.d.x, u_input.a.x, -10789i)), Struct_5(Struct_1(false, vec3<f32>(1000f, -133f, -200f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(0i, u_input.a.x, u_input.e.x, -2147483647i)), Struct_4(var_0.yzw, vec4<i32>(-44241i, 2147483647i, 32979i, -65i)))))).a, func_4(select(select(var_0.xwx, var_0.zzx, vec3<bool>(var_0.x, false, true)), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-655f, -491f, 1336f) + vec3<f32>(302f, 1112f, -423f)), vec4<bool>(var_0.x, var_0.x, true, true), vec4<i32>(u_input.e.x, u_input.a.x, -2147483647i, -65970i)), func_2(vec2<f32>(-1000f, 317f)))).a, func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2167f, 360f), vec2<f32>(749f, 430f), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1462f, 440f)), func_4(vec3<bool>(true, var_0.x, true), Struct_1(var_0.x, vec3<f32>(-1000f, 2494f, -242f), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<i32>(u_input.a.x, -28734i, 1i, -36524i)), Struct_5(Struct_1(true, vec3<f32>(-353f, 784f, 561f), vec4<bool>(var_0.x, true, var_0.x, false), vec4<i32>(9042i, -2147483647i, u_input.a.x, -2147483647i)), Struct_4(var_0.zwx, vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, -1i)))).b.a.x))))).b);
    var var_2 = Struct_4(func_3(func_4(!var_0.zxy, var_1.a, func_4(!var_0.zyw, var_1.a, Struct_5(var_1.a, Struct_4(var_1.b.a, var_1.a.d))))).yxw, vec4<i32>(_wgslsmith_div_i32(~(-2147483647i), var_1.b.b.x & u_input.a.x), -31741i, -8080i, ~(-84843i) & u_input.d.x) << (countOneBits(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.c), _wgslsmith_clamp_u32(28179u, 4294967295u, u_input.b.x), 0u, _wgslsmith_mod_u32(10131u, u_input.b.x))) % vec4<u32>(32u)));
    var var_3 = var_1.a.b.x;
    var_2 = func_4(!var_1.b.a, var_1.a, Struct_5(Struct_1(var_2.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.x, var_1.a.b.x, 933f) - vec3<f32>(var_1.a.b.x, 1024f, var_1.a.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.x, 2028f, var_1.a.b.x) * vec3<f32>(var_1.a.b.x, var_1.a.b.x, 787f)))), func_3(func_2(vec2<f32>(-1792f, var_1.a.b.x))), var_2.b), func_4(var_2.a, Struct_1(var_2.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.x, 1825f, var_1.a.b.x)), var_1.a.c, _wgslsmith_mod_vec4_i32(vec4<i32>(-34446i, 0i, 31327i, u_input.d.x), var_1.a.d)), func_2(_wgslsmith_f_op_vec2_f32(var_1.a.b.zx - vec2<f32>(var_1.a.b.x, 2018f)))).b)).b;
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_4(vec3<bool>(var_2.a.x, true, var_2.a.x), func_2(vec2<f32>(335f, -614f)).a, func_2(vec2<f32>(var_1.a.b.x, -1126f))).a.b.yz) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, var_1.a.b.x) + vec2<f32>(var_1.a.b.x, 1172f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, 448f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.b.x, var_1.a.b.x), func_4(vec3<bool>(var_2.a.x, false, true), var_1.a, Struct_5(Struct_1(true, var_1.a.b, var_1.a.c, vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x)), var_1.b)).a.b.yz, !var_0.x)))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_4.a.b.x)), 958f)))) - -320f);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_4.a.b.xy).b.b.x, -1i);
}

