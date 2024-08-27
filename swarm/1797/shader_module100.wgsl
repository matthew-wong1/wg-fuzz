struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = vec4<bool>(global0.x, true, arg_0.x, true);
    global0 = vec2<bool>(arg_0.x, true);
    let var_1 = Struct_1(any(arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, 1564f, -968f))))), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1464f * _wgslsmith_f_op_f32(-253f - -224f)))));
    global0 = var_0.ww;
    let var_2 = var_0;
    return var_1.b;
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-1948f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 324f)))));
    var var_1 = min(vec4<i32>(i32(-1i) * -2147483647i, u_input.b.x, u_input.b.x, -27818i >> (0u % 32u)), select(-(abs(vec4<i32>(-41947i, u_input.b.x, -698i, 44968i)) ^ max(vec4<i32>(-14325i, u_input.b.x, u_input.b.x, 9464i), vec4<i32>(u_input.b.x, -87264i, -25701i, u_input.b.x))), -(select(vec4<i32>(-24972i, -4078i, u_input.b.x, u_input.b.x), vec4<i32>(-1i, 2147483647i, u_input.b.x, 0i), vec4<bool>(true, global0.x, global0.x, global0.x)) | firstLeadingBit(vec4<i32>(-2147483647i, -78657i, 0i, u_input.b.x))), select(select(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), u_input.b.x != u_input.b.x), !(!vec4<bool>(global0.x, global0.x, global0.x, false)), any(vec4<bool>(false, global0.x, true, true)))));
    global0 = select(!vec2<bool>(u_input.b.x >= _wgslsmith_clamp_i32(var_1.x, var_1.x, 0i), !global0.x), vec2<bool>(!any(!vec4<bool>(false, true, true, global0.x)), !(!global0.x)), !any(vec3<bool>(global0.x, false, global0.x)) && true);
    let var_2 = Struct_5(!all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, global0.x, global0.x, global0.x), false)));
    return ~var_1.wyz;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> vec4<bool> {
    let var_0 = func_3() ^ max(select(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-18610i, arg_1, arg_1)), vec3<i32>(arg_1, -1i, u_input.b.x) ^ vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), select(vec3<i32>(-34489i, arg_1, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, arg_1), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, true))), all(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)))), vec3<i32>(58258i, arg_1, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(59718i, -18330i, 50072i), vec3<i32>(u_input.b.x, 10889i, arg_1)), u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1044f, arg_0.x, arg_0.x) + vec3<f32>(1460f, -608f, 930f))))))));
    global0 = !select(vec2<bool>(global0.x || (131f <= arg_0.x), u_input.d.x > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, u_input.c, u_input.a.x), vec4<u32>(0u, 106296u, 4294967295u, 37321u))), !select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), 1u > u_input.a.x), any(select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, true))) && ((var_0.x & -56928i) > 1i));
    global0 = vec2<bool>(true, _wgslsmith_div_i32(~(~3942i), arg_1) <= 5071i);
    let var_2 = var_0.x;
    return vec4<bool>(all(!select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), true)), false, false, global0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    var var_0 = Struct_3(arg_0.x, abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d.x, u_input.c), u_input.d, u_input.a) | vec2<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_2.x, arg_2.x), vec3<u32>(34514u, 0u, arg_2.x)))), Struct_1(arg_0.x, vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(-439f)), _wgslsmith_f_op_f32(-516f * 798f)), ~(~select(u_input.c, 4294967295u, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -743f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-909f + -293f) - _wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = arg_2.ywx;
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-479f - var_0.c.d), _wgslsmith_f_op_f32(-var_0.c.b.x)))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.b.x, 527f)) - 181f) * -373f));
    let var_3 = vec4<u32>(var_2.c, countOneBits(~1u), arg_2.x, 8348u);
    var var_4 = ~u_input.b.x;
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_3.a;
    global0 = !vec2<bool>(all(select(arg_3.b, !arg_3.b, select(arg_3.b.x, global0.x, false))), all(select(vec3<bool>(true, true, true), !arg_3.b.yzy, vec3<bool>(true, true, true))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(366f, arg_1)), _wgslsmith_div_f32(2135f, 1203f))) - _wgslsmith_f_op_f32(-1000f + arg_1))));
    let var_1 = arg_3.b.wyx;
    let var_2 = 1i;
    return Struct_1(false, vec3<f32>(_wgslsmith_div_f32(-1000f, -1000f), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(284f * var_0))))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))) - _wgslsmith_f_op_f32(floor(arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, -592f, -1594f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, -1147f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1136f, 1035f, -1317f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, 414f, 524f)), _wgslsmith_f_op_vec3_f32(func_1(!vec4<bool>(global0.x, global0.x, false, global0.x)))))), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, -632f) * vec2<f32>(2070f, 1070f))), 2147483647i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f * 1210f) - _wgslsmith_f_op_f32(f32(-1f) * -2526f)), 403f)), vec4<u32>(firstLeadingBit(~u_input.c), ~(25513u & u_input.c), u_input.c, _wgslsmith_div_u32(6110u, 1u) >> (_wgslsmith_add_u32(u_input.c, u_input.a.x) % 32u)), global0.x)), min(vec4<u32>(~(~u_input.d.x), ~4294967295u, 14338u, 1u), vec4<u32>(0u, reverseBits(72044u), u_input.c, u_input.d.x)), Struct_2(vec2<bool>(global0.x, all(!vec4<bool>(false, false, false, global0.x))), select(!vec4<bool>(true, false, true, global0.x), select(vec4<bool>(true, true, global0.x, true), !vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(global0.x, false, true, true)), select(true, true, true))));
    let var_1 = reverseBits(u_input.b.x);
    global0 = func_2(_wgslsmith_div_vec2_f32(var_0.b.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yz)))), ~var_1).wx;
    var var_2 = _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(abs(vec3<i32>(-12127i, var_1, u_input.b.x)), ~vec3<i32>(u_input.b.x, u_input.b.x, -20101i)) | vec3<i32>(~firstTrailingBit(var_1), func_3().x, u_input.b.x), ~vec3<i32>(var_1, 1i, 1i));
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(var_0.b, var_0.b.x, vec4<u32>(u_input.d.x, 28601u, 14292u, var_0.c), Struct_2(vec2<bool>(false, global0.x), vec4<bool>(global0.x, false, false, false))).d - -1000f), _wgslsmith_f_op_f32(round(-2189f)), _wgslsmith_f_op_f32(floor(-972f)))), var_0.d, reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 63427u, var_0.c, 8983u) << (vec4<u32>(var_0.c, u_input.c, 59174u, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, var_0.c, 12589u, 10554u))), Struct_2(!func_2(_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(global0.x, true, var_0.a, global0.x))).zx, 30561i).yx, select(!vec4<bool>(global0.x, var_0.a, global0.x, true), select(vec4<bool>(false, global0.x, true, true), !vec4<bool>(var_0.a, false, false, global0.x), var_0.a), vec4<bool>(true, var_0.a || true, var_0.c > 18973u, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(~(~2906u), _wgslsmith_sub_u32(var_0.c, 4294967295u), 26866u)), var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, 245f, 1803f), vec3<f32>(var_0.b.x, -206f, var_0.b.x), var_0.a))), vec3<f32>(-497f, _wgslsmith_f_op_f32(var_0.d - -1000f), 210f), (0u >> (u_input.d.x % 32u)) == (10220u >> (u_input.d.x % 32u))))));
}

