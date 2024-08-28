struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1132f, 716f, -1000f, -1404f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(695f, 980f, 370f, -1055f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(396f, -1165f, -352f, _wgslsmith_div_f32(872f, -768f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, -1615f, 599f, -273f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f + -918f) * -1000f))), -651f, 539f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1547f)))))));
    let var_1 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(47301i, -42372i, (u_input.a & u_input.b.x) ^ abs(15450i)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 2147483647i, u_input.b.x), vec4<i32>(1i, u_input.a, 6895i, u_input.b.x))), _wgslsmith_sub_i32(i32(-1i) * -16488i, u_input.a), u_input.b.x)), -(vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, -2147483647i), ~u_input.a) >> (_wgslsmith_sub_vec3_u32(~u_input.c, ~u_input.c) % vec3<u32>(32u))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    var var_2 = Struct_1(var_0.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(22516i, 0i, -15480i), ~var_1) << (14031u % 32u)), -vec3<i32>(45036i, ~var_1.x << (_wgslsmith_sub_u32(u_input.d, u_input.c.x) % 32u), 0i));
    var var_3 = var_2.b;
    var_2 = Struct_1(var_0.x, -1i, var_2.c);
    return vec2<bool>(!(-425f == _wgslsmith_f_op_f32(step(1f, 1f))), true);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_2(~u_input.a, !arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_2.a.a))))))), arg_2.a);
    let var_1 = arg_1;
    var_0 = Struct_2(firstLeadingBit(-1i), vec2<bool>(true, all(func_3()) != false), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -904f)) - _wgslsmith_f_op_f32(f32(-1f) * -1312f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f - arg_1.d.a)) + _wgslsmith_f_op_f32(1000f + -1530f)), 0i, var_0.d.c));
    var var_2 = Struct_2(_wgslsmith_mod_i32(var_1.a, -2147483647i), arg_1.b, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) + _wgslsmith_div_f32(-1364f, arg_2.a.a))), var_0.d);
    var_0 = Struct_2(-1i, vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -372f), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0)))))), ~u_input.a, firstLeadingBit(firstTrailingBit(var_0.d.c))));
    return min(vec4<i32>(-25449i, select(var_0.a, i32(-1i) * -3052i, var_2.b.x), var_2.d.c.x, arg_1.a), vec4<i32>(-arg_2.a.b, arg_1.a, arg_2.a.c.x | abs(22272i), 24688i) >> (vec4<u32>(reverseBits(u_input.d) | ~u_input.d, _wgslsmith_dot_vec2_u32(~u_input.c.zy, vec2<u32>(u_input.d, u_input.c.x)), ~u_input.d ^ 1u, ~u_input.d & ~u_input.d) % vec4<u32>(32u)));
}

fn func_2() -> i32 {
    var var_0 = true;
    var_0 = true;
    var var_1 = u_input.b.x;
    var_1 = u_input.b.x;
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -960f)))), Struct_2(~(-5358i), select(vec2<bool>(true, true), func_3(), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-623f, _wgslsmith_f_op_f32(1650f + 1540f)))), Struct_1(1565f, u_input.a, vec3<i32>(_wgslsmith_div_i32(u_input.a, -1i), -2147483647i, 25642i))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-547f + -447f), -7620i, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.a) << (u_input.c % vec3<u32>(32u)), vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(u_input.b.x, 2147483647i, -1i)))), !(!(!all(vec3<bool>(false, false, true)))));
    return ~firstTrailingBit(1i);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = all(!(!vec4<bool>(true, true, select(false, true, true), select(true, true, false))));
    var_0 = true;
    let var_1 = arg_2.x > func_2();
    var var_2 = -arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-279f + arg_0), 1f) + arg_0), -(var_2.x ^ ~_wgslsmith_clamp_i32(u_input.b.x, -57889i, var_2.x)), firstLeadingBit(~_wgslsmith_clamp_vec3_i32(arg_2.wxx >> (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_2.x, -4479i), arg_2.yyy), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, var_2.x, var_2.x), vec3<i32>(7437i, var_2.x, var_2.x)))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(ceil(-672f)), vec4<u32>(_wgslsmith_sub_u32(~1u, abs(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.xy))), u_input.d, ~u_input.c.x, abs(u_input.c.x)), countOneBits(~vec4<i32>(~(-2147483647i), u_input.a, firstTrailingBit(u_input.b.x), u_input.b.x))));
    let var_1 = Struct_2(-u_input.b.x, func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -675f), Struct_1(_wgslsmith_f_op_f32(-var_0), 0i, -(-vec3<i32>(u_input.b.x, 0i, 1i) >> (_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(26788u, 1400u, 47397u), u_input.c) % vec3<u32>(32u)))));
    var var_2 = select(!select(vec3<bool>(var_1.b.x, var_1.b.x, all(vec3<bool>(var_1.b.x, true, var_1.b.x))), !vec3<bool>(true, var_1.b.x, false), true), !vec3<bool>(var_1.b.x, (var_1.b.x == var_1.b.x) & var_1.b.x, var_1.b.x), _wgslsmith_add_u32(~u_input.c.x, u_input.c.x) >= 0u);
    let var_3 = vec3<bool>(all(select(vec3<bool>(var_1.b.x, var_2.x, false), vec3<bool>(!var_1.b.x, var_1.b.x, false & var_2.x), select(!vec3<bool>(true, var_2.x, var_1.b.x), !vec3<bool>(var_1.b.x, true, false), !vec3<bool>(var_1.b.x, true, true)))), var_2.x, (-1i > -_wgslsmith_div_i32(var_1.a, u_input.b.x)) & var_1.b.x);
    var var_4 = u_input.a;
    var_2 = vec3<bool>(!((u_input.d != 1u) & false), true | var_1.b.x, false);
    let var_5 = Struct_5(Struct_4(-func_2(), false), var_1, vec3<u32>(reverseBits(~u_input.d), _wgslsmith_clamp_u32(~u_input.c.x, 1u, u_input.d), ~_wgslsmith_mod_u32(~42778u, 10341u >> (u_input.d % 32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) + _wgslsmith_f_op_f32(func_1(-678f, ~vec4<u32>(9660u, u_input.d, 29834u, u_input.d), ~vec4<i32>(u_input.a, u_input.a, var_1.a, var_1.d.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))))), _wgslsmith_f_op_f32(ceil(var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x, _wgslsmith_f_op_vec3_f32(max(var_5.d, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-433f, var_0, 2027f) - vec3<f32>(var_5.d.x, var_0, 521f))))))), u_input.b, vec2<u32>(select(var_5.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), firstLeadingBit(u_input.c)), ~var_5.c.x >= (u_input.d >> (15001u % 32u))), ~u_input.c.x));
}

