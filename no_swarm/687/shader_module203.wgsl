struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.d.x << (1u % 32u), _wgslsmith_mult_u32(0u, 1u)), _wgslsmith_mod_u32(u_input.a, 48636u), u_input.d.x & u_input.a, _wgslsmith_add_u32(~u_input.a, ~u_input.a)), vec4<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), 77080u, u_input.d.x, u_input.d.x), min(firstTrailingBit(vec4<u32>(8982u, u_input.a, 1u, 0u)), vec4<u32>(u_input.d.x, max(1u, 0u), 68394u, abs(u_input.d.x)))) & vec4<u32>(1u, 0u, 68714u, 1u);
    let var_1 = _wgslsmith_add_vec2_i32(select(~countOneBits(u_input.c.yy), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 7611i), abs(u_input.c.xx)), select(arg_0.b.xy, vec2<bool>(arg_0.b.x, true), vec2<bool>(false, arg_0.b.x))) ^ (vec2<i32>(-u_input.c.x, 1i) | countOneBits(-u_input.c.zz)), (vec2<i32>(u_input.b, u_input.c.x) | vec2<i32>(u_input.c.x, 2147483647i)) & abs(u_input.c.xx));
    let var_2 = arg_0.b.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, -387f, _wgslsmith_f_op_f32(812f - -1000f)) - vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2147f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(floor(-2111f)))))), -896f, vec3<u32>(_wgslsmith_mod_u32(4294967295u, abs(_wgslsmith_add_u32(var_0.x, u_input.a))), 1u, u_input.a), all(!arg_0.b) | !var_2, select(-u_input.c.yz, firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, var_1.x, var_1.x), vec4<i32>(1977i, u_input.c.x, -56698i, var_1.x)), u_input.c.x)), arg_0.b.x));
    var var_4 = Struct_2(var_3.a, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(ceil(var_3.a.x))), -1635f), vec3<u32>(_wgslsmith_dot_vec4_u32(max(var_0, ~var_0), abs(~vec4<u32>(1u, 0u, u_input.a, 4294967295u))), _wgslsmith_clamp_u32(41815u, abs(~115335u), 0u), var_3.c.x), var_2, abs(~vec2<i32>(u_input.b, var_3.e.x) ^ ~u_input.c.yx));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_3.a, var_4.a, vec4<bool>(_wgslsmith_mult_i32(u_input.b, var_1.x) <= var_1.x, all(arg_0.b), false, var_3.d)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = -531f;
    let var_1 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 1132f) + -847f) <= 100f));
    let var_2 = vec4<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.b ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 17653i, 0i, u_input.b), vec4<i32>(-1i, 1i, -1i, -1i)), ~vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 41184i)), -_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.yy), min(u_input.b, ~1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.c.x), u_input.c) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-27367i, u_input.c.x, -2147483647i), vec3<i32>(2147483647i, 26760i, u_input.c.x), vec3<i32>(0i, u_input.c.x, u_input.b))), -51472i);
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1159f, var_0, var_0, 450f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(var_0, vec3<bool>(var_1, var_1, false)))))), 1547f, min(vec3<u32>(1u, u_input.a & u_input.a, u_input.a), ~firstTrailingBit(vec3<u32>(u_input.d.x, 4294967295u, 39547u))), !var_1, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 28099i, 61213i), vec3<i32>(var_2.x, var_2.x, var_2.x)), -u_input.c), abs(~0i))), !(!(!all(vec4<bool>(true, var_1, false, var_1)))));
    var var_4 = ~(firstLeadingBit(~abs(vec4<u32>(var_3.a.c.x, var_3.a.c.x, var_3.a.c.x, var_3.a.c.x))) | vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(var_3.a.c.x, 1u)), _wgslsmith_mod_u32(firstLeadingBit(1u), 4294967295u), ~(0u & var_3.a.c.x), 4294967295u));
    return !vec4<bool>(any(!select(vec2<bool>(true, var_1), vec2<bool>(var_3.b, false), true)), true, false & all(vec2<bool>(var_3.a.d, var_1)), !(!var_3.a.d));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = u_input.b;
    let var_1 = u_input.a;
    let var_2 = any(func_2());
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1588f * arg_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-487f, arg_1.a))))), _wgslsmith_f_op_f32(select(-633f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -922f) + _wgslsmith_f_op_f32(exp2(arg_2.x))), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(499f, arg_1.a))))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, 27457i, var_0, _wgslsmith_add_i32(u_input.c.x, -8178i) << (4294967295u % 32u)), _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 0i, -2852i, u_input.c.x), vec4<i32>(arg_0.e.x, 5601i, var_0, -2147483647i)), vec4<i32>(-var_0, -31840i, firstTrailingBit(u_input.b), arg_0.e.x))), vec2<i32>(select(~(~arg_0.e.x), select(1i, u_input.b, !arg_0.d), all(!vec2<bool>(arg_0.d, false))), _wgslsmith_mod_i32(-33122i, _wgslsmith_div_i32(~(-65344i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 25905i, var_0), u_input.c)))), vec4<bool>(var_2, true, ~firstLeadingBit(0u) >= max(21425u, abs(u_input.d.x)), !arg_1.b.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-891f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + -1168f), _wgslsmith_f_op_f32(-990f - 1000f)), _wgslsmith_f_op_f32(abs(arg_0.b)), arg_1.a)))));
    return vec2<bool>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -583f)) > 510f, true);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = ~select(abs(u_input.c), max(reverseBits(vec3<i32>(1i, u_input.c.x, u_input.c.x) << (vec3<u32>(17820u, arg_0, arg_0) % vec3<u32>(32u))), min(min(vec3<i32>(-1i, 13356i, u_input.b), vec3<i32>(u_input.b, 1i, -2147483647i)), -u_input.c)), vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, u_input.a), vec3<u32>(1u, 1u, arg_0)) < arg_0, !func_1(Struct_2(vec4<f32>(1045f, 508f, 139f, -675f), -285f, vec3<u32>(4294967295u, 11699u, 79721u), arg_1.x, u_input.c.zz), Struct_4(-1643f, vec3<bool>(arg_1.x, true, true)), vec4<f32>(503f, 1372f, 613f, 752f)).x, false));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * 400f), 1447f, -1451f, _wgslsmith_f_op_f32(1000f - 1285f))), -1046f, vec3<u32>(4294967295u, min(1u, ~arg_0), _wgslsmith_mult_u32(select(27806u, 73333u, arg_1.x), select(25421u, 4294967295u, arg_1.x))), arg_1.x, firstTrailingBit(u_input.c.xy)), true);
    var_1 = Struct_3(var_1.a, any(!vec4<bool>(func_1(var_1.a, Struct_4(var_1.a.a.x, vec3<bool>(false, true, var_1.b)), var_1.a.a).x, arg_1.x || var_1.b, select(var_1.a.d, arg_1.x, arg_1.x), !arg_1.x)));
    var var_2 = 4294967295u;
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.a.a))))), var_1.a.b, var_1.a.c, all(arg_1), vec2<i32>(1i, reverseBits(0i))), var_1.b);
    return Struct_2(var_1.a.a, _wgslsmith_f_op_f32(-var_3.a.b), ~abs(vec3<u32>(0u, 72031u, 0u)) << ((vec3<u32>(~var_3.a.c.x, u_input.d.x, _wgslsmith_div_u32(var_1.a.c.x, u_input.a)) | var_3.a.c) % vec3<u32>(32u)), true, min(var_0.xx, var_1.a.e));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, 808f), _wgslsmith_f_op_vec2_f32(arg_0.a.yw + vec2<f32>(arg_0.a.x, 929f)), ~0u == ~arg_0.c.x))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(856f, _wgslsmith_f_op_f32(floor(var_0.x)), !arg_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.a.x)), -vec4<i32>(u_input.c.x, 0i, -44219i, max(-1i, u_input.c.x >> (arg_0.c.x % 32u))), vec2<i32>(0i, 47857i >> (func_4(77167u, select(vec2<bool>(true, true), vec2<bool>(false, arg_0.d), true)).c.x % 32u)), !select(select(!vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), func_2(), any(vec2<bool>(true, arg_0.d))), func_2(), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_div_u32(abs(~9430u), u_input.d.x), select(vec2<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false))), !func_1(Struct_2(vec4<f32>(-270f, -982f, -1119f, -984f), 1000f, vec3<u32>(u_input.d.x, u_input.a, u_input.d.x), false, u_input.c.zx), Struct_4(424f, vec3<bool>(false, true, false)), vec4<f32>(174f, -510f, -1136f, 298f)), select(vec2<bool>(true, true), func_1(Struct_2(vec4<f32>(-193f, 186f, -1457f, 740f), 515f, vec3<u32>(1u, 1u, u_input.d.x), true, u_input.c.zy), Struct_4(999f, vec3<bool>(true, false, false)), vec4<f32>(1189f, -1335f, -1266f, -1000f)), func_1(Struct_2(vec4<f32>(735f, 464f, 383f, 954f), 1491f, vec3<u32>(u_input.a, u_input.a, u_input.d.x), true, u_input.c.yz), Struct_4(-514f, vec3<bool>(false, true, false)), vec4<f32>(-2265f, 1707f, 440f, -560f))))));
    var var_1 = var_0.d.x ^ func_4(24841u, var_0.e.zx).e.x;
    let var_2 = vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), 1481f);
    var_1 = abs(-53249i);
    var_1 = -var_0.c.x;
    let var_3 = 0i;
    var var_4 = false;
    var_1 = var_0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, select(vec2<i32>(_wgslsmith_mod_i32(var_3, reverseBits(49113i)), _wgslsmith_div_i32(firstTrailingBit(u_input.c.x), 21126i)), u_input.c.zx, func_2().x), u_input.d.x, select(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -2147483647i, -24589i), var_0.c), ~var_0.c), u_input.b), u_input.c.zx & u_input.c.xy, var_0.e.x));
}

