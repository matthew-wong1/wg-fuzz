struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_add_vec2_u32(min(select(max(~vec2<u32>(1u, 1u), select(vec2<u32>(1u, 90254u), vec2<u32>(0u, u_input.a), vec2<bool>(true, false))), vec2<u32>(~u_input.a, _wgslsmith_clamp_u32(48849u, 0u, 28757u)), false), vec2<u32>(u_input.a, 1u)), vec2<u32>(~u_input.a, global0.x));
    let var_0 = u_input.a;
    var var_1 = countOneBits(vec2<u32>(var_0, 76752u) & vec2<u32>(u_input.a | (var_0 << (global0.x % 32u)), var_0));
    let var_2 = var_1.x;
    var var_3 = firstTrailingBit(vec2<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(11274i, -25691i, 1i), vec3<i32>(-84253i, 16499i, -6263i)), vec3<i32>(1i, 1i, 1i)), ~((-2147483647i >> (var_1.x % 32u)) | _wgslsmith_clamp_i32(-2147483647i, 0i, 1i))));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    let var_0 = 1451f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-346f, _wgslsmith_f_op_f32(-var_0))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-996f, _wgslsmith_div_f32(var_0, 1630f), _wgslsmith_f_op_f32(var_1.x - -1368f), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1434f, var_1.x, -173f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1405f, -1102f, arg_0) - vec4<f32>(arg_0, var_0, var_0, var_1.x)))))), -(i32(-1i) * -max(1i, 4469i)), reverseBits(vec4<u32>(_wgslsmith_mult_u32(reverseBits(arg_1), select(u_input.a, global0.x, arg_2.x)), 4294967295u, ~select(132970u, 1169u, false), ~0u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1168f + _wgslsmith_f_op_f32(floor(var_1.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1216f, var_1.x))))))), _wgslsmith_sub_i32(max(abs(_wgslsmith_mod_i32(-1i, -2147483647i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(4250i, 0i), -39556i)), 12728i));
    global0 = ~_wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(~var_2.c.wx, var_2.c.xz), reverseBits(vec2<u32>(_wgslsmith_add_u32(arg_1, global0.x), func_3())), _wgslsmith_mult_vec2_u32(var_2.c.ww, var_2.c.xw));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1076f + -794f), ~90465u, vec2<bool>(false, true)))), arg_2.d, arg_0.d, 937f), 2425i, vec4<u32>(arg_3.x, global0.x & reverseBits(arg_3.x), 52917u, _wgslsmith_sub_u32(arg_3.x, ~_wgslsmith_mod_u32(u_input.a, arg_3.x))), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d * arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))), -arg_1 & 1i);
    global0 = abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.c.x, 51235u), arg_0.c.yz));
    global0 = arg_3 & vec2<u32>(func_3(), abs(max(76002u, _wgslsmith_add_u32(4294967295u, 0u))));
    let var_1 = Struct_1(arg_0.a, -24659i, select(_wgslsmith_mod_vec4_u32(arg_0.c, ~firstTrailingBit(var_0.c)), abs(~(vec4<u32>(arg_2.c.x, u_input.a, 4294967295u, arg_2.c.x) >> (vec4<u32>(0u, 0u, 16740u, var_0.c.x) % vec4<u32>(32u)))), any(vec3<bool>(true, true, select(true, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(arg_1, 35270i)), vec2<i32>(~1i, arg_1)));
    let var_2 = 26616i | ~(var_1.e & -firstTrailingBit(var_1.e));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1460f * arg_0.a.x)), arg_0.a.x, 165f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.a.x, arg_0.d), _wgslsmith_f_op_f32(arg_0.d - arg_0.a.x)))))), abs(~12095i ^ ~_wgslsmith_clamp_i32(37565i, 0i, 0i)), reverseBits(~(vec4<u32>(1u, 4294967295u, u_input.a, 4231u) << (vec4<u32>(4294967295u, global0.x, 4294967295u, 4294967295u) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(40951u, 34103u, u_input.a, 1u)), vec4<u32>(1u, global0.x, arg_0.c.x, arg_0.c.x), arg_0.c) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)), _wgslsmith_mult_i32(abs(select(-16996i, ~arg_0.b, global0.x >= 33688u)), -max(arg_0.e, arg_0.e) | arg_0.e));
    global0 = ~abs(firstTrailingBit(var_0.c.zz));
    let var_1 = all(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))));
    var var_2 = ~_wgslsmith_div_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-163i, 1i), vec2<i32>(-4177i, 0i)), -1i, var_0.b, var_0.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(25953i, 0i, -29653i, var_0.b), vec4<i32>(0i, var_0.e, 0i, -13307i) >> (vec4<u32>(0u, var_0.c.x, 40166u, 89714u) % vec4<u32>(32u)), vec4<i32>(-10866i, -30933i, var_0.b, 4523i) ^ vec4<i32>(arg_0.e, -22224i, 1i, arg_0.b)), var_1), _wgslsmith_sub_vec4_i32(-vec4<i32>(-8i, 7122i, arg_0.e, 20485i), ~select(vec4<i32>(-16228i, -1i, -23874i, var_0.e), vec4<i32>(0i, arg_0.b, 4525i, 2147483647i), vec4<bool>(var_1, false, false, false))));
    let var_3 = reverseBits(arg_0.e);
    return vec4<i32>(countOneBits(30204i), -2147483647i, var_0.b >> (firstTrailingBit(var_0.c.x) % 32u), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(func_4(func_1(Struct_1(vec4<f32>(-598f, 733f, -267f, 494f), 11010i, vec4<u32>(4294967295u, global0.x, 0u, u_input.a), 1603f, 1i), 1i, Struct_1(vec4<f32>(-751f, -1617f, -1000f, 412f), 35643i, vec4<u32>(27717u, 22070u, 4294967295u, 16551u), -483f, -33867i), vec2<u32>(4294967295u, global0.x))), min(vec4<i32>(-29180i, -1i, -2147483647i, -2147483647i) >> (vec4<u32>(9595u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(-1i, -2147483647i, -2147483647i, 23322i))), ~(~vec4<i32>(1i, 1i, 1i, 1i))) ^ _wgslsmith_sub_vec4_i32(-(~vec4<i32>(22087i, 0i, 0i, -1i)) << (vec4<u32>(~51942u, 0u ^ u_input.a, countOneBits(1u), ~1u) % vec4<u32>(32u)), vec4<i32>(18850i, func_4(Struct_1(vec4<f32>(717f, 177f, -635f, 462f), -1i, vec4<u32>(u_input.a, u_input.a, 1u, 55662u), 1827f, 30358i)).x, -32881i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), ~vec2<i32>(-2147483647i, 1i))));
    global0 = ~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~global0.x, u_input.a), 4294967295u), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, 299f, 1080f, 342f)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(56132i, 1i, 58680i, var_0.x)), ~vec4<u32>(u_input.a, global0.x, global0.x, 1u), -818f, _wgslsmith_sub_i32(2147483647i, var_0.x)), reverseBits(var_0.x), func_1(func_1(Struct_1(vec4<f32>(-369f, -656f, 2059f, -793f), var_0.x, vec4<u32>(u_input.a, 4538u, u_input.a, global0.x), -1000f, -1i), var_0.x, Struct_1(vec4<f32>(-382f, -147f, -376f, -2323f), 2147483647i, vec4<u32>(global0.x, global0.x, global0.x, u_input.a), -215f, var_0.x), vec2<u32>(59124u, u_input.a)), 2147483647i, Struct_1(vec4<f32>(-2468f, 101f, 953f, -710f), var_0.x, vec4<u32>(global0.x, u_input.a, 0u, 16975u), 780f, var_0.x), ~vec2<u32>(u_input.a, 5260u)), ~abs(vec2<u32>(u_input.a, global0.x))).c.x);
    var var_1 = firstLeadingBit(vec4<i32>(func_1(func_1(Struct_1(vec4<f32>(-1246f, -114f, 1000f, 574f), 1i, vec4<u32>(global0.x, global0.x, 1u, u_input.a), 1698f, var_0.x), -var_0.x, func_1(Struct_1(vec4<f32>(993f, 133f, 530f, 442f), var_0.x, vec4<u32>(11433u, 38496u, 14628u, global0.x), 1483f, var_0.x), 51599i, Struct_1(vec4<f32>(-2031f, -1573f, -140f, 1544f), var_0.x, vec4<u32>(33081u, global0.x, 1u, u_input.a), -1333f, 1i), vec2<u32>(0u, u_input.a)), ~vec2<u32>(107641u, 28416u)), func_1(Struct_1(vec4<f32>(496f, -622f, 920f, -1570f), -1i, vec4<u32>(52701u, 5994u, global0.x, u_input.a), 1183f, -28636i), 1i, Struct_1(vec4<f32>(267f, 1795f, -445f, 192f), var_0.x, vec4<u32>(global0.x, global0.x, 106564u, global0.x), 359f, var_0.x), vec2<u32>(4294967295u, u_input.a)).b >> (_wgslsmith_mult_u32(global0.x, 1u) % 32u), func_1(Struct_1(vec4<f32>(917f, 1000f, 778f, 846f), var_0.x, vec4<u32>(global0.x, u_input.a, 1u, global0.x), -117f, -1i), 21412i, func_1(Struct_1(vec4<f32>(-508f, -1229f, -875f, -1151f), var_0.x, vec4<u32>(0u, 4294967295u, 25120u, u_input.a), 1329f, -15212i), -38959i, Struct_1(vec4<f32>(247f, 1100f, -686f, -147f), var_0.x, vec4<u32>(1u, global0.x, 0u, global0.x), 421f, var_0.x), vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, global0.x)), ~vec2<u32>(54808u, 1u)).e, var_0.x, 2147483647i, var_0.x));
    global0 = abs(vec2<u32>(func_3(), 3683u));
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(step(-420f, -804f)), _wgslsmith_f_op_f32(func_2(1000f, 12806u, vec2<bool>(false, false))), _wgslsmith_div_f32(626f, -572f)) + vec4<f32>(-1000f, -140f, -1041f, _wgslsmith_f_op_f32(-300f * 2297f))), _wgslsmith_mod_i32(max(-344i, 3251i), -8056i << ((1u >> (global0.x % 32u)) % 32u)), vec4<u32>(func_3(), 4294967295u, ~0u, abs(~u_input.a)), 1f, 18643i), 34046i, func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 404f, -1017f, -1727f) * vec4<f32>(-1693f, -1000f, 482f, -121f)), -var_0.x, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1u, 19348u, u_input.a), vec4<u32>(global0.x, 40317u, global0.x, u_input.a)), _wgslsmith_f_op_f32(-1000f + 586f), -var_1.x), ~0i, Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1633f, -547f, 1056f, -1457f), vec4<f32>(-1113f, 1000f, 1126f, -469f))), ~51264i, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.a, global0.x, 1u), vec4<u32>(0u, 40783u, 129u, 1u)), 276f, countOneBits(var_0.x)), ~vec2<u32>(12834u, global0.x) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global0.x, 19208u))), firstTrailingBit(1i & (1i ^ var_1.x)), func_1(func_1(Struct_1(vec4<f32>(255f, -1000f, 1501f, -1195f), 55559i, vec4<u32>(31424u, global0.x, 0u, global0.x), 876f, 2147483647i), i32(-1i) * -34498i, Struct_1(vec4<f32>(992f, -560f, 993f, 105f), 0i, vec4<u32>(global0.x, 47321u, u_input.a, u_input.a), 439f, var_1.x), vec2<u32>(u_input.a, 76929u) | vec2<u32>(global0.x, 1201u)), ~(-1i), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 148f, 237f, -2705f)), var_0.x, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) >> (vec4<u32>(68801u, global0.x, u_input.a, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(222f)), func_1(Struct_1(vec4<f32>(-645f, -217f, 578f, -356f), 1i, vec4<u32>(global0.x, u_input.a, global0.x, 4294967295u), -449f, var_0.x), 1i, Struct_1(vec4<f32>(-1073f, 967f, 852f, -283f), var_1.x, vec4<u32>(93853u, 4294967295u, 9582u, global0.x), -134f, 1i), vec2<u32>(global0.x, 0u)).e), ~vec2<u32>(45647u, u_input.a)), ~vec2<u32>(1u, 52519u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(56676u, global0.x, 4294967295u) | vec3<u32>(0u, u_input.a, 37148u), vec3<u32>(1u, 36949u, 37267u)), func_3()) >> (_wgslsmith_mult_vec2_u32(max(~vec2<u32>(1693u, 4294967295u), ~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a) | (vec2<u32>(global0.x, 60227u) >> (vec2<u32>(global0.x, 29857u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_3 = vec3<bool>(true, !all(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true)), true);
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(~_wgslsmith_dot_vec2_u32(~var_2.c.xw, vec2<u32>(var_2.c.x, global0.x) >> (vec2<u32>(0u, var_2.c.x) % vec2<u32>(32u))), 0u));
    var var_4 = func_1(func_1(func_1(func_1(func_1(Struct_1(var_2.a, var_1.x, var_2.c, var_2.a.x, -18458i), var_0.x, Struct_1(var_2.a, var_0.x, vec4<u32>(global0.x, u_input.a, global0.x, 5292u), var_2.a.x, var_2.b), vec2<u32>(29635u, u_input.a)), countOneBits(var_2.b), func_1(Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, -1003f, 311f), var_0.x, vec4<u32>(var_2.c.x, var_2.c.x, 1u, global0.x), 1062f, var_0.x), var_2.b, Struct_1(vec4<f32>(-1127f, var_2.a.x, var_2.a.x, 1375f), var_2.b, vec4<u32>(global0.x, 30299u, u_input.a, u_input.a), var_2.a.x, var_1.x), var_2.c.yw), var_2.c.yy << (vec2<u32>(1u, global0.x) % vec2<u32>(32u))), _wgslsmith_add_i32(~0i, 2147483647i), func_1(Struct_1(vec4<f32>(-402f, var_2.d, -561f, -2450f), -147i, var_2.c, var_2.a.x, 0i), -11385i, func_1(Struct_1(var_2.a, var_1.x, vec4<u32>(global0.x, 1u, u_input.a, u_input.a), -804f, 58915i), var_0.x, Struct_1(vec4<f32>(786f, var_2.d, var_2.a.x, var_2.a.x), var_0.x, var_2.c, var_2.a.x, 9915i), var_2.c.xw), select(vec2<u32>(var_2.c.x, 1628u), vec2<u32>(global0.x, global0.x), false)), ~vec2<u32>(36924u, global0.x) & ~var_2.c.ww), var_2.b, func_1(func_1(func_1(Struct_1(vec4<f32>(var_2.d, 149f, var_2.d, var_2.d), -2147483647i, var_2.c, -583f, var_0.x), 1i, Struct_1(vec4<f32>(-1017f, var_2.d, -1439f, var_2.a.x), var_2.b, vec4<u32>(u_input.a, 67738u, 0u, global0.x), -1000f, 0i), vec2<u32>(var_2.c.x, 6168u)), -var_2.b, func_1(Struct_1(vec4<f32>(var_2.d, var_2.a.x, var_2.d, -427f), 12759i, vec4<u32>(u_input.a, var_2.c.x, 39058u, 4294967295u), var_2.d, var_1.x), -1i, Struct_1(vec4<f32>(var_2.a.x, 1144f, var_2.d, var_2.a.x), var_1.x, var_2.c, var_2.a.x, -17761i), var_2.c.wy), var_2.c.wy | var_2.c.yx), var_0.x, func_1(Struct_1(var_2.a, 1i, vec4<u32>(69099u, global0.x, 8243u, 0u), 880f, var_1.x), 2147483647i, func_1(Struct_1(var_2.a, -1i, vec4<u32>(var_2.c.x, 0u, 0u, u_input.a), var_2.d, 8351i), var_1.x, Struct_1(var_2.a, 271i, vec4<u32>(u_input.a, 4417u, 1u, u_input.a), var_2.d, 0i), vec2<u32>(0u, 4294967295u)), vec2<u32>(u_input.a, 64429u)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(56886u, global0.x), var_2.c.zx), _wgslsmith_mult_vec2_u32(var_2.c.yy, vec2<u32>(var_2.c.x, u_input.a)))), vec2<u32>((u_input.a ^ global0.x) >> (40601u % 32u), abs(global0.x >> (var_2.c.x % 32u)))), func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, var_2.d, -419f, var_2.a.x)), var_2.e, ~vec4<u32>(global0.x, u_input.a, global0.x, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1068f), var_1.x), select(-31644i << (0u % 32u), var_2.e, all(var_3)), func_1(Struct_1(vec4<f32>(var_2.d, -319f, var_2.d, -461f), 1i, vec4<u32>(var_2.c.x, global0.x, var_2.c.x, 26605u), var_2.d, var_1.x), min(2147483647i, var_0.x), Struct_1(var_2.a, var_0.x, var_2.c, 1193f, var_2.e), max(var_2.c.wz, var_2.c.yy)), select(~var_2.c.zz, vec2<u32>(u_input.a, var_2.c.x), vec2<bool>(var_3.x, false))), ~abs(~(-2147483647i)), Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, 1730f, _wgslsmith_f_op_f32(floor(var_2.d))), reverseBits(func_1(Struct_1(vec4<f32>(var_2.a.x, var_2.d, var_2.d, var_2.a.x), -12140i, vec4<u32>(global0.x, global0.x, global0.x, global0.x), 1373f, var_1.x), 69013i, Struct_1(vec4<f32>(var_2.a.x, var_2.d, -1590f, 989f), var_2.e, vec4<u32>(0u, u_input.a, var_2.c.x, 56295u), -1168f, 0i), var_2.c.zy).e), select(vec4<u32>(51109u, 7675u, 9255u, u_input.a), var_2.c, !vec4<bool>(var_3.x, false, var_3.x, false)), _wgslsmith_f_op_f32(min(385f, -506f)), reverseBits(var_1.x)), var_2.c.xz).e, func_1(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a), var_2.a), 16663i, var_2.c, -1000f, var_1.x | abs(var_0.x)), func_1(func_1(Struct_1(vec4<f32>(1212f, 588f, var_2.a.x, var_2.a.x), var_1.x, var_2.c, 1171f, 2147483647i), 2147483647i, func_1(Struct_1(vec4<f32>(1000f, -551f, var_2.a.x, 791f), var_1.x, var_2.c, var_2.d, var_2.e), -34936i, Struct_1(vec4<f32>(353f, var_2.d, 901f, -414f), 0i, vec4<u32>(10611u, 52329u, 1938u, 1u), -929f, var_0.x), var_2.c.wy), _wgslsmith_add_vec2_u32(var_2.c.xz, var_2.c.xw)), -_wgslsmith_mult_i32(1i, var_0.x), func_1(Struct_1(var_2.a, var_1.x, vec4<u32>(67672u, 4294967295u, global0.x, 13969u), var_2.a.x, var_0.x), -var_0.x, Struct_1(var_2.a, var_2.b, var_2.c, var_2.d, var_0.x), firstTrailingBit(var_2.c.zw)), abs(vec2<u32>(40799u, 1u))).e, Struct_1(_wgslsmith_f_op_vec4_f32(-func_1(Struct_1(vec4<f32>(436f, 1456f, 265f, 1345f), var_0.x, vec4<u32>(1u, 0u, 41901u, var_2.c.x), 744f, var_1.x), 1i, Struct_1(vec4<f32>(-1586f, -1000f, -314f, 1673f), -2147483647i, var_2.c, 1789f, var_1.x), var_2.c.ww).a), -reverseBits(-4462i), vec4<u32>(var_2.c.x, firstLeadingBit(global0.x), global0.x, _wgslsmith_sub_u32(1631u, var_2.c.x)), _wgslsmith_f_op_f32(floor(-1039f)), var_0.x), vec2<u32>(var_2.c.x, global0.x)), var_2.c.xx);
    var var_5 = _wgslsmith_add_i32(-var_1.x, min(-2147483647i & -(var_1.x ^ -17433i), -5746i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.zy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(Struct_1(vec4<f32>(-258f, var_4.d, var_2.d, var_2.a.x), var_2.b, var_2.c, 2112f, -1i), var_2.b, Struct_1(var_2.a, var_0.x, vec4<u32>(4294967295u, var_2.c.x, 125429u, 0u), var_4.d, 4858i), var_2.c.xx).a.wwy)))));
}

