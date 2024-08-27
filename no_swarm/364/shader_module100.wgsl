struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(0u, vec4<f32>(469f, 908f, -1261f, -114f), vec2<i32>(7402i, 1i), Struct_2(Struct_1(61925u, 44045i, vec4<f32>(-1597f, 821f, -648f, 975f), vec3<bool>(false, false, false)), Struct_1(1u, 29838i, vec4<f32>(-1294f, -2049f, -912f, -1414f), vec3<bool>(true, true, true)), vec2<f32>(425f, -100f), Struct_1(1u, 2147483647i, vec4<f32>(1537f, -840f, 111f, -998f), vec3<bool>(true, true, false))), vec4<i32>(40290i, -7725i, 2147483647i, 58359i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = global2.d.d.c;
    global1 = global2.c.x;
    let var_1 = Struct_4(Struct_3(arg_0, global2.d.d.c, global2.c, global2.d, global2.e));
    var var_2 = Struct_4(var_1.a);
    var var_3 = Struct_1(reverseBits(arg_0), _wgslsmith_sub_i32(18491i, countOneBits(1i)), global2.d.a.c, select(select(global0.ywy, select(var_1.a.d.b.d, vec3<bool>(false, var_2.a.d.b.d.x, false), var_1.a.d.b.d), select(select(vec3<bool>(false, true, var_2.a.d.d.d.x), global2.d.b.d, true), global2.d.b.d, vec3<bool>(false, var_2.a.d.b.d.x, global2.d.b.d.x))), select(select(!global0.xwz, vec3<bool>(false, arg_1, false), vec3<bool>(true, arg_1, global2.d.b.d.x)), select(!global2.d.a.d, global0.xzz, vec3<bool>(true, arg_1, var_2.a.d.b.d.x)), global0.xzy), firstTrailingBit(-48591i) < _wgslsmith_clamp_i32(-2147483647i, ~0i, _wgslsmith_dot_vec3_i32(global2.e.wyz, global2.e.xzz))));
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global2.d.a, Struct_1(~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a.yz)), global2.d.d.b, _wgslsmith_f_op_vec4_f32(select(global2.b, global2.d.d.c, true)), vec3<bool>(true, !(!global0.x), !global2.d.d.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global2.b.yy))), Struct_1(~(~u_input.a.x), func_3(_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(100433u, global2.d.a.a)), !(true == global2.d.d.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b.x, global2.d.b.c.x, global2.d.d.c.x, global2.d.c.x), global2.d.d.c)) + _wgslsmith_f_op_vec4_f32(ceil(global2.d.a.c))), _wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-498f, global2.d.c.x, global2.b.x, global2.b.x), global2.d.d.c))), -435f < _wgslsmith_f_op_f32(global2.b.x - 1449f))), vec3<bool>(true, true, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1u, 54809u, 1u)) < reverseBits(4294967295u))));
    let var_1 = global2.d.c;
    let var_2 = any(var_0.a.d);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.x))))))) - _wgslsmith_f_op_f32(trunc(117f)));
    return global2.d;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = select(20012i > arg_0.a.c.x, true, false | !global2.d.d.d.x);
    let var_1 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(select(global2.e.x, arg_0.a.c.x, false), -global2.c.x) >> ((vec2<u32>(u_input.a.x, arg_0.a.d.d.a) | (u_input.a.zw | vec2<u32>(4294967295u, 103248u))) % vec2<u32>(32u)), abs(arg_0.a.e.wx), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, global2.d.b.b ^ 39684i), abs(arg_0.a.c) ^ vec2<i32>(1i, arg_0.a.c.x))), select(select(vec2<i32>(-1i, -global2.e.x), arg_0.a.c, !var_0), vec2<i32>(arg_0.a.d.d.b, -(~arg_0.a.c.x)), _wgslsmith_add_i32(~50379i, arg_0.a.c.x | global2.d.a.b) < (abs(global2.c.x) >> (global2.d.b.a % 32u))));
    var var_2 = -2147483647i | (_wgslsmith_sub_i32(global2.d.a.b, arg_0.a.d.b.b) >> (_wgslsmith_dot_vec3_u32(u_input.a.xyw, u_input.a.wyy) % 32u));
    global1 = ~arg_0.a.c.x;
    global2 = Struct_3(global2.a, vec4<f32>(global2.d.a.c.x, _wgslsmith_f_op_f32(abs(254f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.b.x, -645f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f - 816f)))), abs(-min(vec2<i32>(2147483647i, arg_0.a.d.d.b), reverseBits(vec2<i32>(global2.d.b.b, 2147483647i)))), arg_0.a.d, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(global2.e, vec4<i32>(arg_0.a.c.x, arg_0.a.c.x, var_1.x, 1i)), -_wgslsmith_sub_vec4_i32(arg_0.a.e, vec4<i32>(var_1.x, arg_0.a.e.x, -23553i, 41213i))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(17100i, 35287i, global2.e.x, 50641i), vec4<i32>(-13551i, 9760i, arg_0.a.e.x, 9539i), arg_0.a.e)) << (~firstTrailingBit(u_input.a) % vec4<u32>(32u))));
    return global2.e.xx;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(func_2().d, Struct_1(_wgslsmith_mod_u32(0u, ~1u), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1488f, global2.b.x, global2.d.b.c.x))), vec3<bool>(false, _wgslsmith_f_op_f32(sign(global2.b.x)) == global2.b.x, select(any(global2.d.a.d), !global2.d.a.d.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1266f, 123f)))))), func_2().d);
    global0 = select(!vec4<bool>(!(u_input.a.x < 43480u), true, true, global2.d.b.d.x), vec4<bool>(func_2().a.b > _wgslsmith_div_i32(-1i, firstLeadingBit(2147483647i)), any(vec3<bool>(true, true, true)), !var_0.d.d.x && (!global0.x | var_0.a.d.x), all(global0.yy)), vec4<bool>(global2.d.a.d.x | false, var_0.a.c.x == -298f, (any(vec3<bool>(global2.d.b.d.x, true, true)) & !global2.d.a.d.x) || func_2().d.d.x, global2.d.d.d.x));
    global0 = select(select(vec4<bool>(global2.d.d.d.x, global2.d.b.d.x, var_0.d.d.x, var_0.d.d.x), !(!select(vec4<bool>(false, var_0.d.d.x, false, global2.d.a.d.x), vec4<bool>(true, var_0.b.d.x, false, global2.d.b.d.x), true)), false), select(!vec4<bool>(false && global0.x, true, true, false | global2.d.b.d.x), select(select(vec4<bool>(true, true, true, global0.x), vec4<bool>(false, global2.d.a.d.x, true, var_0.a.d.x), select(vec4<bool>(true, var_0.d.d.x, global0.x, false), vec4<bool>(global2.d.b.d.x, var_0.b.d.x, global2.d.d.d.x, var_0.d.d.x), vec4<bool>(true, var_0.d.d.x, true, var_0.d.d.x))), select(select(vec4<bool>(global0.x, true, var_0.b.d.x, false), vec4<bool>(true, var_0.a.d.x, true, var_0.d.d.x), global0.x), select(vec4<bool>(true, false, false, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(var_0.d.d.x, true, true, false)), global2.d.d.d.x), global2.d.d.d.x), vec4<bool>(func_2().d.d.x, global0.x, (1i ^ global2.d.a.b) == var_0.d.b, ~var_0.a.b >= func_4(Struct_4(Struct_3(arg_0.x, vec4<f32>(342f, 1561f, var_0.d.c.x, -586f), vec2<i32>(var_0.d.b, 1i), Struct_2(Struct_1(var_0.a.a, -1i, global2.d.b.c, vec3<bool>(global2.d.a.d.x, true, true)), Struct_1(u_input.a.x, arg_1.x, global2.d.b.c, var_0.a.d), global2.d.b.c.zy, var_0.a), global2.e)), global0.x, 328f, vec3<f32>(global2.d.c.x, global2.b.x, 918f)).x)), select(!(!select(vec4<bool>(false, false, global2.d.d.d.x, true), vec4<bool>(global0.x, true, global0.x, global2.d.a.d.x), false)), vec4<bool>(var_0.a.d.x && global0.x, -1230f < var_0.d.c.x, all(var_0.d.d.zx), true), !vec4<bool>(false, !var_0.a.d.x, !global2.d.a.d.x, var_0.d.d.x)));
    let var_1 = 59239u;
    var var_2 = 1u;
    return Struct_2(Struct_1(abs(~(~u_input.a.x)), global2.e.x, vec4<f32>(_wgslsmith_f_op_f32(select(267f, _wgslsmith_f_op_f32(trunc(global2.b.x)), any(vec4<bool>(global0.x, false, true, false)))), global2.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-859f, var_0.c.x, true)) + -1372f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b.x)))), var_0.b.d), func_2().b, global2.d.c, func_2().a);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_5(select(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(75883u, 36260u, global2.d.d.a, 18838u), u_input.a), u_input.a ^ u_input.a), u_input.a, all(vec2<bool>(true, true)) || all(global2.d.b.d.xx)), func_4(Struct_4(Struct_3(arg_0.a, vec4<f32>(-639f, 912f, arg_0.c.x, arg_0.c.x), _wgslsmith_add_vec2_i32(global2.c, vec2<i32>(global2.d.b.b, -2147483647i)), func_2(), vec4<i32>(arg_0.b, 13399i, 1i, arg_0.b))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c.x * -506f), arg_0.c.x)) - arg_0.c.x), global2.b.xyw));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f));
    var var_2 = var_0;
    var var_3 = !vec2<bool>(arg_0.d.x, any(vec2<bool>(true, all(vec4<bool>(global2.d.d.d.x, var_2.b.d.x, var_0.a.d.x, global2.d.d.d.x)))));
    var_2 = func_5(abs(~(~vec4<u32>(var_2.a.a, 4294967295u, 29886u, 0u) << (firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, global2.d.b.a, u_input.a.x)) % vec4<u32>(32u)))), func_4(Struct_4(Struct_3(_wgslsmith_clamp_u32(arg_0.a, 0u, 65700u), vec4<f32>(-515f, -574f, global2.d.c.x, -339f), _wgslsmith_div_vec2_i32(global2.c, global2.c), Struct_2(var_2.a, Struct_1(17752u, -2147483647i, global2.d.b.c, vec3<bool>(true, true, global0.x)), vec2<f32>(-184f, var_1), Struct_1(arg_0.a, arg_0.b, arg_0.c, var_2.a.d)), _wgslsmith_div_vec4_i32(vec4<i32>(global2.d.d.b, global2.e.x, -17428i, arg_0.b), global2.e))), false, var_0.c.x, _wgslsmith_div_vec3_f32(func_5(vec4<u32>(global2.d.b.a, arg_0.a, 83318u, var_2.b.a), firstLeadingBit(global2.c)).d.c.wxw, _wgslsmith_f_op_vec3_f32(-var_0.a.c.xyx))));
    return Struct_3(u_input.a.x, var_2.a.c, -vec2<i32>(~(-13343i), -(~1i)), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(6882u, arg_0.a, 1u, 1u), u_input.a) | 32020u, firstLeadingBit(global2.d.a.b), var_2.a.c, !func_5(u_input.a, vec2<i32>(0i, var_2.a.b)).d.d), global2.d.b, vec2<f32>(_wgslsmith_f_op_f32(round(365f)), _wgslsmith_f_op_f32(f32(-1f) * -411f)), func_2().d), _wgslsmith_div_vec4_i32(-(vec4<i32>(-1i) * -global2.e), global2.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global2 = func_1(Struct_1(_wgslsmith_clamp_u32(max(~1u, ~63707u), var_0, u_input.a.x), _wgslsmith_sub_i32(2147483647i, global2.e.x), global2.d.d.c, !(!global2.d.d.d)));
    let var_1 = all(global2.d.a.d.xz);
    global2 = Struct_3(77456u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(1283f, global2.d.d.c.x, -499f, 266f), vec4<f32>(2377f, global2.b.x, -630f, global2.d.d.c.x))))), _wgslsmith_mult_vec2_i32(global2.c, global2.c), global2.d, func_1(global2.d.d).e ^ vec4<i32>(global2.c.x, ~func_4(Struct_4(Struct_3(1u, vec4<f32>(1114f, global2.b.x, global2.b.x, -724f), vec2<i32>(16726i, 15633i), Struct_2(Struct_1(u_input.a.x, global2.c.x, vec4<f32>(global2.d.d.c.x, global2.d.b.c.x, global2.b.x, -171f), vec3<bool>(global0.x, false, false)), global2.d.a, global2.b.wx, global2.d.b), vec4<i32>(-2147483647i, 0i, global2.d.b.b, global2.c.x))), global0.x, global2.d.a.c.x, global2.b.xzy).x, -_wgslsmith_dot_vec2_i32(global2.e.xz, vec2<i32>(global2.e.x, -40933i)), 2147483647i));
    global0 = !vec4<bool>(true, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, global2.a))) > max(var_0 & 8275u, u_input.a.x | 1u), !global0.x, false);
    var var_2 = global2.e.x;
    var var_3 = Struct_1(1u, global2.c.x ^ countOneBits(func_1(global2.d.b).e.x << (52732u % 32u)), _wgslsmith_f_op_vec4_f32(-global2.d.a.c), !(!(!global2.d.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_1(global2.d.d).e.zwy), 4294967295u, -1045f, min(select(vec2<i32>(_wgslsmith_clamp_i32(23855i, global2.e.x, global2.d.d.b), global2.c.x), ~(-global2.e.xx), _wgslsmith_f_op_f32(-global2.b.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.e.zy << (u_input.a.xz % vec2<u32>(32u))));
}

