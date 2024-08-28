struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -24050i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = -2147483647i;
    global0 = ~(-(1i | (~u_input.c.x >> (arg_0.a.d % 32u))));
    global0 = -arg_0.a.a.x;
    global0 = (arg_0.a.a.x & u_input.a.x) << (~arg_0.a.d % 32u);
    var var_0 = arg_0.a.d & _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.a.b, arg_0.a.c, arg_0.a.b), vec4<u32>(22151u, arg_0.a.d, 0u, arg_0.a.d)), arg_0.a.b, ~arg_0.a.c);
    return -u_input.b.xww << (~(~(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.a.d, 4294967295u), vec3<u32>(arg_0.a.c, arg_0.a.c, 1u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.a.d, arg_0.a.b), vec3<u32>(arg_0.a.c, arg_0.a.c, arg_0.a.b)))) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> vec3<i32> {
    let var_0 = vec4<f32>(1803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(abs(arg_1)))) + arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * -1365f));
    var var_1 = Struct_3(vec3<i32>(-1i) * -(func_3(Struct_2(Struct_1(arg_2.yy, arg_0, 1u, 82392u), vec2<bool>(false, true)), -1000f, var_0) >> (select(vec3<u32>(20394u, 4294967295u, arg_0), vec3<u32>(arg_0, arg_0, arg_0), true) % vec3<u32>(32u))), -u_input.a.zxx, Struct_2(Struct_1(arg_2.zx, abs(~11843u), arg_0, reverseBits(25381u) | select(arg_0, 0u, false)), vec2<bool>(any(vec3<bool>(true, true, false)) && select(true, true, true), abs(118768u) != ~arg_0)));
    var_1 = Struct_3(abs(select(vec3<i32>(min(u_input.b.x, arg_3), _wgslsmith_mod_i32(-49968i, u_input.c.x), 0i), vec3<i32>(_wgslsmith_sub_i32(-1i, -1i), var_1.a.x, 0i), !(arg_0 != 1u))), var_1.b, Struct_2(Struct_1(vec2<i32>(0i, arg_2.x), ~arg_0 & 32640u, _wgslsmith_add_u32(26037u & var_1.c.a.d, ~var_1.c.a.b), 4294967295u), var_1.c.b));
    var var_2 = var_1.c.b.x;
    var var_3 = Struct_3(-(~(-arg_2.zzy)), vec3<i32>(u_input.a.x, -22189i, _wgslsmith_dot_vec2_i32(arg_2.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, var_1.c.a.a.x), select(vec2<i32>(arg_2.x, 24963i), vec2<i32>(1i, var_1.b.x), var_1.c.b.x)))), Struct_2(Struct_1(vec2<i32>(~(-51342i), ~arg_3), arg_0, 4294967295u, var_1.c.a.c), select(var_1.c.b, !(!var_1.c.b), !any(vec4<bool>(false, true, true, false)))));
    return ~_wgslsmith_mod_vec3_i32(-countOneBits(vec3<i32>(-1i, var_1.a.x, 1i) | var_1.a), arg_2.zyy & _wgslsmith_sub_vec3_i32(firstTrailingBit(var_1.b), vec3<i32>(2147483647i, var_1.c.a.a.x, var_1.b.x) ^ u_input.a.ywz));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    global0 = _wgslsmith_dot_vec2_i32(reverseBits(-select(~vec2<i32>(u_input.a.x, -14184i), u_input.a.wz, true)), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, arg_0) | vec3<i32>(-1i, arg_0, u_input.a.x), func_2(63015u, -627f, u_input.b, arg_0)), _wgslsmith_dot_vec2_i32(func_2(~2193u, 429f, vec4<i32>(0i, 1i, 86548i, u_input.b.x), _wgslsmith_clamp_i32(-40308i, arg_0, u_input.b.x)).xx, min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, arg_0), u_input.a.zy), u_input.c))));
    var var_0 = Struct_2(Struct_1(-u_input.a.zw | (_wgslsmith_mod_vec2_i32(vec2<i32>(53096i, 0i), vec2<i32>(arg_0, -38747i)) >> (~arg_1.yy % vec2<u32>(32u))), 59626u, 0u, arg_1.x), !vec2<bool>((0u <= arg_1.x) != any(vec2<bool>(true, false)), false));
    let var_1 = true;
    let var_2 = var_0.b;
    var_0 = Struct_2(var_0.a, vec2<bool>((arg_1.x >= arg_1.x) & !var_2.x, false & all(select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_0.b.x, true, var_2.x)))));
    return Struct_2(Struct_1(u_input.c, var_0.a.b, 1u, _wgslsmith_mult_u32(arg_1.x, var_0.a.c)), !var_0.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    global0 = -(-2147483647i ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -31594i), vec3<i32>(26519i, arg_1.a.a.x, u_input.b.x)) << (((arg_1.a.c << (arg_1.a.d % 32u)) << (_wgslsmith_div_u32(5963u, 145672u) % 32u)) % 32u)));
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 4294967295u, 1u, arg_1.a.c) & vec4<u32>(20058u, 0u, 8260u, arg_1.a.b)), vec4<u32>(12278u, arg_1.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.d, arg_1.a.c, 29026u), vec3<u32>(34884u, arg_1.a.c, arg_1.a.b)), arg_1.a.d >> (57385u % 32u))));
    var_0 = 4294967295u;
    var var_1 = vec3<u32>(1u ^ arg_1.a.d, _wgslsmith_sub_u32(65708u, arg_1.a.c), abs(~(47328u << (_wgslsmith_dot_vec4_u32(vec4<u32>(17140u, arg_1.a.b, arg_1.a.c, 0u), vec4<u32>(1250u, 22552u, 1u, arg_1.a.d)) % 32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, -1933f, 843f, 1000f) * vec4<f32>(398f, -184f, -1000f, -522f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1799f, -175f, 505f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-192f, -385f)) * _wgslsmith_f_op_f32(-379f - -148f)), -403f), -823f, _wgslsmith_f_op_f32(step(267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1075f * 731f) + 1680f)))), vec4<bool>(false, true, arg_0.x, true)));
    return 1u ^ (var_1.x >> (firstTrailingBit(arg_1.a.c) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(64493u, 4294967295u, 59431u, 32934u), vec4<u32>(8718u, 0u, 32291u, 4294967295u)), 1u), reverseBits(4294967295u)), ~vec2<u32>(func_4(vec2<bool>(true, true), func_1(u_input.a.x, vec3<u32>(68877u, 98741u, 95379u))), 21659u));
    let var_1 = func_1(-2147483647i, _wgslsmith_div_vec3_u32(select(vec3<u32>(var_0, 0u, _wgslsmith_mult_u32(0u, 26601u)), vec3<u32>(~4294967295u, _wgslsmith_mult_u32(2663u, 0u), ~var_0), vec3<bool>(true, true, true)), ~reverseBits(vec3<u32>(39931u, 25988u, 17929u)) | (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(1u, 51269u, 44627u)) >> (~vec3<u32>(21548u, 35217u, 74611u) % vec3<u32>(32u))))).a;
    var var_2 = Struct_2(Struct_1(var_1.a, abs(4294967295u), 0u, ~(~(~var_1.b))), select(func_1(_wgslsmith_dot_vec3_i32(-u_input.a.yzz, select(u_input.b.zxw, vec3<i32>(u_input.b.x, var_1.a.x, var_1.a.x), vec3<bool>(true, false, true))), vec3<u32>(var_0 ^ var_1.c, 75473u << (var_1.c % 32u), var_1.c)).b, vec2<bool>(true, true), true));
    var_2 = Struct_2(func_1(25399i, _wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(var_0, 43110u, 84919u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.d, var_0, 1u), vec3<u32>(0u, 1u, 70527u)), ~vec3<u32>(var_2.a.b, 4294967295u, var_1.c)))).a, !select(var_2.b, var_2.b, true));
    var var_3 = -226f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), -var_1.a.x);
}

