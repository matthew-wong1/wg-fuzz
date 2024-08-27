struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    var var_0 = any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), select(true, any(vec2<bool>(false, true)), any(vec2<bool>(true, true)))), all(vec2<bool>(7833u != u_input.d, false))));
    var var_1 = _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(u_input.b, 50084i, 10502i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(18174i, u_input.b, u_input.b), vec3<i32>(~u_input.b, u_input.c.x, -26844i))) ^ vec3<i32>(52064i, u_input.b, firstLeadingBit(u_input.c.x >> (1u % 32u)));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(~1u, ~u_input.d), -1150f), var_1.x, u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1252f, -105f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-169f, -459f)))))), vec2<u32>(u_input.e, u_input.e & u_input.d));
    var var_3 = Struct_3(Struct_2(var_2.a, var_1.x, u_input.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-756f, var_2.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_2.d, var_2.d, true))))), var_2.a.a), 23447u, firstTrailingBit(vec2<u32>(max(48047u | u_input.a, var_2.a.a.x), var_2.a.a.x)), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, true, false)), true, true), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, false, false), any(vec4<bool>(false, true, true, false)))));
    let var_4 = (-79863i > -var_2.b) & true;
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 713f), -749f, var_2.a.b, var_2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.d, 980f, var_2.a.b, var_2.d) - vec4<f32>(var_3.a.a.b, 1515f, var_2.a.b, 879f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(922f, var_3.a.d, var_2.a.b, 1223f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, -928f, var_3.a.a.b, -173f))))), !var_3.d));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(232f, 740f, -1297f, 892f) * vec4<f32>(352f, 1000f, 1000f, -1611f)) + _wgslsmith_f_op_vec4_f32(func_3())))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1181f, false)) - 831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(411f))), -1559f)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -298f))))));
    let var_2 = Struct_2(Struct_1(arg_0.xw & _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.x) >> (vec2<u32>(58622u, 5990u) % vec2<u32>(32u)), vec2<u32>(arg_2, 4294967295u), arg_0.yx), var_0.x), -_wgslsmith_sub_i32(countOneBits(u_input.c.x ^ 62096i), countOneBits(6054i) ^ u_input.c.x), arg_2 & firstTrailingBit(arg_0.x), -440f, _wgslsmith_clamp_vec2_u32(~(vec2<u32>(11932u, 4294967295u) >> (_wgslsmith_mod_vec2_u32(arg_0.xz, vec2<u32>(arg_1, arg_0.x)) % vec2<u32>(32u))), arg_0.xx, ~vec2<u32>(~u_input.d, arg_0.x)));
    var var_3 = vec3<bool>(false, all(vec2<bool>(true, any(vec3<bool>(true, true, true)))), !(countOneBits(_wgslsmith_add_i32(u_input.c.x, 2147483647i)) < max(_wgslsmith_add_i32(var_2.b, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, -37223i, 1i), vec3<i32>(var_2.b, u_input.c.x, var_2.b)))));
    var var_4 = _wgslsmith_dot_vec2_u32((abs(arg_0.zx) >> (vec2<u32>(64047u, _wgslsmith_mult_u32(arg_1, 0u)) % vec2<u32>(32u))) & var_2.a.a, ~select(vec2<u32>(4294967295u, 20985u), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, var_2.e.x), vec2<u32>(arg_1, arg_1)), true));
    return select(var_3.xz, vec2<bool>(any(!vec2<bool>(true, var_3.x)), all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, var_3.x, false), false), select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(var_3.x, true, false, false), var_3.x), var_3.x))), select(var_3.zy, var_3.zy, vec2<bool>(var_3.x, true | var_3.x)));
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = Struct_4(select(!(!(!vec2<bool>(arg_0, arg_0))), func_2(~(~vec4<u32>(4294967295u, u_input.e, 0u, u_input.e)), u_input.a, _wgslsmith_add_u32(3274u, 1u)), vec2<bool>(select(u_input.c.x >= 19648i, false, arg_0), !all(vec3<bool>(true, false, arg_0)))), -402f, Struct_1(abs(~abs(vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f))))), Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(10754u, u_input.a), vec2<u32>(0u, 6974u)), _wgslsmith_f_op_f32(f32(-1f) * -107f)), countOneBits(arg_1 >> (u_input.e % 32u)), ~_wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-203f, -435f)), select(firstTrailingBit(vec2<u32>(u_input.e, u_input.a)), countOneBits(vec2<u32>(0u, u_input.d)), u_input.a > u_input.a)), ~u_input.d, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, countOneBits(4294967295u)), ~(~vec2<u32>(34977u, 45229u))), !(!vec4<bool>(false, false, arg_0, true))));
    let var_1 = var_0.d.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, -1000f, 121f, var_1.a.b), vec4<f32>(-1156f, var_1.d, 1042f, -1089f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, -437f, var_1.d, var_0.d.a.d)))), vec4<f32>(637f, 1f, _wgslsmith_div_f32(var_0.d.a.a.b, _wgslsmith_f_op_f32(var_1.d + var_0.b)), _wgslsmith_f_op_f32(var_1.a.b + -844f))), var_0.d.d));
    var var_3 = -u_input.c.x;
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1773f))));
    return _wgslsmith_f_op_vec4_f32(func_3()).x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = Struct_4(func_2(vec4<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.e.x, 58394u, 4294967295u), vec3<u32>(var_0.c.x, arg_0.a.x, arg_1.a.a.a.x)) & ~0u, var_0.b << (_wgslsmith_add_u32(var_0.c.x, 22587u) % 32u), arg_0.a.x), ~1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.a.x, abs(37140u)), _wgslsmith_mod_u32(arg_1.c.x, 34511u) ^ firstLeadingBit(var_0.a.a.a.x))), _wgslsmith_div_f32(-1662f, 570f), arg_1.a.a, var_0);
    let var_2 = -_wgslsmith_div_i32(-u_input.b, _wgslsmith_add_i32(reverseBits(_wgslsmith_add_i32(arg_1.a.b, -2147483647i)), 1i));
    var var_3 = false && var_0.d.x;
    let var_4 = Struct_3(var_1.d.a, reverseBits(firstLeadingBit(~arg_1.a.c) ^ _wgslsmith_add_u32(1u, ~42179u)), firstLeadingBit(~(~(~arg_0.a))), !select(!(!var_0.d), select(select(vec4<bool>(true, arg_1.d.x, var_0.d.x, var_1.a.x), var_1.d.d, true), select(vec4<bool>(var_1.d.d.x, var_0.d.x, false, arg_1.d.x), arg_1.d, var_0.d), func_2(vec4<u32>(4294967295u, var_0.c.x, arg_2.x, var_0.c.x), arg_0.a.x, var_0.c.x).x), ~arg_0.a.x == var_0.a.c));
    return Struct_3(var_0.a, max(~41357u >> (~(var_4.b & var_4.a.e.x) % 32u), ~reverseBits(~19162u)), max(~vec2<u32>(arg_0.a.x, arg_2.x), abs(abs(vec2<u32>(u_input.d, var_4.a.a.a.x)))), select(var_4.d, vec4<bool>(true, !(!var_1.d.d.x), var_0.d.x, !var_0.d.x), !arg_1.d.x));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(351f, _wgslsmith_f_op_f32(floor(-210f)), _wgslsmith_f_op_f32(arg_0.a.d + arg_0.a.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.a.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.a.b, arg_0.a.d, 1204f, arg_0.a.a.b), vec4<f32>(arg_0.a.d, -1000f, arg_0.a.a.b, -384f), arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d, -205f, -109f, -433f))), vec4<f32>(-131f, -1426f, _wgslsmith_f_op_f32(-arg_0.a.a.b), _wgslsmith_f_op_f32(f32(-1f) * -345f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-872f, arg_0.a.d, arg_0.a.d, -846f), vec4<f32>(320f, -895f, arg_0.a.a.b, arg_0.a.a.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, 1604f, -337f, arg_0.a.a.b))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(625f, arg_0.a.a.b, arg_0.a.a.b, arg_0.a.d), vec4<f32>(1159f, arg_0.a.a.b, -295f, -260f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, 577f, 668f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(361f, -556f, 201f), vec3<f32>(1254f, -299f, -124f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1153f, -121f, -1000f))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(vec2<u32>(69026u, 95432u), _wgslsmith_f_op_f32(func_1(true, u_input.b))), Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a, 0u), var_0.x), u_input.c.x, u_input.e, var_0.x, vec2<u32>(4294967295u, u_input.d)), 45200u, vec2<u32>(18741u, u_input.e) ^ vec2<u32>(u_input.e, 52974u), vec4<bool>(true, true, true, true)), select(vec2<u32>(0u, 1u) ^ vec2<u32>(u_input.d, 48951u), max(vec2<u32>(10393u, 1u), vec2<u32>(u_input.a, u_input.e)), vec2<bool>(false, true))), false, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.d), 0u) ^ _wgslsmith_mod_u32(min(0u, u_input.a), 7308u), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_vec4_f32(func_5(func_4(func_4(func_4(Struct_1(vec2<u32>(u_input.d, 81376u), var_0.x), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 90597u), var_0.x), u_input.b, 0u, -374f, vec2<u32>(u_input.a, u_input.d)), 4294967295u, vec2<u32>(4294967295u, 0u), vec4<bool>(false, true, true, true)), vec2<u32>(u_input.e, 1u)).a.a, Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a, 34030u), var_0.x), u_input.b, 0u, var_0.x, vec2<u32>(u_input.a, 1u)), 4294967295u, vec2<u32>(0u, 1u), vec4<bool>(false, false, false, false)), ~vec2<u32>(19829u, u_input.e)).a.a, Struct_3(func_4(Struct_1(vec2<u32>(u_input.e, u_input.e), 546f), Struct_3(Struct_2(Struct_1(vec2<u32>(37124u, u_input.e), -1000f), u_input.c.x, 4294u, var_0.x, vec2<u32>(0u, 50369u)), u_input.e, vec2<u32>(4294967295u, 0u), vec4<bool>(true, true, false, false)), vec2<u32>(u_input.a, 32468u)).a, _wgslsmith_mod_u32(u_input.d, 0u), countOneBits(vec2<u32>(64390u, u_input.e)), vec4<bool>(true, true, true, true)), abs(~vec2<u32>(49115u, 4294967295u))), true, ~_wgslsmith_div_u32(1u, u_input.e) | ~1u, vec4<bool>(true, !select(true, false, true), true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true))))));
    var_0 = vec3<f32>(var_1.x, 2559f, -1555f);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(abs(u_input.d)), _wgslsmith_sub_u32(~(u_input.e | u_input.d), ~1u)), reverseBits(~min(min(vec2<u32>(u_input.e, 27680u), vec2<u32>(u_input.e, u_input.a)), vec2<u32>(u_input.d, 17279u) | vec2<u32>(0u, u_input.d))));
    let var_3 = Struct_1(vec2<u32>(~78780u, ~func_4(Struct_1(vec2<u32>(u_input.d, 4294967295u), var_0.x), Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.e, 63643u), 774f), u_input.c.x, u_input.a, var_0.x, vec2<u32>(25629u, u_input.e)), u_input.d, vec2<u32>(u_input.e, 0u), vec4<bool>(false, false, true, true)), vec2<u32>(u_input.d, u_input.d)).b), var_0.x);
    let var_4 = ~_wgslsmith_clamp_vec2_u32(var_3.a ^ (vec2<u32>(u_input.a, 1u) << (vec2<u32>(1u, var_3.a.x) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(1u, u_input.e)), ~var_3.a), vec2<u32>(~1u, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x);
}

