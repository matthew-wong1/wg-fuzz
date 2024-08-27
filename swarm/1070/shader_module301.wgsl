struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = 2147483647i;
    global0 = arg_1;
    var var_1 = ~(~arg_2.x);
    var var_2 = _wgslsmith_add_u32(min(~33754u, ~arg_2.x), arg_3.x);
    var var_3 = Struct_3(vec2<f32>(1401f, _wgslsmith_f_op_f32(arg_1 - -765f)), -select(u_input.b, u_input.c.yw, false));
    return Struct_5(select(arg_0.xz, !arg_0.zw, vec2<bool>((arg_0.x | true) && (false == arg_0.x), -1i < var_3.b.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(arg_0.e, vec4<u32>(arg_0.a, arg_0.d, arg_0.d, arg_0.a)) | ~arg_0.e, firstTrailingBit(arg_0.e)), _wgslsmith_div_f32(-2505f, arg_0.b), select(vec3<bool>((arg_0.c.x & true) && arg_2.x, arg_2.x, any(select(vec4<bool>(false, true, arg_2.x, false), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), arg_0.c.x))), vec3<bool>(arg_2.x, any(select(arg_0.c, arg_0.c, vec3<bool>(false, arg_2.x, arg_0.c.x))), !arg_0.c.x), vec3<bool>(true, true, true)), ~1u, ~(~(arg_0.e >> (arg_0.e % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(arg_0.b - arg_0.b) <= -2109f;
    var var_2 = _wgslsmith_f_op_f32(max(1343f, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(select(-936f, 862f, true && any(vec4<bool>(false, arg_0.c.x, false, var_0.c.x)))))));
    var_0 = Struct_1(38015u, arg_0.b, vec3<bool>(var_0.c.x, !func_2(vec4<bool>(false, true, false, arg_0.c.x), _wgslsmith_f_op_f32(427f + var_0.b), abs(arg_0.e.wxw), ~arg_0.e.wyx).a.x, true), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.d, ~_wgslsmith_div_u32(var_0.d, 35924u)), 0u, ~_wgslsmith_mod_u32(var_0.d, 22143u) | ~(arg_0.a & arg_0.d)), ~arg_0.e);
    var_0 = Struct_1(1u, -374f, select(vec3<bool>(true | func_2(vec4<bool>(arg_0.c.x, arg_2.x, var_0.c.x, arg_2.x), 1205f, vec3<u32>(arg_0.e.x, 0u, arg_0.d), vec3<u32>(var_0.d, 4294967295u, 30510u)).a.x, var_1, !var_0.c.x), var_0.c, true), min(~(~37479u), arg_0.d), var_0.e);
    return arg_0.a;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = vec2<i32>(arg_2.x, 0i);
    global0 = 615f;
    let var_1 = -(~firstTrailingBit(u_input.c.wx));
    let var_2 = select(vec4<bool>(arg_3.d.x, false, arg_0.a.x, arg_3.d.x), select(arg_3.d, !arg_3.d, !arg_0.a.x), true);
    global0 = 681f;
    return Struct_1(0u, _wgslsmith_div_f32(arg_3.e.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(-arg_3.b.x))))), vec3<bool>(true, true, any(select(!vec4<bool>(true, var_2.x, var_2.x, false), select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), vec4<bool>(false, true, false, arg_0.a.x), var_2), var_2))), 31038u, ~countOneBits(arg_3.e.e) << (firstLeadingBit(select(reverseBits(arg_3.e.e), firstLeadingBit(vec4<u32>(arg_1.x, 0u, arg_1.x, 28204u)), !var_2)) % vec4<u32>(32u)));
}

fn func_1() -> i32 {
    var var_0 = u_input.b.x;
    var var_1 = 1304f;
    let var_2 = func_4(func_2(vec4<bool>(false, false, false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f - -341f)) * 866f), _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(0u, 1u, 0u))), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), min(select(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(21176u, 1u), vec2<u32>(1u, 65849u)), any(vec2<bool>(false, true))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(6514u, 13393u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 30957u), vec2<u32>(11546u, 1u))))), _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-10702i, ~u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, 29475i), vec3<i32>(-41019i, 8435i, u_input.d)), _wgslsmith_sub_i32(u_input.c.x, -1i))) << (vec4<u32>(1u, ~firstTrailingBit(0u), 22033u, _wgslsmith_sub_u32(4294967295u, select(1u, 22674u, false))) % vec4<u32>(32u)), Struct_4(~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, 450f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, 1133f) - vec2<f32>(-1066f, 1632f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(216f, 1000f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-429f, -517f))))), func_3(Struct_1(0u, -546f, vec3<bool>(false, true, false), 12497u, vec4<u32>(109041u, 35746u, 1u, 1u)), -vec4<i32>(-2147483647i, u_input.d, 27285i, u_input.c.x), vec2<bool>(true, true)) ^ func_3(Struct_1(12614u, 346f, vec3<bool>(false, false, true), 91692u, vec4<u32>(43077u, 1u, 4294967295u, 4294967295u)), -vec4<i32>(1i, 2147483647i, u_input.c.x, u_input.b.x), vec2<bool>(true, true)), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false))), Struct_1(4294967295u, _wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(round(450f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, false)), 0u, ~(~vec4<u32>(919u, 30015u, 1u, 0u)))));
    var var_3 = max(max(~u_input.c, vec4<i32>(-23264i, _wgslsmith_dot_vec3_i32(u_input.c.zzz, vec3<i32>(u_input.a, 49074i, -2147483647i)), abs(u_input.d), _wgslsmith_div_i32(0i, 21959i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(15702i, -32030i, u_input.d, u_input.b.x) & _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-1i, u_input.b.x, 0i, u_input.c.x)), vec4<i32>(min(u_input.a, u_input.b.x), -43648i, u_input.d, 6898i >> (var_2.e.x % 32u)), u_input.c)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(65546u, 0u, 4294967295u, var_2.d)), var_2.e), firstLeadingBit(countOneBits(var_2.e))) % vec4<u32>(32u));
    var_1 = 419f;
    return -(~(~(-1i))) ^ var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.a, u_input.d) | ~vec3<i32>(u_input.c.x, -1i, u_input.c.x), u_input.c.yxw), ~u_input.b.x, -54725i | firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.c.ywx, u_input.c.zzw)), ~min(i32(-1i) * -2147483647i, u_input.a)), vec4<i32>(reverseBits(-24027i), 2897i, u_input.d, 1i));
    let var_1 = 450f;
    var var_2 = var_0;
    var var_3 = _wgslsmith_mod_i32(u_input.c.x, var_0) | func_1();
    var var_4 = vec2<u32>(1u, 1u);
    var_4 = ~(~(~firstLeadingBit(~vec2<u32>(var_4.x, 1u))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 852f, var_1, 1376f), vec4<f32>(995f, var_1, -2496f, var_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(861f - 495f), _wgslsmith_f_op_f32(max(-269f, 637f)), -886f, func_4(Struct_5(vec2<bool>(true, true)), vec2<u32>(var_4.x, 1u), u_input.c, Struct_4(var_4.x, vec2<f32>(1313f, var_1), 0u, vec4<bool>(true, false, true, true), Struct_1(var_4.x, var_1, vec3<bool>(false, false, true), var_4.x, vec4<u32>(var_4.x, var_4.x, 4294967295u, 41069u)))).b))));
    var_4 = vec2<u32>(~(_wgslsmith_mod_u32(var_4.x, 1u) << (~0u % 32u)), ~var_4.x);
    let var_6 = ~(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, var_4.x, 55765u, 1u), ~vec4<u32>(var_4.x, 1u, var_4.x, 50238u)), select(vec4<u32>(var_4.x, var_4.x, 115913u, 0u), vec4<u32>(4294967295u, var_4.x, 19294u, 44739u), false) & vec4<u32>(0u, var_4.x, var_4.x, var_4.x)) << ((vec4<u32>(firstLeadingBit(1u), var_4.x, ~var_4.x, ~var_4.x) | _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, 4294967295u, var_4.x, 4294967295u), vec4<u32>(var_4.x, var_4.x, var_4.x, var_4.x)), vec4<u32>(1u, 33150u, 12803u, 40438u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_6.wx << (var_6.yz % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~var_6.zz, var_6.zx ^ vec2<u32>(21237u, var_4.x)) | vec2<u32>(67921u, 4294967295u ^ var_4.x)), abs(vec2<i32>(max(countOneBits(-58206i), -var_0), ~(u_input.d & -1i))), _wgslsmith_div_f32(_wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f + 569f) + var_1)), -1311f), _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, ~(~var_4.x), var_4.x ^ (var_4.x ^ 4294967295u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(12710u, var_6.x) & 0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_6.x, 35788u), abs(0u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(291f, 1354f, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-217f)))) - var_5.x)));
}

