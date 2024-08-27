struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    var var_0 = select(-(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, u_input.b, arg_1, arg_1), vec4<i32>(arg_1, arg_1, 2147483647i, u_input.b)) & (vec4<i32>(-2147483647i, 32863i, 0i, u_input.b) << (u_input.c % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(countOneBits(40348i), reverseBits(u_input.b)), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1, arg_1), _wgslsmith_mod_i32(44675i, u_input.b)), _wgslsmith_sub_i32(~0i, arg_1), u_input.b), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))) | vec4<i32>(arg_1, _wgslsmith_sub_i32(-45081i, _wgslsmith_add_i32(-arg_1, u_input.b)), -10532i, select(min(-24839i, _wgslsmith_dot_vec2_i32(vec2<i32>(-6503i, 0i), vec2<i32>(31222i, arg_1))), 2147483647i, true));
    let var_1 = firstTrailingBit(-104671i);
    var var_2 = Struct_4(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(var_0.www, vec3<i32>(max(u_input.b, var_0.x), min(4548i, var_0.x), 1i)), var_0.x), !(_wgslsmith_f_op_f32(-arg_0.x) <= arg_0.x) & (!any(vec2<bool>(true, false)) & any(vec3<bool>(true, true, false))), min(var_1, firstLeadingBit(u_input.b)), min(abs(abs(vec4<i32>(var_1, 1i, var_0.x, -2147483647i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -101387i, arg_1, arg_1), vec4<i32>(-2147483647i, arg_1, -1i, -40310i), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b))), firstLeadingBit(~(vec4<i32>(arg_1, -23864i, 1i, arg_1) << (u_input.c % vec4<u32>(32u))))));
    var_0 = vec4<i32>(-min(~_wgslsmith_sub_i32(u_input.b, u_input.b), -20411i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(~var_0.yx), var_0.yz), firstLeadingBit(var_2.a.xz)), ~var_1, 1i);
    let var_3 = select(!vec4<bool>(false, true, !all(vec4<bool>(false, false, var_2.b, var_2.b)), all(select(vec4<bool>(false, var_2.b, false, var_2.b), vec4<bool>(true, var_2.b, var_2.b, var_2.b), false))), !vec4<bool>(!any(vec3<bool>(false, false, var_2.b)), true != var_2.b, ~u_input.d >= 1u, var_2.b), !(!(!(!vec4<bool>(var_2.b, true, var_2.b, var_2.b)))));
    return _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x, u_input.d << (33688u % 32u)), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.c.x, 4294967295u, u_input.d) << (u_input.c % vec4<u32>(32u)))), countOneBits(countOneBits(u_input.c.xxy))));
}

fn func_2() -> bool {
    var var_0 = -1227f;
    var var_1 = Struct_1(vec3<bool>(!(firstTrailingBit(1i) >= _wgslsmith_add_i32(u_input.b, -2147483647i)), any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true)) | all(vec2<bool>(true, true))), vec4<u32>(countOneBits(min(_wgslsmith_mod_u32(117227u, u_input.d), select(u_input.a, 4294967295u, true))), 1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(func_3(vec2<f32>(-537f, 1533f), u_input.b), select(38444u, 28825u, true)), ~u_input.c.x & u_input.d), abs(u_input.d)), select(vec4<bool>(func_3(vec2<f32>(661f, 283f), u_input.b) == u_input.a, true, true || select(true, true, true), true), !vec4<bool>(all(vec3<bool>(false, false, false)), false, false, 83236i <= u_input.b), vec4<bool>(true | all(vec3<bool>(false, false, true)), true, true, select(true, true, any(vec4<bool>(true, true, false, false))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-284f, -225f, -481f) * vec3<f32>(-1491f, -870f, -1453f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1006f, -2101f, -433f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(566f)), -232f, _wgslsmith_f_op_f32(415f + 549f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), 678f, _wgslsmith_f_op_f32(sign(1254f)))))), ~(select(u_input.c.zzy, select(u_input.c.zxw, vec3<u32>(0u, u_input.e, 1u), vec3<bool>(false, true, false)), false) >> (select(~vec3<u32>(1u, 0u, 1u), countOneBits(vec3<u32>(4294967295u, u_input.e, 4294967295u)), all(vec3<bool>(false, true, false))) % vec3<u32>(32u))));
    var_1 = Struct_1(vec3<bool>(any(vec4<bool>(-595f > var_1.d.x, !var_1.a.x, true, 0u != u_input.e)), !all(!var_1.c.zw), !((var_1.d.x < 972f) || all(vec4<bool>(false, false, var_1.c.x, true)))), u_input.c, !vec4<bool>(false, all(!vec2<bool>(var_1.c.x, var_1.a.x)), var_1.c.x, !var_1.c.x | all(var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d + var_1.d)), u_input.c.xzy);
    return all(var_1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = -1255f;
    let var_1 = !(func_2() != any(vec2<bool>(true, true)));
    var var_2 = firstTrailingBit(min(select(vec4<i32>(u_input.b, 9671i, 24971i, u_input.b), vec4<i32>(u_input.b, 1i, 1i, u_input.b), vec4<bool>(true, true, true, var_1)) & ~vec4<i32>(11841i, u_input.b, u_input.b, u_input.b), min(reverseBits(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), ~vec4<i32>(1i, 0i, 50264i, 2147483647i)))) << (vec4<u32>(~(~max(1u, 10945u)), 0u, 1u, u_input.e) % vec4<u32>(32u));
    let var_3 = ~u_input.a;
    var_2 = ~select(~(vec4<i32>(var_2.x, u_input.b, 20427i, -2127i) | ~vec4<i32>(0i, 14554i, u_input.b, var_2.x)), ~vec4<i32>(-2147483647i, var_2.x, 0i, 0i) & _wgslsmith_div_vec4_i32(-vec4<i32>(var_2.x, u_input.b, u_input.b, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(60766i, 12941i, 2147483647i, u_input.b), vec4<i32>(1i, var_2.x, var_2.x, -2147483647i))), vec4<bool>((16682u & var_3) <= 1u, !any(vec2<bool>(false, true)), all(vec2<bool>(var_1, false)), 43830i >= _wgslsmith_mod_i32(u_input.b, -2775i)));
    return Struct_1(vec3<bool>(var_1, true, true), ~vec4<u32>(_wgslsmith_div_u32(17610u, 27479u), ~max(1u, 0u), 0u, reverseBits(u_input.d)), select(select(vec4<bool>(var_1 | false, any(vec4<bool>(false, var_1, false, var_1)), u_input.b > u_input.b, var_1), vec4<bool>(func_2(), var_1, true, select(false, var_1, var_1)), false), vec4<bool>(true, _wgslsmith_f_op_f32(floor(366f)) >= var_0, true, any(vec2<bool>(true, true))), var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))), var_0, var_0)), _wgslsmith_add_vec3_u32(reverseBits(u_input.c.xxz), vec3<u32>(~4294967295u, u_input.e, (u_input.a >> (41618u % 32u)) ^ _wgslsmith_mult_u32(var_3, 11326u))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = Struct_4(arg_2.zyw, func_2(), u_input.b, -(vec4<i32>(-1i) * -vec4<i32>(arg_2.x, 15971i, arg_2.x, u_input.b)));
    var var_1 = -43893i;
    var_1 = arg_2.x;
    let var_2 = arg_1.e.x;
    var_1 = _wgslsmith_dot_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 15505i, -1i, -2147483647i), vec4<i32>(13212i, 14669i, arg_2.x, -14493i)), countOneBits(~vec4<i32>(-1i, var_0.c, arg_2.x, arg_2.x))), var_0.d) << (1u % 32u);
    return reverseBits(select(~_wgslsmith_mult_vec2_u32(vec2<u32>(27860u, arg_0) | arg_1.b.zw, max(arg_1.e.xy, vec2<u32>(var_2, var_2))), reverseBits(vec2<u32>(~1u, min(1u, u_input.e))), !any(vec3<bool>(arg_1.a.x, var_0.b, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~u_input.c.yw, select(func_4(u_input.d, func_1(), ~vec4<i32>(-31541i, u_input.b, -1i, u_input.b) | -vec4<i32>(1i, u_input.b, 14524i, u_input.b)), ~_wgslsmith_mult_vec2_u32(~u_input.c.zz, _wgslsmith_add_vec2_u32(u_input.c.wy, vec2<u32>(u_input.d, 11111u))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_f32(ceil(1703f)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -953f), 1f))));
    let var_1 = _wgslsmith_clamp_i32(max(~0i, ~23634i), u_input.b, u_input.b);
    let var_2 = 195f;
    var var_3 = u_input.c.wzy;
    let var_4 = Struct_4(_wgslsmith_sub_vec3_i32(~(-(~vec3<i32>(var_1, -7704i, u_input.b))), -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, -52739i, u_input.b), vec3<i32>(30513i, var_1, 16764i)))), true, u_input.b, ~abs(vec4<i32>(var_1, var_1, -2147483647i, ~2147483647i)));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(409f, var_2)), _wgslsmith_f_op_f32(-1566f - _wgslsmith_f_op_f32(f32(-1f) * -1078f))) - _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(ceil(-139f)))));
    var var_6 = -1431f;
    let x = u_input.a;
    s_output = StorageBuffer(-747f);
}

