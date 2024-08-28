struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1((vec2<u32>(select(u_input.a, u_input.b, true), 52405u) & select(~vec2<u32>(4294967295u, 1521u), _wgslsmith_clamp_vec2_u32(vec2<u32>(34928u, 38029u), vec2<u32>(13137u, 1u), vec2<u32>(u_input.b, u_input.a)), vec2<bool>(true, arg_1))) >> (~firstTrailingBit(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), ~(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, u_input.a), 1207u) | 45331u), _wgslsmith_add_u32(reverseBits(u_input.a), 4294967295u), _wgslsmith_mult_i32(global0.x, arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, 306f, -417f, 1469f))));
    return ~firstLeadingBit(38546i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(arg_0.a, ~vec2<u32>(11583u, arg_3) << (vec2<u32>(4294967295u ^ arg_1.a.x, _wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a)) % vec2<u32>(32u))), min(u_input.a, arg_0.b), abs(~40269u), ~_wgslsmith_div_i32(~_wgslsmith_mult_i32(arg_0.d, -1i), -(arg_1.d >> (u_input.a % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1103f, arg_1.e.x, arg_2, arg_2), arg_0.e, vec4<bool>(true, true, false, false))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 1576f, arg_2, 3163f)))));
    global0 = vec2<i32>(var_0.d, -var_0.d) ^ vec2<i32>((~arg_0.d << (~4294967295u % 32u)) >> (0u % 32u), -_wgslsmith_add_i32(func_3(vec4<f32>(932f, arg_2, -596f, -231f), true, vec2<i32>(-2147483647i, -1i)), _wgslsmith_mod_i32(-1i, 2057i)));
    let var_1 = Struct_3(-vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.d, 2147483647i), max(vec2<i32>(global0.x, -1i), vec2<i32>(arg_1.d, var_0.d))), _wgslsmith_mult_i32(8541i, i32(-1i) * -33037i)), ~1u, !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), var_0.a.x <= u_input.b)), select(vec2<bool>(false, func_3(arg_0.e, true, vec2<i32>(global0.x, -47152i)) <= select(var_0.d, global0.x, false)), vec2<bool>(false, any(vec2<bool>(true, true))), true), ~vec2<u32>(firstTrailingBit(arg_3), u_input.b) >> (arg_1.a % vec2<u32>(32u)));
    var var_2 = ~arg_0.a.x << (var_0.c % 32u);
    var var_3 = Struct_2(min(~(arg_1.b & (arg_1.c >> (16064u % 32u))), _wgslsmith_mult_u32(countOneBits(firstTrailingBit(u_input.b)), select(~arg_1.b, 1u, true))), true, firstLeadingBit(~(~abs(global0.x))), -145f);
    return _wgslsmith_f_op_f32(max(-1512f, 1255f));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    global0 = _wgslsmith_mult_vec2_i32(~arg_1.xz, vec2<i32>(_wgslsmith_dot_vec3_i32(max(arg_1 & arg_1, _wgslsmith_add_vec3_i32(arg_1, arg_1)), vec3<i32>(arg_1.x, min(1i, -20601i), ~(-38613i))), (abs(-28215i) & ~global0.x) << (66269u % 32u)));
    let var_0 = _wgslsmith_f_op_f32(round(arg_0.d));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(~(~min(vec2<u32>(1u, 24543u), vec2<u32>(44574u, u_input.a))), firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.b), ~vec2<u32>(245u, arg_0.a)))), 73776u, select(~(arg_0.a & ~0u), u_input.a, true), -1i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f), 2593f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - -755f))), 171f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(u_input.a, u_input.b), u_input.a, arg_0.a, -2147483647i, vec4<f32>(1155f, 572f, 1008f, var_0)), Struct_1(vec2<u32>(14703u, arg_0.a), arg_0.a, arg_0.a, arg_1.x, vec4<f32>(var_0, 458f, var_0, -387f)), 1000f, arg_0.a)))), -604f)));
    var var_2 = -global0.x;
    var_2 = -4463i;
    return _wgslsmith_f_op_f32(floor(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1u, true, -(global0.x >> (abs(u_input.a | 1u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1076f)) + _wgslsmith_f_op_f32(func_1(Struct_2(1u, true, global0.x, 593f), vec3<i32>(1i, global0.x, -1383i), vec3<bool>(false, true, true)))))));
    var var_1 = select(select(!(!select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(false, false, true), vec3<bool>(var_0.b, false, false))), !select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, false, var_0.b), var_0.b), vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, var_0.b, true)), select(!(!vec3<bool>(var_0.b, var_0.b, false)), vec3<bool>(true, all(vec3<bool>(var_0.b, true, true)), select(false, true, var_0.b)), var_0.d <= var_0.d)), select(!select(select(vec3<bool>(false, false, var_0.b), vec3<bool>(var_0.b, true, false), vec3<bool>(true, var_0.b, var_0.b)), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_0.b, true)), global0.x >= 6992i), select(vec3<bool>(true, false, true), !(!vec3<bool>(var_0.b, var_0.b, true)), select(!var_0.b, true, all(vec3<bool>(false, var_0.b, true)))), true == !any(vec2<bool>(true, true))), (~u_input.b | ~(~48507u)) >= u_input.a);
    var var_2 = ~countOneBits(abs(vec2<u32>(~4294967295u, u_input.b)));
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(73731u, var_0.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(0u, 4294967295u)), abs(~vec2<u32>(0u, 52790u)))), ~(50084u & _wgslsmith_div_u32(0u, countOneBits(var_0.a))), abs(var_0.a), var_2.x);
    var_1 = select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, select(var_1.x, true, true), var_1.x), select(false, any(!(!vec4<bool>(var_1.x, true, true, var_0.b))), all(var_1.zz)));
    var var_4 = Struct_1(vec2<u32>(~17429u << (reverseBits(_wgslsmith_dot_vec3_u32(var_3.www, var_3.yxz)) % 32u), ~var_2.x), firstTrailingBit(var_0.a), _wgslsmith_mod_u32(abs(abs(u_input.a)) | ~max(1u, var_3.x), 0u), i32(-1i) * -12786i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(var_0.d - var_0.d)), _wgslsmith_div_f32(-363f, var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1321f * var_0.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -866f), 1278f))) * vec4<f32>(_wgslsmith_div_f32(var_0.d, var_0.d), var_0.d, -485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-924f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, vec3<f32>(-554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.e.x, 736f))), var_4.e.x), ~(-global0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, (11708u >> (0u % 32u)) & var_4.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.c, var_4.c) & select(var_4.a, vec2<u32>(53603u, 4294967295u), var_0.b), var_3.wy, vec2<u32>(~35899u, var_0.a))), -17833i);
}

