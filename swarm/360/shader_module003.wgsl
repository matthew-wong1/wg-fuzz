struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-min(-1i, firstTrailingBit(arg_1)), -2147483647i, -13514i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1, arg_1), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(true, true)), -select(vec2<i32>(29306i, arg_1), vec2<i32>(-1i, -1i), false))), ~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(arg_1, -21942i, arg_1, arg_1)), abs(vec4<i32>(arg_1, 19490i, arg_1, 0i))));
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    var var_0 = !all(vec3<bool>(all(!arg_1.a), false, select(arg_1.a.x != false, func_3(vec3<u32>(arg_2, 0u, arg_2), 14713i, Struct_1(arg_0.x, vec4<u32>(63172u, arg_2, arg_2, arg_2), arg_0.x)), arg_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(arg_0.x + 1203f) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-581f, -973f, arg_1.a.x)), _wgslsmith_f_op_f32(round(-1123f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(sign(-236f))));
    var var_1 = Struct_2(select(vec2<bool>(!(!arg_1.a.x), arg_1.a.x), select(vec2<bool>(arg_1.a.x, arg_1.a.x), !vec2<bool>(true, arg_1.a.x), true), arg_1.a.x || false));
    var var_2 = -abs(vec3<i32>(select(_wgslsmith_div_i32(1i, 1i), abs(0i), all(vec3<bool>(arg_1.a.x, var_1.a.x, arg_1.a.x))), 1118i, _wgslsmith_clamp_i32(~(-21718i), -2147483647i, abs(-260i))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2256f))) - _wgslsmith_f_op_f32(ceil(arg_0.x))), vec4<u32>(min(~17008u, u_input.a ^ (arg_2 << (u_input.a % 32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(31554u, 18375u, 95635u, arg_2), vec4<u32>(arg_2, 4294967295u, 18638u, u_input.a), select(vec4<u32>(u_input.a, arg_2, arg_2, 10775u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<bool>(true, false, true, false))), ~firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 58350u))), ~0u, select(_wgslsmith_add_u32(~u_input.a, 15097u), 1u, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x - -857f)), 1454f))));
    return var_3.b;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = min(abs(~abs(vec4<u32>(u_input.a, u_input.a, 43227u, u_input.a))), vec4<u32>(~u_input.a, 4294967295u, ~u_input.a, ~arg_1)) >> (((min(func_2(vec4<f32>(-1419f, arg_0, 191f, -122f), Struct_2(vec2<bool>(true, false)), u_input.a), vec4<u32>(u_input.a, 70190u, arg_1, 10667u) >> (vec4<u32>(8993u, arg_1, arg_1, 1314u) % vec4<u32>(32u))) >> ((vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u) >> (vec4<u32>(4294967295u, arg_1, 34795u, arg_1) % vec4<u32>(32u))) % vec4<u32>(32u))) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 42148u), ~vec4<u32>(arg_1, u_input.a, 21747u, 45395u)), vec4<u32>(u_input.a, firstTrailingBit(arg_1), firstTrailingBit(0u), firstTrailingBit(0u)), func_3(vec3<u32>(1u, 1u, 60558u), _wgslsmith_sub_i32(2147483647i, 27655i), Struct_1(764f, vec4<u32>(2969u, 11825u, 22437u, arg_1), arg_0)))) % vec4<u32>(32u));
    var_0 = abs(reverseBits(~vec4<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), var_0.x, var_0.x ^ 1u, max(var_0.x, 10019u))));
    let var_1 = Struct_2(vec2<bool>(min(firstLeadingBit(-16741i), ~1i) >= (_wgslsmith_clamp_i32(-23592i, 2147483647i, 27668i) ^ _wgslsmith_mod_i32(-10091i, 10794i)), true));
    var_0 = firstTrailingBit(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(97461u, 96739u, var_0.x, arg_1), vec4<u32>(0u, 4294967295u, 94594u, 1u)), ~vec4<u32>(4294967295u, u_input.a, 36923u, 4294967295u)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(68480u, 73278u, var_0.x, 1u), vec4<u32>(73654u, var_0.x, arg_1 | 616u, ~arg_1)) % vec4<u32>(32u)));
    let var_2 = ~vec4<u32>(_wgslsmith_div_u32(13302u, 77972u), firstLeadingBit(~38406u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(18821u, arg_1))), abs(0u), ~var_0.x);
    return _wgslsmith_sub_u32(var_0.x >> (~0u % 32u), _wgslsmith_sub_u32(var_2.x, ~_wgslsmith_clamp_u32(4294967295u & var_2.x, 1921u, var_2.x >> (38760u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(172f, -112f), _wgslsmith_div_f32(695f, 564f))) + -1650f)))));
    var var_1 = func_1(var_0, countOneBits(1u));
    var_1 = _wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(select(func_2(vec4<f32>(734f, 1000f, 1000f, var_0), Struct_2(vec2<bool>(true, false)), u_input.a).x ^ u_input.a, abs(79373u), false), u_input.a));
    let var_2 = Struct_2(vec2<bool>(true, true));
    let var_3 = -793f;
    var_1 = u_input.a;
    var_1 = 60639u;
    var_1 = u_input.a;
    let var_4 = _wgslsmith_add_i32(-10502i, 2421i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_4, -12810i), _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 54825u, u_input.a) >> (vec3<u32>(21767u, 69087u, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 69229u, 25208u), select(vec3<u32>(u_input.a, 12224u, 24615u), vec3<u32>(1u, u_input.a, 1u), var_2.a.x)), select(~(~vec3<u32>(u_input.a, 1u, 6691u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 79669u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 6233u, u_input.a), vec3<u32>(56532u, 40400u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), !(!var_2.a.x))), firstTrailingBit(_wgslsmith_mult_i32(-25402i, _wgslsmith_add_i32(var_4, select(var_4, var_4, var_2.a.x)))));
}

