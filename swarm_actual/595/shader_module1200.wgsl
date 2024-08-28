struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = !vec4<bool>(select(false, false, true) & true, !select(true, true, true), true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true)));
    var_0 = vec4<bool>(all(!select(var_0.zyw, select(vec3<bool>(false, false, var_0.x), var_0.wxy, vec3<bool>(true, var_0.x, true)), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(false, false, var_0.x)))), select(false, false, all(!(!vec4<bool>(true, true, var_0.x, var_0.x)))), false, true);
    let var_1 = _wgslsmith_sub_u32(103579u, ~(~u_input.a) << (u_input.a % 32u));
    var var_2 = _wgslsmith_dot_vec2_i32(-(~countOneBits(vec2<i32>(-1784i, 0i))), max(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -2147483647i, -11171i), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 2147483647i)), 18127i), vec2<i32>(-23915i, _wgslsmith_sub_i32(1i, -33972i)))) ^ 59657i;
    var_2 = 3890i;
    return 1f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(~_wgslsmith_div_vec4_i32(~abs(arg_1.a.a.a), vec4<i32>(arg_0.a.x << (25203u % 32u), -15640i, _wgslsmith_div_i32(-7502i, 10965i), min(1i, arg_0.a.x))), any(!select(vec4<bool>(true, arg_1.a.a.b, arg_1.a.a.b, false), vec4<bool>(arg_0.b, arg_2.x, true, arg_2.x), vec4<bool>(arg_1.a.a.b, false, arg_2.x, arg_2.x))) && any(vec4<bool>(arg_1.a.b.x < arg_1.a.b.x, true, true, arg_1.a.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c)) - _wgslsmith_f_op_f32(min(arg_0.c, arg_1.a.e))))) - _wgslsmith_f_op_f32(-arg_0.c)));
    let var_1 = Struct_2(var_0, firstLeadingBit(vec3<u32>(~arg_3.x, u_input.a, _wgslsmith_dot_vec4_u32(arg_3, countOneBits(vec4<u32>(arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x, 0u))))), abs(9456i), arg_0.a.xz, -1627f);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(891f, 456f), var_1.a.c, _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), var_0.c, _wgslsmith_f_op_f32(sign(1513f)), arg_1.a.a.c)))), vec4<f32>(1325f, _wgslsmith_f_op_f32(round(var_0.c)), arg_0.c, arg_0.c), vec4<bool>(_wgslsmith_dot_vec2_i32(arg_1.a.d | var_1.d, vec2<i32>(-47355i, arg_1.a.d.x)) >= _wgslsmith_div_i32(firstTrailingBit(0i), _wgslsmith_dot_vec3_i32(arg_0.a.zww, var_0.a.zzz)), arg_2.x, !arg_0.b, var_1.a.c > 304f)));
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(countOneBits(-22857i), arg_0.a.x), 0i, firstTrailingBit(~(-arg_0.a.x)), countOneBits(var_0.a.x)), false, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = arg_2.x;
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = select(select(select(select(!vec3<bool>(true, false, arg_3.a.b), vec3<bool>(false, arg_0.a.b, true), select(vec3<bool>(arg_3.a.b, arg_1.b, false), vec3<bool>(arg_0.a.b, true, false), vec3<bool>(arg_0.a.b, arg_0.a.b, true))), !select(vec3<bool>(arg_3.a.b, arg_1.b, arg_2), vec3<bool>(arg_0.a.b, false, true), vec3<bool>(arg_2, arg_3.a.b, arg_0.a.b)), any(select(vec3<bool>(arg_0.a.b, true, arg_1.b), vec3<bool>(arg_1.b, false, true), vec3<bool>(false, true, true)))), select(vec3<bool>(all(vec2<bool>(arg_2, true)), false, true), !(!vec3<bool>(arg_2, arg_2, true)), select(!vec3<bool>(true, true, arg_3.a.b), vec3<bool>(false, arg_0.a.b, true), vec3<bool>(false, true, true))), arg_3.a.b || arg_3.a.b), select(select(select(vec3<bool>(arg_2, arg_1.b, false), !vec3<bool>(false, arg_3.a.b, arg_2), true), !(!vec3<bool>(true, false, arg_2)), !(!vec3<bool>(arg_2, false, true))), vec3<bool>(true, any(select(vec3<bool>(arg_0.a.b, true, arg_1.b), vec3<bool>(arg_2, true, false), vec3<bool>(arg_1.b, arg_3.a.b, false))), arg_3.a.b), true), 1u == u_input.a);
    var var_1 = ~(~arg_0.a.a.x);
    var_1 = ~max(_wgslsmith_mod_i32(0i, countOneBits(8564i)), -42718i);
    let var_2 = ~(~(_wgslsmith_dot_vec3_i32(~arg_3.a.a.zzw, arg_3.a.a.zwz) << (~abs(u_input.a) % 32u)));
    let var_3 = -vec2<i32>(func_2(Struct_1(vec4<i32>(arg_3.d.x, arg_3.c, var_2, 0i), true, -102f), Struct_3(arg_3, _wgslsmith_f_op_f32(abs(670f))), var_0.zy, ~(vec4<u32>(25495u, arg_3.b.x, arg_3.b.x, arg_3.b.x) >> (vec4<u32>(arg_3.b.x, u_input.a, 4294967295u, arg_3.b.x) % vec4<u32>(32u)))).d.x, arg_3.a.a.x);
    return 0u;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, abs(~56106u), 12261u, 51808u), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 1u, 5370u, arg_0)), vec4<u32>(arg_0, 39568u, arg_0, 1u)), vec4<u32>(7171u, 75409u, u_input.a, arg_0) ^ ~vec4<u32>(u_input.a, 10281u, arg_0, 4294967295u))), vec4<u32>(~0u, abs(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(1u, arg_1.b.x, 1u))), func_2(func_2(Struct_1(vec4<i32>(63761i, 33009i, arg_1.a.a.x, arg_1.a.a.x), arg_1.a.b, 679f), Struct_3(arg_1, 787f), !vec2<bool>(arg_1.a.b, arg_1.a.b), ~vec4<u32>(1u, 1u, 19581u, 9504u)).a, Struct_3(arg_1, _wgslsmith_f_op_f32(621f - arg_1.a.c)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1.a.b), vec2<bool>(true, true), vec2<bool>(arg_1.a.b, false)), min(~vec4<u32>(u_input.a, 17454u, 1u, 28970u), vec4<u32>(arg_1.b.x, u_input.a, arg_0, 0u))).b.x, 1u));
    return ~1i;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    return _wgslsmith_div_i32(1i, func_5(func_4(func_2(Struct_1(vec4<i32>(2147483647i, arg_3.a.a.x, arg_1, arg_3.c), true, 545f), Struct_3(arg_2.a, -1175f), select(vec2<bool>(true, arg_3.a.b), arg_0.yw, arg_2.a.a.b), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), func_2(arg_2.a.a, arg_2, arg_0.xz, ~vec4<u32>(20915u, arg_3.b.x, arg_2.a.b.x, arg_3.b.x)).a, arg_3.a.b, func_2(func_2(arg_3.a, arg_2, arg_0.xy, vec4<u32>(arg_3.b.x, 4294967295u, arg_3.b.x, arg_3.b.x)).a, Struct_3(Struct_2(Struct_1(vec4<i32>(2147483647i, 21312i, arg_2.a.d.x, 15748i), arg_3.a.b, arg_2.b), arg_3.b, arg_1, arg_2.a.a.a.zw, arg_2.b), arg_2.a.e), !arg_0.wy, vec4<u32>(0u, arg_3.b.x, 1u, 92751u))), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(~(-40642i), -2690i, ~20266i, countOneBits(0i)), -vec4<i32>(33623i, -15481i, -19307i, -31588i), vec4<i32>(max(1i, -9568i), func_1(vec4<bool>(false, true, false, false), -2147483647i, Struct_3(Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -1i, -47794i), true, -1830f), vec3<u32>(0u, u_input.a, 19178u), -11343i, vec2<i32>(-14466i, -2147483647i), -283f), 1431f), Struct_2(Struct_1(vec4<i32>(-31240i, -1i, -2147483647i, -1i), true, -739f), vec3<u32>(11754u, 0u, 62151u), 56996i, vec2<i32>(2147483647i, 1i), -630f)), i32(-1i) * -11175i, _wgslsmith_mult_i32(26353i, -24839i))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1463f, 168f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(227f))))));
    var var_1 = abs(var_0.a);
    var_1 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(-944i, var_1.x), _wgslsmith_mod_vec2_i32(-var_1.xy, min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_1.x, -1i))))), firstTrailingBit(var_1.x << (_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 36350u, u_input.a), vec4<u32>(u_input.a, u_input.a, 31027u, u_input.a))) % 32u)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(29621i, var_0.a.x, var_1.x, var_0.a.x) & var_0.a) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 22442u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 5371u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(var_0.a.x, 2147483647i, select(35788i, func_2(Struct_1(var_0.a, true, 693f), Struct_3(Struct_2(Struct_1(var_0.a, true, -333f), vec3<u32>(u_input.a, 27409u, 1u), 21591i, var_1.wz, var_0.c), var_0.c), vec2<bool>(false, var_0.b), vec4<u32>(u_input.a, 6119u, 6301u, 13788u)).a.a.x, false), var_0.a.x)), 34421i & var_0.a.x);
    var var_2 = Struct_2(var_0, vec3<u32>(u_input.a, 1u, ~(~u_input.a)), var_1.x, vec2<i32>(_wgslsmith_sub_i32(func_5(max(u_input.a, u_input.a), func_2(var_0, Struct_3(Struct_2(Struct_1(vec4<i32>(var_1.x, var_0.a.x, var_1.x, -36428i), var_0.b, -1000f), vec3<u32>(u_input.a, u_input.a, 4294967295u), 2147483647i, vec2<i32>(var_0.a.x, 13253i), 748f), var_0.c), vec2<bool>(false, var_0.b), vec4<u32>(u_input.a, 63916u, 1u, u_input.a))), -(~(-1i))), ~(abs(var_0.a.x) & 0i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1360f, _wgslsmith_f_op_f32(max(1000f, 1278f))) + var_0.c));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(sign(1268f))) + -1000f);
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-838f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e, 1755f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-290f, var_2.a.c), vec2<f32>(var_4.c, var_2.a.c), var_2.a.b))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(var_3, -383f)), vec2<f32>(1040f, 2241f)))), vec3<f32>(var_0.c, 1000f, -488f));
}

