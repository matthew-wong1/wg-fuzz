struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec4_i32(-max(vec4<i32>(~arg_3.a.x, 1i, -arg_1.a.x, i32(-1i) * -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.a.x, 15316i, arg_1.a.x, u_input.a), vec4<i32>(0i, arg_1.a.x, u_input.c, 2147483647i))), -abs(vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.a.x, 0i, 0i), vec4<i32>(2147483647i, arg_3.a.x, arg_1.a.x, arg_1.a.x)), _wgslsmith_clamp_i32(arg_1.a.x, arg_3.a.x, 9852i), ~(-2147483647i))));
    var var_1 = vec4<i32>(arg_3.a.x, u_input.b >> (17944u % 32u), arg_3.a.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-abs(3352i), arg_1.a.x, arg_3.a.x), -u_input.a));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_div_f32(1857f, 835f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.e * -1000f))))));
    var_1 = vec4<i32>(-_wgslsmith_mult_i32(arg_3.a.x, ~min(-1i, var_1.x)), _wgslsmith_mult_i32(-10588i, ~arg_1.a.x), -1i, -2147483647i);
    var var_3 = _wgslsmith_div_u32(~(0u >> (_wgslsmith_add_u32(59706u, abs(arg_1.c.x)) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, _wgslsmith_dot_vec3_u32(min(arg_1.c.wxz, vec3<u32>(23971u, 17640u, 4294967295u)), ~arg_1.c.zwy), ~_wgslsmith_add_u32(arg_3.c.x, 0u)), min(arg_1.c.wwy, abs(vec3<u32>(arg_3.b, arg_1.b, arg_1.c.x) << (vec3<u32>(arg_3.c.x, arg_1.c.x, 47525u) % vec3<u32>(32u))))));
    return ~arg_1.c;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(vec2<i32>(-39951i, -1i)), 18566u, _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 68783u, 25797u, 1u)), func_3(true || all(vec2<bool>(true, false)), Struct_1(abs(vec2<i32>(2147483647i, 502i)), 35551u, ~vec4<u32>(1u, 0u, 1u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, arg_0)), _wgslsmith_f_op_f32(-arg_0)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(abs(arg_3), ~61770u, vec4<u32>(39475u, 8421u, 63701u, 55883u), _wgslsmith_div_vec2_f32(vec2<f32>(-1137f, arg_0), vec2<f32>(1000f, -726f)), -403f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1480f, _wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(step(-112f, -1033f)));
    let var_1 = select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(var_0.b == var_0.b, true), !all(vec3<bool>(false, false, false))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), var_0.c.x != 1u), vec2<bool>(true, true)), !vec2<bool>(false, any(vec4<bool>(false, false, false, false))), true);
    let var_2 = 11692u;
    var var_3 = Struct_1(~firstLeadingBit(arg_1.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c.x), var_0.c.ww), max(abs(~var_0.c), vec4<u32>(~var_0.c.x, abs(~var_0.c.x), ~40046u, var_0.c.x)), _wgslsmith_f_op_vec2_f32(abs(var_0.d)), -479f);
    let var_4 = Struct_1(arg_1.zz, var_0.c.x, ~(~(~var_3.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.d) * _wgslsmith_f_op_vec2_f32(-var_3.d))))), 1484f);
    return var_4;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-arg_0), vec3<i32>(_wgslsmith_sub_i32(41289i, u_input.b), 1i, _wgslsmith_mod_i32(1i, -u_input.b)), -49126i, vec2<i32>(-_wgslsmith_div_i32(~u_input.a, -43056i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 19540i), vec2<i32>(u_input.b, u_input.a) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))));
    var_0 = Struct_1(max(var_0.a, firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -5031i), var_0.a))), _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.c.yyw), vec3<u32>(var_0.b, ~(67849u & var_0.c.x), 71335u)), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 119f) - var_0.e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1699f, 681f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(708f, var_0.d.x)))))));
    var var_1 = arg_0;
    let var_2 = !select(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), any(vec2<bool>(true, any(vec2<bool>(false, false)))));
    var var_3 = vec4<f32>(-436f, 415f, _wgslsmith_f_op_f32(ceil(-526f)), -764f);
    return Struct_1(-func_2(_wgslsmith_f_op_f32(trunc(-1188f)), ~vec3<i32>(-2147483647i, var_0.a.x, 79165i) ^ ~vec3<i32>(u_input.c, var_0.a.x, 85269i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 1i, 52259i, -16021i), _wgslsmith_mod_vec4_i32(vec4<i32>(30437i, -19218i, u_input.a, 4121i), vec4<i32>(var_0.a.x, u_input.a, u_input.a, 32095i))), reverseBits(firstTrailingBit(var_0.a))).a, _wgslsmith_mult_u32(var_0.c.x, 0u), vec4<u32>(51772u, ~(~4294967295u) ^ min(0u, var_0.b), func_2(var_0.e, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, u_input.c, u_input.b), vec3<i32>(48214i, u_input.c, -19789i))), -func_2(var_3.x, vec3<i32>(u_input.a, -25484i, -1i), var_0.a.x, var_0.a).a.x, var_0.a).b, ~(4294967295u | var_0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), -1730f), 228f);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = -(~reverseBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(46344i, 1i, 2147483647i), vec3<i32>(u_input.b, var_0.a.x, var_0.a.x), vec3<i32>(arg_0.a.x, 0i, arg_0.a.x)), vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<bool>(true, true, true))));
    var_1 = vec3<i32>(-16867i, 0i, firstLeadingBit(43977i));
    var var_2 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -708f));
    var_2 = Struct_1(~(vec2<i32>(-1i, arg_0.a.x) & vec2<i32>(arg_0.a.x, -49684i)) << (~vec2<u32>(_wgslsmith_div_u32(arg_0.c.x, var_2.c.x), var_2.c.x) % vec2<u32>(32u)), ~max(1u, arg_0.b) >> ((var_2.b | select(~var_2.c.x, 4294967295u, all(vec4<bool>(false, false, false, true)))) % 32u), reverseBits(_wgslsmith_mod_vec4_u32(~var_0.c & (arg_0.c >> (var_2.c % vec4<u32>(32u))), var_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d)), _wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(var_2.e - arg_0.d.x)));
    return func_2(_wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(1082f * _wgslsmith_f_op_f32(f32(-1f) * -151f))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(50153i, var_0.a.x, var_2.a.x)) << (vec3<u32>(4294967295u, 70169u, 0u) % vec3<u32>(32u)), abs(~vec3<i32>(arg_0.a.x, var_2.a.x, 2147483647i))), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, arg_0.a.x, u_input.a)) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, 1i), vec3<i32>(-2147483647i, -1i, var_0.a.x)), ~(vec3<i32>(arg_0.a.x, var_1.x, -47248i) | vec3<i32>(u_input.a, -1i, 0i)))), _wgslsmith_mult_i32(firstLeadingBit(var_1.x), var_0.a.x), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -432f, -1352f, -1791f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-289f, 1702f, 2032f, -1000f), vec4<f32>(-1257f, -316f, 516f, 121f), true))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1520f, 1080f, -369f, -746f))))));
    let var_1 = func_4(func_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = ~(~vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(33437i, var_1.a.x, u_input.a, var_1.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-16038i, u_input.b, -1i, var_1.a.x), vec4<i32>(u_input.b, 22904i, 0i, 6653i))), -1695i, ~(-var_1.a.x)));
    var_2 = abs(select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, 0i, u_input.a, -2491i), vec4<i32>(10836i, 316i, var_2.x, -33453i)), ~vec4<i32>(2147483647i, u_input.c, 1i, u_input.c)), countOneBits(vec4<i32>(var_1.a.x, -24437i, var_1.a.x, -2147483647i) >> (var_1.c % vec4<u32>(32u))), vec4<bool>(true, true, true, true))) << (var_1.c % vec4<u32>(32u));
    var var_3 = var_0;
    var var_4 = var_1.c;
    let var_5 = Struct_1(~var_2.xw | vec2<i32>(17013i, 1i), func_1(func_1(_wgslsmith_f_op_f32(step(-1150f, _wgslsmith_f_op_f32(-var_3.x)))).e).c.x, reverseBits(~var_1.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_3.zz))), _wgslsmith_f_op_f32(-1f));
    var var_6 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f - var_5.e) * var_1.e)), _wgslsmith_f_op_f32(-var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(0u | firstLeadingBit(var_4.x), ~(~var_4.x), var_5.b, var_1.b), reverseBits(~vec4<u32>(var_4.x, var_4.x, var_4.x, var_4.x))), reverseBits(countOneBits(var_2.wzw)), _wgslsmith_f_op_f32(step(var_3.x, var_5.e)));
}

