struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_4(Struct_3(u_input.b, vec4<bool>(all(!vec2<bool>(true, arg_0.a.c.x)), !arg_0.c, arg_0.b, false && !arg_0.a.c.x), vec2<f32>(-440f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -267f))))), _wgslsmith_f_op_f32(-1474f * _wgslsmith_f_op_f32(-arg_0.a.d.x)));
    var var_1 = Struct_1(arg_0.e, _wgslsmith_sub_u32(firstLeadingBit(arg_0.a.b), ~(~1u)) << (4294967295u % 32u), vec2<bool>(false, !((var_0.a.b.x && true) && (u_input.d == u_input.b.x))), var_0.a.c, _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6335u, arg_0.a.b, arg_0.a.e) & vec3<u32>(0u, 0u, arg_0.a.e), vec3<u32>(arg_0.a.b, 0u, var_0.a.a.x)), vec3<u32>(var_0.a.a.x, var_0.a.a.x, 4294967295u) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 31856u, 10985u), vec3<u32>(var_0.a.a.x, var_0.a.a.x, u_input.b.x)))));
    let var_2 = arg_0;
    var var_3 = var_0.a.b.yyw;
    var var_4 = 1u;
    return ~firstLeadingBit(_wgslsmith_mod_u32(var_0.a.a.x, select(u_input.a, ~37466u, var_0.a.b.x)));
}

fn func_2() -> u32 {
    var var_0 = countOneBits(~vec4<u32>(u_input.a, ~30934u, u_input.b.x, _wgslsmith_add_u32(30395u, u_input.c ^ u_input.c)));
    var var_1 = ~countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(22451i, -4506i, 2147483647i, -1i), vec4<i32>(-19394i, -1i, 11602i, 1i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, var_0.x, 0u), vec4<u32>(u_input.b.x, var_0.x, var_0.x, 1u), vec4<u32>(var_0.x, var_0.x, 4297u, u_input.a)) % vec4<u32>(32u)), ~(~vec4<i32>(-1i, 24322i, -42446i, -1i))));
    let var_2 = Struct_1(-(~(-15671i)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 1u, 15311u), vec3<u32>(36093u, var_0.x, 1u)) << (~select(var_0.zyw, vec3<u32>(6565u, 1u, 1u), true) % vec3<u32>(32u)), var_0.wxz), !select(vec2<bool>(any(vec3<bool>(true, true, false)), true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, -203f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1314f, 310f)))), ~firstLeadingBit(~u_input.c));
    var var_3 = Struct_3(select(u_input.b, ~firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b)), _wgslsmith_f_op_f32(-var_2.d.x) < -278f), vec4<bool>(!(!var_2.c.x), !(!var_2.c.x) & any(!var_2.c), var_2.a <= var_1.x, all(!(!vec4<bool>(true, true, var_2.c.x, var_2.c.x)))), var_2.d);
    var_0 = vec4<u32>(abs(abs(func_3(Struct_2(Struct_1(var_1.x, var_0.x, vec2<bool>(false, false), var_3.c, var_0.x), var_3.b.x, true, 1i, var_2.a)))), 0u, 19972u, 0u);
    return ~countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, var_3.a.x) ^ firstLeadingBit(var_3.a.x), var_2.e));
}

fn func_4(arg_0: u32) -> f32 {
    let var_0 = select(-_wgslsmith_sub_i32(17438i, 1i), abs(abs(-58741i)), !(true && any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-600f, -116f, 1584f), vec3<f32>(-605f, -1000f, 450f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-598f, -409f, -782f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_2 = var_1.x;
    var var_3 = vec2<i32>(-1i, ~var_0);
    var var_4 = func_3(Struct_2(Struct_1(32333i, arg_0, vec2<bool>(any(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, -1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, 392f), vec2<f32>(-681f, var_1.x))), true)), ~arg_0 ^ select(u_input.d, 69884u, false)), true, all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false))), ~reverseBits(1i | var_3.x), 2147483647i));
    return var_1.x;
}

fn func_1() -> vec2<u32> {
    let var_0 = 47966u ^ _wgslsmith_clamp_u32(~firstTrailingBit(~u_input.c), ~min(1u, ~1u), _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.b, u_input.b)), u_input.b));
    var var_1 = 2147483647i;
    var var_2 = vec3<f32>(_wgslsmith_div_f32(-858f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1260f, 1051f, false)))))), 1038f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-395f, -205f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(705f, -490f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = vec3<f32>(-2011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(563f)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(var_2.x, var_2.x)), true))));
    var var_4 = vec3<bool>(_wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1491f)), 1000f)), true, ~4294967295u > ~u_input.b.x);
    return max(abs(vec2<u32>(100325u >> (u_input.d % 32u), 17060u)) | abs(u_input.b), abs(abs(vec2<u32>(~u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mult_vec2_u32(func_1(), u_input.b), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(100f, 1235f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1470f, 507f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, 1054f) * vec2<f32>(-2051f, -408f)), vec2<f32>(793f, 511f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x) + _wgslsmith_f_op_f32(step(251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, 1296f, false)))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -1042f), -1062f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, -777f, _wgslsmith_f_op_f32(f32(-1f) * -1354f))))));
}

