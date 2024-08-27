struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-65108i);

var<private> global1: array<Struct_3, 7>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global1 = array<Struct_3, 7>();
    global1 = array<Struct_3, 7>();
    let var_0 = select(u_input.c, _wgslsmith_clamp_u32(39098u, _wgslsmith_clamp_u32(abs(~u_input.c), ~4294967295u, u_input.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c & 3001u, u_input.c), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 96064u), vec2<u32>(u_input.c, 0u)), u_input.c), u_input.c)), true);
    let var_1 = Struct_1(firstLeadingBit(-1i));
    var var_2 = var_1;
    return var_0 | var_0;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_1(u_input.b.x);
    var var_1 = ~4294967295u;
    var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1333f, -1471f)))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(1u, u_input.c, u_input.c)), firstLeadingBit(vec3<u32>(1u, u_input.c, 4294967295u)))), firstLeadingBit(4294967295u));
    var_1 = 0u;
    var var_2 = _wgslsmith_div_i32(17903i, 2147483647i);
    return ~var_0.a;
}

fn func_1() -> f32 {
    let var_0 = abs(select(vec4<i32>(u_input.a ^ global0.a, global0.a << (u_input.c % 32u), 1i, 1i), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -27556i, -8131i, u_input.b.x), vec4<i32>(global0.a, -32429i, -14323i, u_input.b.x) & vec4<i32>(-9370i, 37683i, global0.a, u_input.b.x)), any(vec4<bool>(false, true, true, true))) & (-(~vec4<i32>(2147483647i, 0i, u_input.a, u_input.a)) << (abs(vec4<u32>(1u, u_input.c, u_input.c, u_input.c) << (vec4<u32>(1u, u_input.c, 9119u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1904f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -659f), -2056f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-387f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f))), _wgslsmith_f_op_f32(886f - _wgslsmith_f_op_f32(f32(-1f) * -819f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)) * -384f)));
    global0 = Struct_1(_wgslsmith_add_i32(-43449i, ~(func_2(var_2.x) | abs(1i))));
    global0 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -75125i), ~vec2<i32>(2147483647i, global0.a) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))));
    return var_2.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(-vec3<i32>(~u_input.b.x, 59160i, u_input.b.x), (global0.a >> (arg_0.x % 32u)) ^ ~u_input.a, Struct_1(_wgslsmith_div_i32(-2147483647i, -global0.a)), _wgslsmith_f_op_f32(func_1()));
    global0 = var_0.c;
    var var_1 = Struct_3(var_0.c, arg_0.x, abs(arg_0.zy), var_0.c);
    return var_1.d;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = select(arg_3.xzz, vec3<bool>(all(!vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x)), arg_3.x, _wgslsmith_mod_i32(abs(arg_1.a), func_4(vec3<u32>(0u, 1u, arg_2), vec2<bool>(arg_3.x, true), vec4<f32>(arg_0, -1108f, arg_0, -352f)).a) <= (-16325i & _wgslsmith_div_i32(arg_1.a, -35025i))), select(vec3<bool>(any(arg_3.yx), arg_3.x, false), select(arg_3.xwz, !vec3<bool>(arg_3.x, arg_3.x, arg_3.x), (arg_0 != arg_0) | arg_3.x), arg_3.x));
    let var_1 = arg_1;
    var var_2 = vec2<bool>(true, !(u_input.c == ~_wgslsmith_sub_u32(arg_2, 14229u)));
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(5783i, global0.a), u_input.b.yy >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, 0i), -vec2<i32>(global0.a, 61502i))), func_2(628f), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.a, global0.a), 2147483647i)), 2147483647i, var_1, arg_0);
    var var_4 = func_4(vec3<u32>(~(~(u_input.c << (1u % 32u))), ~4294967295u & arg_2, 4294967295u), select(select(var_0.zx, vec2<bool>(true, true), var_2.x), vec2<bool>(any(!var_0.xz), true), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_3.d, -518f, 457f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, var_3.d, var_3.d, arg_0)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -115f, 495f, -158f))))));
    return StorageBuffer(_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(min(var_3.a, u_input.b), vec3<i32>(2147483647i, u_input.a, var_4.a))), vec3<i32>(-11560i, 1i, ~var_1.a)), func_4(vec3<u32>(_wgslsmith_clamp_u32(52844u, ~4294967295u, ~29874u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 8836u) << (vec2<u32>(u_input.c, 817u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, u_input.c), vec2<u32>(arg_2, 4294967295u)), u_input.c, 6902u)), select(arg_3.zy, !vec2<bool>(false, var_0.x), var_2.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -575f, -1294f, -870f) - vec4<f32>(683f, var_3.d, 753f, arg_0)), vec4<f32>(-397f, -970f, arg_0, -250f), !vec4<bool>(true, true, arg_3.x, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, arg_0, 1100f, -639f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, arg_0, arg_0, var_3.d))))).a, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, 39020u), vec3<u32>(arg_2, u_input.c, u_input.c), vec3<u32>(arg_2, u_input.c, 4294967295u)) | abs(vec3<u32>(u_input.c, 0u, 4294967295u))), vec3<u32>(firstLeadingBit(arg_2), 45820u, 4294967295u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, u_input.c, 32332u) >> (vec3<u32>(1u, 1u, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, 4294967295u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(abs(-2944i), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.a, 1i, global0.a), vec4<i32>(-u_input.a, global0.a, -1i << (u_input.c % 32u), ~u_input.a)));
    var_0 = -2147483647i;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, u_input.c) | select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 26625u), vec3<u32>(68093u, u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.c, 1u, 41946u) % vec3<u32>(32u)), all(vec3<bool>(true, true, true)))), ~(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c)) & (~vec3<u32>(4294967295u, 1u, 4294967295u) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)))));
    let var_2 = ~vec3<u32>(u_input.c, ~4294967295u, ~4294967295u);
    var var_3 = Struct_1(-firstTrailingBit(-global0.a));
    var var_4 = firstLeadingBit(var_2.x);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1334f, _wgslsmith_f_op_f32(-669f - 1714f)), 146f)))), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(select(var_1.x, var_2.x, true), ~4294967295u, ~18375u), max(var_2, vec3<u32>(1976u, 88377u, var_2.x))), !vec2<bool>(true, 0u != var_1.x), vec4<f32>(_wgslsmith_f_op_f32(-620f * _wgslsmith_f_op_f32(round(-1541f))), _wgslsmith_f_op_f32(618f * -921f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(952f * -376f))))), _wgslsmith_div_u32(_wgslsmith_sub_u32(~var_2.x, 0u), 14972u) << (u_input.c % 32u), vec4<bool>(all(vec3<bool>(false, false, all(vec4<bool>(false, true, false, false)))), _wgslsmith_div_i32(~u_input.a, _wgslsmith_sub_i32(-11731i, u_input.b.x)) != (4355i >> (select(var_2.x, var_1.x, false) % 32u)), ~(u_input.c ^ u_input.c) < _wgslsmith_div_u32(25533u, reverseBits(var_2.x)), true));
}

