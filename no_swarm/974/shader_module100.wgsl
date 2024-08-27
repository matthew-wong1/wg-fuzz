struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(115f - -328f), 902f, _wgslsmith_f_op_f32(step(-866f, _wgslsmith_f_op_f32(round(619f))))));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = var_0;
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(856f)));
}

fn func_2() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-485f, -719f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1614f, -420f))))));
    let var_1 = var_0.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1017f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(func_3()))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(802f, _wgslsmith_f_op_f32(f32(-1f) * -1290f), var_0.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1068f, var_0.x, var_0.x)) - vec3<f32>(-519f, var_0.x, -1162f)))));
    var var_3 = !select(vec2<bool>(false, true), select(vec2<bool>(true, true), !vec2<bool>(false, var_1), select(false, false, var_1)), !var_1);
    var_3 = !vec2<bool>(any(select(select(vec3<bool>(true, var_3.x, false), vec3<bool>(var_1, false, var_1), var_3.x), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, false, var_3.x), vec3<bool>(var_3.x, var_1, var_3.x)), !vec3<bool>(true, true, var_1))), ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.c) < 41247u);
    return u_input.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = -23705i;
    let var_1 = true;
    let var_2 = i32(-1i) * -1i;
    let var_3 = arg_2;
    var var_4 = abs(vec3<u32>(~_wgslsmith_clamp_u32(u_input.b, u_input.a, u_input.a), _wgslsmith_div_u32(_wgslsmith_sub_u32(27314u, 16505u), 1u), 0u) ^ ~(~vec3<u32>(u_input.a, 30883u, 1u)));
    return min(_wgslsmith_clamp_vec3_u32(~min(~vec3<u32>(4294967295u, 0u, arg_1.x), ~vec3<u32>(4294967295u, var_4.x, var_4.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10327u, arg_1.x, arg_1.x) | vec3<u32>(var_4.x, u_input.a, 4294967295u), vec3<u32>(0u, 51320u, u_input.c)), var_4.x, func_2()), vec3<u32>(~1u, abs(arg_1.x), ~var_4.x)), select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b >> (22304u % 32u), 0u), ~vec3<u32>(2301u, 12823u, 4294967295u) >> (~vec3<u32>(arg_1.x, arg_1.x, arg_1.x) % vec3<u32>(32u))), select(~_wgslsmith_add_vec3_u32(vec3<u32>(102946u, var_4.x, u_input.b), vec3<u32>(arg_1.x, var_4.x, 89895u)), firstLeadingBit(vec3<u32>(32117u, 0u, arg_1.x) ^ vec3<u32>(84717u, 21554u, 1218u)), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_mod_u32(arg_1.x, 4294967295u) >= ~arg_1.x, false, all(vec3<bool>(var_1, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b), _wgslsmith_mod_vec3_u32(func_1(vec2<i32>(0i, 36378i), vec2<u32>(u_input.b, u_input.a), Struct_1(vec3<f32>(-1900f, -328f, 753f)), Struct_1(vec3<f32>(1328f, -1730f, 2648f))), select(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(2699u, u_input.a, 5115u), true)) << (reverseBits(~vec3<u32>(u_input.a, 37763u, u_input.c)) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, 2093u & ~u_input.b));
    let var_1 = reverseBits(1u);
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(~2147483647i), _wgslsmith_clamp_i32(-1i, 0i, -20862i), 1i >> (_wgslsmith_mod_u32(45064u, var_1) % 32u), _wgslsmith_clamp_i32(~(-1i), _wgslsmith_mult_i32(-11313i, 55430i), i32(-1i) * -1i)), vec4<i32>(-2147483647i, -2147483647i, ~(-24302i), _wgslsmith_sub_i32(1i, 24672i)) >> (vec4<u32>(select(46095u, var_0.x, false), _wgslsmith_mult_u32(var_1, var_1), ~var_0.x, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(1u, var_1, ~(u_input.a >> (33742u % 32u)), reverseBits(reverseBits(u_input.c) << ((var_0.x >> (4294967295u % 32u)) % 32u))) % vec4<u32>(32u));
    let var_3 = Struct_1(vec3<f32>(-357f, -1203f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(544f, -253f)))))));
    var var_4 = select(vec3<bool>(43051u == var_0.x, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), false), vec3<bool>((true & (177f >= var_3.a.x)) | (_wgslsmith_f_op_f32(floor(-725f)) >= var_3.a.x), true, -1457f == var_3.a.x), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), all(vec2<bool>(false, false))))));
    var var_5 = var_3.a;
    var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(250f)), var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1518f * -1565f))));
    var var_6 = abs(reverseBits(-vec4<i32>(var_2.x, -47800i, var_2.x, -2147483647i)) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1361i, 0i, var_2.x, var_2.x), vec4<i32>(var_2.x, var_2.x, var_2.x, -2147483647i), var_4.x), -vec4<i32>(46689i, -35807i, -2147483647i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, 1i), vec4<i32>(var_2.x, 0i, var_2.x, 2147483647i))), -abs(vec4<i32>(6458i, var_2.x, var_2.x, -2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_2.x, var_2.x, -1i, 56300i), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, 0i), vec4<i32>(0i, var_2.x, var_2.x, 34172i)))));
    var var_7 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_7.a, firstLeadingBit(max(-select(vec2<i32>(var_2.x, 48624i), vec2<i32>(-10437i, var_2.x), true), var_2.yx & var_2.yw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1818f * _wgslsmith_f_op_f32(sign(var_3.a.x))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(var_0.x, var_0.x)), ~var_0.x), var_0.xz, vec2<u32>(var_0.x, 1u) << ((vec2<u32>(0u, u_input.a) >> (var_0.zz % vec2<u32>(32u))) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 1u) << (vec2<u32>(var_1, 70965u) % vec2<u32>(32u)), var_0.yz) % vec2<u32>(32u)));
}

