struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false, Struct_1(false, vec3<i32>(1502i, 0i, -29659i), vec2<bool>(false, true)), -180f, 1u, vec4<u32>(4849u, 0u, 4294967295u, 45426u)), Struct_2(true, Struct_1(false, vec3<i32>(-1i, -11332i, i32(-2147483648)), vec2<bool>(false, false)), 895f, 0u, vec4<u32>(4294967295u, 15434u, 4294967295u, 16480u)), Struct_2(true, Struct_1(true, vec3<i32>(0i, 0i, i32(-2147483648)), vec2<bool>(true, false)), -642f, 56932u, vec4<u32>(1u, 0u, 84794u, 1u)), Struct_2(false, Struct_1(false, vec3<i32>(-1i, -99572i, -7756i), vec2<bool>(true, false)), 991f, 0u, vec4<u32>(0u, 7909u, 55296u, 4294967295u)), Struct_2(false, Struct_1(false, vec3<i32>(-33674i, -39960i, -12533i), vec2<bool>(false, true)), -1460f, 0u, vec4<u32>(39824u, 21256u, 31138u, 73788u)), Struct_2(false, Struct_1(true, vec3<i32>(42676i, 16625i, -17820i), vec2<bool>(false, true)), -1252f, 61695u, vec4<u32>(1u, 4294967295u, 4294967295u, 39641u)), Struct_2(false, Struct_1(false, vec3<i32>(55390i, 0i, 0i), vec2<bool>(true, false)), -461f, 1u, vec4<u32>(4294967295u, 1u, 39338u, 35455u)), Struct_2(true, Struct_1(true, vec3<i32>(0i, 2147483647i, 0i), vec2<bool>(true, false)), 1000f, 38524u, vec4<u32>(30689u, 526u, 4294967295u, 1u)), Struct_2(true, Struct_1(false, vec3<i32>(11614i, -25284i, -14812i), vec2<bool>(false, false)), -550f, 1u, vec4<u32>(0u, 1u, 170u, 18996u)), Struct_2(false, Struct_1(false, vec3<i32>(9549i, -1i, -1i), vec2<bool>(true, false)), -975f, 59726u, vec4<u32>(1u, 2765u, 51247u, 0u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_1(any(arg_2.c), abs(select(vec3<i32>(-25180i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, arg_2.b.x, u_input.a.x), vec4<i32>(41042i, global0.x, global0.x, arg_2.b.x)), _wgslsmith_add_i32(u_input.a.x, -8111i)), firstTrailingBit(vec3<i32>(0i, -25743i, arg_2.b.x)), arg_3.yxw)), arg_2.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1166f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-483f, 678f)))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, -263f)))));
    var_1 = all(!vec3<bool>(false, !(var_0.c.x | false), all(!vec2<bool>(arg_3.x, true))));
    global1 = array<Struct_2, 10>();
    var var_2 = Struct_2(true, Struct_1(~(~3833u) > countOneBits(arg_0.x), vec3<i32>(55548i, _wgslsmith_mod_i32(arg_2.b.x, -2147483647i) & (u_input.a.x | global0.x), arg_2.b.x), select(arg_3.wz, !arg_3.zx, vec2<bool>(select(true, arg_2.c.x, arg_2.a), false | arg_3.x))), _wgslsmith_f_op_f32(min(-651f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-747f + 1235f) + 1604f)))), firstTrailingBit(17136u), ~arg_0);
    return !select(any(select(select(arg_3, vec4<bool>(arg_2.c.x, false, true, false), arg_3.x), arg_3, !arg_3)), any(select(arg_3, !arg_3, all(vec3<bool>(true, true, false)))), true);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = vec4<i32>(u_input.a.x, u_input.a.x, ~(u_input.a.x ^ global0.x), _wgslsmith_div_i32(2147483647i, u_input.a.x));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(24252u, 42101u), 0u, 0u & u_input.b, _wgslsmith_clamp_u32(u_input.b, 80402u, 10631u)), vec4<u32>(53946u, u_input.b, ~51489u, u_input.b | u_input.b)) ^ ~_wgslsmith_div_u32(112722u, u_input.b), ~1u, 1u), 10u)];
    var var_2 = vec4<bool>(false, var_1.a, var_1.b.a, true);
    let var_3 = Struct_1(true, _wgslsmith_div_vec3_i32(var_0.zzw, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 0i << (var_1.e.x % 32u)), select(var_0.yyz, var_1.b.b, !var_2.ywz), _wgslsmith_sub_vec3_i32(abs(var_0.xxw), vec3<i32>(1i, var_0.x, -71625i)))), select(vec2<bool>(any(!vec3<bool>(true, true, var_2.x)), false), vec2<bool>(var_1.a, all(var_2.wxw)), vec2<bool>(false, !func_3(var_1.e, false, var_1.b, vec4<bool>(true, var_2.x, var_2.x, false)))));
    var_1 = global1[_wgslsmith_index_u32(3511u, 10u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 355f), _wgslsmith_f_op_f32(sign(var_1.c))), var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, -1293f)), var_1.a)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-1673f))))));
    global1 = array<Struct_2, 10>();
    global0 = vec3<i32>(i32(-1i) * -2147483647i, 1i, 2536i);
    var var_1 = Struct_1(-511f == var_0.x, arg_1.ywz, select(arg_0.c, select(!arg_0.c, arg_0.c, vec2<bool>(arg_0.c.x, arg_0.a)), !arg_0.c.x | any(!vec3<bool>(arg_0.a, arg_0.c.x, true))));
    global0 = vec3<i32>(-49697i, global0.x, global0.x);
    return Struct_1(!var_1.c.x, vec3<i32>(max(arg_1.x, countOneBits(0i)), -1i, (i32(-1i) * -10982i) ^ min(-u_input.a.x, 2147483647i & arg_0.b.x)), !(!select(vec2<bool>(arg_0.a, arg_0.a), arg_0.c, vec2<bool>(arg_0.a, var_1.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = ~arg_1.b;
    var var_1 = vec3<bool>(!(true != select(arg_0.a, arg_0.a & arg_0.a, false)), any(vec3<bool>(any(vec3<bool>(arg_0.a, false, arg_1.c.x)), arg_0.a, true)) & select(true, all(select(arg_1.c, arg_1.c, arg_0.b.a)), !(arg_0.c <= arg_0.c)), false);
    var var_2 = global1[_wgslsmith_index_u32(0u, 10u)];
    let var_3 = select(select(vec4<bool>(true, any(select(vec2<bool>(var_1.x, arg_0.a), vec2<bool>(var_2.b.a, var_2.b.a), vec2<bool>(var_2.a, var_2.a))), 0u == _wgslsmith_dot_vec2_u32(arg_0.e.wz, arg_0.e.yz), true), !(!(!vec4<bool>(var_1.x, false, false, arg_1.a))), vec4<bool>(!var_1.x, var_2.c == _wgslsmith_f_op_f32(var_2.c + arg_0.c), all(vec3<bool>(true, false, true)), true)), vec4<bool>(false, _wgslsmith_f_op_f32(sign(arg_0.c)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f + 903f)), !(var_2.c != arg_0.c) != !(arg_0.e.x < arg_0.d), arg_0.a), !select(vec4<bool>(arg_0.a, all(vec4<bool>(arg_1.a, false, false, false)), true, var_1.x && false), select(!vec4<bool>(var_1.x, arg_1.c.x, true, arg_0.a), !vec4<bool>(true, var_2.b.a, arg_1.c.x, var_1.x), select(vec4<bool>(arg_1.c.x, arg_1.a, var_2.b.c.x, true), vec4<bool>(arg_0.a, var_1.x, arg_1.a, arg_0.a), vec4<bool>(var_2.a, false, var_1.x, var_1.x))), vec4<bool>(true, any(var_1.zx), true, func_1(Struct_1(arg_1.a, arg_1.b, vec2<bool>(true, arg_0.b.a)), vec4<i32>(-13838i, global0.x, -1i, -2147483647i)).a)));
    var var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, arg_1.b.x, var_2.b.b.x, 0i), vec4<i32>(~(-1i), -5824i, arg_0.b.b.x, global0.x)), -22765i, ~(select(_wgslsmith_add_i32(-6034i, arg_0.b.b.x), -arg_0.b.b.x, true) << (_wgslsmith_dot_vec3_u32(arg_0.e.zzy, _wgslsmith_div_vec3_u32(arg_0.e.ywz, vec3<u32>(u_input.b, u_input.b, u_input.b))) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(max(var_2.b.b.x, var_2.b.b.x), 13739i), vec2<i32>(var_0.x, select(u_input.a.x, 1i, false))), countOneBits(min(countOneBits(vec2<i32>(var_0.x, arg_1.b.x)), max(vec2<i32>(13701i, arg_1.b.x), vec2<i32>(global0.x, var_0.x))))));
    return any(select(select(vec3<bool>(true, true, true), var_3.wzy, true), !select(vec3<bool>(true, true, arg_1.c.x), var_3.wwx, any(vec2<bool>(true, true))), !var_3.zxz));
}

fn func_5(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_clamp_vec3_i32(select(~func_1(func_1(Struct_1(false, vec3<i32>(-2147483647i, -2147483647i, 1i), arg_1), vec4<i32>(arg_0, 19167i, global0.x, global0.x)), ~vec4<i32>(global0.x, 2147483647i, u_input.a.x, u_input.a.x)).b, ~reverseBits(countOneBits(vec3<i32>(global0.x, global0.x, arg_0))), all(select(!vec3<bool>(false, arg_1.x, arg_1.x), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, true), arg_1.x), all(vec4<bool>(false, true, arg_1.x, false))))), vec3<i32>(_wgslsmith_div_i32(39659i ^ abs(global0.x), arg_0), -6413i, u_input.a.x), vec3<i32>(1i, max(min(~1i, abs(39392i)), u_input.a.x >> (~u_input.b % 32u)), ~(~arg_0)));
    var var_0 = vec2<bool>(false, -44848i < u_input.a.x);
    global0 = _wgslsmith_sub_vec3_i32(abs(~(vec3<i32>(13289i, global0.x, global0.x) ^ vec3<i32>(-2333i, arg_0, 7414i))) & -vec3<i32>(min(arg_0, global0.x), countOneBits(-66089i), firstTrailingBit(u_input.a.x)), max(abs(reverseBits(firstLeadingBit(vec3<i32>(1i, 37988i, arg_0)))), vec3<i32>(func_1(Struct_1(var_0.x, vec3<i32>(-33366i, 0i, global0.x), arg_1), max(vec4<i32>(arg_0, global0.x, -18534i, -20629i), vec4<i32>(-2147483647i, global0.x, -2147483647i, -46049i))).b.x, 2147483647i | -arg_0, -22678i)));
    var var_1 = var_0.x;
    let var_2 = select(select(!(!select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, true, true), true)), vec4<bool>(arg_1.x, func_1(func_1(Struct_1(var_0.x, vec3<i32>(arg_0, -2147483647i, -1i), vec2<bool>(var_0.x, arg_1.x)), vec4<i32>(global0.x, u_input.a.x, u_input.a.x, arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global0.x, -2147483647i, arg_0), vec4<i32>(global0.x, -2147483647i, u_input.a.x, arg_0))).a, false, true), var_0.x), !vec4<bool>(var_0.x, !(!arg_1.x), func_3(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true, Struct_1(false, vec3<i32>(0i, -10487i, 23332i), arg_1), select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, false, true), vec4<bool>(true, var_0.x, false, arg_1.x))), true), !(!func_1(func_1(Struct_1(true, vec3<i32>(global0.x, -20739i, -37246i), arg_1), vec4<i32>(global0.x, 1i, -2147483647i, arg_0)), firstLeadingBit(vec4<i32>(1i, 1i, 59851i, arg_0))).c.x));
    return func_1(Struct_1(true != (all(vec3<bool>(false, false, false)) && arg_1.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0, u_input.a.x, -31190i), vec3<i32>(-5052i, 26998i, 11001i) & vec3<i32>(u_input.a.x, u_input.a.x, arg_0)), vec3<i32>(~global0.x, firstTrailingBit(3608i), ~global0.x), ~(~vec3<i32>(7526i, arg_0, -1i))), select(vec2<bool>(true, arg_1.x), func_1(func_1(Struct_1(var_2.x, vec3<i32>(global0.x, -2147483647i, global0.x), vec2<bool>(var_2.x, false)), vec4<i32>(1i, -2147483647i, u_input.a.x, 2147483647i)), max(vec4<i32>(arg_0, global0.x, -19521i, -35680i), vec4<i32>(19217i, u_input.a.x, arg_0, arg_0))).c, var_2.zw)), vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(0i, 1i))), -2147483647i, -1i, -_wgslsmith_mult_i32(~arg_0, -37219i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 10>();
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -334f);
    let var_2 = func_5(4038i, vec2<bool>(func_4(Struct_2(true, func_1(Struct_1(false, vec3<i32>(global0.x, 1i, global0.x), vec2<bool>(false, true)), vec4<i32>(35832i, 15104i, global0.x, global0.x)), -329f, min(u_input.b, var_0), vec4<u32>(0u, 1u, u_input.b, 4294967295u) ^ vec4<u32>(126796u, var_0, 11004u, 103226u)), Struct_1(false, vec3<i32>(global0.x, 591i, 0i), vec2<bool>(true, true)), ~vec4<u32>(u_input.b, 0u, 0u, var_0)), true));
    global0 = vec3<i32>(u_input.a.x, 1i, max(13043i, var_2.b.x)) ^ vec3<i32>(firstTrailingBit(0i), func_5(firstLeadingBit(44209i), select(var_2.c, vec2<bool>(true, var_2.a), var_2.c)).b.x & u_input.a.x, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(global0.zx, vec2<i32>(-1i, -3374i)), global0.zy));
    global1 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, countOneBits(54801i)), func_5(u_input.a.x, func_5(global0.x, var_2.c).c).b.x, var_2.b.x, 1i << (~4294967295u % 32u)), -vec4<i32>(global0.x << (76080u % 32u), 21264i, 14773i, global0.x)), _wgslsmith_add_u32(var_0, 81301u), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-22277i, u_input.a.x, var_2.b.x, u_input.a.x) << (vec4<u32>(23418u, 4294967295u, 1u, 0u) % vec4<u32>(32u)), ~vec4<i32>(14385i, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<i32>(select(u_input.a.x, 1i, all(vec3<bool>(true, false, var_2.c.x))), global0.x, select(_wgslsmith_clamp_i32(global0.x, u_input.a.x, 26283i), 1i, var_2.c.x), -2147483647i)), -vec4<i32>(max(firstLeadingBit(var_2.b.x), global0.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.b.x, u_input.a.x), global0.x), global0.x, firstLeadingBit(func_1(Struct_1(true, vec3<i32>(0i, u_input.a.x, global0.x), var_2.c), vec4<i32>(-7488i, 6861i, global0.x, global0.x)).b.x)));
}

