struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec3<u32>(max(76165u, 4294967295u), ~(~arg_0.d) << (_wgslsmith_mod_u32(arg_0.a | 57959u, arg_0.d >> (arg_0.a % 32u)) % 32u), _wgslsmith_div_u32(abs(arg_0.d) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 23827u, 28018u, arg_0.a), vec4<u32>(arg_0.d, 1u, arg_0.d, 13065u)), arg_0.d)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, arg_0.d, arg_0.d, arg_0.a), vec4<u32>(arg_0.d, arg_0.d, arg_0.d, 0u)), arg_0.a, ~(~arg_0.a)), vec3<u32>(~(0u >> (1u % 32u)), select(arg_0.d, arg_0.a, 4294967295u >= arg_0.d), ~arg_0.a ^ 7541u));
    let var_1 = Struct_1(arg_0.d, arg_0.c.x, vec3<i32>(arg_0.b, reverseBits(arg_2.x), _wgslsmith_add_i32(59521i, _wgslsmith_mod_i32(-70469i & arg_0.c.x, 0i))), ~var_0.x, arg_1);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(482f))) - -1972f)), var_1.e));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(11625u, ~86650u)), 1u);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(select(abs(~vec2<u32>(var_0.x, 15742u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_0.x, var_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(4294967295u, var_0.x))), vec2<bool>(false, u_input.a.x != -1i)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(7577u, var_0.x)), vec2<u32>(~var_0.x, var_0.x))), _wgslsmith_mult_i32(countOneBits(u_input.a.x) | ~u_input.a.x, ~(~u_input.a.x)), max(select(u_input.a, u_input.a, select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), true)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, -26092i, u_input.a.x)) << (var_0.x % 32u), ~1i, ~abs(15641i))), max(~var_0.x, ~var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy), u_input.a, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(937f - -618f), -vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(-54626i, -7074i), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)))));
    var var_2 = _wgslsmith_mult_i32(~(~_wgslsmith_sub_i32(0i, u_input.a.x)) ^ ~(~(-var_1.b)), 38171i);
    var var_3 = var_1;
    var_2 = ~_wgslsmith_sub_i32(abs(~var_1.c.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-4989i, var_3.c.x, 18795i, var_3.b), vec4<i32>(9079i, var_1.b, 0i, 10616i))), 31132i);
    return Struct_1(0u, 0i, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(~var_3.c), countOneBits(var_1.c ^ vec3<i32>(-21015i, 0i, 1i)), var_1.c), vec3<i32>(-1i, var_1.c.x, 13239i)), abs(31011u) | ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(42935u, var_0.x, 36228u), vec3<u32>(var_1.a, var_0.x, var_1.d))), _wgslsmith_div_f32(567f, var_3.e));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e, arg_1.e))) + _wgslsmith_f_op_f32(f32(-1f) * -282f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - arg_1.e) + arg_1.e) - -453f);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.e)), -123f, -2172f));
    var_0 = -264f;
    return func_2();
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_1(~(~(~78404u)), u_input.a.x, vec3<i32>(countOneBits(u_input.a.x & 24513i), countOneBits(u_input.a.x ^ 49020i), -2952i), 2423u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -523f)))), func_2(), u_input.a);
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, var_0.a), vec2<u32>(var_0.d, 1u)), 23402u)), _wgslsmith_sub_u32(~43436u, firstTrailingBit(var_0.a)), 1u, countOneBits(~var_0.d)), ~min(min(abs(vec4<u32>(var_0.a, 66213u, 74219u, 54466u)), vec4<u32>(18223u, var_0.a, 0u, var_0.d) >> (vec4<u32>(var_0.d, var_0.d, 22806u, 83592u) % vec4<u32>(32u))), select(max(vec4<u32>(39351u, 31075u, 5472u, 4294967295u), vec4<u32>(1u, var_0.d, var_0.a, 74458u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a, var_0.a), vec4<u32>(49764u, var_0.a, 57682u, var_0.a)), all(vec2<bool>(false, false)))));
    return Struct_1(54834u, -3264i, firstLeadingBit(u_input.a | ~(vec3<i32>(var_0.c.x, u_input.a.x, var_0.b) ^ u_input.a)), var_1.x, var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = -17223i;
    var_0 = -(i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.c, vec3<i32>(-1i, u_input.a.x, 68512i)), 1i));
    let var_1 = !vec4<bool>(true, all(vec4<bool>(true, true, true, true)) | true, true, false);
    var var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(min(max(0u, arg_0.d), ~1u), _wgslsmith_mod_u32(~0u, ~51158u), ~1u, 62244u), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.a, 62865u, arg_0.d), vec4<u32>(arg_1.a, arg_1.a, arg_1.d, 0u)), select(vec4<u32>(arg_1.d, 0u, 42338u, arg_0.d), vec4<u32>(arg_1.d, 0u, 36452u, arg_1.a) | vec4<u32>(arg_0.a, arg_1.a, 0u, arg_1.a), var_1)) | select(~(vec4<u32>(87716u, arg_1.a, 54748u, arg_0.a) ^ vec4<u32>(arg_0.a, 0u, 110906u, arg_0.a)), reverseBits(vec4<u32>(arg_1.a, arg_1.a, arg_0.d, 0u)), true));
    let var_3 = Struct_1(_wgslsmith_add_u32(func_4(arg_0, arg_1, -abs(arg_1.c)).d, var_2.x), _wgslsmith_dot_vec3_i32(arg_0.c, u_input.a), ~select(arg_1.c, arg_1.c, true) << (reverseBits(countOneBits(reverseBits(var_2.yxy))) % vec3<u32>(32u)), abs(~countOneBits(18275u)), _wgslsmith_f_op_f32(-func_2().e));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f + -615f) * _wgslsmith_f_op_f32(max(543f, -341f))))))));
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(~0u, 1u) ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(64872u, 24911u)), ~vec2<u32>(1u, 13120u)), 1u), 0i, vec3<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, func_5(Struct_1(17033u, u_input.a.x, vec3<i32>(-66153i, -7874i, u_input.a.x), 54701u, var_0), func_1())), 28411i), ~(firstTrailingBit(func_1().d) >> (4294967295u % 32u)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0, 1f)), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1165f, 1054f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, var_1.e, 1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e, var_1.e, var_1.e), vec3<f32>(787f, -1217f, var_0))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1671f, 597f) - vec2<f32>(-211f, var_0))))), select(vec2<u32>(var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, var_1.d, var_1.d, var_1.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d, 97687u, 4294967295u, var_1.d), vec4<u32>(var_1.d, 0u, var_1.d, var_1.a)))), countOneBits(~(vec2<u32>(var_1.d, var_1.a) & vec2<u32>(var_1.a, 70035u))), !(abs(-1i) <= firstTrailingBit(2147483647i))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, firstTrailingBit(0u), var_1.d, 4294967295u << (var_1.a % 32u)), vec4<u32>(var_1.a, abs(12189u), var_1.d >> (var_1.d % 32u), _wgslsmith_sub_u32(51108u, 1u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(48714u, 77680u, 35321u, var_1.d), vec4<u32>(49805u, 0u, var_1.a, var_1.a), vec4<u32>(0u, var_1.a, 9146u, var_1.a)))), -(~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, u_input.a.x, 33011i), u_input.a))));
}

