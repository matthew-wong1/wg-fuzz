struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = -1088f;
    var var_1 = any(vec4<bool>(true, true, true, true));
    var_1 = true;
    var var_2 = min(abs(vec4<i32>(_wgslsmith_mult_i32(2147483647i, arg_0 | u_input.a), select(-63868i, 0i, all(vec4<bool>(true, false, true, false))), firstLeadingBit(u_input.a << (u_input.d.x % 32u)), -u_input.a)), -_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(14330i, u_input.b, 76048i, 3652i), vec4<i32>(arg_0, 2147483647i, 29549i, 34970i))), -vec4<i32>(arg_0, u_input.c, arg_0, arg_0)));
    let var_3 = _wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, u_input.d.x, _wgslsmith_mod_u32(reverseBits(25047u), 1u)), vec3<u32>(~12960u, _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mult_u32(81719u, 7641u)), min(1u, _wgslsmith_add_u32(7907u, u_input.d.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(25788u), max(u_input.d.x, 41401u), u_input.d.x), ~vec3<u32>(23177u, u_input.d.x, 44668u)) | _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(22581u, 1u, 1u), vec3<u32>(1u, u_input.d.x, u_input.d.x), false), vec3<u32>(firstTrailingBit(68767u), ~u_input.d.x, ~30780u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 11848u, 89823u), select(vec3<u32>(21547u, 40541u, u_input.d.x), vec3<u32>(13258u, 12334u, u_input.d.x), vec3<bool>(false, true, false)))));
    return ~(~((_wgslsmith_sub_u32(0u, var_3.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, var_3.x, var_3.x), vec4<u32>(var_3.x, u_input.d.x, 4294967295u, var_3.x))) ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_3, vec3<u32>(u_input.d.x, var_3.x, var_3.x)), 4294967295u)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), true, 0u == (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(0u, u_input.d.x, u_input.d.x)) | firstLeadingBit(func_3(u_input.a))), !all(vec3<bool>(true, true, all(vec4<bool>(false, true, true, true)))));
    var var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~(u_input.d.x ^ u_input.d.x), 1u, u_input.d.x & (1u ^ u_input.d.x), u_input.d.x), vec4<u32>(u_input.d.x, max(u_input.d.x & 36031u, func_3(1i)), ~max(1u, 0u), 4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(981f, -981f), vec2<f32>(1537f, 655f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, 121f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -257f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f + 1000f) + _wgslsmith_f_op_f32(sign(-1654f)))), _wgslsmith_f_op_f32(f32(-1f) * -157f))));
    var var_3 = vec2<bool>(all(var_0.zy), false);
    var var_4 = -19717i;
    return Struct_1(select(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-37828i, -5095i, u_input.a, -2147483647i), ~vec4<i32>(u_input.b, u_input.c, u_input.a, 1i), min(vec4<i32>(-51732i, 2147483647i, 0i, -49172i), vec4<i32>(-2147483647i, u_input.b, u_input.c, 25324i))) ^ _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, -6191i, u_input.b, -30292i), vec4<i32>(2147483647i, u_input.c, u_input.a, -710i)), firstTrailingBit(-abs(vec4<i32>(12503i, u_input.c, 15383i, 53454i))), vec4<bool>(any(!var_0.wyw), false, -2147483647i == _wgslsmith_div_i32(-64551i, u_input.b), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(func_2().a, -vec4<i32>(~select(arg_3.x, u_input.b, false), -1i ^ (-33874i ^ arg_0.a.x), _wgslsmith_mod_i32(~(-1i), arg_1.a.x), -2147483647i));
    var var_1 = func_2();
    var_1 = Struct_1(-arg_0.a);
    var var_2 = Struct_1(vec4<i32>(arg_0.a.x, min(0i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.a.x, 0i, var_0, u_input.b)), vec4<i32>(var_1.a.x, var_1.a.x, arg_1.a.x, arg_1.a.x))), 1i, _wgslsmith_mult_i32(arg_1.a.x, abs(u_input.a)) | -1i));
    var_1 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(534f, 1385f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(225f, -775f))), 987f, u_input.d.x != (1u | arg_2.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1016f, _wgslsmith_f_op_f32(func_4(func_2(), func_2(), ~vec4<u32>(u_input.d.x, 1u, 21594u, 4294967295u), vec2<i32>(2147483647i, 2147483647i))), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f - 879f)))), 485f);
    let var_1 = true;
    let var_2 = firstLeadingBit(-1i | _wgslsmith_div_i32(_wgslsmith_mult_i32(-53575i, 1i), ~(~u_input.a)));
    let var_3 = func_2();
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(379f, var_0.x)), _wgslsmith_f_op_f32(-139f - var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1000f * var_0.x), var_0.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-936f, -1665f))))))));
    return !var_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = abs(_wgslsmith_sub_i32(var_0.a.x >> (~36654u % 32u), -u_input.b | func_2().a.x) | u_input.a);
    let var_2 = !vec3<bool>(arg_1.x, true, any(vec2<bool>(any(vec4<bool>(false, arg_1.x, false, true)), arg_1.x)));
    var var_3 = Struct_1(var_0.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false))), !vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, false, true)), func_1(u_input.c, vec3<u32>(1u, u_input.d.x, 1u))), true), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))));
    var_0 = Struct_1(vec4<i32>(~(~var_0.a.x), 18067i, u_input.a, ~(abs(1i) << (u_input.d.x % 32u))));
    var_0 = func_5(vec4<bool>(any(vec2<bool>(true, true)), !select(true, func_1(-2147483647i, vec3<u32>(37054u, u_input.d.x, 4294967295u)), true), false && all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), vec3<bool>(true, true, true));
    var_0 = Struct_1(~(-(~vec4<i32>(1468i, u_input.c, var_0.a.x, -10650i)) ^ _wgslsmith_mod_vec4_i32(var_0.a, var_0.a)));
    let var_1 = ~u_input.d.x;
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(var_0.a | -_wgslsmith_sub_vec4_i32(var_0.a, var_0.a), ~_wgslsmith_add_vec4_i32(~var_0.a, ~vec4<i32>(u_input.a, u_input.b, -27547i, u_input.c)), reverseBits(vec4<i32>(var_0.a.x << (1u % 32u), _wgslsmith_clamp_i32(var_0.a.x, 0i, var_0.a.x), 4689i, var_0.a.x << (u_input.d.x % 32u)))));
    var_2 = Struct_1(~vec4<i32>(1i, _wgslsmith_sub_i32(var_0.a.x, -1i), 1i, u_input.c) | vec4<i32>(-var_2.a.x, 1i, var_2.a.x, firstTrailingBit(1i)));
    var var_3 = !(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), true));
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(-(vec3<i32>(u_input.a, var_0.a.x, u_input.b) << (vec3<u32>(var_1, 0u, var_1) % vec3<u32>(32u))), var_2.a.zyx), ~vec4<u32>(~(~4294967295u), u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, ~var_1, 22613u), var_1), vec3<u32>(4294967295u, firstTrailingBit(1u), 50502u & ~var_1) ^ firstTrailingBit(select(~vec3<u32>(4294967295u, 0u, 4294967295u), abs(vec3<u32>(var_1, var_1, 34901u)), false)), u_input.d.x, -(func_2().a.yyw >> ((~vec3<u32>(u_input.d.x, 13763u, 0u) & reverseBits(vec3<u32>(3452u, var_1, 0u))) % vec3<u32>(32u))));
}

