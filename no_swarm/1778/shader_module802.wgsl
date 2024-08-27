struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: array<i32, 10>;

var<private> global2: bool = true;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 18>();
    global2 = false;
    let var_0 = -1i;
    let var_1 = arg_0.x;
    var var_2 = ~(~abs(0u));
    return abs(arg_1 | u_input.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~abs(func_3(vec3<bool>(true, false, arg_0.x), u_input.d.x, Struct_1(47228i, true, arg_1.c, arg_1.c))), ~_wgslsmith_mult_u32(abs(u_input.a), u_input.d.x >> (u_input.a % 32u))), u_input.d.x);
    global0 = array<vec4<i32>, 18>();
    var var_2 = Struct_2(~1i, Struct_1(var_0.a, var_0.b, arg_1.d, -230f), ~u_input.a ^ u_input.d.x, arg_0.zz);
    return Struct_2(~(i32(-1i) * -1898i), arg_2, 20275u, vec2<bool>(!any(vec2<bool>(var_0.b, true)), all(arg_0.zzy)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> bool {
    global2 = any(select(vec4<bool>(arg_2, all(vec3<bool>(arg_3.d.x, arg_2, arg_2)), arg_3.d.x, true), select(!vec4<bool>(arg_3.d.x, false, arg_2, arg_2), vec4<bool>(false, false, arg_1.b.b, false), arg_3.b.b), arg_3.b.c != 753f)) && arg_2;
    let var_0 = Struct_2(~2147483647i, Struct_1(-_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_3.a, -1i), -16824i), arg_3.b.b, 577f, -620f), ~(~4294967295u), vec2<bool>(select(arg_2, ~u_input.c.x != ~arg_3.c, arg_1.b.b && true), select(select(any(arg_1.d), arg_1.b.a <= global1[_wgslsmith_index_u32(28944u, 10u)], any(vec4<bool>(arg_2, false, arg_1.d.x, arg_2))), true, true)));
    global0 = array<vec4<i32>, 18>();
    global1 = array<i32, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.d, -823f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(317f, arg_1.b.d) + vec2<f32>(-1195f, arg_3.b.d)))), vec2<f32>(_wgslsmith_div_f32(1335f, 1260f), _wgslsmith_f_op_f32(-var_0.b.d))));
    return !(~(332u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), vec2<u32>(0u, 85655u))) > var_0.c);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = ~0u;
    global0 = array<vec4<i32>, 18>();
    let var_1 = !vec4<bool>(false, true, true, !(!arg_1.b & !arg_1.b));
    var var_2 = func_2(select(var_1, var_1, arg_3.b), Struct_1(9170i, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-499f, 782f) + func_2(var_1, Struct_1(-2147483647i, false, arg_3.c, 107f), arg_1).b.c), -330f), arg_1);
    var var_3 = select(abs(_wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(110785u, 10u)], var_2.b.a, arg_1.a), vec3<i32>(var_2.a, global1[_wgslsmith_index_u32(1u, 10u)], -28483i), vec3<i32>(var_2.b.a, 2147483647i, -12719i))), _wgslsmith_div_vec3_i32(min(vec3<i32>(2147483647i, arg_1.a, -5990i), vec3<i32>(arg_3.a, -1i, arg_3.a)), reverseBits(vec3<i32>(21221i, -20558i, 0i))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -4677i, abs(2147483647i), ~2147483647i), vec3<i32>(var_2.b.a, abs(-14446i), -2147483647i)), firstLeadingBit(vec3<i32>(u_input.b.x, -17487i, arg_1.a) >> (u_input.d % vec3<u32>(32u))) | vec3<i32>(~arg_1.a, _wgslsmith_sub_i32(var_2.b.a, 59722i), arg_3.a), abs(~(vec3<i32>(0i, 0i, -41124i) ^ vec3<i32>(0i, arg_3.a, 2147483647i)))), !(!(!(!vec3<bool>(false, var_1.x, true)))));
    return func_2(vec4<bool>(arg_3.b, select(false, func_4(max(var_3.x, 44338i), Struct_2(-2147483647i, Struct_1(-67322i, false, 1000f, var_2.b.c), var_0, var_2.d), true, Struct_2(arg_1.a, var_2.b, arg_0.x, var_1.wz)), !(!var_1.x)), !(!(4294967295u != arg_0.x)), var_1.x), arg_1, var_2.b);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = -_wgslsmith_mult_i32(1i, 2147483647i);
    let var_2 = func_2(!(!vec4<bool>(true, all(vec3<bool>(false, true, var_0)), u_input.c.x > arg_1.c, false)), Struct_1(-arg_2, arg_1.b.a <= arg_2, _wgslsmith_f_op_f32(-arg_3.x), -1447f), Struct_1(func_5(u_input.d, func_2(!vec4<bool>(true, arg_0, false, true), func_5(u_input.c.yww, arg_1.b, vec4<u32>(1u, u_input.d.x, arg_1.c, 65699u), arg_1.b).b, arg_1.b).b, vec4<u32>(1u, func_3(vec3<bool>(arg_0, true, arg_1.b.b), 1u, arg_1.b), u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, 11180u), u_input.d.zy)), arg_1.b).a, any(!select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, arg_1.b.b, false), vec3<bool>(arg_0, arg_1.d.x, arg_0))), _wgslsmith_f_op_f32(func_5(select(u_input.d, vec3<u32>(4294967295u, u_input.d.x, 73582u), vec3<bool>(arg_1.b.b, arg_1.b.b, arg_1.d.x)), arg_1.b, ~u_input.c, func_5(vec3<u32>(arg_1.c, arg_1.c, u_input.c.x), Struct_1(-2147483647i, false, arg_1.b.c, arg_1.b.d), u_input.c, Struct_1(34481i, false, -343f, 1218f)).b).b.d * arg_3.x), _wgslsmith_f_op_f32(-func_5(~u_input.c.yzw, Struct_1(arg_1.a, true, arg_3.x, arg_1.b.c), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.c, 70914u, 104978u), vec4<u32>(u_input.c.x, 40526u, arg_1.c, 0u)), arg_1.b).b.c)));
    let var_3 = vec2<u32>(0u, 1u);
    global2 = 0i <= ((countOneBits(-arg_2) ^ arg_1.b.a) ^ global1[_wgslsmith_index_u32(func_3(select(vec3<bool>(true, var_2.d.x, true), !vec3<bool>(arg_0, var_2.b.b, true), !vec3<bool>(false, arg_1.d.x, true)), func_2(vec4<bool>(var_2.b.b, var_2.b.b, true, false), var_2.b, arg_1.b).c << (17662u % 32u), Struct_1(-24257i, arg_1.b.b, _wgslsmith_div_f32(arg_1.b.c, var_2.b.d), _wgslsmith_f_op_f32(select(var_2.b.c, -1119f, arg_0)))), 10u)]);
    return func_2(select(vec4<bool>(false, arg_1.b.b, true, !(arg_1.d.x || arg_1.b.b)), vec4<bool>(false, true, !arg_0 & true, false), func_5(abs(u_input.d) ^ vec3<u32>(1u, 0u, 0u), Struct_1(abs(-1i), !var_0, func_2(vec4<bool>(arg_0, false, true, arg_0), Struct_1(2147483647i, var_2.d.x, arg_1.b.d, arg_3.x), var_2.b).b.d, _wgslsmith_f_op_f32(-var_2.b.c)), ~vec4<u32>(arg_1.c, 1u, 4294967295u, var_2.c), arg_1.b).d.x), Struct_1(1i | firstTrailingBit(arg_2), all(!(!vec4<bool>(var_0, true, var_0, var_2.b.b))), _wgslsmith_f_op_f32(-func_2(vec4<bool>(var_0, arg_1.d.x, false, false), arg_1.b, func_2(vec4<bool>(arg_0, false, var_0, arg_0), Struct_1(-5782i, false, 395f, arg_1.b.c), arg_1.b).b).b.c), var_2.b.c), Struct_1(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-48383i, global1[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_mult_i32(arg_2, var_2.a), -2147483647i), all(!vec4<bool>(arg_0, false, arg_1.b.b, true)) && func_5(u_input.c.xxw, func_5(vec3<u32>(u_input.a, 1u, var_3.x), Struct_1(-53468i, arg_0, 841f, arg_1.b.d), vec4<u32>(var_3.x, 31369u, 21133u, 6358u), Struct_1(2429i, true, var_2.b.d, arg_3.x)).b, u_input.c, func_2(vec4<bool>(arg_0, arg_0, false, var_0), Struct_1(var_2.b.a, true, var_2.b.d, 367f), Struct_1(arg_1.a, arg_0, arg_3.x, arg_1.b.d)).b).b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(exp2(arg_1.b.d))) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.c, 375f), 647f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1812f))))).b;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = arg_0.b.b;
    var var_0 = arg_0;
    var var_1 = abs(_wgslsmith_add_u32(~(select(1u, 1u, false) << (arg_0.c % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(11654u, var_0.c, var_0.c, var_0.c), select(vec4<u32>(19235u, var_0.c, 97868u, arg_0.c), vec4<u32>(u_input.d.x, 65669u, 0u, u_input.a), vec4<bool>(arg_0.b.b, true, true, false)))));
    var var_2 = ~countOneBits(~u_input.d.x);
    let var_3 = func_6(arg_0.b.b, func_5(vec3<u32>(~u_input.c.x, ~(~50800u), ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(8254u, var_0.c, 30293u, 1u))), Struct_1(arg_0.b.a, func_4(1i, arg_0, true, func_2(vec4<bool>(arg_0.d.x, var_0.b.b, false, true), var_0.b, arg_0.b)), _wgslsmith_f_op_f32(-var_0.b.d), func_2(!vec4<bool>(false, false, arg_0.b.b, arg_0.b.b), Struct_1(-46725i, var_0.d.x, 1000f, 497f), func_2(vec4<bool>(arg_0.b.b, arg_0.b.b, var_0.b.b, true), var_0.b, Struct_1(-2147483647i, false, 270f, arg_0.b.d)).b).b.d), select(vec4<u32>(79058u & u_input.a, u_input.c.x, abs(arg_0.c), arg_0.c & 26526u), vec4<u32>(arg_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 53507u, arg_0.c, var_0.c), u_input.c), 4294967295u, u_input.a), func_3(vec3<bool>(var_0.d.x, var_0.b.b, false), arg_0.c, arg_0.b) > 41437u), func_2(select(vec4<bool>(var_0.b.b, false, var_0.b.b, false), select(vec4<bool>(true, true, true, var_0.d.x), vec4<bool>(arg_0.d.x, arg_0.b.b, var_0.b.b, arg_0.d.x), true), select(vec4<bool>(false, arg_0.b.b, false, var_0.d.x), vec4<bool>(arg_0.d.x, var_0.b.b, arg_0.d.x, arg_0.d.x), true)), Struct_1(~u_input.b.x, false, var_0.b.d, _wgslsmith_f_op_f32(f32(-1f) * -1511f)), Struct_1(max(var_0.a, -2147483647i), any(vec2<bool>(var_0.b.b, var_0.b.b)), _wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-arg_0.b.c))).b), arg_0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, var_0.b.d))))));
    return Struct_1(-var_0.b.a, (_wgslsmith_sub_i32(u_input.b.x, 1i) <= -(~u_input.b.x)) != var_0.d.x, -314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1042f))));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> i32 {
    let var_0 = min(u_input.b, vec2<i32>(2147483647i, -2147483647i));
    let var_1 = func_5(select(vec3<u32>(~u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.c.x), u_input.d), u_input.a), u_input.d, vec3<bool>(false, all(select(vec4<bool>(false, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(false, true, false, arg_0.b))), ~u_input.d.x <= 1u)), arg_0, select(countOneBits(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), func_2(vec4<bool>(arg_0.b, true, true, false), arg_0, arg_0).c, 1u, _wgslsmith_sub_u32(u_input.c.x, u_input.d.x))), reverseBits(select(abs(vec4<u32>(u_input.d.x, 1u, 4294967295u, 1u)), u_input.c ^ vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.c.x), select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, true, true), arg_0.b))), select(vec4<bool>(all(vec4<bool>(false, false, arg_0.b, false)), true, false, !arg_0.b), !(!vec4<bool>(arg_0.b, false, true, arg_0.b)), vec4<bool>(any(vec4<bool>(false, true, arg_0.b, false)), func_5(u_input.d, Struct_1(u_input.b.x, arg_0.b, -1531f, arg_0.c), u_input.c, arg_0).b.b, true, all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))))), func_5(vec3<u32>(func_3(!vec3<bool>(true, false, arg_0.b), ~13851u, func_2(vec4<bool>(arg_0.b, arg_0.b, false, true), arg_0, Struct_1(3394i, arg_0.b, 724f, arg_0.c)).b), u_input.d.x, ~6723u), arg_0, vec4<u32>(1u, 53816u, u_input.a, 19153u) >> (u_input.c % vec4<u32>(32u)), Struct_1(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.a) >> (~u_input.c.x % 32u), any(vec3<bool>(arg_0.b, false, arg_0.b)) || false, arg_1, func_6(false | arg_0.b, func_2(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), arg_0, Struct_1(var_0.x, true, arg_0.c, 632f)), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.d, 1000f), vec2<f32>(352f, -374f)))).d)).b);
    global1 = array<i32, 10>();
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(18343i, global1[_wgslsmith_index_u32(abs(19470u), 10u)] << (firstTrailingBit(~32678u) % 32u), (1i & _wgslsmith_sub_i32(2147483647i, u_input.b.x)) & u_input.b.x), min(-reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.a, -39916i, 0i), vec3<i32>(22401i, u_input.b.x, arg_2))), vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 18u)] ^ global0[_wgslsmith_index_u32(4294967295u, 18u)], -global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), ~(-54359i), -13911i)));
    var var_3 = var_0;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(min(-(~vec2<i32>(-46522i, global1[_wgslsmith_index_u32(u_input.a, 10u)])), countOneBits(-vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(9727u, 10u)]))), vec2<i32>(-23166i, func_7(func_1(Struct_2(2147483647i, Struct_1(4906i, false, 1111f, 615f), u_input.a, vec2<bool>(false, true))), _wgslsmith_f_op_f32(select(-1252f, -1204f, true)), ~49641i))), Struct_1(0i, func_1(func_2(vec4<bool>(false, true, false, false), Struct_1(u_input.b.x, false, -1000f, -1066f), Struct_1(1i, true, 941f, -1640f))).b && !all(vec3<bool>(true, true, false)), 1286f, _wgslsmith_f_op_f32(-296f + -407f)), u_input.d.x, vec2<bool>(!any(func_5(vec3<u32>(u_input.a, 1u, u_input.c.x), Struct_1(-6266i, true, -1000f, 1154f), vec4<u32>(16562u, u_input.d.x, u_input.d.x, u_input.c.x), Struct_1(u_input.b.x, true, -670f, -156f)).d), _wgslsmith_mult_i32(~u_input.b.x, ~global1[_wgslsmith_index_u32(u_input.d.x, 10u)]) == func_6(true, Struct_2(455i, Struct_1(u_input.b.x, false, -626f, 1000f), u_input.d.x, vec2<bool>(true, true)), u_input.b.x | global1[_wgslsmith_index_u32(u_input.a, 10u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1840f, 989f))).a));
    let var_1 = var_0.b.d;
    global2 = true;
    global2 = true;
    let var_2 = var_0.b;
    var var_3 = vec4<bool>(var_0.d.x, !var_0.d.x, -2147483647i == _wgslsmith_mod_i32(var_2.a, -28328i), var_0.b.b);
    let var_4 = vec3<i32>(-u_input.b.x, func_5(~_wgslsmith_sub_vec3_u32(u_input.d, ~vec3<u32>(u_input.a, var_0.c, var_0.c)), func_6(any(vec3<bool>(false, var_3.x, true)), func_2(select(vec4<bool>(var_3.x, var_0.d.x, var_0.d.x, false), vec4<bool>(true, var_3.x, false, false), vec4<bool>(false, true, false, var_2.b)), var_0.b, var_0.b), u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, var_0.b.d)), vec2<f32>(-399f, var_2.c), !var_3.wx))), vec4<u32>(u_input.a, var_0.c, ~var_0.c, 0u), Struct_1(1i, _wgslsmith_f_op_f32(-var_1) <= _wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(step(var_0.b.c, _wgslsmith_f_op_f32(1000f - -1471f))), _wgslsmith_f_op_f32(f32(-1f) * -1693f))).b.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(-global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), 1000f, 312f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_0.b.c, var_2.d), vec3<f32>(var_1, -358f, -1776f))))))));
}

