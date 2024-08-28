struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = -vec2<i32>(firstTrailingBit(-min(-35977i, -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, 1i), _wgslsmith_add_i32(arg_2.a.x, -3648i << (arg_3.a.x % 32u))));
    let var_1 = arg_2;
    var var_2 = arg_1.x;
    var_2 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), -422f)))));
    var_2 = 1173f;
    return reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(max(arg_3.a, vec3<u32>(73583u, 1u, 0u) ^ arg_3.a), arg_3.a), abs(arg_3.a)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = all(arg_2);
    var_0 = arg_2.x;
    var var_1 = func_3(~1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -855f) * vec2<f32>(153f, 169f)), vec2<f32>(arg_3.c.a, 1280f))))), arg_3.d, arg_1);
    var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, select(~10184u, abs(var_1.x), true), ~var_1.x), countOneBits(vec3<u32>(var_1.x, ~arg_1.a.x, arg_0.x)));
    let var_2 = (vec4<u32>(~var_1.x, ~arg_0.x, arg_0.x, 1u) << (arg_0 % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(28681u, arg_1.a.x, 1u, 25148u)), 25923u, abs(arg_0.x), ~1u), vec4<u32>(_wgslsmith_mod_u32(23783u, 37994u), ~(~15830u), ~(~var_1.x), 4294967295u));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.c.a, 816f, arg_3.c.a), vec3<f32>(arg_3.c.a, 313f, _wgslsmith_f_op_f32(step(arg_3.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.a), _wgslsmith_f_op_f32(996f - arg_3.c.a))))), vec3<bool>(all(select(vec4<bool>(arg_2.x, true, arg_1.b, false), !arg_2, true)), true, select(true, false && (arg_3.a.b.x & arg_3.c.c.b.x), true))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    var var_0 = firstTrailingBit(vec4<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 15065u, 0u), _wgslsmith_add_u32(7489u, 117130u))), _wgslsmith_clamp_u32(1u, 53457u, 34267u) << (_wgslsmith_mod_u32(countOneBits(15036u), 1u) % 32u), ~58696u, 90052u));
    var_0 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(var_0.x, 45411u, var_0.x, 0u) >> (vec4<u32>(var_0.x, 34441u, 35190u, 0u) % vec4<u32>(32u)))), vec4<u32>(~1u, 20834u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(4294967295u, 1u, var_0.x)), ~_wgslsmith_mult_u32(1u, var_0.x)) >> (select(~abs(vec4<u32>(84348u, 4294967295u, 4294967295u, var_0.x)), vec4<u32>(~var_0.x, min(0u, var_0.x), var_0.x, _wgslsmith_sub_u32(var_0.x, 1u)), arg_2) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit((vec4<u32>(34647u, 45602u, var_0.x, 0u) & vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) << (vec4<u32>(1693u, var_0.x, var_0.x, 1u) % vec4<u32>(32u))), Struct_4(var_0.ywx, arg_2.x), !select(!vec4<bool>(arg_2.x, arg_1.d.b.x, true, arg_2.x), vec4<bool>(arg_2.x, true, true, any(arg_1.c.c.b)), select(select(vec4<bool>(true, true, arg_1.d.b.x, true), arg_2, arg_2.x), select(arg_2, vec4<bool>(false, false, false, arg_2.x), arg_2), vec4<bool>(true, arg_1.a.b.x, arg_1.d.b.x, arg_2.x))), arg_1)).x;
    var_0 = (~abs(~vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)) >> (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(12443u, 12023u, 2845u, var_0.x))), ~(~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.wyy, ~var_0.wzw), 1u, select(1u, var_0.x, !arg_2.x), min(~var_0.x, ~var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_1.c.a)))));
    return u_input.a.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(select(arg_0.x, arg_0.x ^ u_input.c.x, true) << (~(~(~39085u)) % 32u), -u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, abs(u_input.d)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1023f, -831f), vec3<f32>(-1089f, -1000f, -860f)) * _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(1u, 25950u, 56083u, 52781u), Struct_4(vec3<u32>(4294967295u, 4294967295u, 8522u), true), vec4<bool>(true, false, false, false), Struct_3(Struct_1(u_input.a.zxw, vec3<bool>(false, true, true)), vec3<i32>(-2147483647i, u_input.c.x, 15055i), Struct_2(1000f, vec2<bool>(true, true), Struct_1(arg_0.xxz, vec3<bool>(true, false, true))), Struct_1(u_input.a.zyz, vec3<bool>(true, true, true)), true))))), Struct_3(Struct_1(vec3<i32>(u_input.b, arg_0.x, arg_0.x), vec3<bool>(true, true, true)), vec3<i32>(i32(-1i) * -2147483647i, 1i, -2147483647i), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -302f), vec2<bool>(true, true), Struct_1(u_input.a.yxx, vec3<bool>(true, false, true))), Struct_1(select(u_input.a.xwx, vec3<i32>(-72866i, arg_0.x, 30942i), false), vec3<bool>(true, true, true)), false), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), true)));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(12807i, _wgslsmith_div_i32(~min(1i, -30474i), reverseBits(-26284i)), _wgslsmith_sub_i32(-2147483647i, (i32(-1i) * -2147483647i) | ~var_0.x), -76682i), vec4<i32>(-1i) * -countOneBits(-vec4<i32>(-1i, u_input.d, u_input.b, 0i)));
    var_0 = u_input.a;
    var_0 = -arg_0;
    var_0 = -(~arg_0);
    return Struct_1(vec3<i32>(-2147483647i ^ min(_wgslsmith_clamp_i32(u_input.a.x, -1i, var_0.x), arg_0.x << (10317u % 32u)), 2147483647i, -1067i), !vec3<bool>(any(vec4<bool>(true, false, true, false)), true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -540f;
    let var_1 = vec2<i32>(-1i, u_input.b);
    var var_2 = Struct_4(min(~(~(~vec3<u32>(4294967295u, 0u, 4294967295u))), vec3<u32>(abs(_wgslsmith_mod_u32(4294967295u, 40295u)), 0u, _wgslsmith_add_u32(40803u, 1u))), any(vec4<bool>(true, arg_2.b.x, false, true)));
    let var_3 = var_2.a.x;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), vec2<bool>(!arg_2.b.x, true), func_1(~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 0i, 11368i, 0i), vec4<i32>(var_1.x, -17911i, u_input.a.x, -38343i))));
    return arg_2;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_5 {
    var var_0 = arg_3.yzw;
    var var_1 = arg_3.x;
    let var_2 = func_1(firstLeadingBit(u_input.a)).b.x;
    var_0 = vec3<u32>(max(var_0.x, arg_3.x), 51496u, ~(arg_3.x & max(_wgslsmith_add_u32(arg_3.x, 4604u), var_0.x)));
    var_0 = arg_3.wyx;
    return Struct_5(arg_0, ~(-_wgslsmith_add_vec2_i32(u_input.c, u_input.c >> (arg_3.wy % vec2<u32>(32u)))), Struct_3(func_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.a, arg_0.c.a), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.a, 1042f), vec2<f32>(1000f, arg_0.c.a)), !vec2<bool>(true, arg_1.x))), arg_0.c.a == arg_2.a, arg_2.c), arg_0.d.a, arg_2, Struct_1(abs(countOneBits(vec3<i32>(u_input.a.x, u_input.c.x, -2147483647i))), select(vec3<bool>(true, false, var_2), vec3<bool>(false, arg_0.a.b.x, var_2), vec3<bool>(false, true, arg_1.x))), select(any(arg_1.xx), true, true)), Struct_2(arg_2.a, vec2<bool>(_wgslsmith_f_op_f32(abs(-672f)) != _wgslsmith_f_op_f32(arg_0.c.a - -732f), all(vec2<bool>(true, true))), Struct_1(select(func_1(u_input.a).a, _wgslsmith_clamp_vec3_i32(arg_2.c.a, vec3<i32>(-2147483647i, 62094i, -50941i), arg_0.c.c.a), vec3<bool>(var_2, false, true)), !select(vec3<bool>(var_2, true, arg_1.x), vec3<bool>(arg_1.x, true, true), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(Struct_1(u_input.a.xwx, !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), u_input.a.wzy, Struct_2(-813f, vec2<bool>(false, all(vec4<bool>(true, true, false, false))), func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-1389f, -531f), vec2<f32>(1223f, 1000f)), true, func_1(u_input.a))), Struct_1(u_input.a.zzx, vec3<bool>(all(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(false, true, false, false)))), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true | all(vec3<bool>(false, false, true))), Struct_2(_wgslsmith_f_op_f32(-2120f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -555f))), vec2<bool>(true, !any(vec2<bool>(true, false))), func_1(~vec4<i32>(u_input.c.x, -45972i, 40046i, u_input.b))), min(min(abs(countOneBits(vec4<u32>(1u, 1u, 3503u, 1u))), vec4<u32>(1u, 1u, 1u, 1u) & firstTrailingBit(vec4<u32>(33007u, 30974u, 5568u, 1u))), firstTrailingBit(vec4<u32>(~0u, _wgslsmith_add_u32(24461u, 45741u), reverseBits(4294967295u), 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c.a, -433f) + vec2<f32>(197f, var_0.d.a)))) - _wgslsmith_f_op_vec3_f32(func_2(firstTrailingBit(~vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_4(vec3<u32>(35016u, 10496u, 0u), !var_0.a.e), vec4<bool>(true, false, true, !var_0.a.e), func_6(Struct_3(var_0.d.c, vec3<i32>(u_input.a.x, -1i, u_input.d), Struct_2(var_0.a.c.a, var_0.c.d.b.xy, var_0.d.c), Struct_1(vec3<i32>(u_input.c.x, -1i, u_input.d), var_0.d.c.b), var_0.a.c.b.x), select(var_0.d.c.b, var_0.a.d.b, var_0.c.a.b.x), Struct_2(170f, var_0.a.d.b.yy, Struct_1(vec3<i32>(u_input.b, var_0.a.b.x, 1i), var_0.d.c.b)), ~vec4<u32>(4294967295u, 7422u, 4294967295u, 4294967295u)).c)).xx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.a)), -815f)));
}

