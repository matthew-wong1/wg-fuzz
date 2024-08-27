struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !any(vec2<bool>(true, true)) && all(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(u_input.b.x, u_input.c), max(-2147483647i, -max(79460i, u_input.c >> (u_input.a.x % 32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1893f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f * -162f) - _wgslsmith_f_op_f32(-156f - -162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1409f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1789f, -692f, var_0.a.x)), 1004f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, -330f, -604f, 1134f)) + vec4<f32>(1000f, 1000f, 1191f, -402f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(716f, 603f, -1992f, 1637f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-594f, 941f, -217f, 902f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, 696f, 1167f, -780f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -2209f, 1000f, 1250f), vec4<f32>(1000f, 416f, 662f, 235f))))))), true))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(181f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(357f, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -486f))), 547f);
    let var_2 = -215f;
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_f32(ceil(var_2)))))), 487f, var_1.x);
    return vec2<bool>(var_0.a.x, var_0.a.x);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_3(!select(vec2<bool>(arg_0, all(vec4<bool>(true, true, true, arg_0))), vec2<bool>(false, arg_0), func_3()), arg_2, -37011i);
    var var_1 = var_0;
    var_1 = Struct_3(!vec2<bool>(!(var_1.a.x || var_0.a.x), var_0.a.x || var_0.a.x), var_0.b, firstLeadingBit(_wgslsmith_add_i32(~(-1i), arg_3)));
    var var_2 = Struct_1(~arg_1, max(u_input.b.zz, countOneBits(u_input.b.yz)), _wgslsmith_div_u32(countOneBits(arg_1), 1u));
    var_2 = Struct_1(_wgslsmith_add_u32(31128u >> (u_input.a.x % 32u), var_2.c), ~vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(-u_input.b, vec3<i32>(0i, -78283i, 18344i))), u_input.a.x);
    return Struct_1(~(~25379u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, u_input.a.x, var_2.a), vec3<u32>(u_input.a.x, u_input.a.x, 31498u), vec3<u32>(0u, 59606u, 9437u)), vec3<u32>(23254u, var_2.c, 0u) & vec3<u32>(u_input.a.x, u_input.a.x, 0u))), ~var_2.b, _wgslsmith_add_u32(~(~_wgslsmith_div_u32(4294967295u, arg_1)), ~22116u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(countOneBits(abs(vec4<u32>(4294967295u, arg_1.a, 1u, 28291u))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(59589u, arg_0.c, arg_1.c, u_input.a.x), vec4<u32>(19012u, 38470u, u_input.a.x, 21939u)), vec4<u32>(arg_0.c, ~arg_1.c, arg_1.c, _wgslsmith_mod_u32(1u, u_input.a.x))), vec4<u32>(111934u, reverseBits(~26668u), 83608u, _wgslsmith_dot_vec2_u32(vec2<u32>(90399u, arg_1.c), vec2<u32>(4294967295u, 0u))));
    var var_1 = Struct_3(func_3(), arg_0.b.x, arg_1.b.x ^ ~firstTrailingBit(~arg_0.b.x));
    var var_2 = min(firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b << (vec3<u32>(arg_0.c, arg_1.a, var_0.x) % vec3<u32>(32u)), ~reverseBits(vec3<i32>(arg_0.b.x, arg_1.b.x, 16906i)))), arg_0.b.x);
    var var_3 = firstTrailingBit(arg_0.b.x << (23316u % 32u));
    var_1 = Struct_3(var_1.a, -2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, ~(arg_0.b.x & var_1.b), -1i), var_1.b));
    return Struct_2(vec4<bool>(any(!select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_1.a.x, true))), 1i <= u_input.b.x, false, select(any(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), all(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false)), true)), func_2(any(vec3<bool>(var_1.a.x & false, true, !var_1.a.x)), var_0.x, -(~u_input.b.x), -2147483647i), Struct_1(1u, firstTrailingBit(max(u_input.b.xx, func_2(false, 56089u, 2147483647i, var_1.b).b)), var_0.x << (~(~arg_1.a) % 32u)), u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(u_input.b.x), var_1.b, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, abs(2147483647i), 0i), u_input.b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_i32(u_input.b, u_input.b);
    let var_1 = Struct_3(vec2<bool>((-1i | u_input.c) == 1i, !arg_1.a.x), u_input.c << (u_input.a.x % 32u), 2147483647i);
    let var_2 = arg_1.a.x;
    let var_3 = func_4(func_2(all(vec2<bool>(var_1.a.x, !var_1.a.x)), 1u, _wgslsmith_div_i32(-2147483647i, arg_1.c) & _wgslsmith_add_i32(u_input.b.x, _wgslsmith_add_i32(arg_1.c, 2147483647i)), abs(-firstTrailingBit(arg_1.c))), func_2(any(!(!vec3<bool>(var_1.a.x, arg_1.a.x, var_2))), reverseBits(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 0i, -21547i));
    let var_4 = _wgslsmith_f_op_f32(-arg_0.x);
    return func_2(_wgslsmith_sub_i32(var_1.b, u_input.c) > _wgslsmith_mod_i32(min(var_3.e, arg_1.b), countOneBits(-333i)), reverseBits(~_wgslsmith_mod_u32(var_3.d, 21576u)), 20193i, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1550f, 1254f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(680f)), _wgslsmith_f_op_f32(576f - -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1158f, 369f), vec2<f32>(588f, -842f), vec2<bool>(true, true))))))), Struct_3(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec4<bool>(true, true, false, false))), countOneBits(_wgslsmith_div_i32(-16824i | u_input.c, firstTrailingBit(u_input.b.x))), 2147483647i));
    var var_1 = vec3<bool>(true, true, true);
    var_1 = func_4(Struct_1(u_input.a.x | min(_wgslsmith_dot_vec3_u32(vec3<u32>(53235u, 1u, u_input.a.x), vec3<u32>(4423u, u_input.a.x, var_0.a)), 1u), -min(~vec2<i32>(1i, -1i), vec2<i32>(-1744i, 27051i)), ~var_0.a), func_4(func_4(Struct_1(3108u, abs(vec2<i32>(-22576i, var_0.b.x)), ~var_0.c), Struct_1(~102904u, vec2<i32>(-2147483647i, 7469i), 6587u)).c, func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, -489f)))), Struct_3(vec2<bool>(false, var_1.x), 70875i, i32(-1i) * -51325i))).c).a.wzz;
    var_1 = !(!(!vec3<bool>(true, select(var_1.x, true, true), false)));
    var_1 = !func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, -1225f) * vec2<f32>(-1000f, -1052f))), Struct_3(var_1.yy, _wgslsmith_add_i32(u_input.c, var_0.b.x), _wgslsmith_div_i32(-1757i, -17159i))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-358f, 582f)))), Struct_3(var_1.yy, ~var_0.b.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1i, 0i, 0i))))).a.zyx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-740f + 1501f), _wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(trunc(405f)), -692f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-711f, -280f, -607f, -1608f) + vec4<f32>(-1251f, -340f, 1249f, -631f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1452f, -339f, -982f, 1195f))))))), ~0u);
}

