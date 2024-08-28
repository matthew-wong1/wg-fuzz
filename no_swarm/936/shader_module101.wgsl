struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_4(vec4<bool>(select(true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)), !any(vec4<bool>(true, false, true, true))), true, any(vec4<bool>(false, all(vec2<bool>(true, true)), false, true)), true), all(select(vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), true)), 775f, Struct_2(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f + 935f) * _wgslsmith_f_op_f32(f32(-1f) * -438f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1287f, -860f)), -713f), -1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-857f, 287f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -169f)))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(10858i, u_input.b.x, 2147483647i)), -u_input.d.zxz) | -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1224f, 1515f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -126f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1733f, -336f), vec2<f32>(-342f, -264f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(711f, 320f)), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-320f, 1000f), vec2<f32>(-1537f, 2616f), false)), vec2<bool>(true, true))))));
    var_0 = Struct_4(vec4<bool>(false, any(select(vec3<bool>(var_0.b, var_0.d.a.x, var_0.d.a.x), vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, false, true))), false, any(var_0.a)), true && var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e.x)) + var_0.e.x)) * 277f), Struct_2(!select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, var_0.d.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * var_0.c) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(641f, var_0.e.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.e.x))), var_0.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))), var_0.e.x), 9410i), _wgslsmith_f_op_vec2_f32(abs(var_0.e)));
    var var_1 = var_0.d;
    var var_2 = Struct_3(abs(~(~vec2<u32>(109457u, 1u))), 19617u, abs(u_input.a), Struct_2(vec2<bool>(true, all(select(vec3<bool>(var_1.a.x, true, true), vec3<bool>(var_0.d.a.x, var_1.a.x, false), var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(470f)), var_1.c.x)), var_1.c, u_input.c), vec2<u32>(1u, 1u));
    var_1 = Struct_2(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-805f, -635f)), _wgslsmith_f_op_f32(round(var_1.c.x))))), 1649f), _wgslsmith_f_op_vec4_f32(var_0.d.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.c.x, var_2.d.b, -1666f, -741f))))), _wgslsmith_add_i32(1i, var_2.c.x));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(~69913u, var_2.e.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1936f))))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -122f), 864f));
    var var_1 = Struct_3(func_3(), 16721u, -firstLeadingBit(vec3<i32>(firstTrailingBit(-1404i), _wgslsmith_sub_i32(u_input.d.x, u_input.a.x), u_input.a.x)), Struct_2(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 1000f, _wgslsmith_f_op_f32(step(var_0.x, -677f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 297f, var_0.x, 149f) * vec4<f32>(var_0.x, -378f, var_0.x, var_0.x)))), u_input.c), max(~select(reverseBits(vec2<u32>(0u, 64747u)), vec2<u32>(3263u, 0u), vec2<bool>(false, false)), vec2<u32>(~(~4323u), 0u)));
    let var_2 = _wgslsmith_mod_vec3_u32(~(~(~max(vec3<u32>(var_1.a.x, 1u, var_1.a.x), vec3<u32>(var_1.a.x, var_1.b, var_1.b)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(var_1.a.x, var_1.e.x), var_1.e.x | var_1.e.x, ~1u), min(abs(firstTrailingBit(vec3<u32>(1u, 46904u, 4294967295u))), reverseBits(abs(vec3<u32>(984u, 0u, var_1.a.x))))));
    var var_3 = all(!vec4<bool>(false, any(!vec4<bool>(true, false, false, var_1.d.a.x)), var_1.d.a.x, true));
    var_1 = Struct_3(var_1.e, var_1.a.x, u_input.d.xzw, var_1.d, max(var_2.zz, vec2<u32>(var_1.a.x, 13282u)));
    return Struct_1(!var_1.d.a, 740f, var_2.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-299f))))), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(287f)) * _wgslsmith_f_op_f32(min(-304f, -885f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1712f * var_1.d.b) - _wgslsmith_div_f32(-316f, 1835f))))), select(39755u > abs(var_1.b), !(var_1.d.a.x && var_1.d.a.x), (1060f >= var_0.x) && all(vec2<bool>(true, true))) || !(!(var_1.b > 4294967295u)));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(min(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1181u), abs(vec2<u32>(4294967295u, var_0.c))), ~select(vec2<u32>(arg_0, arg_0), vec2<u32>(var_0.c, 35317u), vec2<bool>(arg_1, var_0.a.x))), min(func_3(), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(40060u, var_0.c), vec2<u32>(arg_0, var_0.c))))), vec2<u32>(arg_0, ~_wgslsmith_mult_u32(31857u, ~arg_0)));
    var var_2 = var_0.a;
    var_2 = !(!vec2<bool>(true, !any(vec4<bool>(var_0.e, true, false, false))));
    return var_0.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c, arg_0.c) << ((vec2<u32>(arg_0.c, 0u) ^ vec2<u32>(1u, arg_0.c)) % vec2<u32>(32u)), vec2<u32>(31278u, _wgslsmith_add_u32(arg_0.c, 41967u))) & vec2<u32>(_wgslsmith_mult_u32(~8948u, ~arg_0.c), ~arg_0.c), select(_wgslsmith_mult_u32(arg_0.c, 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(51011u, arg_0.c, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(24417u, arg_0.c, arg_0.c), vec3<u32>(arg_0.c, arg_0.c, 4294967295u))), firstLeadingBit(vec3<u32>(14927u, 0u, arg_0.c) << (vec3<u32>(4294967295u, arg_0.c, arg_0.c) % vec3<u32>(32u)))), true), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(u_input.a.x, -1i, u_input.a.x)), -u_input.d.xww), reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.d.d, u_input.d.x, 0i), u_input.a))), arg_1.d, ~vec2<u32>(arg_0.c, countOneBits(arg_0.c)) ^ max(countOneBits(~vec2<u32>(0u, 65183u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_0.c, arg_0.c)), vec2<u32>(65580u, arg_0.c) & vec2<u32>(arg_0.c, arg_0.c), abs(vec2<u32>(arg_0.c, arg_0.c)))));
    let var_1 = Struct_3(min(~vec2<u32>(4294967295u, arg_0.c), var_0.a), min(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, arg_0.c ^ 46778u), 58999u), 87154u), -var_0.c, Struct_2(vec2<bool>(true, !select(arg_1.b, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1995f, _wgslsmith_f_op_f32(-615f * arg_1.e.x))), _wgslsmith_f_op_vec4_f32(-var_0.d.c), 1i), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(48051u, arg_0.c)), var_0.a >> (vec2<u32>(var_0.e.x, var_0.a.x) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_sub_u32(var_0.e.x, 23068u), ~(~arg_0.c))));
    var var_2 = ~(~firstTrailingBit(~vec4<u32>(4294967295u, arg_0.c, 140u, 73090u)) << (vec4<u32>(var_0.a.x, 3370u, var_0.e.x, _wgslsmith_dot_vec2_u32(var_1.e, vec2<u32>(1u, 4294967295u))) % vec4<u32>(32u)));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    let var_1 = true;
    var var_2 = func_4(Struct_1(!(!(!vec2<bool>(var_1, false))), _wgslsmith_f_op_f32(func_1(88736u, var_1)), ~firstLeadingBit(_wgslsmith_mod_u32(59492u, 4294967295u)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, _wgslsmith_div_f32(1000f, -260f), func_2().d.x))), var_1), Struct_4(vec4<bool>(false, !var_1, var_1, var_1), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2207f * func_2().d.x)), Struct_2(vec2<bool>(!var_1, !var_1), 1f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_div_f32(1000f, 960f), -343f, _wgslsmith_f_op_f32(f32(-1f) * -918f)), -19593i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-589f, -924f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-285f, 1294f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))), -1783f)));
    var_2 = Struct_2(select(var_2.a, var_2.a, !all(vec4<bool>(var_1, var_1, var_2.a.x, var_1))), _wgslsmith_f_op_f32(min(106f, _wgslsmith_f_op_f32(-424f + var_2.b))), var_2.c, abs(u_input.d.x));
    var_2 = func_4(func_2(), Struct_4(vec4<bool>(all(!var_2.a), all(vec2<bool>(var_2.a.x, true)), abs(-28710i) != var_0.x, !all(vec2<bool>(true, var_2.a.x))), !(!var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b)) - _wgslsmith_f_op_f32(-var_2.b)), func_4(Struct_1(var_2.a, _wgslsmith_f_op_f32(max(var_2.c.x, var_2.c.x)), min(4294967295u, 202u), var_2.c.wzw, var_1), Struct_4(!vec4<bool>(true, var_1, var_2.a.x, true), var_1, var_2.c.x, Struct_2(vec2<bool>(true, true), var_2.c.x, vec4<f32>(var_2.c.x, var_2.b, var_2.b, 1066f), 58119i), _wgslsmith_f_op_vec2_f32(-var_2.c.xx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - var_2.c.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(func_4(Struct_1(var_2.a, -2691f, 4294967295u, var_2.c.wxx, var_1), Struct_4(vec4<bool>(false, var_1, false, var_1), false, var_2.b, Struct_2(vec2<bool>(var_2.a.x, var_1), var_2.c.x, vec4<f32>(-198f, -847f, -1020f, var_2.b), 2147483647i), var_2.c.wy), var_2.c.x).c.wz, vec2<f32>(1314f, 806f))))), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b, -2253f), var_2.c.x))));
    var var_3 = !select(vec2<bool>(var_2.a.x && true, ~1i < var_2.d), var_2.a, all(!vec3<bool>(var_1, var_1, var_1)) && false);
    let x = u_input.a;
    s_output = StorageBuffer(420f, var_2.d);
}

