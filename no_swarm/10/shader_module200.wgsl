struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(step(279f, _wgslsmith_div_f32(-1573f, -756f))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, 1381f)), -619f, all(vec4<bool>(true, false, false, true)) == true)), -804f), _wgslsmith_dot_vec3_i32(vec3<i32>(-35448i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-7697i, 1779i), vec2<i32>(10695i, -5609i)), ~firstLeadingBit(2511i), min(-6955i, i32(-1i) * -16804i)), max(vec3<i32>(75613i, 7577i, 13143i), vec3<i32>(13465i, 2147483647i, 14402i)) >> (vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 15061u), vec3<u32>(63052u, 11992u, u_input.a.x)), 1u) % vec3<u32>(32u))), -firstTrailingBit(-firstTrailingBit(vec4<i32>(7452i, 2147483647i, 41342i, 5628i))), !(!vec2<bool>(true, select(false, false, false))), vec4<f32>(var_0.x, -1433f, _wgslsmith_f_op_f32(ceil(-170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(789f, var_0.x)))));
    var var_2 = ~(~(~u_input.a >> ((min(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.yy) & vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))), -var_1.b, var_1.c, var_1.d, _wgslsmith_f_op_vec4_f32(-var_1.e));
    var_2 = vec2<u32>(reverseBits(1u), var_2.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -321f);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(func_3(-693f)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, 46890i), vec2<i32>(-1i) * -vec2<i32>(2147483647i, arg_0.x), select(!arg_1.d, vec2<bool>(true, arg_1.d.x), arg_1.d.x)), select(abs(arg_0.yz), vec2<i32>(-4210i, _wgslsmith_sub_i32(-1i, arg_1.c.x)), select(arg_1.d, select(arg_1.d, arg_1.d, arg_1.d), select(arg_1.d, arg_1.d, false)))), vec4<i32>(select(arg_1.b, _wgslsmith_dot_vec2_i32(arg_0.xy, vec2<i32>(arg_0.x, 1i)), any(arg_1.d)), -arg_1.b, -firstLeadingBit(0i), 0i) ^ abs(vec4<i32>(arg_0.x, 1i, 13152i, -1i) ^ ~vec4<i32>(arg_1.c.x, 1i, arg_1.c.x, arg_1.c.x)), select(arg_1.d, !arg_1.d, arg_1.d.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1.e))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_clamp_u32(1u, 1u, max(max(~(~arg_1), firstLeadingBit(4294967295u ^ arg_1)), ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u)));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(1033f - func_2(arg_0.c ^ arg_0.c, arg_0).e.x)), arg_0.b, ~arg_0.c, arg_0.d, _wgslsmith_f_op_vec4_f32(-func_2(arg_0.c, func_2(~vec4<i32>(13065i, arg_0.b, arg_0.b, -28481i), arg_0)).e));
    var var_2 = vec2<i32>(arg_0.c.x, _wgslsmith_mod_i32(2147483647i, select(0i, -abs(arg_0.c.x), var_1.d.x)));
    let var_3 = Struct_1(var_1.a, 36733i, firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, arg_0.c.x, var_1.b, var_2.x), vec4<i32>(-1i, var_1.b, 23509i, -6088i)))), vec2<bool>(select(true, !var_1.d.x, arg_0.d.x), select(!(u_input.a.x > 1u), all(!vec4<bool>(arg_0.d.x, arg_0.d.x, var_1.d.x, false)), (-2147483647i & arg_0.b) == 0i)), var_1.e);
    let var_4 = _wgslsmith_f_op_vec2_f32(round(arg_0.e.yw));
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = !vec3<bool>(!func_4(func_2(vec4<i32>(arg_1.c.x, arg_2.b, arg_2.c.x, -25813i), arg_1), 0u), false, true);
    var var_1 = 4294967295u;
    var_1 = _wgslsmith_mod_u32(select(1u ^ abs(abs(u_input.a.x)), 49258u, false), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, abs(26966u & u_input.a.x), _wgslsmith_mod_u32(0u, u_input.b.x))));
    var var_2 = ~u_input.b;
    let var_3 = func_2(func_2(~(-arg_2.c) ^ arg_1.c, Struct_1(-1717f, 23639i, arg_2.c | vec4<i32>(arg_2.c.x, 51461i, arg_2.b, 1i), arg_2.d, arg_2.e)).c, arg_2);
    return !((arg_2.c.x >= ~(~2147483647i)) && (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(51160u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 65480u, 4294967295u)), 48288u) >= 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-322f)) + -185f);
    var_0 = u_input.b.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-891f)), _wgslsmith_f_op_f32(ceil(1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_f_op_f32(select(-761f, -150f, true))))));
    var var_2 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(_wgslsmith_mod_i32(2147483647i, -1i)), 1i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(15679i, 0i), vec2<i32>(-14131i, 1i)) >> (~u_input.b.zy % vec2<u32>(32u)), vec2<i32>(1i, 1i));
    let var_3 = vec4<bool>(!any(vec4<bool>(var_2.x >= var_2.x, func_1(vec3<f32>(-479f, 1361f, 603f), Struct_1(-1002f, 2745i, vec4<i32>(18050i, var_2.x, var_2.x, var_2.x), vec2<bool>(true, false), vec4<f32>(1422f, 915f, -1098f, 1290f)), Struct_1(1529f, var_2.x, vec4<i32>(-2147483647i, var_2.x, -1723i, -12553i), vec2<bool>(true, true), vec4<f32>(2268f, 700f, -1401f, 314f))), any(vec4<bool>(true, true, true, true)), true)), true, !(all(vec2<bool>(false, true)) == (true | func_4(Struct_1(3691f, 2147483647i, vec4<i32>(var_2.x, var_2.x, var_2.x, 2147483647i), vec2<bool>(false, true), vec4<f32>(851f, 1000f, -2374f, 337f)), 1u))), true);
    var var_4 = func_2(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -9617i, var_2.x, 1i, 2147483647i), ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.x, var_2.x, var_2.x), vec4<i32>(var_2.x, 0i, var_2.x, -83862i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, 23759i), firstTrailingBit(vec4<i32>(-7245i, var_2.x, var_2.x, var_2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -6380i, -2147483647i, var_2.x), vec4<i32>(var_2.x, var_2.x, 2147483647i, -7107i)))), firstLeadingBit(~vec4<i32>(31401i, 2147483647i, -57226i, -1i) & -vec4<i32>(1i, var_2.x, 0i, -13682i))), func_2(select(select(abs(vec4<i32>(var_2.x, var_2.x, var_2.x, -17606i)), -vec4<i32>(2147483647i, var_2.x, -1i, 1i), vec4<bool>(true, false, var_3.x, var_3.x)), vec4<i32>(reverseBits(23746i), ~var_2.x, var_2.x, i32(-1i) * -6393i), !(false & var_3.x)), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-40452i, -3150i, 23070i, 2147483647i) | vec4<i32>(var_2.x, var_2.x, 10258i, var_2.x), reverseBits(vec4<i32>(9619i, var_2.x, -2522i, 0i))), func_2(vec4<i32>(-1i, var_2.x, -2147483647i, var_2.x), func_2(vec4<i32>(-19463i, 29307i, var_2.x, 2147483647i), Struct_1(1000f, var_2.x, vec4<i32>(var_2.x, -1i, -45584i, 63613i), var_3.wz, vec4<f32>(278f, -1000f, -272f, -659f)))))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(var_4.e.x - -986f), _wgslsmith_dot_vec3_i32(var_4.c.yyz, var_4.c.yzy), var_4.c ^ vec4<i32>(-1i, reverseBits(var_4.b & var_4.c.x), ~countOneBits(2147483647i), _wgslsmith_mult_i32(var_4.c.x, -62857i)), vec2<bool>(true, var_3.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(var_4.e.x * _wgslsmith_f_op_f32(-674f - -875f)))), _wgslsmith_f_op_f32(-var_4.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(301f)), var_4.e.x) + _wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(217f * var_4.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.e.x)))))));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a * var_4.e.x) - _wgslsmith_f_op_f32(f32(-1f) * -701f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.e.x + -363f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, 514f, 644f)) - var_5.e.zwz)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1929f - var_4.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.e.x))) * -202f), _wgslsmith_f_op_f32(floor(var_5.e.x))));
}

