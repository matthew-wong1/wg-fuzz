struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> vec3<bool> {
    return vec3<bool>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-242f, -1233f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(905f)))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-899f, 627f))))), any(vec3<bool>(any(vec4<bool>(arg_3, arg_3, arg_2.x, arg_3)), select(arg_0.c == 20979u, arg_3, arg_2.x), all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = ~(~(u_input.b | _wgslsmith_sub_vec3_i32(u_input.b << (vec3<u32>(29222u, 23667u, arg_1.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-41827i, 0i, 7203i)))));
    let var_1 = Struct_1(i32(-1i) * -1i, min((var_0 >> (vec3<u32>(38923u, arg_0.x, arg_0.x) % vec3<u32>(32u))) ^ vec3<i32>(~var_0.x, ~var_0.x, ~var_0.x), reverseBits(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 0i, u_input.a.x), var_0)))), 0u);
    let var_2 = var_1;
    let var_3 = select(select(!select(vec3<bool>(true, true, true), func_3(Struct_1(2147483647i, var_2.b, var_1.c), var_2, vec3<bool>(false, false, true), true), vec3<bool>(true, true, false)), func_3(Struct_1(firstTrailingBit(22200i), ~vec3<i32>(var_0.x, 46142i, var_1.a), var_1.c), Struct_1(var_0.x, vec3<i32>(-2210i, -1i, var_0.x), var_2.c), vec3<bool>(func_3(var_1, var_2, vec3<bool>(false, false, true), false).x, true, true), true), select(vec3<bool>(u_input.d >= 37962i, true, select(false, true, true)), vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true), true)), !select(vec3<bool>(true, false, var_1.a < var_2.a), vec3<bool>(true, true, true), false), vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-551f))) < _wgslsmith_f_op_f32(-971f * _wgslsmith_f_op_f32(-1000f - 115f)), true));
    var var_4 = var_1;
    return Struct_1(u_input.e, vec3<i32>(max(-18267i, -abs(-2147483647i)), ~(var_2.b.x >> (var_2.c % 32u)) << (1u % 32u), var_0.x), firstTrailingBit(~var_4.c));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(1u, 27195u))), max(~vec2<u32>(25786u, 1u), vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(107771u, 4294967295u, 1u), vec3<u32>(45371u, 0u, 6929u))))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41134u, 40698u), vec2<u32>(4294967295u, 49986u)) | _wgslsmith_div_u32(1u, 4294967295u), 37847u), 1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(709f, 1094f), vec2<f32>(-1298f, -1982f), true)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-663f, 1000f))) * vec2<f32>(-276f, 259f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, _wgslsmith_div_f32(203f, 1357f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1673f, 192f))))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1278f, -248f), vec2<f32>(-754f, 115f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(416f, 430f) * vec2<f32>(1678f, 750f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, -2231f) * vec2<f32>(139f, 457f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1530f))), vec2<bool>(any(vec4<bool>(false, true, false, true)), u_input.a.x > u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    var var_2 = _wgslsmith_sub_u32(~firstLeadingBit(_wgslsmith_mult_u32(17176u, 1u)), firstTrailingBit(~firstTrailingBit(1u)));
    let var_3 = false;
    let var_4 = !select(!vec4<bool>(var_3, var_3, true, true), vec4<bool>(true, true, any(select(vec3<bool>(false, var_3, var_3), vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, true, var_3))), true), all(select(vec3<bool>(false, false, var_3), func_3(var_0, Struct_1(var_0.b.x, vec3<i32>(u_input.a.x, var_0.a, var_0.a), 70533u), vec3<bool>(false, false, var_3), var_3), true)));
    return func_2(~abs(vec2<u32>(20088u, ~var_0.c)), _wgslsmith_add_vec2_u32(max((vec2<u32>(var_0.c, var_0.c) | vec2<u32>(var_0.c, 4294967295u)) >> (vec2<u32>(var_0.c, 1u) % vec2<u32>(32u)), ~vec2<u32>(var_0.c, var_0.c)), _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, 1u), vec2<u32>(1u, var_0.c)), abs(abs(vec2<u32>(var_0.c, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -76296i;
    var var_1 = u_input.b;
    let var_2 = func_1();
    var var_3 = select(func_3(Struct_1(u_input.e | select(1i, var_2.a, false), vec3<i32>(~var_2.b.x, i32(-1i) * -44308i, firstLeadingBit(u_input.a.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(2266u, var_2.c), _wgslsmith_mod_u32(var_2.c, var_2.c))), var_2, select(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), true), true), select(select(func_3(var_2, Struct_1(u_input.d, u_input.b, 4294967295u), vec3<bool>(true, true, true), false), select(func_3(Struct_1(var_2.b.x, u_input.b, var_2.c), Struct_1(51271i, u_input.b, 1u), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), false), !select(false, true, false)), select(vec3<bool>(func_3(var_2, Struct_1(7675i, u_input.b, 1u), vec3<bool>(true, false, false), true).x, true, all(vec4<bool>(true, false, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), false), vec3<bool>(true, true, true)), !((12399i >= var_1.x) & true)), any(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false), true)));
    var var_4 = select(vec2<bool>(_wgslsmith_sub_u32(6185u, 5214u) == func_1().c, false || any(vec4<bool>(true, true, false, true))), !func_3(Struct_1(u_input.a.x, vec3<i32>(39204i, 30620i, var_1.x), 1u), Struct_1(1i, vec3<i32>(var_1.x, u_input.b.x, 1i), var_2.c << (var_2.c % 32u)), select(!vec3<bool>(true, var_3.x, false), select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(false, var_3.x, var_3.x)), var_3.x), true).xy, vec2<bool>(all(vec4<bool>(true && var_3.x, !var_3.x, !var_3.x, var_3.x)), any(var_3.xz)));
    var_4 = var_3.yz;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(i32(-1i) * -var_2.a, -1590i, true)), -860f, vec4<f32>(392f, _wgslsmith_f_op_f32(round(400f)), _wgslsmith_f_op_f32(2074f - -373f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2963f))))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(var_2.c, var_2.c) | ~vec2<u32>(var_2.c, 30070u)), abs(firstTrailingBit(vec2<u32>(var_2.c, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-379f * 226f), -1129f) * -1024f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_f32(max(517f, -240f))))), -1000f, _wgslsmith_f_op_f32(-364f - 726f)));
}

