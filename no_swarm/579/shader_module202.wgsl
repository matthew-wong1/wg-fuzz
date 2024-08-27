struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = Struct_1(!((-5189i <= u_input.d) & !any(vec2<bool>(true, true))), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), firstLeadingBit(u_input.d) >= _wgslsmith_add_i32(arg_0, u_input.d))), -(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, u_input.d, arg_0, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(30217i, -6360i, arg_0, arg_0), vec4<i32>(-2147483647i, u_input.d, -2147483647i, u_input.d), vec4<i32>(1i, -1i, 0i, arg_0))) >> ((firstLeadingBit(vec4<u32>(1u, 1u, 0u, 62730u)) ^ select(vec4<u32>(u_input.e, u_input.e, u_input.c, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.e), vec4<bool>(true, false, true, true))) % vec4<u32>(32u))), 2194i, ~firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(835u, 21231u, u_input.a)) & firstLeadingBit(19713u)));
    var_0 = Struct_1(true, var_0.a, var_0.c, _wgslsmith_mult_i32(u_input.d, _wgslsmith_sub_i32(select(var_0.c.x, var_0.c.x, var_0.a), -2147483647i) ^ abs(reverseBits(-1i))), var_0.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(675f * 1887f)), 1296f, -353f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2287f, 333f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1920f, 2152f, -1662f, -1000f), vec4<f32>(108f, 1000f, -1689f, -558f)) - vec4<f32>(1712f, 422f, -1047f, 1529f))))), vec4<f32>(-527f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-407f))))), 987f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-434f, _wgslsmith_f_op_f32(-925f + -1594f))), _wgslsmith_f_op_f32(f32(-1f) * -194f), true))), vec4<bool>(var_0.b & !select(true, var_0.a, true), var_0.a, true, !(!var_0.b))));
    var_0 = Struct_1(any(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(var_0.b, true), vec2<bool>(false, false)), vec2<bool>(var_0.a, var_0.a))), any(vec4<bool>(all(select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.b, var_0.a, false, var_0.a), var_0.b)), !var_0.a, any(!vec2<bool>(var_0.a, var_0.b)), var_0.b)), vec4<i32>(abs(i32(-1i) * -1i), i32(-1i) * -1i, firstTrailingBit(14404i), _wgslsmith_div_i32(max(var_0.d, firstTrailingBit(arg_0)), ~abs(0i))), _wgslsmith_dot_vec2_i32(firstLeadingBit(-var_0.c.ww) | vec2<i32>(var_0.c.x, ~8372i), -var_0.c.xy), 4294967295u);
    let var_2 = u_input.e;
    return select(~vec3<u32>(_wgslsmith_mod_u32(u_input.e, var_0.e), abs(0u), 1u | _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yz)), ~(vec3<u32>(~u_input.e, u_input.e, 1u) >> (~vec3<u32>(u_input.c, 0u, 15260u) % vec3<u32>(32u))), select(select(vec3<bool>(any(vec2<bool>(var_0.b, var_0.b)), !var_0.a, any(vec3<bool>(false, false, var_0.a))), vec3<bool>(false, all(vec2<bool>(var_0.b, true)), !var_0.a), var_0.a), !select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, true, true), select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(true, var_0.b, true), true)), select(vec3<bool>(any(vec4<bool>(false, true, true, var_0.b)), all(vec2<bool>(true, false)), any(vec3<bool>(var_0.a, true, true))), select(vec3<bool>(true, true, var_0.a), !vec3<bool>(var_0.a, false, var_0.b), vec3<bool>(true, var_0.a, var_0.a)), !(!var_0.b))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = ~vec3<i32>(_wgslsmith_sub_i32(-28398i, arg_3.c.c.x), i32(-1i) * -3795i, _wgslsmith_mult_i32(~(-10689i), ~(arg_3.a.c.x ^ arg_3.d.d)));
    var_0 = vec3<i32>(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, arg_3.d.c.x, ~arg_3.d.d), i32(-1i) * -arg_3.d.d, -max(1i, arg_3.a.d)), ~arg_3.c.d, u_input.d ^ var_0.x);
    var var_1 = Struct_3(true, var_0.x);
    var var_2 = _wgslsmith_div_vec3_i32(arg_3.c.c.yxx, -arg_3.a.c.wyz);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(168f)))))));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    let var_0 = Struct_2(Struct_1(!func_4(func_3(u_input.d), arg_1.yzy, 601f, Struct_2(Struct_1(false, true, vec4<i32>(1i, -1i, u_input.d, 0i), u_input.d, 63198u), 1000f, Struct_1(false, true, vec4<i32>(u_input.d, 1i, 59484i, u_input.d), u_input.d, u_input.a), Struct_1(false, false, vec4<i32>(9776i, u_input.d, 6150i, u_input.d), -1669i, 1u))), arg_1.x != -909f, firstTrailingBit(vec4<i32>(858i, u_input.d, 0i, 17094i)) >> (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_0, 30084u, 95465u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 15682u, arg_0, 20186u), vec4<u32>(arg_0, 1u, 73883u, 12674u))) % vec4<u32>(32u)), ~u_input.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(15535u, u_input.e, arg_0, u_input.b.x) | vec4<u32>(0u, u_input.c, 34555u, arg_0), vec4<u32>(4294967295u, u_input.c, 43569u, 1u))), 1054f, Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, arg_0, arg_0, 4294967295u), vec4<u32>(28478u, 1u, 21931u, 1u)) < _wgslsmith_dot_vec2_u32(~vec2<u32>(43696u, u_input.b.x), ~vec2<u32>(u_input.b.x, u_input.b.x)), select(4294967295u >= _wgslsmith_mult_u32(arg_0, 88640u), !(arg_1.x >= -1416f), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), ~vec4<i32>(_wgslsmith_add_i32(u_input.d, -3946i), u_input.d | u_input.d, abs(u_input.d), 53444i), -33851i, 69462u), Struct_1(false, true, vec4<i32>(2147483647i, -(~(-39627i)), firstLeadingBit(1i), countOneBits(2927i)), ~u_input.d, arg_0));
    let var_1 = reverseBits(~(~abs(vec4<u32>(arg_0, u_input.b.x, arg_0, 6015u) ^ vec4<u32>(0u, 4294967295u, u_input.a, u_input.b.x))));
    let var_2 = Struct_1(var_0.a.a, !(all(!vec3<bool>(var_0.a.a, var_0.c.b, var_0.c.a)) | true), (vec4<i32>(-u_input.d, var_0.c.d, 0i, var_0.d.c.x | -1i) | var_0.a.c) | min(var_0.d.c, var_0.d.c), -_wgslsmith_div_i32(u_input.d, -(i32(-1i) * -25968i)), 1u);
    let var_3 = ~var_0.c.d << (26241u % 32u);
    let var_4 = var_2;
    return select(var_3, -1i, all(!vec2<bool>(select(var_2.a, true, true), var_4.b)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1465f) * _wgslsmith_f_op_f32(abs(-219f))), _wgslsmith_f_op_f32(f32(-1f) * -365f))))));
    let var_1 = (_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, func_2(arg_0.x, vec4<f32>(379f, -862f, var_0.x, -507f)), _wgslsmith_sub_i32(u_input.d, u_input.d)), min(-vec3<i32>(-16901i, u_input.d, u_input.d), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.d), vec3<i32>(u_input.d, 56370i, u_input.d)))) & ~(-(vec3<i32>(2147483647i, u_input.d, 4273i) ^ vec3<i32>(-1i, u_input.d, u_input.d)))) & countOneBits(vec3<i32>(min(firstTrailingBit(-52368i), 1i), _wgslsmith_add_i32(firstLeadingBit(-8298i), u_input.d), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.d, u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(u_input.d, 7457i, u_input.d)))));
    var var_2 = Struct_4(Struct_1(func_4(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(308f, var_0.x, var_0.x), -263f, Struct_2(Struct_1(true, true, vec4<i32>(var_1.x, -2147483647i, -1i, var_1.x), var_1.x, arg_0.x), var_0.x, Struct_1(false, arg_1, vec4<i32>(2147483647i, var_1.x, var_1.x, -72436i), u_input.d, 48255u), Struct_1(arg_1, false, vec4<i32>(var_1.x, var_1.x, 2147483647i, 2147483647i), u_input.d, u_input.b.x))) && arg_1, arg_1, select(~select(vec4<i32>(-2147483647i, -55397i, var_1.x, u_input.d), vec4<i32>(1i, -2147483647i, var_1.x, -11363i), vec4<bool>(true, arg_1, arg_1, false)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(var_1.x, 37497i, 10092i, -40072i), vec4<i32>(-36355i, 0i, var_1.x, var_1.x)), -vec4<i32>(1i, 0i, 610i, -1744i)), select(!vec4<bool>(true, arg_1, arg_1, true), !vec4<bool>(true, false, arg_1, true), true & arg_1)), u_input.d, ~(~select(u_input.c, 63938u, false))), Struct_3(arg_1, 32400i), vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * var_0.x), 169f), 2009f), ~countOneBits(51956u), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(var_1.yx, -vec2<i32>(var_1.x, var_1.x)), 20209i));
    let var_3 = 4773u | (0u | ~firstLeadingBit(arg_0.x << (var_2.d % 32u)));
    let var_4 = vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_2.c.x) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_2.c.x)));
    return Struct_1(arg_1, (11349u == _wgslsmith_mod_u32(var_3, 1u)) & (54819u <= reverseBits(_wgslsmith_add_u32(var_3, u_input.b.x))), vec4<i32>(~(-1451i), var_1.x, -2147483647i, 1i), -1i, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.a, 0u, _wgslsmith_div_u32(u_input.c, u_input.e), u_input.a), ~countOneBits(reverseBits(vec4<u32>(u_input.b.x, 1u, u_input.c, 49488u))));
    var var_1 = func_1(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, _wgslsmith_add_vec2_u32(vec2<u32>(var_0, u_input.c), vec2<u32>(16835u, var_0))), _wgslsmith_clamp_u32(u_input.e, 1u, _wgslsmith_add_u32(53889u, u_input.e)), ~4294967295u), true);
    let var_2 = Struct_3(true, var_1.d);
    var var_3 = var_2;
    var var_4 = vec4<bool>(true, false, !var_1.b || select(_wgslsmith_sub_u32(4294967295u, u_input.c) < ~61849u, var_1.b, _wgslsmith_f_op_f32(sign(-2663f)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_3.a);
    var var_5 = vec2<u32>(0u, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(321f, 496f, 186f) - vec3<f32>(_wgslsmith_f_op_f32(743f - _wgslsmith_div_f32(1674f, 866f)), 2653f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1017f)), _wgslsmith_f_op_f32(-814f - 1134f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1f))))), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(28391u, 0u, 67960u, 0u), vec4<u32>(80240u, u_input.c, var_0, u_input.e), false) << (firstLeadingBit(vec4<u32>(var_0, var_0, 1u, 83309u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_0, u_input.a, 0u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4797u, var_0, 50173u), vec4<u32>(var_1.e, 29578u, 4294967295u, 50799u)))));
}

