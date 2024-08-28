struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 188f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-697f)) + _wgslsmith_f_op_f32(f32(-1f) * -788f)))), _wgslsmith_f_op_f32(step(-1766f, 1000f)))) * -737f);
    var var_1 = Struct_3(38128u, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1851f + -1744f), -838f, _wgslsmith_f_op_f32(-1254f + 535f), _wgslsmith_f_op_f32(-596f + -347f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -377f, -845f, 2136f) - vec4<f32>(134f, 188f, 683f, 1629f)), vec4<f32>(373f, -2594f, -1000f, 379f))), select(~(-1i), ~(-68042i | u_input.a), !var_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1338f))), u_input.a, ~1u, vec3<u32>(~0u, 57854u, 1u)), Struct_1(-206f, ~_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.a), 1u, vec3<u32>(40482u, ~20972u, min(0u, 4294967295u))), vec4<bool>(true, false, all(select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0))), true)));
    var var_2 = ~abs(firstTrailingBit(-vec2<i32>(u_input.a, 0i))) ^ -abs(-vec2<i32>(-28340i, 31064i));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(round(117f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.b.a.yz, var_1.b.a.xx))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.b.a.zx * var_1.b.a.zx))));
    return (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d.c, _wgslsmith_sub_u32(var_1.b.d.d.x, 3816u), ~11931u, _wgslsmith_mod_u32(26775u, var_1.b.d.d.x)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.a, 5302u, var_1.a, 3524u)), ~vec4<u32>(var_1.b.d.c, var_1.b.c.c, 1u, 0u))) | countOneBits(var_1.a & firstLeadingBit(var_1.b.d.d.x))) >= var_1.a;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> vec3<bool> {
    global0 = 1387f;
    let var_0 = _wgslsmith_add_i32(-1i, arg_2.x ^ arg_2.x) >> (1u % 32u);
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(36573u, 17058u), 1u, 1u), ~firstLeadingBit(~(~16798u)), ~_wgslsmith_div_u32(52050u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34300u, 1u), vec3<u32>(57053u, 4294967295u, 1u)) ^ 25673u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(428f * arg_0)) - arg_0), _wgslsmith_f_op_f32(-881f * _wgslsmith_f_op_f32(-566f + _wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(arg_0, 249f), arg_0, _wgslsmith_f_op_f32(-arg_0)))), -10640i, Struct_1(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_sub_i32(-1i, -var_0), 19555u, _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.x, var_1.x, 0u), vec3<u32>(4294967295u, 1u, 0u))), Struct_1(arg_0, 1i, 4294967295u, select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(var_1.x, 59570u, 22273u)), select(vec3<u32>(80454u, 4294967295u, var_1.x), vec3<u32>(var_1.x, var_1.x, 13516u), vec3<bool>(false, true, true)), arg_1)), !select(vec4<bool>(false, arg_1, true, false), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, true)), all(vec4<bool>(arg_1, true, true, false)))));
    return select(vec3<bool>(any(vec2<bool>(true, true)), !(!var_2.a.e.x & var_2.a.e.x), all(vec2<bool>(true, !arg_1))), var_2.a.e.yzz, all(vec2<bool>(_wgslsmith_f_op_f32(floor(var_2.a.a.x)) > var_2.a.a.x, var_2.a.e.x && true)));
}

fn func_2(arg_0: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-741f, 472f, false)), _wgslsmith_f_op_f32(-arg_0)))))));
    let var_1 = func_4(arg_0, func_3(), vec3<i32>(u_input.a, 1i, 4115i));
    var var_2 = Struct_3(select(3317u, countOneBits(~firstTrailingBit(33383u)), !var_1.x), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0, _wgslsmith_f_op_f32(step(438f, 960f)), var_0) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-730f, 347f, -856f, var_0)))), 2147483647i, Struct_1(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(1i, 2147483647i, u_input.b)), max(~62079u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16804u, 79715u, 25534u), vec4<u32>(4294967295u, 37005u, 23712u, 1524u))), vec3<u32>(1u, _wgslsmith_sub_u32(92340u, 9128u), ~56411u)), Struct_1(var_0, ~_wgslsmith_div_i32(u_input.a, u_input.b), ~_wgslsmith_add_u32(1u, 113911u), ~vec3<u32>(4294967295u, 0u, 0u)), select(!select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, true, false, var_1.x)), select(!vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), !vec4<bool>(true, var_1.x, true, true)), var_1.x)));
    let var_3 = 1i;
    global0 = var_2.b.a.x;
    return Struct_5(var_2.b);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.c.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.c.a))), false));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_mod_u32(arg_1.a.c.c, arg_1.a.d.c);
    var var_3 = Struct_1(var_1.a.c.a, _wgslsmith_add_i32(func_2(var_0).a.d.b, var_1.a.d.b), reverseBits(~_wgslsmith_div_u32(~84651u, ~var_1.a.c.c)), ~firstTrailingBit(~(var_1.a.d.d ^ var_1.a.c.d)));
    var var_4 = func_2(_wgslsmith_f_op_f32(step(var_1.a.c.a, var_3.a))).a.d;
    return Struct_3(4722u, arg_1.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    var var_0 = func_5(_wgslsmith_mod_vec2_i32(max(vec2<i32>(0i, u_input.b), vec2<i32>(arg_0.b.b, arg_0.b.c.b)) ^ (vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(1i, -29953i)), -vec2<i32>(4625i, 2147483647i) << (~arg_0.b.c.d.xx % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 32913i), vec2<i32>(u_input.a, 74054i)) << (vec2<u32>(1u, arg_1.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1671i, arg_0.b.d.b), vec2<i32>(-2147483647i, arg_0.b.b)) ^ firstTrailingBit(vec2<i32>(0i, u_input.a))), func_2(_wgslsmith_f_op_f32(min(arg_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.a) * _wgslsmith_f_op_f32(f32(-1f) * -1920f))))), -(~arg_0.b.d.b));
    var var_1 = abs(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(1i, -2147483647i, 2147483647i) & vec3<i32>(arg_0.b.b, 1i, u_input.a), abs(vec3<i32>(1i, 1i, 1i)), !select(var_0.b.e.wzw, vec3<bool>(var_0.b.e.x, var_0.b.e.x, var_0.b.e.x), vec3<bool>(false, false, true))), -_wgslsmith_mult_vec3_i32(vec3<i32>(19011i, 1i, 6964i) >> (arg_0.b.d.d % vec3<u32>(32u)), vec3<i32>(var_0.b.b, -34301i, -1i) | vec3<i32>(1i, arg_0.b.c.b, var_0.b.c.b))));
    let var_2 = ~firstLeadingBit(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.b.c.b, arg_0.b.d.b), vec3<i32>(u_input.a, 2147483647i, u_input.b)), countOneBits(u_input.b ^ -2147483647i)));
    var var_3 = firstTrailingBit(arg_1.x) >> (0u % 32u);
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(countOneBits(~vec3<i32>(u_input.a, -48268i, arg_0.b.b))), vec3<i32>(~max(0i, var_2), var_2, select(-2147483647i, _wgslsmith_sub_i32(u_input.b, -3773i), -1i > var_2))), _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.b.b, func_2(_wgslsmith_f_op_f32(-531f + -1000f)).a.b), func_2(var_0.b.c.a).a.b), var_2, max(var_0.b.d.b, func_5(firstLeadingBit(-vec2<i32>(arg_0.b.c.b, 0i)), Struct_5(arg_0.b), var_0.b.b).b.b));
    return -1393f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f * -407f)))), 1f));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(step(900f, _wgslsmith_f_op_f32(562f + var_0.x)))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(784f, -1688f, all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 639f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 327f)), vec2<f32>(455f, -785f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1324f - _wgslsmith_div_f32(var_0.x, -130f)))), _wgslsmith_f_op_f32(round(var_0.x))));
    let var_1 = !all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true));
    var var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(218f, _wgslsmith_f_op_f32(func_1(Struct_3(4294967295u, Struct_2(vec4<f32>(-2680f, 146f, 471f, 879f), u_input.b, Struct_1(var_0.x, u_input.a, 1624u, vec3<u32>(1u, 28994u, 26240u)), Struct_1(768f, -2147483647i, 4294967295u, vec3<u32>(1043u, 29207u, 28834u)), vec4<bool>(true, true, false, true))), vec4<u32>(4294967295u, 21715u, 1u, 3100u)))) + func_2(_wgslsmith_f_op_f32(520f * var_0.x)).a.a.zz), func_5(min(~vec2<i32>(0i, -1i), reverseBits(vec2<i32>(-35750i, 1i))), func_2(var_0.x), -u_input.a).b.a.xw, select(func_2(-1622f).a.e.zw, func_4(_wgslsmith_f_op_f32(var_0.x * -1828f), var_1, reverseBits(vec3<i32>(u_input.b, 2147483647i, -51455i))).zx, func_5(-vec2<i32>(-16364i, u_input.b), func_2(var_0.x), u_input.a ^ u_input.a).b.e.x)))));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-104f * -680f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, -264f))))), _wgslsmith_f_op_vec2_f32(floor(func_5(min(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, 1i)), Struct_5(Struct_2(vec4<f32>(-536f, var_3.x, var_3.x, var_3.x), 1i, Struct_1(var_0.x, u_input.a, 4294967295u, vec3<u32>(43356u, 4294967295u, 37160u)), Struct_1(var_0.x, u_input.a, 54655u, vec3<u32>(1u, 4781u, 57584u)), vec4<bool>(true, false, var_1, var_1))), ~u_input.a).b.a.yy))));
    var_2 = _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 59417u, 4294967295u)), abs(~vec3<u32>(96238u, 139u, 32672u))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.x, -1375f, -1398f)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(796i, 55207i), vec2<i32>(u_input.a, 21208i), vec2<i32>(u_input.a, 35568i)), -vec2<i32>(u_input.b, -1i)), func_2(-716f).a.c, func_5(vec2<i32>(u_input.a, 0i), func_2(var_0.x), 74239i).b.d, vec4<bool>(false || var_1, func_3(), var_1, !var_1))), vec4<u32>(~1u, 13238u, 4294967295u, (select(47896u, 4740u, var_1) << (4294967295u % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(17042u, 0u, 1u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 20660u, 1u, 4294967295u)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(76467u, 61179u, 4294967295u, 44624u), vec4<u32>(1630u, 4294967295u, 10737u, 33037u), vec4<u32>(7050u, 1u, 1u, 1u)))), _wgslsmith_sub_u32(1u, min(firstLeadingBit(~82147u), 42516u >> (1u % 32u))), ~1i, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), 158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-548f))))), countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 5477i, 2147483647i), vec3<i32>(u_input.b, u_input.a, 14998i)), vec3<i32>(-39063i, 2147483647i, 74336i) | vec3<i32>(18890i, u_input.a, u_input.a)), abs(-vec3<i32>(1i, u_input.b, -12586i)))));
}

