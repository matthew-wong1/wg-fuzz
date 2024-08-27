struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(1u, 50816u, 48770u, 17734u), 0i, -905f, vec4<u32>(4294967295u, 1u, 10774u, 122163u)), Struct_1(vec4<u32>(0u, 15238u, 0u, 94234u), 0i, -942f, vec4<u32>(4640u, 0u, 4294967295u, 19868u)), Struct_1(vec4<u32>(17358u, 4403u, 1u, 4294967295u), -50301i, -741f, vec4<u32>(5442u, 45683u, 54705u, 4294967295u)), Struct_1(vec4<u32>(1354u, 1u, 32184u, 10701u), 2147483647i, -512f, vec4<u32>(48729u, 4294967295u, 16530u, 1u)), Struct_1(vec4<u32>(17652u, 1u, 1094u, 45838u), 2147483647i, 1531f, vec4<u32>(33587u, 1u, 1u, 8232u)), Struct_1(vec4<u32>(4294967295u, 11104u, 2224u, 55579u), -52997i, -522f, vec4<u32>(32023u, 7507u, 1u, 24308u)), Struct_1(vec4<u32>(47542u, 63688u, 49042u, 21462u), -1i, 158f, vec4<u32>(373u, 62677u, 35872u, 1u)), Struct_1(vec4<u32>(29484u, 0u, 47167u, 58184u), 0i, 309f, vec4<u32>(14604u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 36707u, 44645u, 36885u), -1i, -864f, vec4<u32>(19931u, 4294967295u, 28843u, 109649u)), Struct_1(vec4<u32>(4294967295u, 71291u, 0u, 0u), 5554i, -977f, vec4<u32>(0u, 36222u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 42871u, 8785u, 4294967295u), 2147483647i, -473f, vec4<u32>(1u, 1u, 1u, 14457u)), Struct_1(vec4<u32>(50616u, 2739u, 5886u, 1u), 1i, -1527f, vec4<u32>(119471u, 77427u, 4836u, 32965u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec4<f32> {
    global1 = array<Struct_1, 12>();
    let var_0 = !vec3<bool>(arg_0.b.x, false, !(_wgslsmith_mult_i32(u_input.a, 61818i) >= -1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c, global0.c, 446f, 1641f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.c, global0.c, 673f, 123f)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1402f, 725f, 725f, arg_0.a.c)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -998f), arg_0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(arg_0.a.c + -1388f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-193f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + global0.c), arg_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c, arg_0.a.c)) + _wgslsmith_f_op_f32(-global0.c))), arg_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.c), arg_0.a.c)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.c - -220f), _wgslsmith_f_op_f32(var_1.x + var_1.x)) * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-355f)), var_1.x)), _wgslsmith_f_op_f32(1480f - 206f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-623f - arg_0.a.c) * var_1.x))));
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.x, 23316i, arg_0.c.x), select(vec3<i32>(~(-1i), 0i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(-2147483647i, -16962i))), arg_0.c.xyy, var_0));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_div_f32(808f, 239f)), arg_0.a.c, _wgslsmith_f_op_f32(-var_1.x))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c)))), _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, global0.c)) - global0.c)), _wgslsmith_f_op_f32(sign(-3356f))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(global0.d, min(-1i, global0.b), _wgslsmith_f_op_f32(1279f * -2558f), _wgslsmith_mult_vec4_u32(global0.d, vec4<u32>(u_input.b, global0.d.x, global0.d.x, 1833u))), select(!arg_0.yz, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), ~(vec4<i32>(2147483647i, u_input.a, 19703i, -375i) >> (global0.d % vec4<u32>(32u)))), global0.d.x)));
    global1 = array<Struct_1, 12>();
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 0i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global0.b, 56337i), vec3<i32>(14208i, -2147483647i, 2147483647i), vec3<i32>(-6451i, u_input.a, 1i))) >= countOneBits(-(~u_input.a)), _wgslsmith_mod_u32(9939u, 34650u));
    var_1 = Struct_2(_wgslsmith_mult_i32(-1i >> (min(1u, global0.d.x) % 32u), _wgslsmith_add_i32(1i, 53135i)) != firstTrailingBit(40469i | u_input.a), ~(~_wgslsmith_mult_u32(var_1.b, countOneBits(34358u))));
    return global1[_wgslsmith_index_u32(global0.d.x, 12u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = -arg_2.b;
    let var_1 = Struct_5(!arg_3, func_2(!select(select(vec3<bool>(arg_3, false, false), vec3<bool>(true, false, arg_3), vec3<bool>(true, arg_3, true)), select(vec3<bool>(false, arg_3, false), vec3<bool>(true, arg_3, arg_3), true), vec3<bool>(false, true, arg_3))), Struct_3(func_2(!(!vec3<bool>(arg_3, arg_3, false))), _wgslsmith_mult_vec2_u32(~vec2<u32>(21344u, u_input.b), ~arg_2.a.wy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 828f, arg_0.x) + vec3<f32>(1375f, 633f, arg_2.c))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3369f, global0.c, 112f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2034f + 1127f), global0.c, 531f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c, arg_0.x, arg_0.x))))))));
    var var_2 = Struct_2(var_1.a | any(!select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, arg_3, arg_3))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(arg_2.a, var_1.c.a.d)), global0.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(107439u, 4294967295u, arg_2.a.x, arg_2.a.x), _wgslsmith_div_vec4_u32(global0.a, vec4<u32>(18646u, var_1.b.a.x, 25368u, arg_2.a.x)), vec4<u32>(u_input.b, 9163u, var_1.b.a.x, u_input.b))), ~var_1.c.a.d));
    let var_3 = var_1.d;
    var var_4 = vec3<i32>(arg_1, func_2(vec3<bool>(var_1.a | false, arg_3, !var_2.a)).b, min(u_input.a, _wgslsmith_sub_i32(i32(-1i) * -42160i, -31514i))) | vec3<i32>(-26109i, var_0, func_2(vec3<bool>(true, var_1.a, var_1.a)).b);
    return Struct_1(~var_1.c.a.a, firstLeadingBit(-firstTrailingBit(2147483647i)) << ((1u ^ countOneBits(func_2(vec3<bool>(false, arg_3, false)).d.x)) % 32u), 134f, vec4<u32>(countOneBits(14491u), select(~(~var_2.b), firstTrailingBit(78469u), var_2.a), _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(var_1.b.a.x, arg_2.d.x, 1u, arg_2.a.x))), global0.a), ~arg_2.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_3 {
    global1 = array<Struct_1, 12>();
    let var_0 = true;
    global1 = array<Struct_1, 12>();
    global0 = global1[_wgslsmith_index_u32(90899u, 12u)];
    global0 = global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(arg_1, arg_0.b) & 1u), 12u)];
    return Struct_3(func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(707f, _wgslsmith_f_op_f32(-global0.c)))), 10237i, func_2(select(!vec3<bool>(false, arg_0.a, arg_2), vec3<bool>(arg_2, arg_2, arg_0.a), !vec3<bool>(arg_0.a, var_0, false))), true), ~global0.a.zw);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = vec4<u32>(95472u, _wgslsmith_mult_u32(~(_wgslsmith_dot_vec2_u32(global0.a.zw, arg_1.a.a.yz) >> (~u_input.b % 32u)), 0u), 19842u, _wgslsmith_add_u32(global0.d.x, ~_wgslsmith_sub_u32(9377u, 1u)));
    var var_1 = Struct_1(global0.d, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) - _wgslsmith_f_op_f32(-arg_1.a.c)), vec4<u32>(4294967295u, ~_wgslsmith_add_u32(1u, firstLeadingBit(4294967295u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 12510u, global0.a.x, var_0.x)), func_4(arg_3.zz, -u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(23395u, arg_1.b.x), 12u)], !arg_0).a), _wgslsmith_add_u32(u_input.b, ~4294967295u)));
    var var_2 = Struct_2(arg_0, ~func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, false)), all(vec3<bool>(false, false, arg_0)))).d.x);
    var_0 = vec4<u32>(var_0.x, ~var_1.d.x, global0.a.x, min(var_2.b, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1700f, global0.c))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, 53282i), vec2<i32>(var_1.b, 2147483647i)), i32(-1i) * -2147483647i), Struct_1(global0.a, var_1.b, _wgslsmith_f_op_vec4_f32(func_3(Struct_4(global1[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(arg_0, true), vec4<i32>(global0.b, -25556i, -1i, u_input.a)), 29288u)).x, vec4<u32>(4294967295u, 37721u, arg_1.a.d.x, 0u)), select(true, 0u <= u_input.b, u_input.a == u_input.a)).a.x));
    let var_3 = Struct_1(vec4<u32>(var_2.b, global0.d.x, u_input.b, 1u), ~(i32(-1i) * -25867i), _wgslsmith_f_op_f32(f32(-1f) * -394f), func_2(select(vec3<bool>(!arg_0, false | var_2.a, true), vec3<bool>(!arg_0, true, var_2.a), !vec3<bool>(true, true, arg_0))).a);
    return Struct_4(var_3, select(!(!(!vec2<bool>(true, var_2.a))), select(vec2<bool>(!arg_0, true), vec2<bool>(false, arg_0), select(select(vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, false), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, var_2.a)), !arg_0)), any(!select(vec3<bool>(var_2.a, arg_0, true), vec3<bool>(false, var_2.a, var_2.a), true))), max(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b, global0.b, arg_1.a.b, var_1.b), vec4<i32>(-1i, global0.b, 26732i, global0.b)), -vec4<i32>(2147483647i, -60574i, -2407i, -80358i))), -vec4<i32>(i32(-1i) * -2147483647i, ~arg_1.a.b, 1i, var_3.b)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c)) - _wgslsmith_f_op_f32(floor(arg_0.c))) - -543f) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))), func_5(any(!vec2<bool>(arg_2.b.x, true)), func_1(Struct_2(arg_2.b.x, ~45038u), arg_2.a.a.x, true & arg_2.b.x), arg_2.a.c, vec3<f32>(458f, _wgslsmith_f_op_f32(step(-374f, _wgslsmith_f_op_f32(978f * arg_2.a.c))), arg_2.a.c)).a, func_1(Struct_2(arg_2.b.x & select(true, arg_2.b.x, arg_2.b.x), arg_2.a.a.x), _wgslsmith_mod_u32(17441u, (arg_0.d.x >> (69650u % 32u)) >> (0u % 32u)), true == any(!vec3<bool>(arg_2.b.x, arg_2.b.x, true))), vec3<f32>(-1044f, func_2(vec3<bool>(arg_2.b.x, arg_2.b.x, true)).c, arg_0.c));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1074f - _wgslsmith_f_op_f32(1743f + arg_2.a.c)), _wgslsmith_div_f32(681f, var_0.c.a.c)), 536f, -437f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f + arg_2.a.c) + global0.c), -1784f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f * arg_2.a.c) * _wgslsmith_f_op_f32(arg_2.a.c + arg_2.a.c))) + vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.a.c, arg_2.a.c)), _wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), -1201f))));
    var var_2 = -(~1i);
    var_0 = Struct_5(!(arg_2.c.x <= ~var_0.b.b), func_1(Struct_2(any(vec3<bool>(true, true, arg_2.b.x)), ~_wgslsmith_sub_u32(48240u, 1u)), u_input.b, true | (global0.b < u_input.a)).a, var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.d));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_2(var_0.a, u_input.b), arg_2.a.d.x, var_0.a).a.c + _wgslsmith_div_f32(arg_0.c, -205f)))), var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(global0.d, arg_0.b, 845f, global0.d), arg_2.b, vec4<i32>(-1i, u_input.a, 2147483647i, -1i)), 0u)).x)))));
    return _wgslsmith_mult_vec2_u32(~(~_wgslsmith_sub_vec2_u32(~global0.d.wy, vec2<u32>(global0.d.x, 1u) >> (vec2<u32>(arg_2.a.d.x, var_0.c.a.a.x) % vec2<u32>(32u)))), select(_wgslsmith_add_vec2_u32(func_5(select(true, arg_2.b.x, true), Struct_3(Struct_1(vec4<u32>(var_0.c.b.x, u_input.b, 1u, 194u), var_0.b.b, 938f, global0.a), arg_2.a.a.wy), func_5(false, Struct_3(var_0.b, vec2<u32>(1u, 49513u)), global0.c, vec3<f32>(2150f, -212f, arg_2.a.c)).a.c, _wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(global0.c, arg_2.a.c, -200f))).a.a.xz, vec2<u32>(arg_0.a.x, abs(14179u))), func_1(Struct_2(arg_2.b.x, u_input.b), _wgslsmith_div_u32(8554u, 3189u), true).b >> (~vec2<u32>(global0.d.x, arg_2.a.a.x) % vec2<u32>(32u)), arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(18126u, u_input.b), 12u)], !vec2<bool>(false, !select(false, false, true)), ~_wgslsmith_clamp_vec4_i32((vec4<i32>(1i, 35680i, global0.b, 0i) ^ vec4<i32>(u_input.a, 14752i, 1i, u_input.a)) | countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, -23095i)), select(-vec4<i32>(global0.b, 1i, -1i, -2147483647i), -vec4<i32>(-46754i, 6027i, global0.b, -42018i), vec4<bool>(false, false, false, true)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global0.b, 5137i, -15458i), vec4<i32>(u_input.a, 68798i, 10875i, global0.b))));
    let var_1 = var_0.a.b;
    var var_2 = Struct_3(Struct_1(global0.d, ~(_wgslsmith_add_i32(-24602i, u_input.a) >> (_wgslsmith_dot_vec4_u32(global0.d, vec4<u32>(62738u, u_input.b, 13064u, var_0.a.a.x)) % 32u)), global0.c, global0.a), max(~countOneBits(var_0.a.d.yz), vec2<u32>(~(var_0.a.d.x << (u_input.b % 32u)), 0u)));
    var_2 = Struct_3(var_2.a, ~func_6(var_0.a, i32(-1i) * -12561i, func_5(select(true, var_0.b.x, false), func_1(Struct_2(var_0.b.x, var_0.a.d.x), 44781u, true), 614f, vec3<f32>(var_0.a.c, var_0.a.c, var_2.a.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(688f, func_5(true, Struct_3(global1[_wgslsmith_index_u32(global0.d.x, 12u)], global0.a.wx), 221f, vec3<f32>(var_2.a.c, 540f, 500f)).a.c, 1f, _wgslsmith_f_op_f32(select(var_0.a.c, 522f, var_0.b.x))))), ~_wgslsmith_div_vec2_u32(vec2<u32>(~5701u, var_2.a.d.x), ~var_0.a.a.wz), _wgslsmith_add_i32(abs(countOneBits(-37969i)), ~u_input.a) | func_2(select(vec3<bool>(true, true, false), vec3<bool>(var_0.b.x, true, false), select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), true))).b, ~4294967295u, var_0.a.d.yz);
}

