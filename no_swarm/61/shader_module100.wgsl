struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 44004u, 37803u, 13220u), vec4<u32>(0u, 115831u, 36981u, 69565u), vec4<u32>(7142u, 38387u, 12299u, 34983u), vec4<u32>(1982u, 86003u, 118735u, 4294967295u), vec4<u32>(4294967295u, 54703u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 74027u, 5096u), vec4<u32>(26117u, 4294967295u, 71668u, 83455u), vec4<u32>(11642u, 103006u, 5922u, 1u), vec4<u32>(1u, 129127u, 0u, 20172u), vec4<u32>(1u, 4294967295u, 13164u, 0u), vec4<u32>(395u, 35296u, 17976u, 1u), vec4<u32>(21092u, 0u, 874u, 18571u));

var<private> global1: array<Struct_5, 29>;

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 43583u), 29u)];
    var var_1 = var_0.a.a.x;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, select(vec2<u32>(_wgslsmith_clamp_u32(24071u, 59641u, 21625u), _wgslsmith_mod_u32(4294967295u, 4294967295u)), ~(~u_input.b.yz), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)))), 0u, 1u, ~u_input.b.x << (4294967295u % 32u));
    global1 = array<Struct_5, 29>();
    let var_3 = !(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), true));
    return _wgslsmith_mult_u32(1u, ~(~(5200u ^ (u_input.b.x >> (15261u % 32u)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(11960u, 13u)]);
    var_0 = vec4<u32>(_wgslsmith_mult_u32(20754u, u_input.a) >> (reverseBits(4294967295u) % 32u), 1759u, _wgslsmith_sub_u32((1u ^ abs(u_input.a)) ^ countOneBits(func_3(59306u, u_input.b.x)), ~reverseBits(~31005u)), 46076u);
    let var_1 = global1[_wgslsmith_index_u32(1u, 29u)];
    let var_2 = Struct_4(min(38990u, ~u_input.a << (_wgslsmith_mult_u32(96370u, _wgslsmith_add_u32(u_input.b.x, var_0.x)) % 32u)), Struct_3(~var_1.a.a, Struct_1(vec3<i32>(firstLeadingBit(19226i), var_1.a.a.x, _wgslsmith_mod_i32(var_1.a.a.x, 56836i))), any(vec3<bool>(true, true, true))), Struct_1(firstTrailingBit(abs(reverseBits(var_1.a.a)))), vec4<bool>(!(!(2147483647i > var_1.a.a.x)), false, true, false));
    var var_3 = vec3<u32>(66493u, u_input.b.x, var_0.x);
    return ~firstLeadingBit(4294967295u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_5(Struct_1(~(~(~arg_2.d.wyy))), -1504f);
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-18572i >> (arg_0 % 32u), min(20296i, var_0.a.a.x)), var_0.a.a.x) << (u_input.b.zz % vec2<u32>(32u)), firstLeadingBit(arg_2.d.xz));
    var var_2 = min(_wgslsmith_div_i32(46578i, ~_wgslsmith_div_i32(0i, var_0.a.a.x)), var_1.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b, -334f, true)), -798f)))));
    var_0 = Struct_5(var_0.a, var_0.b);
    return arg_2.c;
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    global1 = array<Struct_5, 29>();
    return func_4(firstLeadingBit(func_2()), Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~(~vec3<i32>(-2147483647i, -2147483647i, 1i))), Struct_1(vec3<i32>(1i, 0i, 16415i << (u_input.b.x % 32u))), true), Struct_2(0i, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(24785i, -2147483647i, -11342i) << (arg_0 % vec3<u32>(32u)), select(vec3<i32>(-36810i, -7006i, -1i), vec3<i32>(6417i, 2147483647i, -2147483647i), false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), true), reverseBits(vec4<i32>(-10696i, 38069i, -2466i, 2147483647i)) & (countOneBits(vec4<i32>(1i, 2147483647i, 0i, -25220i)) << (~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.b.x) % vec4<u32>(32u))), Struct_1(firstTrailingBit(~vec3<i32>(-7176i, -5535i, 20684i)))));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    let var_0 = select(vec4<bool>(all(arg_3), all(!vec4<bool>(arg_0, true, arg_0, true)), func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 17963u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(79727u, arg_2, 1u), vec3<u32>(14416u, 10515u, u_input.a))), Struct_3(min(vec3<i32>(2147483647i, 23742i, -2147483647i), vec3<i32>(-2147483647i, 0i, 4342i)), Struct_1(vec3<i32>(-64493i, 0i, 1i)), true), Struct_2(1i, Struct_1(vec3<i32>(-2147483647i, 16877i, 0i)), vec3<bool>(arg_3.x, arg_3.x, arg_0), max(vec4<i32>(0i, 5378i, -27877i, -27984i), vec4<i32>(-16399i, 1i, -26512i, -28438i)), Struct_1(vec3<i32>(29729i, 36018i, -1i)))).x, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, arg_0), select(vec4<bool>(arg_3.x, true, false, arg_0), vec4<bool>(false, arg_0, arg_0, true), true)))), !vec4<bool>(true != any(vec3<bool>(false, true, arg_0)), !(!arg_3.x), arg_3.x, arg_0), !select(vec4<bool>(false, true, 0u < arg_1.x, true), vec4<bool>(true, arg_0, func_4(arg_2, Struct_3(vec3<i32>(-20070i, 2147483647i, -13991i), Struct_1(vec3<i32>(18811i, -1i, 0i)), true), Struct_2(-90948i, Struct_1(vec3<i32>(2892i, 5235i, -55561i)), vec3<bool>(arg_0, arg_3.x, arg_0), vec4<i32>(51861i, -34935i, 145i, 19450i), Struct_1(vec3<i32>(44049i, 22818i, -24899i)))).x, true), select(!vec4<bool>(false, true, false, arg_3.x), vec4<bool>(false, arg_3.x, false, true), vec4<bool>(arg_0, false, true, arg_3.x))));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(countOneBits(min(~vec2<i32>(2147483647i, 1i), ~vec2<i32>(73795i, -1i))), max(vec2<i32>(1i, 1i), vec2<i32>(select(19516i, 2147483647i, arg_0), 1i))), Struct_1(reverseBits(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), firstLeadingBit(0i), 15755i))), select(vec3<bool>(true, false, !arg_0), vec3<bool>(true != var_0.x, var_0.x, _wgslsmith_add_u32(34394u, 29774u) > u_input.a), var_0.yzw), ~((vec4<i32>(2147483647i, -1449i, 61440i, 1i) ^ firstTrailingBit(vec4<i32>(-9561i, -1i, 1i, -1i))) | select(vec4<i32>(32513i, -4401i, 1149i, 58667i) >> (global0[_wgslsmith_index_u32(4294967295u, 13u)] % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(0i, 2103i, 1i, -2147483647i)), any(vec2<bool>(arg_3.x, false)))), Struct_1(~_wgslsmith_mult_vec3_i32(-vec3<i32>(-14867i, -27063i, 5441i), firstTrailingBit(vec3<i32>(-23871i, 29593i, 2147483647i)))));
    let var_2 = Struct_1(select(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.e.a.x, 11228i, 72707i), vec3<i32>(var_1.e.a.x, 8352i, -2147483647i)), max(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d.x, 1i, var_1.b.a.x), vec3<i32>(2147483647i, var_1.a, var_1.a))), var_1.b.a), ~arg_2 <= arg_2));
    global2 = ~_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(37266u, 13u)], global0[_wgslsmith_index_u32(8521u, 13u)])), _wgslsmith_mult_u32(~0u, u_input.a >> (30284u % 32u))) << (~u_input.a % 32u);
    global2 = arg_1.x;
    return countOneBits(_wgslsmith_mult_i32(2147483647i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_i32(func_5(true, ~u_input.b << (~vec3<u32>(0u, 48178u, 1u) % vec3<u32>(32u)), firstLeadingBit(u_input.b.x), func_1(u_input.b)), firstLeadingBit(-2147483647i)));
    let var_1 = Struct_2(-53226i, Struct_1(abs(vec3<i32>(1i, 1i, 1i))), func_1(select(u_input.b, countOneBits(u_input.b) << (~u_input.b % vec3<u32>(32u)), vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))))), ~(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-7089i, 8246i, -2147483647i, -1i), vec4<i32>(-2147483647i, 0i, -2147483647i, 60138i))) ^ ~vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(abs(select(select(vec3<i32>(-1i, 13691i, 2147483647i), vec3<i32>(-1i, 2147483647i, 0i), vec3<bool>(true, false, true)), vec3<i32>(2147483647i, 2147483647i, 19124i), all(vec3<bool>(true, false, true))))));
    global1 = array<Struct_5, 29>();
    var var_2 = 1000f;
    var var_3 = ~(~countOneBits(var_1.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(55856u, 80546u), 13u)], reverseBits(global0[_wgslsmith_index_u32(4294967295u, 13u)]))), abs(select(select(var_1.d, var_1.d, var_1.c.x) ^ var_1.d, _wgslsmith_div_vec4_i32(vec4<i32>(26811i, var_1.a, -1i, -1i), -var_1.d), !select(vec4<bool>(false, false, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), var_1.c.x))), u_input.b.x, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.a.x, var_1.e.a.x, -1i), var_1.e.a)));
}

