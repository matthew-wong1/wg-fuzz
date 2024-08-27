struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -_wgslsmith_sub_i32(select(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -41638i, -118i, arg_2.c), ~vec4<i32>(-90080i, 27483i, u_input.a, 40903i)), true), ~2147483647i);
    var_0 = -(1i ^ ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-7571i, 37076i), vec2<i32>(arg_2.c, u_input.a))));
    var_0 = -1i;
    global0 = reverseBits(_wgslsmith_mult_u32(arg_2.d, max(1u, _wgslsmith_div_u32(arg_2.a, 1u))));
    var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c, (u_input.a ^ u_input.a) ^ _wgslsmith_mod_i32(arg_2.c, arg_2.c), firstTrailingBit(~arg_2.c)), abs(-_wgslsmith_div_vec3_i32(vec3<i32>(66361i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, arg_2.c))));
    return arg_0;
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(select(vec4<u32>(1u, ~1u, abs(4294967295u), ~4158u), vec4<u32>(1u, 1u, 1u, 1u), select(func_3(vec4<bool>(false, false, true, false), 611f, Struct_2(6831u, Struct_1(false), -2147483647i, 1u)), vec4<bool>(true, false, false, true), true))) << (abs(max(reverseBits(~vec4<u32>(9117u, 36527u, 1u, 27559u)), ~vec4<u32>(0u, 1u, 4294967295u, 3656u) & select(vec4<u32>(1u, 34478u, 47907u, 1u), vec4<u32>(0u, 70592u, 18827u, 59058u), false))) % vec4<u32>(32u));
    var var_1 = ~select(select(~var_0.xyw, abs(min(vec3<u32>(var_0.x, var_0.x, 4294967295u), var_0.www)), vec3<bool>(true, true, any(vec2<bool>(true, false)))), vec3<u32>(var_0.x, firstLeadingBit(45006u), var_0.x) >> ((~var_0.xxx | vec3<u32>(var_0.x, 1u, 4294967295u)) % vec3<u32>(32u)), true);
    global0 = _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(13619u, 4294967295u), _wgslsmith_sub_vec2_u32(abs(var_1.yy), select(vec2<u32>(0u, var_1.x), vec2<u32>(var_1.x, var_0.x), vec2<bool>(false, true))), true), vec2<u32>(_wgslsmith_div_u32(var_0.x, countOneBits(var_0.x)), var_1.x), vec2<bool>(true, true)), var_1.yy);
    let var_2 = !(select(_wgslsmith_add_u32(19565u, var_0.x) ^ var_1.x, var_0.x, false) >= 10451u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1332f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1370f)), 1141f) - 823f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1573f, -527f))))));
    return Struct_1(var_0.x > var_0.x);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = vec2<i32>(min(_wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_sub_i32(u_input.a, ~15158i)), 1i), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -40415i, u_input.a), select(vec4<i32>(u_input.a, u_input.a, -2147483647i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, false, arg_2.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(575f)), _wgslsmith_f_op_f32(ceil(-494f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -940f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f - 1583f))));
    var var_2 = ~arg_3.x;
    var_1 = func_2();
    let var_3 = func_2();
    return !func_3(select(!vec4<bool>(var_1.a, var_3.a, var_1.a, false), !(!vec4<bool>(true, arg_1, false, var_3.a)), select(any(vec4<bool>(true, false, var_3.a, false)), true, var_0.x == -27427i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-334f, 268f))), 1340f)), Struct_2(~(~8745u), arg_2, countOneBits(~var_0.x), 44493u)).xzx;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec2<bool> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1024f), 2956f))) < 548f;
    var var_2 = vec4<bool>(!(select(false, false, all(vec3<bool>(var_1, var_1, true))) & (-1i <= min(arg_0, -2147483647i))), false, all(func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 39787u, 8151u, 90021u), ~vec4<u32>(41738u, 52258u, 1329u, 686u)), arg_1 < _wgslsmith_f_op_f32(177f * -1330f), func_2(), ~vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(min(1466f, _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(max(arg_1, arg_1)))))) > _wgslsmith_f_op_f32(-arg_1));
    var var_3 = Struct_3(0i, vec3<u32>(~34016u, _wgslsmith_add_u32(~(~21728u), countOneBits(~59575u)), 18356u), ~u_input.a, true);
    var var_4 = select(!(!vec4<bool>(true, true, var_2.x & var_2.x, var_3.d)), vec4<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x), var_3.b) < var_3.b.x, var_1, func_4(abs(_wgslsmith_mult_u32(9629u, 103278u)), (890f != arg_1) && true, Struct_1(!var_2.x), var_3.b).x, _wgslsmith_mod_u32(1u, 1u) < (~4294967295u & ~var_3.b.x)), true);
    return !var_4.yx;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = 4294967295u;
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = var_1.a;
    var_2 = !func_4(33699u, func_4(~abs(4294967295u), arg_3.x >= _wgslsmith_f_op_f32(f32(-1f) * -1267f), Struct_1(true), countOneBits(vec3<u32>(1u, 1u, 1u))).x, Struct_1(false), vec3<u32>(12461u, 26647u, ~1u)).x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 31972u;
    let var_0 = func_5(~(~((vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(25735u, 94858u, 0u) % vec3<u32>(32u))) ^ vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_1(all(select(vec2<bool>(false, false), func_1(-39465i, -706f), true))), vec4<i32>(-_wgslsmith_mod_i32(0i, u_input.a) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(26045u, 37516u, 19937u, 24313u), vec4<u32>(1u, 0u, 95525u, 42165u)) % 32u), ~u_input.a, ~25056i, _wgslsmith_clamp_i32(u_input.a, countOneBits(~0i), _wgslsmith_clamp_i32(i32(-1i) * -8465i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(16932i, 1i), vec2<i32>(u_input.a, 3572i))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -1090f)), 762f), _wgslsmith_f_op_f32(max(325f, -548f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-616f, _wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(f32(-1f) * -852f), _wgslsmith_f_op_f32(-555f - 1000f))))));
    let var_1 = Struct_2(4294967295u, Struct_1(var_0.a), -25874i, _wgslsmith_dot_vec3_u32(~(min(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 0u, 353u)) >> (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(min(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 1u, 28845u)), vec3<u32>(1u, 1u, 1u))));
    global0 = 41532u;
    var var_2 = func_3(!(!select(select(vec4<bool>(true, var_1.b.a, var_1.b.a, false), vec4<bool>(false, false, var_1.b.a, false), false), func_3(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), -919f, var_1), func_3(vec4<bool>(false, true, true, true), 268f, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-713f - -1006f) - -855f), _wgslsmith_f_op_f32(1539f - _wgslsmith_f_op_f32(-500f * -534f))))), Struct_2(var_1.d, func_5(max(firstTrailingBit(vec3<i32>(-25918i, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, -2147483647i) >> (vec3<u32>(var_1.a, var_1.d, 1u) % vec3<u32>(32u))), func_5(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(var_1.c, var_1.c, -2147483647i)), Struct_1(true), ~vec4<i32>(var_1.c, 1i, -39680i, 17912i), vec4<f32>(-578f, 448f, 988f, -623f)), vec4<i32>(1i, ~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, 37679i, 11610i), vec3<i32>(-2147483647i, u_input.a, 0i)), -2147483647i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1149f, 1223f, -620f, -1197f) + vec4<f32>(-307f, -183f, 418f, -374f))))), ~_wgslsmith_add_i32(-u_input.a, firstTrailingBit(var_1.c)), ~_wgslsmith_div_u32(var_1.a, var_1.d)));
    global0 = var_1.a;
    var_2 = select(func_3(!func_3(!vec4<bool>(false, var_0.a, true, true), _wgslsmith_div_f32(-1000f, 1409f), Struct_2(var_1.a, Struct_1(var_2.x), -1i, 0u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -944f))), Struct_2(~(~23138u), var_0, -u_input.a | ~u_input.a, 1u)), func_3(!(!(!vec4<bool>(var_0.a, var_1.b.a, true, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1204f)) + _wgslsmith_div_f32(661f, _wgslsmith_f_op_f32(round(132f)))), var_1), var_0.a);
    var_2 = select(vec4<bool>(!var_2.x, func_3(func_3(vec4<bool>(true, false, var_2.x, true), -1436f, Struct_2(var_1.d, Struct_1(true), -1i, var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -173f), Struct_2(4294967295u, func_5(vec3<i32>(u_input.a, 0i, var_1.c), Struct_1(false), vec4<i32>(-9228i, var_1.c, -1i, 47876i), vec4<f32>(-787f, -673f, -1313f, 632f)), u_input.a, _wgslsmith_mod_u32(var_1.a, 5470u))).x, func_3(func_3(!vec4<bool>(var_0.a, true, false, true), -428f, Struct_2(40481u, var_1.b, -1i, var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(499f, 583f)), var_1).x, !(true || var_1.b.a)), vec4<bool>((abs(u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(36246u, var_1.d, 41346u), vec3<u32>(35943u, var_1.a, var_1.a)) % 32u)) > -1i, !(true & all(vec4<bool>(false, var_2.x, var_1.b.a, true))), var_2.x, false), select(vec4<bool>(false, var_0.a, true, !func_3(vec4<bool>(false, var_2.x, var_0.a, true), 698f, var_1).x), vec4<bool>((1u ^ var_1.a) == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13287u), vec2<u32>(70493u, var_1.a)), func_2().a & (u_input.a <= var_1.c), true, false), vec4<bool>(!(var_0.a || true), true, true, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, 103f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-819f, -1580f), vec2<f32>(-461f, 1356f))))), ~(reverseBits(abs(vec4<u32>(95429u, var_1.d, var_1.a, 4588u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, var_1.d, var_1.a, var_1.d) << (vec4<u32>(51217u, 17707u, var_1.d, var_1.a) % vec4<u32>(32u)), vec4<u32>(var_1.d, 1u, 0u, var_1.a), select(vec4<u32>(75843u, var_1.a, 40655u, var_1.a), vec4<u32>(9345u, 39472u, var_1.d, var_1.d), var_2.x))), -vec4<i32>(_wgslsmith_div_i32(~u_input.a, 1i), var_1.c, _wgslsmith_sub_i32(30666i ^ u_input.a, _wgslsmith_clamp_i32(var_1.c, -1i, var_1.c)), select(1i, 0i, var_2.x)));
}

