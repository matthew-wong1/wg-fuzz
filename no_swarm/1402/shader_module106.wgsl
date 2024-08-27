struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_mod_i32(~(-u_input.c ^ (min(0i, 1i) & _wgslsmith_mod_i32(10202i, u_input.d.x))), abs(u_input.d.x));
    var_0 = _wgslsmith_sub_i32(-u_input.d.x >> (63951u % 32u), 75275i);
    var_0 = -1i;
    let var_1 = !(!(!select(select(vec4<bool>(arg_1.b.b, arg_0.b.b, arg_1.b.b, true), vec4<bool>(arg_0.b.b, false, arg_1.b.b, arg_1.b.b), arg_1.b.b), select(vec4<bool>(arg_1.b.b, arg_1.b.b, false, arg_0.b.b), vec4<bool>(true, arg_0.b.b, false, arg_1.b.b), true), vec4<bool>(true, arg_0.b.b, false, arg_1.b.b))));
    var var_2 = Struct_1(vec2<u32>(~abs(arg_1.b.c) & 37084u, arg_1.b.a.x), true, _wgslsmith_sub_u32(58240u, _wgslsmith_mult_u32(~min(u_input.b, 4294967295u), 12055u)), abs(vec3<u32>(0u, 1u, _wgslsmith_div_u32(arg_0.b.d.x, arg_1.b.c)) | ~(arg_1.b.d ^ vec3<u32>(20389u, 1u, arg_1.b.a.x))));
    return !(!arg_0.b.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: i32, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-447f, _wgslsmith_f_op_f32(floor(-913f)))), _wgslsmith_f_op_f32(f32(-1f) * -833f)) - -551f));
    let var_1 = u_input.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)))), Struct_1(firstTrailingBit(u_input.e.yz), true, u_input.e.x, vec3<u32>(~31078u, ~38425u, 0u)));
    let var_3 = countOneBits(-var_1.x);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-var_2.a));
    return _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, var_1.x), ~u_input.a.wx), firstLeadingBit(u_input.a.yx));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = func_4(select(vec2<bool>(-12587i <= u_input.a.x, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_2(1031f, Struct_1(u_input.e.xy, false, u_input.b, vec3<u32>(u_input.b, u_input.e.x, u_input.e.x))), Struct_2(411f, Struct_1(vec2<u32>(u_input.e.x, 4294967295u), true, u_input.e.x, vec3<u32>(40722u, 0u, u_input.e.x))))), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, any(vec3<bool>(true, false, true)))), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, !all(vec2<bool>(true, false)), true, firstTrailingBit(u_input.e.x) != abs(21634u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)))), u_input.d.x, u_input.e.x);
    var_0 = vec2<i32>(u_input.a.x, (u_input.a.x & 1i) ^ (var_0.x >> (21857u % 32u)));
    var_0 = vec2<i32>(u_input.c, -3136i);
    var var_1 = ~var_0.x;
    var_1 = abs(u_input.a.x);
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(191f + arg_0) + 877f))), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -5970i, 1i) ^ max(u_input.a.zzy, vec3<i32>(u_input.a.x, var_0.x, u_input.c)), select(countOneBits(u_input.a.zyy), vec3<i32>(0i, var_0.x, -16464i), true)), 44040u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    var_0 = Struct_4(var_0.a, 2147483647i | var_0.b, _wgslsmith_dot_vec4_u32(max(firstLeadingBit(vec4<u32>(0u, u_input.b, 1u, var_0.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.a.x, u_input.e.x, 0u, 472u), _wgslsmith_add_vec4_u32(vec4<u32>(63475u, 1u, arg_2.c, u_input.e.x), vec4<u32>(var_0.c, 43271u, 20105u, arg_2.c)))), vec4<u32>(~_wgslsmith_add_u32(arg_2.c, arg_2.a.x), reverseBits(_wgslsmith_mod_u32(var_0.c, u_input.b)), arg_2.a.x, ~_wgslsmith_mult_u32(61556u, 14862u))));
    var var_1 = ~(~vec4<u32>(min(abs(arg_2.d.x), var_0.c), _wgslsmith_mult_u32(arg_2.c, 0u), firstTrailingBit(0u), 83510u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(exp2(var_0.a.a)), _wgslsmith_f_op_f32(1247f + var_0.a.a));
    let var_3 = -(select(max(vec4<i32>(-2147483647i, u_input.a.x, -1i, -55404i), firstLeadingBit(vec4<i32>(24933i, 18086i, 2147483647i, 34337i))), vec4<i32>(i32(-1i) * -2147483647i, max(-1i, 35369i), ~u_input.c, _wgslsmith_clamp_i32(u_input.a.x, 35378i, 1i)), arg_2.b & (arg_2.c <= 50172u)) >> ((~vec4<u32>(var_0.c, 71607u, 40506u, 6410u) >> (abs(vec4<u32>(15267u, 4294967295u, u_input.b, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_1(vec2<u32>(~firstLeadingBit(4294967295u), arg_2.a.x), func_3(Struct_2(393f, arg_2), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), Struct_1(vec2<u32>(u_input.e.x, arg_2.a.x) >> (vec2<u32>(36367u, 26578u) % vec2<u32>(32u)), arg_1, arg_2.a.x & var_0.c, ~vec3<u32>(u_input.b, 43269u, 0u)))), 1u, vec3<u32>(599u, min(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_1.x), 9982u) & countOneBits(max(arg_2.a.x, var_0.c)), 39623u));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(806f, -175f));
    var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(368f * arg_0))))), -1949f)).a.a;
    var var_1 = !(!(!(true | arg_2.b)) || select(any(!vec4<bool>(false, true, arg_1, true)), _wgslsmith_add_i32(-9132i, u_input.c) >= ~u_input.d.x, !any(vec2<bool>(arg_1, true))));
    var var_2 = func_2(_wgslsmith_f_op_f32(arg_0 + arg_0));
    let var_3 = ~u_input.b;
    return !select(vec4<bool>(arg_2.b, arg_1, false, !(8940i != var_2.b)), vec4<bool>(!arg_2.b, arg_2.b, abs(var_2.b) < (var_2.b >> (arg_2.d.x % 32u)), func_3(Struct_2(874f, Struct_1(vec2<u32>(u_input.b, var_3), arg_1, arg_2.a.x, vec3<u32>(arg_2.d.x, u_input.e.x, u_input.b))), Struct_2(1000f, Struct_1(u_input.e.xx, false, 0u, arg_2.d)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-806f, 302f))))), Struct_1(~vec2<u32>(9823u, ~u_input.b), any(func_5(_wgslsmith_f_op_f32(f32(-1f) * -2189f), true, func_1(u_input.c, false, Struct_1(vec2<u32>(u_input.e.x, 0u), false, 1u, u_input.e)))), u_input.e.x, select(u_input.e, min(vec3<u32>(10708u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 1u)) ^ vec3<u32>(u_input.b, 1u, u_input.b), !func_5(159f, false, Struct_1(vec2<u32>(u_input.e.x, 10461u), true, 25059u, u_input.e)).xxz)));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1347f, _wgslsmith_f_op_f32(f32(-1f) * -1909f))) + _wgslsmith_f_op_f32(-585f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, 2059f)))))), var_0.b);
    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.a), var_1.a.a))));
    let var_3 = -vec3<i32>(~select(var_1.b, -2147483647i, var_0.b.b) & firstLeadingBit(var_1.b), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.a)), 1000f)).b, -(max(var_1.b, var_1.b) ^ countOneBits(var_1.b)));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-824f, 366f, _wgslsmith_f_op_f32(-1000f * var_0.a)) + vec3<f32>(_wgslsmith_f_op_f32(var_2.a - 1075f), _wgslsmith_f_op_f32(-var_2.a), 892f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(995f, 842f, -1242f) + vec3<f32>(var_2.a, 402f, 1430f))))))), vec3<f32>(358f, _wgslsmith_f_op_f32(1701f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(848f, -547f)), var_0.a)), 469f)));
    var_1 = Struct_4(var_1.a, _wgslsmith_div_i32(~(_wgslsmith_sub_i32(1i, 422i) << (_wgslsmith_sub_u32(1u, var_1.c) % 32u)), u_input.c), 55601u);
    let var_5 = select(!vec4<bool>(var_0.b.b, var_1.c != ~u_input.b, true, true), !(!vec4<bool>(u_input.c > 2147483647i, var_2.b.d.x == 1u, var_2.b.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(805f, var_1.a.a)) + _wgslsmith_f_op_f32(1274f * 729f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(var_2.a * -645f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.e.x >> (var_2.b.c % 32u), var_2.b.a.x, _wgslsmith_div_u32(~reverseBits(var_1.c), ~var_0.b.a.x), _wgslsmith_add_u32(var_2.b.a.x, func_1(49637i, any(vec3<bool>(var_5.x, true, var_2.b.b)), Struct_1(var_2.b.d.yx, true, 10574u, u_input.e)).c)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -9654i, 2147483647i), -vec3<i32>(u_input.d.x, u_input.d.x, var_1.b)), reverseBits(u_input.a.yxw)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.x, 55427i, var_3.x, 38261i) ^ vec4<i32>(2147483647i, u_input.c, var_3.x, -23320i), u_input.a), max(countOneBits(abs(u_input.d.x)), min(u_input.a.x & -1i, i32(-1i) * -2147483647i))), var_0.b.c, ~(~(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.c, var_0.b.d.x, var_2.b.c), u_input.e) ^ u_input.e)), u_input.a);
}

