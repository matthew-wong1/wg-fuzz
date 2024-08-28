struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(select(-(_wgslsmith_mult_vec3_i32(vec3<i32>(24314i, 18300i, 1i), vec3<i32>(-2147483647i, arg_0.b, 28924i)) ^ firstLeadingBit(vec3<i32>(arg_0.b, -16757i, arg_0.b))), min(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.b, -3773i, -29319i), -vec3<i32>(arg_0.b, -2147483647i, arg_0.b)), vec3<i32>(-1i) * -vec3<i32>(-27014i, arg_0.b, arg_0.b)), select(arg_0.a, vec3<bool>(!arg_0.a.x, true, false), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_0.b, -2147483647i)) > -31926i)), !all(select(select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), false), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, false, true, arg_0.a.x)))), _wgslsmith_add_u32(39868u, ~(~0u)));
    var var_1 = var_0.b;
    var_1 = !((!arg_0.a.x && var_0.b) & (any(arg_0.a) || !(arg_0.a.x || arg_0.a.x)));
    var_1 = (_wgslsmith_f_op_f32(-arg_1.x) <= arg_1.x) & (true || (~select(var_0.c, 60775u, arg_0.a.x) < ~u_input.b.x));
    var_0 = Struct_3(vec3<i32>(arg_0.b, _wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(var_0.a.x, 1i, var_0.a.x), -var_0.a.x), arg_0.b) ^ var_0.a, (var_0.b | true) && !(!(4294967295u < var_0.c)), u_input.b.x);
    return Struct_2(arg_0.a.xx);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    let var_0 = Struct_1(select(select(arg_2.xzx, arg_2.wwy, true), !select(vec3<bool>(arg_1.b, arg_2.x, true), vec3<bool>(true, false, true), u_input.b.x == arg_1.c), arg_2.yzy), arg_1.a.x);
    let var_1 = func_2(Struct_1(arg_2.xxw, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b, arg_1.a.x, -31977i)), vec3<i32>(1i, var_0.b, -19957i)) << ((72219u << (_wgslsmith_clamp_u32(u_input.a, 13484u, u_input.b.x) % 32u)) % 32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(778f, 702f) * vec2<f32>(-404f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, -1520f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2044f, 244f))))))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, _wgslsmith_f_op_f32(ceil(-322f)), 1840f, -1030f)));
    var var_4 = !var_1.a.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_3.x))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = any(vec2<bool>(true, arg_1.a.x));
    let var_1 = arg_1.b;
    var var_2 = func_2(Struct_1(vec3<bool>(arg_1.a.x, false, arg_1.a.x), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, -1i, -2147483647i), vec4<i32>(15432i, arg_1.b, 18682i, var_1)), var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-416f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2174f, 138f) * vec2<f32>(-402f, -474f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, -1618f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(var_0, true)), Struct_3(vec3<i32>(10573i, arg_1.b, var_1), true, 4294967295u), vec4<bool>(arg_1.a.x, true, true, var_0))), -1623f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-541f, 1189f))))))));
    var_2 = Struct_2(func_2(Struct_1(select(!vec3<bool>(false, var_0, false), arg_1.a, false), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_1.b, 0i, arg_1.b), vec4<i32>(var_1, var_1, -2147483647i, -4166i)), -vec4<i32>(17837i, -16967i, 1i, -1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-744f, -593f, false))), _wgslsmith_f_op_f32(func_1(func_2(Struct_1(arg_1.a, 0i), vec2<f32>(143f, 1202f)), Struct_3(vec3<i32>(var_1, var_1, var_1), true, u_input.a), !vec4<bool>(false, false, var_0, var_2.a.x))))).a);
    var_2 = Struct_2(vec2<bool>(!(!arg_1.a.x) & !all(vec4<bool>(false, true, var_0, arg_1.a.x)), any(arg_1.a.yy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(768f, -1411f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(true, true)), Struct_3(vec3<i32>(-1i, -29680i, 0i), false, u_input.b.x), vec4<bool>(false, false, true, false))) + -1264f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b, Struct_1(vec3<bool>(false, false, false), 46100i))), _wgslsmith_f_op_f32(-1659f + _wgslsmith_f_op_f32(240f + 1176f)))) * 665f);
    var var_1 = ~(-30865i);
    let var_2 = Struct_2(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    var_1 = _wgslsmith_mod_i32(-19993i >> ((1u << (u_input.b.x % 32u)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~(-9090i), _wgslsmith_dot_vec2_i32(vec2<i32>(29856i, 1i), vec2<i32>(-2147483647i, 2147483647i))), abs(vec3<i32>(22403i, -1i, -6764i)) ^ select(vec3<i32>(-2147483647i, -2147483647i, 1i), vec3<i32>(28718i, -21568i, 0i), vec3<bool>(false, var_2.a.x, var_2.a.x)))));
    let var_3 = Struct_1(select(select(!(!vec3<bool>(true, true, var_2.a.x)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, var_2.a.x)), vec3<bool>(true, var_2.a.x, false), vec3<bool>(var_2.a.x, true, true)), abs(u_input.b.x) != u_input.b.x), select(!select(vec3<bool>(false, false, var_2.a.x), vec3<bool>(var_2.a.x, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, var_2.a.x, var_2.a.x), !vec3<bool>(var_2.a.x, var_2.a.x, false), var_2.a.x), false), !vec3<bool>(true, var_2.a.x, all(vec4<bool>(true, var_2.a.x, false, false)))), -16962i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-601f, -1588f, var_0, var_0), vec4<f32>(-858f, var_0, -497f, var_0))))))), u_input.b.x & ~(~u_input.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, u_input.a)), ~vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.b.x, abs(1u))) & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.a), vec3<u32>(36744u, u_input.a, u_input.a), vec3<u32>(u_input.a, 38373u, 85642u)), firstLeadingBit(u_input.b.yww)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.b.wx)), 1970u, _wgslsmith_mult_u32(2306u, _wgslsmith_sub_u32(~countOneBits(u_input.b.x), countOneBits(~1u))));
}

