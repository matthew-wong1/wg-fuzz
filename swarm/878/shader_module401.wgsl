struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-6761i, 1u, i32(-2147483648), vec3<u32>(4294967295u, 40830u, 26672u)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(3398i, 4294967295u, -39678i, vec3<u32>(4294967295u, 4294967295u, 48573u)), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 47054i, 0i)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_add_i32(abs(arg_0.c), 2147483647i), 3258u, 1i, abs(vec3<u32>(1u, countOneBits(~u_input.a.x), 9381u)));
    let var_1 = Struct_3(Struct_1(arg_0.a, reverseBits(19103u), 2147483647i, var_0.d), Struct_2(!vec4<bool>(2147483647i != arg_2.b.c, true, all(vec2<bool>(arg_2.c.x, arg_2.c.x)), arg_2.a.x), Struct_1(-39997i, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.d.x, arg_2.b.b), vec2<u32>(7092u, 28573u))), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c, global0.b.b.a), select(global0.b.d.x, arg_0.c, global0.b.c.x)), _wgslsmith_mod_vec3_u32(~arg_0.d, min(vec3<u32>(58064u, arg_2.b.b, 1323u), var_0.d))), !(!vec2<bool>(arg_2.c.x, true)), global0.b.d));
    var var_2 = _wgslsmith_div_vec4_i32(~min(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_1.b.b.a, 13232i, var_1.b.b.a), u_input.b, u_input.b), u_input.b), _wgslsmith_div_vec4_i32(u_input.b, -u_input.b));
    var var_3 = 1615f;
    return countOneBits(vec3<u32>(_wgslsmith_add_u32(arg_2.b.d.x, max(59386u, u_input.a.x) | ~3152u), u_input.a.x, _wgslsmith_mult_u32(countOneBits(0u), ~(var_1.a.b ^ 4294967295u))));
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    global0 = Struct_3(Struct_1(1i, 43628u, _wgslsmith_div_i32(global0.b.d.x, select(-2147483647i, reverseBits(global0.b.d.x), select(true, true, true))), func_3(Struct_1(firstLeadingBit(global0.b.d.x), 0u << (1u % 32u), -20873i, vec3<u32>(0u, global0.a.d.x, 24278u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-433f, -1120f, arg_1) - vec3<f32>(arg_1, 1000f, -680f))), Struct_2(vec4<bool>(global0.b.c.x, global0.b.c.x, global0.b.a.x, global0.b.a.x), global0.b.b, vec2<bool>(false, global0.b.a.x), -vec3<i32>(u_input.b.x, u_input.b.x, global0.a.c)), u_input.d)), global0.b);
    global0 = Struct_3(Struct_1(-1i, (u_input.a.x >> ((13989u >> (global0.a.d.x % 32u)) % 32u)) ^ ~1u, min(global0.b.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(global0.a.c, -1i)), u_input.b.x)), select(global0.a.d, u_input.a, select(select(vec3<bool>(false, global0.b.a.x, true), global0.b.a.wyw, false), !vec3<bool>(global0.b.c.x, false, false), all(vec2<bool>(global0.b.a.x, global0.b.c.x))))), global0.b);
    let var_0 = vec2<bool>(!global0.b.c.x, false);
    var var_1 = global0.b;
    global0 = Struct_3(var_1.b, global0.b);
    return _wgslsmith_f_op_f32(abs(1321f));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = firstLeadingBit(~_wgslsmith_sub_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(37333i, -1i, u_input.d, global0.a.c), u_input.b), 1235i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(-2147483647i, u_input.b.x))));
    global0 = Struct_3(global0.b.b, global0.b);
    var var_1 = select(vec3<i32>(-23126i, firstLeadingBit(~u_input.d), -2147483647i), select(vec3<i32>(abs(-33636i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, 39777i, -2147483647i), u_input.b), ~vec4<i32>(23483i, var_0, global0.b.d.x, u_input.c.x)), 1i), reverseBits(-u_input.b.yxx) | vec3<i32>(_wgslsmith_sub_i32(-56082i, global0.b.b.c), -511i, var_0), !global0.b.a.wxw), vec3<bool>(!global0.b.a.x, arg_2.x, all(!(!vec2<bool>(true, global0.b.c.x)))));
    var var_2 = vec3<bool>(false, !(_wgslsmith_f_op_f32(step(-1594f, arg_1.x)) <= _wgslsmith_f_op_f32(round(1386f))), !(!select(true, all(global0.b.a.zzx), true)));
    var_2 = !global0.b.a.zzz;
    return arg_1.x;
}

fn func_5(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_div_i32(1i ^ u_input.d, -16530i), global0.b.b.b, _wgslsmith_sub_i32(firstTrailingBit(1i), global0.b.b.a), abs(u_input.a));
    let var_1 = abs(u_input.b.zw);
    var var_2 = Struct_4(select(!(!select(vec4<bool>(global0.b.c.x, global0.b.c.x, global0.b.c.x, false), global0.b.a, false)), global0.b.a, any(!vec3<bool>(false, global0.b.a.x, false))), -11509i <= _wgslsmith_dot_vec2_i32(var_1, select(-vec2<i32>(var_0.c, 21647i), vec2<i32>(var_1.x, 1i), !global0.b.c)));
    var var_3 = Struct_2(!select(select(select(vec4<bool>(var_2.a.x, var_2.b, false, var_2.b), vec4<bool>(true, var_2.a.x, false, true), false), global0.b.a, !global0.b.a), !vec4<bool>(false, false, global0.b.c.x, true), vec4<bool>(any(var_2.a.ywx), !global0.b.c.x, !global0.b.a.x, var_2.b)), Struct_1(global0.a.a, _wgslsmith_add_u32(~(var_0.b & var_0.d.x), ~_wgslsmith_sub_u32(35992u, u_input.a.x)), max(-_wgslsmith_add_i32(-46499i, var_0.a), reverseBits(u_input.d)), var_0.d), !select(global0.b.c, select(var_2.a.zx, var_2.a.ww, select(var_2.a.wz, var_2.a.wz, false)), select(!var_2.a.wz, var_2.a.yx, all(vec4<bool>(true, var_2.b, var_2.b, false)))), ~select(u_input.b.wzw, vec3<i32>(abs(1i), ~26732i, ~var_1.x), var_2.a.x));
    var var_4 = Struct_3(Struct_1(~(~8264i), select(1u, ~_wgslsmith_clamp_u32(global0.b.b.d.x, 5966u, 1u), true), _wgslsmith_mod_i32(var_3.d.x, var_3.d.x), var_0.d), global0.b);
    return Struct_4(vec4<bool>(global0.b.c.x, !var_3.c.x, false, true == (~var_4.b.b.d.x < 13711u)), var_4.b.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(vec2<u32>(0u, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(340f, 559f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(603f, -1143f)), _wgslsmith_f_op_f32(147f * 311f)))), select(global0.b.c, vec2<bool>(true, !arg_1.c.x), global0.b.c.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = arg_1.b;
    var var_3 = var_1.x;
    let var_4 = vec4<i32>(i32(-1i) * -10453i, countOneBits(min(2147483647i, _wgslsmith_div_i32(3767i, arg_0.c | -60544i))), arg_1.b.c, 1i);
    return Struct_4(var_0.a, true || arg_1.c.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = global0.b;
    let var_1 = var_0.b;
    global0 = Struct_3(Struct_1(u_input.c.x, 35460u, _wgslsmith_sub_i32(arg_0.a, global0.b.d.x >> (0u % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(66754u, _wgslsmith_sub_u32(global0.b.b.d.x, 43462u), select(var_1.d.x, 46376u, false)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), global0.b.b.d), firstTrailingBit(vec3<u32>(var_0.b.b, 19381u, global0.a.d.x))))), Struct_2(func_1(Struct_1(-17297i, abs(0u), min(arg_0.a, -434i), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(1u, u_input.a.x, 28721u))), Struct_2(!global0.b.a, global0.a, select(global0.b.c, vec2<bool>(true, false), global0.b.c), vec3<i32>(var_1.c, 1i, 19965i) & var_0.d), 53482i).a, Struct_1(max(arg_0.a, global0.b.b.a) | _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d.x, var_1.c, -55315i), vec3<i32>(var_1.a, u_input.b.x, -41745i)), max(46205u, 111469u) & firstTrailingBit(global0.a.d.x), -u_input.d, vec3<u32>(arg_0.d.x, 0u, 0u) ^ vec3<u32>(var_0.b.d.x, 15818u, var_0.b.b)), vec2<bool>(arg_1.a.x, arg_1.b), -(u_input.b.yww | vec3<i32>(arg_0.c, u_input.b.x, var_0.b.c))));
    var var_2 = Struct_3(Struct_1(23018i, _wgslsmith_dot_vec2_u32(arg_0.d.yx, _wgslsmith_div_vec2_u32(countOneBits(arg_0.d.xy), global0.b.b.d.zy << (global0.a.d.zz % vec2<u32>(32u)))), _wgslsmith_add_i32(-46749i, var_0.b.c), arg_0.d), Struct_2(func_1(var_0.b, global0.b, abs(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(42455i, 0i, arg_0.a, arg_0.a)))).a, Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.d.zx, u_input.c), _wgslsmith_sub_i32(arg_0.a, 0i), 20597i), var_0.b.d.x, 1i, (arg_0.d << (global0.b.b.d % vec3<u32>(32u))) >> (select(global0.a.d, vec3<u32>(arg_0.b, 36193u, 76593u), true) % vec3<u32>(32u))), !vec2<bool>(func_1(arg_0, global0.b, var_1.a).a.x, false || var_0.c.x), ~(vec3<i32>(var_1.a, var_1.a, var_1.a) >> (u_input.a % vec3<u32>(32u)))));
    var var_3 = firstTrailingBit(var_1.a << (0u % 32u));
    return !(!(!func_5(-292f).a.yxy));
}

fn func_7(arg_0: vec3<bool>) -> vec3<bool> {
    global0 = Struct_3(Struct_1(~(i32(-1i) * -12839i), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_mult_u32(1u, 28890u)), vec3<u32>(1u, u_input.a.x, 29564u) >> ((vec3<u32>(global0.a.d.x, 109u, u_input.a.x) | vec3<u32>(0u, 64552u, u_input.a.x)) % vec3<u32>(32u))), ~_wgslsmith_mult_i32(global0.b.d.x, ~global0.a.c), abs(~(global0.b.b.d << (u_input.a % vec3<u32>(32u))))), global0.b);
    global0 = Struct_3(Struct_1(global0.b.b.c, u_input.a.x, 0i, global0.a.d >> ((max(u_input.a, global0.b.b.d) ^ (vec3<u32>(u_input.a.x, 0u, 556u) >> (global0.a.d % vec3<u32>(32u)))) % vec3<u32>(32u))), Struct_2(global0.b.a, global0.b.b, arg_0.zx, min(vec3<i32>(2147483647i, 1i, 27210i), countOneBits(max(u_input.b.xww, global0.b.d)))));
    var var_0 = global0.b.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2267f, 1386f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(923f, 543f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, -145f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(118f, -1167f))))))));
    global0 = Struct_3(Struct_1(-global0.b.d.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 25567u, global0.b.b.b, global0.a.d.x), select(vec4<u32>(82907u, 4294967295u, global0.b.b.b, 17504u), vec4<u32>(var_0.d.x, 32137u, 16146u, 442u), true)), u_input.a.x, 1u), -371i, vec3<u32>(42272u, u_input.a.x, global0.a.d.x)), global0.b);
    return vec3<bool>(true, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(func_7(func_6(Struct_1(10257i, 4294967295u, u_input.d, global0.b.b.d), func_1(global0.a, global0.b, global0.b.b.c))), vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(1392f)) != _wgslsmith_f_op_f32(f32(-1f) * -133f), -684f >= _wgslsmith_f_op_f32(ceil(-941f))), !(true && func_7(global0.b.a.zzy).x)));
    var_0 = global0.b.c.x || global0.b.c.x;
    let var_1 = min(~abs(~global0.a.b) ^ 1u, countOneBits(_wgslsmith_mult_u32(abs(0u), u_input.a.x)));
    let var_2 = countOneBits(_wgslsmith_div_u32(~(~(~u_input.a.x)), select(global0.a.b, ~global0.b.b.b, (global0.b.c.x & global0.b.c.x) == all(global0.b.a))));
    var var_3 = select(global0.b.c, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-893f, -306f)))).a.yy, all(vec4<bool>(true, global0.b.c.x | func_6(Struct_1(u_input.c.x, var_1, u_input.d, vec3<u32>(u_input.a.x, 9798u, var_1)), Struct_4(vec4<bool>(true, false, false, global0.b.c.x), true)).x, true, global0.b.d.x >= -2147483647i)));
    var var_4 = select(select(u_input.b.yxz >> ((firstTrailingBit(vec3<u32>(u_input.a.x, 0u, var_2)) >> (global0.a.d % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(global0.b.d, global0.b.d, _wgslsmith_div_vec3_i32(global0.b.d, vec3<i32>(global0.a.c, -35179i, 31670i) | vec3<i32>(19100i, u_input.d, 1i))), vec3<bool>(!any(vec4<bool>(false, var_3.x, global0.b.a.x, false)), func_5(_wgslsmith_f_op_f32(-1000f + -349f)).b, true)), u_input.b.zzw, global0.b.c.x);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f * 1f), _wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(min(var_1, _wgslsmith_dot_vec3_u32(global0.b.b.d, vec3<u32>(37561u, 39770u, var_1))), _wgslsmith_mult_u32(~global0.b.b.b, abs(u_input.a.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(805f, 1442f))), -1264f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-335f, 616f) * vec2<f32>(690f, -104f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1287f, 538f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(935f, -1403f), vec2<f32>(2237f, -201f), var_3.x)))), func_7(vec3<bool>(global0.b.a.x, true & var_3.x, var_3.x)).zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(660f, -1252f), vec2<f32>(-592f, 1621f)) * vec2<f32>(-1366f, -982f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 382f), vec2<f32>(875f, -609f), vec2<bool>(global0.b.c.x, true))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(558f, -327f), vec2<f32>(853f, 721f)))))));
}

