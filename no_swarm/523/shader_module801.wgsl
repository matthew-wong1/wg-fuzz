struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(true, Struct_1(vec4<u32>(1u, 90532u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 3413u, 0u)), vec2<u32>(1u, 4294967295u)), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 33679u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 8790u, 41233u, 7676u)), vec2<u32>(50373u, 20183u)), Struct_2(true, Struct_1(vec4<u32>(46959u, 1u, 49375u, 33489u)), Struct_1(vec4<u32>(33064u, 4294967295u, 4294967295u, 0u)), vec2<u32>(0u, 57960u)), Struct_2(false, Struct_1(vec4<u32>(0u, 58261u, 10107u, 4294967295u)), Struct_1(vec4<u32>(1u, 27756u, 51311u, 4294967295u)), vec2<u32>(14051u, 1u)), Struct_2(true, Struct_1(vec4<u32>(77416u, 43027u, 1u, 19026u)), Struct_1(vec4<u32>(4294967295u, 0u, 29329u, 81757u)), vec2<u32>(103489u, 0u)), Struct_2(false, Struct_1(vec4<u32>(1u, 31672u, 0u, 15391u)), Struct_1(vec4<u32>(30251u, 0u, 19478u, 4294967295u)), vec2<u32>(1364u, 25275u)), Struct_2(true, Struct_1(vec4<u32>(43054u, 0u, 4294967295u, 57924u)), Struct_1(vec4<u32>(48264u, 4294967295u, 4294967295u, 491u)), vec2<u32>(66993u, 19973u)), Struct_2(true, Struct_1(vec4<u32>(41082u, 4294967295u, 4294967295u, 46768u)), Struct_1(vec4<u32>(4294967295u, 134967u, 1u, 6529u)), vec2<u32>(4294967295u, 46955u)), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u)), Struct_1(vec4<u32>(59442u, 1u, 1u, 12558u)), vec2<u32>(1u, 4294967295u)), Struct_2(false, Struct_1(vec4<u32>(16036u, 1u, 19539u, 4294967295u)), Struct_1(vec4<u32>(8258u, 72119u, 1u, 29162u)), vec2<u32>(4294967295u, 69265u)));

var<private> global1: array<vec3<bool>, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 10>();
    global1 = array<vec3<bool>, 28>();
    global0 = array<Struct_2, 10>();
    var var_0 = select(select(vec2<bool>(!any(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(~0u > ~arg_1, true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), true), false);
    let var_1 = Struct_1(countOneBits(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, arg_1, 0u) & vec4<u32>(u_input.c, 22765u, u_input.a.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(76189u, u_input.c, 1u, u_input.a.x), vec4<u32>(0u, 1298u, 51495u, u_input.b)))));
    return abs(~1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    let var_0 = vec4<bool>(any(vec2<bool>(true, true)) && (~(-36177i) > select(0i, min(1i, u_input.d.x), 40806u > arg_0.d.x)), all(!(!vec2<bool>(arg_1.a, arg_0.a))) & arg_0.a, false != !(!(arg_0.a & false)), all(vec3<bool>(true, any(!global1[_wgslsmith_index_u32(arg_0.d.x, 28u)]), true)));
    global0 = array<Struct_2, 10>();
    var var_1 = ~_wgslsmith_mult_vec3_u32(~min(~vec3<u32>(4294967295u, arg_0.b.a.x, 77809u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.c), u_input.a, vec3<u32>(4294967295u, 4294967295u, arg_2.x))), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 42283u, arg_1.b.a.x) >> (arg_0.c.a.xzx % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(arg_0.b.a.zxy, vec3<u32>(arg_2.x, 25396u, u_input.a.x)))));
    var_1 = vec3<u32>(arg_0.d.x, arg_2.x, 0u);
    let var_2 = Struct_2(any(var_0), Struct_1(vec4<u32>(~(~arg_1.b.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(36640u, u_input.c), ~vec2<u32>(arg_1.c.a.x, u_input.b)), arg_2.x << (var_1.x % 32u), ~abs(var_1.x))), arg_1.b, vec2<u32>(1u, 15137u));
    return ~(-(i32(-1i) * -_wgslsmith_clamp_i32(-1i, 1i, 2147483647i)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), reverseBits(~_wgslsmith_sub_i32(-2147483647i, u_input.d.x)), u_input.e, 11610i);
    global0 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(u_input.b, 5083u, 38286u, 1734u), vec4<u32>(1u, u_input.b, u_input.c, u_input.b)), ~vec4<u32>(27647u, u_input.a.x, u_input.b, 64864u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a.x, 45849u, u_input.c, u_input.b) & vec4<u32>(62369u, 3103u, 55675u, u_input.a.x)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x), vec4<u32>(20507u, 4294967295u, 1u, u_input.a.x))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(52144u, 44110u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.b, u_input.a.x, 7595u, 40963u), ~vec4<u32>(98651u, 48376u, u_input.b, u_input.a.x)) & vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.a.x)), u_input.a), ~3550u, 1u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 73559u), vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1599f, 406f) * vec2<f32>(-307f, arg_1.x))))))));
    global1 = array<vec3<bool>, 28>();
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.e, u_input.e), max(1i, -49022i) << (0u % 32u), u_input.e & -2147483647i), var_0.x, var_0.x), -vec3<i32>(_wgslsmith_mult_i32(var_0.x, max(1i, var_0.x)), ~(u_input.d.x | -1i), func_4(global0[_wgslsmith_index_u32(func_3(u_input.d.x, u_input.b), 10u)], global0[_wgslsmith_index_u32(0u, 10u)], ~var_1.zzz)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.c.a.x;
    var var_1 = ~(~min(-u_input.e, min(arg_2, -19637i))) >= abs(_wgslsmith_add_i32(countOneBits(u_input.e), max(_wgslsmith_add_i32(arg_2, -2147483647i), u_input.d.x)));
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(select(arg_3.c.a, vec4<u32>(4294967295u, 1u, u_input.c, arg_1), vec4<bool>(arg_0, true, arg_0, arg_3.a)) >> (~vec4<u32>(0u, 16810u, arg_1, arg_3.d.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 0u, u_input.a.x, 0u), vec4<u32>(u_input.b, 0u, arg_3.d.x, arg_1))) << (vec4<u32>(_wgslsmith_sub_u32(countOneBits(u_input.b), ~arg_1), 1u, ~countOneBits(arg_1), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(4294967295u, 54230u))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(73329u, 45944u, 1u, ~49964u), firstTrailingBit(~(~(~var_2.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2322f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1178f * _wgslsmith_div_f32(-1801f, 532f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c, u_input.a.x, ~13470u, u_input.c), vec4<u32>(u_input.c, u_input.c, 17399u, 0u) >> (vec4<u32>(10016u, u_input.a.x, u_input.b, u_input.c) % vec4<u32>(32u)))));
    global0 = array<Struct_2, 10>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1187f, 305f)))))), _wgslsmith_f_op_f32(func_5(true, _wgslsmith_add_u32(_wgslsmith_div_u32(0u, var_0.a.x), firstTrailingBit(u_input.a.x)) & var_0.a.x, _wgslsmith_add_i32(firstLeadingBit(func_2(true, vec2<f32>(-812f, -1299f))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, u_input.d.x, u_input.e, u_input.e), u_input.d), vec4<i32>(-34057i, u_input.e, 2645i, u_input.d.x) & vec4<i32>(4301i, 6244i, u_input.e, u_input.e))), Struct_2(true, var_0, Struct_1(max(var_0.a, vec4<u32>(18849u, u_input.c, 0u, u_input.c))), select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, 42736u), var_0.a.xx), vec2<u32>(70054u, 4294967295u), all(vec2<bool>(false, true)))))));
    global0 = array<Struct_2, 10>();
    var var_2 = true;
    return Struct_1(vec4<u32>(_wgslsmith_sub_u32(41954u << (u_input.a.x % 32u), select(var_0.a.x, 1u, true)) ^ 1u, countOneBits(1u), ~var_0.a.x, 2893u));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    global1 = array<vec3<bool>, 28>();
    global0 = array<Struct_2, 10>();
    global1 = array<vec3<bool>, 28>();
    global1 = array<vec3<bool>, 28>();
    global0 = array<Struct_2, 10>();
    return func_1();
}

fn func_7(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = ~arg_2.a.x;
    let var_1 = !(!any(vec4<bool>(true, true, arg_3.a || true, arg_0)));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1)), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1)), !select(vec2<bool>(false, arg_3.a), vec2<bool>(false, var_1), arg_3.a)))))));
    let var_3 = 628f;
    var var_4 = ~_wgslsmith_sub_vec4_u32(arg_2.a, ~arg_3.b.a);
    return StorageBuffer(vec2<i32>(-min(countOneBits(u_input.d.x), -2147483647i), ~30117i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-987f, arg_1, -759f, arg_1))))))), ~vec2<u32>(arg_3.d.x, 71291u), abs(u_input.d.xw));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 28>();
    var var_0 = vec2<f32>(-1373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(480f, 168f))) + _wgslsmith_f_op_f32(f32(-1f) * -2001f)));
    global0 = array<Struct_2, 10>();
    var var_1 = _wgslsmith_sub_vec2_i32(u_input.d.yw, vec2<i32>(-1i, u_input.d.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -151f, 729f, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-442f, var_0.x, -148f, 1818f))))))));
    let x = u_input.a;
    s_output = func_7(all(vec4<bool>(false, -855f != var_2.x, true, any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1000f)), func_6(_wgslsmith_div_i32(_wgslsmith_sub_i32(~var_1.x, _wgslsmith_sub_i32(u_input.e, -44263i)), var_1.x), func_1(), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(43825u, 0u), 10u)], ~(~(u_input.a.xx >> (u_input.a.zx % vec2<u32>(32u))))), Struct_2((_wgslsmith_dot_vec4_u32(vec4<u32>(40639u, 1u, u_input.a.x, 4294967295u), vec4<u32>(1u, 0u, 1u, 3344u)) | 49358u) == 0u, func_1(), func_6(0i, func_6(-u_input.d.x, func_1(), global0[_wgslsmith_index_u32(u_input.c, 10u)], _wgslsmith_sub_vec2_u32(u_input.a.zz, u_input.a.xx)), Struct_2(true, Struct_1(vec4<u32>(0u, 42954u, u_input.b, u_input.a.x)), Struct_1(vec4<u32>(29964u, 0u, u_input.b, 1u)), u_input.a.yz), _wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.zz) << (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))), select(firstLeadingBit(~vec2<u32>(u_input.c, u_input.b)), ~(~u_input.a.zx), vec2<bool>(false, true))));
}

