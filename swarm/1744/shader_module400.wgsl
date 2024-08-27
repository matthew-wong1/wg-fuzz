struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: Struct_4,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1264f)))) + _wgslsmith_f_op_f32(sign(arg_0.x)));
    var var_1 = !(!((_wgslsmith_f_op_f32(-var_0) < var_0) || !(u_input.c.x == u_input.e.x)));
    var var_2 = Struct_2(select(_wgslsmith_div_u32(1u, min(u_input.e.x, 92327u)) > _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), u_input.e), vec3<u32>(47084u, 33958u, 29869u)), true, true), arg_0, Struct_1(vec3<i32>(-63562i, ~(~u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ 0i)), vec3<u32>(66327u, max(~60583u, 11934u), u_input.d.x), Struct_1(max(min(vec3<i32>(u_input.b, 8027i, 30380i) | vec3<i32>(u_input.b, 2258i, 11349i), firstTrailingBit(vec3<i32>(u_input.b, u_input.a, 1i))), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a, 5891i), 2147483647i, _wgslsmith_sub_i32(62126i, 10252i)))));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) - var_0))), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_2.c.a, abs(vec3<i32>(var_2.e.a.x, u_input.a, 2147483647i))), abs(vec3<i32>(-54750i, -8527i, -3369i)))), u_input.e, var_2.e);
    let var_3 = !vec3<bool>(select(true, var_2.a, !(-1000f == var_0)), true, true);
    return ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(23441u, 8561u, u_input.d.x, _wgslsmith_add_u32(19687u, 32385u)), ~(vec4<u32>(32457u, var_2.d.x, u_input.c.x, u_input.e.x) << (vec4<u32>(u_input.e.x, u_input.e.x, var_2.d.x, 1u) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_i32(min(firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(21670i, u_input.a, u_input.a, u_input.b), vec4<i32>(-62877i, arg_0.a.x, arg_0.a.x, 0i))), -vec4<i32>(u_input.a >> (39245u % 32u), u_input.a ^ u_input.b, _wgslsmith_div_i32(arg_0.a.x, 24246i), 1i)), (~abs(vec4<i32>(arg_0.a.x, arg_0.a.x, 2147483647i, u_input.a)) & _wgslsmith_div_vec4_i32(vec4<i32>(-30780i, u_input.b, 24499i, arg_0.a.x) >> (vec4<u32>(u_input.c.x, 3324u, 0u, 7405u) % vec4<u32>(32u)), abs(vec4<i32>(arg_0.a.x, -1i, u_input.a, arg_0.a.x)))) >> (abs(func_3(vec3<f32>(1f, 1f, 1f))) % vec4<u32>(32u)));
    var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(0i, 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, var_0.x), ~vec2<i32>(49326i, u_input.b)) ^ reverseBits(1i), arg_0.a.x, -1i));
    let var_1 = ~(~u_input.e);
    var var_2 = ~_wgslsmith_mod_vec3_i32(var_0.xxx, ~vec3<i32>(25135i, firstTrailingBit(-5109i), min(arg_0.a.x, 2147483647i)));
    var_2 = var_0.wxx;
    return Struct_1(select(vec3<i32>(-arg_0.a.x, _wgslsmith_mod_i32(var_0.x, u_input.a), 0i & u_input.a) >> (var_1 % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(-8901i), select(-9574i, 0i, true), firstTrailingBit(23859i)) & vec3<i32>(var_2.x | 1100i, arg_0.a.x & -1i, -u_input.b), true));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = arg_0.yzw;
    let var_1 = func_2(Struct_1(vec3<i32>(2147483647i, _wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -21528i, u_input.a), vec3<i32>(-4648i, u_input.a, u_input.b))), 1i)));
    var var_2 = vec4<bool>(select(var_1.a.x, _wgslsmith_add_i32(select(var_1.a.x, var_1.a.x, var_0.x), var_1.a.x & var_1.a.x), arg_0.x) >= -2482i, !(var_0.x & var_0.x), var_0.x, any(arg_0.yyy));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(345f)) + _wgslsmith_div_f32(-465f, -617f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1150f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(451f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(vec4<u32>(~u_input.c.x, 43657u, 1u, u_input.d.x) >> (vec4<u32>(u_input.d.x << (1u % 32u), u_input.e.x, 56000u, 4294967295u) % vec4<u32>(32u))));
    var var_1 = ~vec4<u32>(reverseBits(~var_0.x), 17455u, 1u, var_0.x);
    let var_2 = vec2<f32>(-2462f, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, true))));
    var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 587f, 1000f))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.x, 10442u, 25146u), vec4<u32>(var_1.x, 4294967295u, 0u, var_1.x) >> (vec4<u32>(var_0.x, 1u, 30160u, u_input.d.x) % vec4<u32>(32u)))), select(vec4<u32>(~var_1.x, 14915u, 30769u, 60668u & var_1.x), vec4<u32>(_wgslsmith_add_u32(~u_input.d.x, u_input.d.x), func_3(vec3<f32>(1000f, 451f, -360f)).x, 0u, var_1.x), vec4<bool>(false, all(vec4<bool>(true, true, true, true)) | true, true, _wgslsmith_f_op_f32(round(-1955f)) <= _wgslsmith_div_f32(var_2.x, 1057f))));
    var var_3 = 7667i;
    var var_4 = -vec3<i32>(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, 1i, u_input.a), max(vec3<i32>(-47220i, u_input.a, u_input.a), vec3<i32>(u_input.b, -2147483647i, u_input.b))), ~firstLeadingBit(vec3<i32>(u_input.b, -7104i, 10972i))), ~func_2(Struct_1(vec3<i32>(-24725i, u_input.a, 1i))).a.x);
    var_1 = vec4<u32>(var_1.x, ~_wgslsmith_mod_u32(var_0.x, ~(var_1.x >> (92650u % 32u))), _wgslsmith_mod_u32(var_0.x, var_1.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_2.x, -198f)), u_input.c.x);
}

