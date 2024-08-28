struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.a);
}

fn func_3() -> vec3<u32> {
    var var_0 = true;
    var_0 = all(select(select(vec3<bool>(true, u_input.c.x >= u_input.c.x, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true), select(vec3<bool>(true, u_input.b != -31310i, true), vec3<bool>(true, false, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, u_input.c.x >= 4294967295u, true))));
    let var_1 = abs(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, 9742i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2345i, u_input.b, -1i, u_input.a.x), -vec4<i32>(-6477i, u_input.a.x, 0i, u_input.a.x))), ~countOneBits(_wgslsmith_sub_i32(u_input.a.x, -61208i)), -6827i));
    var var_2 = Struct_2(global1.x, select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, u_input.a.x <= var_1.x, select(true, true, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), any(vec4<bool>(false, true, false, false))), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, -172f, global1.x))), Struct_1(min(_wgslsmith_add_vec3_i32(~vec3<i32>(5431i, u_input.b, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 1i, -1682i), u_input.a)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, var_1.x), i32(-1i) * -1i, var_1.x))), -vec4<i32>(~1561i, -16897i, u_input.a.x, -57740i));
    var_0 = true;
    return ~((~(~vec3<u32>(0u, u_input.c.x, 0u)) << ((reverseBits(vec3<u32>(4294967295u, 37918u, 4294967295u)) << (firstLeadingBit(vec3<u32>(u_input.c.x, 38295u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(46773u, u_input.d, u_input.c.x), firstLeadingBit(vec3<u32>(u_input.c.x, 48866u, 70997u)))) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: i32) -> f32 {
    var var_0 = vec3<u32>(abs(0u), 0u, max(~firstLeadingBit(min(4294967295u, 28545u)), _wgslsmith_mult_u32(arg_2.b.x, 1u)));
    var var_1 = 0i;
    var var_2 = Struct_3(global1.x, func_1());
    var var_3 = Struct_3(544f, Struct_1(vec3<i32>(_wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, arg_3), vec3<i32>(8050i, 30894i, var_2.b.a.x))), var_2.b.a.x >> (4294967295u % 32u), reverseBits(-var_2.b.a.x))));
    global0 = ~var_2.b.a.x << (reverseBits(abs(~8884u)) % 32u);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1.x, arg_1.a.x))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    var var_0 = ~(~9909u);
    var var_1 = select(~arg_1.b.x, 14808u, false);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -239f, -150f, arg_1.a.x), vec4<f32>(arg_0.a, -1300f, arg_0.a, -155f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_3(), Struct_4(vec2<f32>(-643f, arg_1.a.x), u_input.c, _wgslsmith_mod_vec4_u32(arg_1.c, arg_1.c)), Struct_5(true, vec4<u32>(arg_1.c.x, 16880u, 5395u, 332u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -497f, global1.x) - vec3<f32>(global1.x, 671f, 1029f))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a.x, 18228i, u_input.b, 26992i), ~vec4<i32>(arg_3, arg_0.b.a.x, 43803i, 1i)))))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))), global1.yyx, func_1(), ~vec4<i32>(func_1().a.x, 53064i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.a, arg_0.b.a), ~u_input.a), ~(-2147483647i)));
    var_1 = ~(~(~(_wgslsmith_clamp_u32(u_input.c.x, 15484u, u_input.d) | 0u)));
    return _wgslsmith_clamp_vec4_u32(~reverseBits(arg_1.c), vec4<u32>(firstTrailingBit(arg_1.b.x >> (arg_1.c.x % 32u)) & arg_1.b.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, arg_1.b, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.c.x, u_input.d), u_input.c))), abs(firstLeadingBit(u_input.d)), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(49229u, 5082u, 4294967295u, u_input.c.x), arg_1.c), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, 0u, u_input.c.x), arg_1.c))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, arg_1.c.x, _wgslsmith_mod_u32(59936u, 1u), ~u_input.c.x), vec4<u32>(countOneBits(4294967295u), 19969u, 1u, firstLeadingBit(1u))) >> (vec4<u32>(~1u, ~0u | _wgslsmith_div_u32(u_input.d, u_input.d), abs(reverseBits(arg_1.c.x)), 4294967295u) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = ~arg_0.b;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1078f, -1576f, _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, arg_0.b.x), arg_0.b.www), Struct_4(vec2<f32>(1003f, global1.x), vec2<u32>(arg_0.b.x, u_input.d), vec4<u32>(4294967295u, arg_0.b.x, 42603u, arg_0.b.x)), arg_0, -u_input.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-295f, _wgslsmith_div_f32(366f, global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-716f, 1125f))), _wgslsmith_f_op_f32(round(928f))), 656f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), global1.x))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(-2319f)), _wgslsmith_f_op_f32(-arg_2.x)))))), select(~firstLeadingBit(vec2<u32>(0u, var_0.x)), ~var_0.wz, select(!vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(arg_0.a, arg_0.a), select(arg_0.a, arg_0.a, true))) & countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 16388u), var_0.zy), ~arg_0.b.zz)), countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, arg_0.b.x, 32632u), vec4<u32>(1u, u_input.d, u_input.d, var_0.x))) << (vec4<u32>(~u_input.d, ~min(arg_0.b.x, 10041u), _wgslsmith_dot_vec4_u32(vec4<u32>(9108u, arg_0.b.x, var_0.x, u_input.d), vec4<u32>(16814u, 0u, u_input.c.x, 4294967295u)), _wgslsmith_dot_vec2_u32(u_input.c, arg_0.b.wz)) % vec4<u32>(32u)));
    var var_2 = 0u;
    global0 = arg_1.a.x;
    return StorageBuffer(vec3<i32>(u_input.b, max(_wgslsmith_sub_i32(u_input.b | 0i, -arg_1.a.x), -36490i), arg_1.a.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-339f, arg_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = u_input.a.x;
    global0 = abs((i32(-1i) * -select(var_0.x, var_0.x, true)) ^ ~select(u_input.b, 33374i, all(vec4<bool>(false, true, true, true))));
    let var_1 = -1i;
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a, max(_wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(u_input.a, u_input.a)), u_input.a)), -(_wgslsmith_div_i32(1i, select(u_input.b, var_0.x, true)) << (~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u)), firstTrailingBit(u_input.b));
    var_0 = _wgslsmith_div_vec3_i32(abs(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-2147483647i, -1i, var_1)) >> (vec3<u32>(u_input.d >> (u_input.d % 32u), 63346u, _wgslsmith_div_u32(8471u, 38544u)) % vec3<u32>(32u))), abs(vec3<i32>(_wgslsmith_add_i32(var_0.x ^ var_1, ~(-73120i)), min(_wgslsmith_clamp_i32(-15052i, 1i, var_1), -44950i), var_1)));
    var var_2 = func_1();
    var_2 = Struct_1(abs(u_input.a));
    let var_3 = !(!(!(!all(vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = func_5(Struct_5(var_3, vec4<u32>(0u, 0u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 6857u, 29599u), func_2(Struct_3(global1.x, Struct_1(var_2.a)), Struct_4(vec2<f32>(-504f, 713f), u_input.c, vec4<u32>(21739u, u_input.d, 0u, 0u)), Struct_1(vec3<i32>(-1i, var_0.x, 65352i)), var_2.a.x))), _wgslsmith_f_op_vec3_f32(-global1.zxx)), Struct_1(var_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, -548f, -575f) + vec4<f32>(global1.x, global1.x, global1.x, global1.x))) - vec4<f32>(global1.x, global1.x, _wgslsmith_div_f32(global1.x, -2614f), _wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1370f, -554f, 866f, -1845f)))))));
}

