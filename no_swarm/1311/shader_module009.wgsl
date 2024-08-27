struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 7>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(83191u, 7u)], ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(24665u, 1u), 7u)], global2[_wgslsmith_index_u32(~u_input.c, 7u)]);
    var var_0 = 18106u >> (select(u_input.c, u_input.c, false) % 32u);
    var var_1 = Struct_1(true, vec3<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-432f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -616f)))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global0.wzx, select(global0.ywy, global0.yyz, vec3<bool>(true, true, true))), firstLeadingBit(vec3<i32>(firstTrailingBit(3449i), _wgslsmith_div_i32(global0.x, 2334i), max(u_input.a, 2147483647i)))));
    var_1 = Struct_1(true | !all(select(vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, var_1.a))), ~(var_1.b << (~(~var_1.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d)) - _wgslsmith_f_op_f32(floor(-235f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), -183f))))), ~min(-select(global0.zyx, var_1.e, var_1.a), vec3<i32>(_wgslsmith_add_i32(var_1.e.x, 0i), u_input.b, var_1.e.x ^ var_1.e.x)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1315f + var_1.d))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f + -507f) - _wgslsmith_f_op_f32(-var_1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), !(true == !select(var_1.a, false, var_1.a))));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_2(true, Struct_1(true, ~vec3<u32>(u_input.c, ~u_input.c, 16384u), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(540f)) + _wgslsmith_f_op_f32(func_3()))), ~global0.xzz));
    var var_1 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.b.e.x, var_0.b.e.x), -_wgslsmith_mod_i32(countOneBits(global0.x), ~50100i)), var_0, var_0.b.b);
    let var_2 = max(_wgslsmith_div_u32(12563u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.c, var_0.b.b.x, var_1.c.x, 32469u)), vec4<u32>(71303u, var_1.c.x, u_input.c, 4294967295u & var_1.b.b.b.x)), ~firstTrailingBit(u_input.c)));
    global1 = !var_1.b.b.a;
    return var_0.b.b | var_1.b.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_3(u_input.b >> (~firstTrailingBit(~0u) % 32u), Struct_2((_wgslsmith_f_op_f32(1000f * -353f) == arg_0.b.d) && true, arg_0.b), vec3<u32>(~(~arg_0.b.b.x), 0u, ~(~arg_1) ^ ~arg_2.x));
    var var_1 = (vec2<i32>(-45178i, countOneBits(-var_0.a)) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(arg_0.b.e.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-15518i, 1i), vec2<i32>(1i, var_0.a), ~vec2<i32>(arg_0.b.e.x, -30412i) >> (_wgslsmith_div_vec2_u32(arg_0.b.b.yy, arg_2.yx) % vec2<u32>(32u))));
    global1 = _wgslsmith_f_op_f32(-var_0.b.b.d) <= func_4(func_4(Struct_1(true, arg_2, -926f, _wgslsmith_f_op_f32(f32(-1f) * -1989f), vec3<i32>(0i, 19901i, 2147483647i)), Struct_3(-u_input.b, var_0.b, ~var_0.c), arg_0, func_4(func_4(arg_0.b, Struct_3(-2147483647i, Struct_2(true, Struct_1(false, arg_0.b.b, 1000f, var_0.b.b.d, global0.xyx)), vec3<u32>(24305u, var_0.c.x, 1u)), Struct_2(true, var_0.b.b), var_0.b.b).b, Struct_3(var_0.a, var_0.b, var_0.b.b.b), func_4(Struct_1(arg_0.b.a, var_0.c, var_0.b.b.c, var_0.b.b.d, vec3<i32>(global0.x, -1i, arg_0.b.e.x)), Struct_3(var_1.x, arg_0, vec3<u32>(arg_1, arg_1, u_input.c)), var_0.b, arg_0.b), func_4(Struct_1(false, vec3<u32>(1u, arg_1, 1u), var_0.b.b.d, 1267f, global0.wwz), Struct_3(var_0.b.b.e.x, arg_0, arg_0.b.b), Struct_2(var_0.b.b.a, Struct_1(var_0.b.b.a, arg_2, var_0.b.b.d, -1066f, vec3<i32>(var_0.a, -1i, u_input.b))), var_0.b.b).b).b).b, Struct_3(firstTrailingBit(0i), Struct_2(arg_0.a, func_4(Struct_1(var_0.b.a, arg_2, arg_0.b.d, 367f, vec3<i32>(var_0.a, -23034i, 1i)), Struct_3(-13038i, Struct_2(var_0.b.a, Struct_1(arg_0.b.a, vec3<u32>(var_0.c.x, var_0.b.b.b.x, u_input.c), var_0.b.b.c, -2727f, vec3<i32>(global0.x, u_input.a, -5866i))), vec3<u32>(0u, arg_1, arg_1)), Struct_2(var_0.b.a, Struct_1(false, arg_2, -170f, -1468f, vec3<i32>(51825i, var_0.a, var_1.x))), var_0.b.b).b), arg_2), Struct_2(any(vec2<bool>(arg_0.b.a, var_0.b.b.a)) && arg_0.a, arg_0.b), func_4(Struct_1(arg_1 == 0u, vec3<u32>(arg_1, arg_2.x, var_0.c.x), func_4(Struct_1(false, var_0.b.b.b, 1196f, arg_0.b.d, var_0.b.b.e), Struct_3(-21411i, var_0.b, vec3<u32>(arg_2.x, 0u, 4294967295u)), Struct_2(arg_0.a, arg_0.b), Struct_1(true, vec3<u32>(57559u, 0u, arg_1), 206f, -607f, vec3<i32>(var_1.x, -8578i, var_1.x))).b.c, arg_0.b.d, _wgslsmith_div_vec3_i32(var_0.b.b.e, arg_0.b.e)), Struct_3(29683i, Struct_2(true, var_0.b.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, arg_0.b.b.x, var_0.b.b.b.x), vec3<u32>(50827u, 97145u, 1u), vec3<u32>(arg_1, 41277u, var_0.b.b.b.x))), func_4(Struct_1(arg_0.b.a, vec3<u32>(32184u, 1u, u_input.c), arg_0.b.c, 275f, arg_0.b.e), Struct_3(var_1.x, Struct_2(var_0.b.a, var_0.b.b), vec3<u32>(9315u, u_input.c, u_input.c)), Struct_2(true, arg_0.b), arg_0.b), arg_0.b).b).b.c;
    var var_2 = Struct_3(_wgslsmith_div_i32(var_1.x, global0.x), func_4(func_4(var_0.b.b, Struct_3(u_input.b ^ -1i, Struct_2(arg_0.a, Struct_1(arg_0.b.a, arg_2, 313f, var_0.b.b.c, var_0.b.b.e)), abs(var_0.c)), arg_0, var_0.b.b).b, Struct_3(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.b.e.x, -30793i), -47239i), Struct_2(var_0.b.b.a, func_4(var_0.b.b, Struct_3(2829i, var_0.b, vec3<u32>(0u, 27160u, 22497u)), arg_0, Struct_1(true, var_0.b.b.b, -970f, var_0.b.b.d, var_0.b.b.e)).b), arg_2), Struct_2(false, Struct_1(all(vec2<bool>(true, var_0.b.b.a)), vec3<u32>(arg_2.x, 1u, arg_0.b.b.x), _wgslsmith_f_op_f32(var_0.b.b.d - var_0.b.b.d), arg_0.b.d, ~arg_0.b.e)), var_0.b.b), vec3<u32>(arg_0.b.b.x >> (56115u % 32u), func_2().x, arg_0.b.b.x));
    let var_3 = func_4(func_4(func_4(func_4(var_0.b.b, Struct_3(-1i, Struct_2(var_0.b.b.a, arg_0.b), vec3<u32>(arg_2.x, 4294967295u, u_input.c)), var_0.b, Struct_1(arg_0.b.a, vec3<u32>(arg_2.x, var_0.b.b.b.x, arg_2.x), 1019f, var_2.b.b.c, global0.wyw)).b, Struct_3(-arg_0.b.e.x, func_4(var_2.b.b, Struct_3(global0.x, Struct_2(var_2.b.a, Struct_1(var_2.b.b.a, vec3<u32>(2024u, arg_1, 4294967295u), var_2.b.b.d, var_2.b.b.d, arg_0.b.e)), vec3<u32>(9231u, arg_0.b.b.x, arg_2.x)), Struct_2(false, arg_0.b), var_2.b.b), firstTrailingBit(arg_2)), func_4(func_4(var_2.b.b, Struct_3(var_2.a, var_2.b, arg_2), Struct_2(false, var_2.b.b), Struct_1(true, var_0.c, arg_0.b.c, -229f, arg_0.b.e)).b, Struct_3(global0.x, Struct_2(var_2.b.a, Struct_1(var_2.b.a, vec3<u32>(15992u, 0u, 26936u), var_0.b.b.d, var_0.b.b.c, global0.wzz)), vec3<u32>(var_2.c.x, arg_2.x, 997u)), func_4(var_0.b.b, Struct_3(u_input.a, Struct_2(arg_0.b.a, Struct_1(true, vec3<u32>(1u, u_input.c, 4294967295u), var_0.b.b.d, arg_0.b.c, vec3<i32>(2147483647i, var_1.x, -81253i))), vec3<u32>(4294967295u, var_2.c.x, arg_0.b.b.x)), var_0.b, Struct_1(var_2.b.a, vec3<u32>(1u, 55411u, 65596u), var_2.b.b.d, -933f, var_0.b.b.e)), Struct_1(var_0.b.b.a, var_2.b.b.b, arg_0.b.c, arg_0.b.c, var_2.b.b.e)), var_2.b.b).b, Struct_3(u_input.a, var_0.b, vec3<u32>(countOneBits(var_2.b.b.b.x), ~0u, arg_2.x & arg_0.b.b.x)), Struct_2(any(vec2<bool>(arg_0.a, true)) && select(var_2.b.b.a, var_0.b.b.a, arg_0.a), func_4(var_2.b.b, Struct_3(28582i, Struct_2(var_2.b.b.a, var_0.b.b), vec3<u32>(4294967295u, u_input.c, 4294967295u)), Struct_2(var_2.b.b.a, Struct_1(false, vec3<u32>(4294967295u, 20993u, var_2.c.x), -1000f, arg_0.b.c, var_2.b.b.e)), func_4(Struct_1(arg_0.a, var_2.c, -738f, 1000f, vec3<i32>(arg_0.b.e.x, 31874i, global0.x)), Struct_3(2147483647i, var_0.b, vec3<u32>(arg_2.x, 34040u, arg_0.b.b.x)), var_2.b, Struct_1(true, vec3<u32>(0u, 4294967295u, arg_1), 666f, var_2.b.b.d, var_2.b.b.e)).b).b), Struct_1(arg_0.a, arg_0.b.b, 131f, _wgslsmith_f_op_f32(func_3()), vec3<i32>(1i, _wgslsmith_add_i32(1i, arg_0.b.e.x), var_0.a ^ 2147483647i))).b, Struct_3(global0.x, arg_0, func_2() & var_2.c), func_4(var_0.b.b, Struct_3(var_1.x >> (15525u % 32u), Struct_2(!var_0.b.a, Struct_1(arg_0.b.a, vec3<u32>(arg_1, 12195u, 14574u), 527f, var_2.b.b.d, arg_0.b.e)), var_0.c), func_4(func_4(arg_0.b, Struct_3(50995i, Struct_2(arg_0.b.a, var_2.b.b), var_0.c), arg_0, func_4(Struct_1(true, arg_0.b.b, var_0.b.b.c, var_0.b.b.c, vec3<i32>(53692i, arg_0.b.e.x, 32754i)), Struct_3(-9305i, Struct_2(arg_0.b.a, Struct_1(arg_0.a, arg_2, -100f, var_0.b.b.d, arg_0.b.e)), vec3<u32>(var_2.c.x, 9160u, 0u)), arg_0, Struct_1(var_2.b.b.a, vec3<u32>(24337u, 0u, 1u), 404f, -1000f, vec3<i32>(var_2.a, -3150i, 0i))).b).b, Struct_3(select(2147483647i, 40537i, arg_0.a), arg_0, firstLeadingBit(arg_2)), var_0.b, Struct_1(true, vec3<u32>(1u, 58002u, arg_2.x) >> (vec3<u32>(arg_2.x, 12382u, arg_0.b.b.x) % vec3<u32>(32u)), var_2.b.b.c, arg_0.b.c, -global0.zxz)), func_4(Struct_1(false, ~vec3<u32>(arg_1, 0u, arg_0.b.b.x), _wgslsmith_div_f32(-723f, arg_0.b.c), 948f, ~var_2.b.b.e), Struct_3(-2147483647i, func_4(Struct_1(false, vec3<u32>(14121u, 4294967295u, 4294967295u), arg_0.b.c, var_0.b.b.d, vec3<i32>(9604i, 12201i, 56665i)), Struct_3(arg_0.b.e.x, Struct_2(var_2.b.a, Struct_1(true, vec3<u32>(0u, 5866u, arg_2.x), -581f, -985f, var_0.b.b.e)), arg_2), arg_0, Struct_1(false, arg_0.b.b, var_0.b.b.d, var_2.b.b.d, global0.yxx)), arg_2), Struct_2(any(vec3<bool>(false, false, true)), func_4(Struct_1(var_2.b.b.a, var_2.c, 365f, arg_0.b.c, arg_0.b.e), Struct_3(var_0.a, var_0.b, vec3<u32>(arg_2.x, var_0.c.x, var_2.c.x)), Struct_2(var_2.b.b.a, Struct_1(false, var_2.c, -1366f, 652f, vec3<i32>(var_0.a, var_2.a, 62068i))), Struct_1(false, vec3<u32>(29955u, 11054u, arg_2.x), 172f, arg_0.b.d, var_0.b.b.e)).b), func_4(func_4(arg_0.b, Struct_3(1i, var_2.b, vec3<u32>(arg_2.x, 4294967295u, 82825u)), Struct_2(var_2.b.b.a, var_2.b.b), Struct_1(arg_0.a, vec3<u32>(var_2.b.b.b.x, 4642u, 106120u), var_0.b.b.d, var_2.b.b.c, vec3<i32>(2147483647i, var_2.b.b.e.x, arg_0.b.e.x))).b, Struct_3(2147483647i, var_0.b, vec3<u32>(u_input.c, var_0.c.x, 0u)), func_4(Struct_1(true, vec3<u32>(var_2.c.x, arg_1, 1u), var_2.b.b.d, var_0.b.b.c, global0.zxx), Struct_3(u_input.a, Struct_2(true, Struct_1(var_0.b.a, vec3<u32>(4294967295u, arg_0.b.b.x, var_2.c.x), var_0.b.b.c, var_2.b.b.c, var_2.b.b.e)), vec3<u32>(38365u, arg_0.b.b.x, arg_2.x)), var_0.b, arg_0.b), func_4(var_0.b.b, Struct_3(-474i, Struct_2(var_2.b.a, Struct_1(var_0.b.a, arg_0.b.b, var_0.b.b.d, -889f, vec3<i32>(global0.x, arg_0.b.e.x, var_0.a))), vec3<u32>(arg_1, 63297u, 4294967295u)), var_0.b, var_2.b.b).b).b).b), var_0.b.b);
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(95101u, u_input.c), 7u)] ^ global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(41687u, ~(~12003u)), 7u)];
}

fn func_1(arg_0: u32) -> vec2<bool> {
    global0 = reverseBits(func_5(func_4(Struct_1(u_input.b <= -43827i, func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1455f), 1f, -global0.xzx), Struct_3(u_input.a, Struct_2(false, Struct_1(true, vec3<u32>(40036u, u_input.c, arg_0), 259f, -806f, global0.xxw)), ~vec3<u32>(43383u, 42526u, 0u)), Struct_2(true, Struct_1(true, vec3<u32>(u_input.c, u_input.c, arg_0), 1000f, -1251f, global0.zyz)), Struct_1(true, vec3<u32>(u_input.c, 37738u, 1u) << (vec3<u32>(u_input.c, arg_0, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-502f, 878f), vec3<i32>(global0.x, global0.x, 6815i))), 36998u, abs(abs(vec3<u32>(42657u, 15121u, 4294967295u)))));
    var var_0 = Struct_3(~(-1i), Struct_2(all(vec3<bool>(true, true, true)), func_4(Struct_1(true, firstTrailingBit(vec3<u32>(1u, 34818u, 3084u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -376f, func_5(Struct_2(false, Struct_1(false, vec3<u32>(arg_0, 44008u, 34757u), 849f, -116f, vec3<i32>(1i, -2147483647i, global0.x))), arg_0, vec3<u32>(u_input.c, 4294967295u, u_input.c)).wzz), Struct_3(i32(-1i) * -2147483647i, Struct_2(true, Struct_1(true, vec3<u32>(arg_0, u_input.c, 58427u), 213f, 1305f, vec3<i32>(0i, global0.x, 7604i))), func_2()), Struct_2(true, Struct_1(false, vec3<u32>(u_input.c, u_input.c, arg_0), 930f, -768f, vec3<i32>(-24382i, -28378i, global0.x))), func_4(func_4(Struct_1(false, vec3<u32>(1040u, 4294967295u, 1u), 356f, -1000f, global0.wzz), Struct_3(u_input.b, Struct_2(true, Struct_1(true, vec3<u32>(arg_0, u_input.c, 67287u), 1000f, 1000f, vec3<i32>(-41144i, 0i, -8606i))), vec3<u32>(3293u, 1u, arg_0)), Struct_2(false, Struct_1(true, vec3<u32>(arg_0, arg_0, 0u), -406f, -227f, global0.wyz)), Struct_1(false, vec3<u32>(u_input.c, 1u, 40162u), -2096f, -562f, global0.wxx)).b, Struct_3(global0.x, Struct_2(true, Struct_1(true, vec3<u32>(arg_0, 32209u, arg_0), -473f, 620f, global0.zyw)), vec3<u32>(4294967295u, 4294967295u, 52912u)), Struct_2(true, Struct_1(true, vec3<u32>(1u, 1u, u_input.c), -889f, -781f, vec3<i32>(-15945i, 1i, -1i))), Struct_1(false, vec3<u32>(u_input.c, arg_0, 4086u), 549f, 159f, vec3<i32>(-12096i, 1i, 13230i))).b).b), vec3<u32>(abs(~u_input.c), abs(~28699u), _wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(1u, u_input.c))) >> (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 48597u, 2040u), vec3<u32>(arg_0, 8786u, 43479u))) % vec3<u32>(32u)));
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(~(-13329i | var_0.a) ^ -(~23594i), _wgslsmith_clamp_i32(var_0.b.b.e.x, func_4(var_0.b.b, Struct_3(2147483647i, Struct_2(false, Struct_1(true, var_0.c, var_0.b.b.c, 547f, vec3<i32>(-2147483647i, var_0.b.b.e.x, -47672i))), vec3<u32>(1u, 5311u, arg_0)), Struct_2(false, Struct_1(var_0.b.b.a, vec3<u32>(24127u, u_input.c, 0u), -1000f, 368f, global0.yyy)), Struct_1(true, vec3<u32>(20050u, var_0.b.b.b.x, var_0.b.b.b.x), var_0.b.b.d, var_0.b.b.c, var_0.b.b.e)).b.e.x, u_input.b) << (arg_0 % 32u), var_0.b.b.e.x | func_4(func_4(Struct_1(true, var_0.b.b.b, -1000f, -769f, vec3<i32>(var_0.b.b.e.x, -16390i, var_0.b.b.e.x)), Struct_3(u_input.b, var_0.b, vec3<u32>(u_input.c, 21582u, 4718u)), Struct_2(var_0.b.b.a, var_0.b.b), Struct_1(true, var_0.c, 1737f, var_0.b.b.d, global0.xzw)).b, Struct_3(var_0.b.b.e.x, var_0.b, vec3<u32>(u_input.c, 41190u, 81283u)), Struct_2(false, var_0.b.b), func_4(var_0.b.b, Struct_3(26772i, var_0.b, vec3<u32>(u_input.c, var_0.b.b.b.x, var_0.b.b.b.x)), Struct_2(false, var_0.b.b), Struct_1(true, vec3<u32>(arg_0, 1u, u_input.c), var_0.b.b.c, var_0.b.b.d, var_0.b.b.e)).b).b.e.x, func_5(Struct_2(func_4(Struct_1(true, var_0.b.b.b, var_0.b.b.c, 499f, vec3<i32>(u_input.b, var_0.b.b.e.x, u_input.a)), Struct_3(-19805i, Struct_2(true, Struct_1(var_0.b.b.a, vec3<u32>(var_0.b.b.b.x, arg_0, arg_0), var_0.b.b.d, var_0.b.b.c, global0.zyx)), vec3<u32>(11480u, 75964u, u_input.c)), var_0.b, var_0.b.b).b.a, var_0.b.b), ~1u, _wgslsmith_add_vec3_u32(~var_0.c, var_0.b.b.b)).x), _wgslsmith_sub_vec4_i32(vec4<i32>(541i, -2147483647i >> (arg_0 % 32u), 1i, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(select(0u, 75407u, true), 7u)], select(global2[_wgslsmith_index_u32(arg_0, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], vec4<bool>(var_0.b.a, var_0.b.b.a, false, var_0.b.a)))), ~(vec4<i32>(5127i, 0i, global0.x, 2147483647i) << (~vec4<u32>(arg_0, 1u, u_input.c, 1u) % vec4<u32>(32u)))));
    let var_1 = func_4(Struct_1(var_0.b.a, var_0.b.b.b, _wgslsmith_f_op_f32(-func_4(Struct_1(var_0.b.a, var_0.c, -1548f, var_0.b.b.d, vec3<i32>(var_0.b.b.e.x, global0.x, var_0.b.b.e.x)), Struct_3(32769i, var_0.b, vec3<u32>(arg_0, 15414u, arg_0)), Struct_2(false, var_0.b.b), var_0.b.b).b.d), -691f, var_0.b.b.e), Struct_3(-global0.x, Struct_2(var_0.b.b.a, Struct_1(true, vec3<u32>(var_0.b.b.b.x, 48117u, u_input.c), var_0.b.b.c, 960f, ~var_0.b.b.e)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~var_0.c.x, ~18740u, _wgslsmith_div_u32(40388u, u_input.c)), var_0.b.b.b, ~_wgslsmith_sub_vec3_u32(var_0.b.b.b, var_0.c))), var_0.b, Struct_1(!var_0.b.a, vec3<u32>(_wgslsmith_add_u32(var_0.b.b.b.x, var_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 20597u), var_0.b.b.b), _wgslsmith_clamp_u32(u_input.c, u_input.c, 6757u)) ^ ~vec3<u32>(arg_0, arg_0, var_0.b.b.b.x), _wgslsmith_f_op_f32(var_0.b.b.c - 965f), _wgslsmith_f_op_f32(-var_0.b.b.d), firstTrailingBit(_wgslsmith_mod_vec3_i32(global0.xzz, vec3<i32>(0i, 0i, u_input.a)))));
    global2 = array<vec4<i32>, 7>();
    return !select(vec2<bool>(true, select(var_1.a, true, true)), vec2<bool>(true, var_1.a), select(!select(vec2<bool>(var_1.b.a, true), vec2<bool>(true, var_0.b.b.a), vec2<bool>(false, false)), vec2<bool>(any(vec2<bool>(var_1.a, var_1.b.a)), var_0.b.a), true));
}

fn func_6(arg_0: vec2<bool>) -> Struct_3 {
    global2 = array<vec4<i32>, 7>();
    return Struct_3(global0.x, func_4(Struct_1(select(true, all(arg_0), true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, 53391u, u_input.c)), _wgslsmith_f_op_f32(round(-2592f)), _wgslsmith_f_op_f32(-529f * -1596f), -global0.zyz), Struct_3(_wgslsmith_mult_i32(min(0i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.b, u_input.a), global2[_wgslsmith_index_u32(u_input.c, 7u)])), func_4(Struct_1(arg_0.x, vec3<u32>(34191u, 6655u, 22199u), -157f, -1000f, global0.zyw), Struct_3(u_input.a, Struct_2(false, Struct_1(arg_0.x, vec3<u32>(u_input.c, 1u, u_input.c), -654f, -696f, global0.wzy)), vec3<u32>(11150u, 12861u, u_input.c)), func_4(Struct_1(false, vec3<u32>(u_input.c, u_input.c, u_input.c), 1009f, -125f, global0.ywx), Struct_3(u_input.a, Struct_2(arg_0.x, Struct_1(true, vec3<u32>(25155u, 38627u, u_input.c), 215f, 622f, vec3<i32>(1i, 77732i, -7033i))), vec3<u32>(u_input.c, 1u, u_input.c)), Struct_2(true, Struct_1(arg_0.x, vec3<u32>(0u, 0u, 0u), 671f, 1144f, vec3<i32>(global0.x, -9844i, 15483i))), Struct_1(false, vec3<u32>(6822u, u_input.c, 40555u), 425f, 455f, global0.zxy)), func_4(Struct_1(true, vec3<u32>(4294967295u, u_input.c, u_input.c), 664f, 344f, global0.xxx), Struct_3(u_input.a, Struct_2(false, Struct_1(false, vec3<u32>(u_input.c, 63764u, u_input.c), -920f, 113f, global0.zxx)), vec3<u32>(0u, u_input.c, 1u)), Struct_2(arg_0.x, Struct_1(arg_0.x, vec3<u32>(48722u, u_input.c, u_input.c), 197f, 482f, vec3<i32>(u_input.b, u_input.a, 1i))), Struct_1(arg_0.x, vec3<u32>(u_input.c, 62303u, u_input.c), -114f, 1013f, global0.zzy)).b), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 12378u, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c, 74780u), vec3<u32>(u_input.c, u_input.c, 4294967295u)))), Struct_2(false, func_4(Struct_1(arg_0.x, vec3<u32>(u_input.c, 1u, u_input.c), 1772f, 898f, global0.yxw), Struct_3(u_input.a, Struct_2(arg_0.x, Struct_1(true, vec3<u32>(u_input.c, 60676u, 1u), 1925f, 540f, vec3<i32>(-29153i, u_input.b, global0.x))), vec3<u32>(0u, u_input.c, u_input.c)), Struct_2(false, Struct_1(true, vec3<u32>(29726u, u_input.c, u_input.c), 177f, 185f, global0.ywx)), Struct_1(arg_0.x, vec3<u32>(u_input.c, u_input.c, u_input.c), 1413f, -532f, global0.wxx)).b), Struct_1(true & all(arg_0), firstTrailingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-166f)), -866f), _wgslsmith_f_op_f32(f32(-1f) * -1598f), firstLeadingBit(max(vec3<i32>(u_input.b, global0.x, global0.x), vec3<i32>(global0.x, global0.x, u_input.a))))), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.c, ~_wgslsmith_mult_u32(40418u, 1u), 12359u), ~vec3<u32>(13844u, 1u, u_input.c) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(19681u, 0u, u_input.c)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 7>();
    global2 = array<vec4<i32>, 7>();
    global1 = true;
    global2 = array<vec4<i32>, 7>();
    let var_0 = func_6(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true), false), false), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), false), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1956u, u_input.c), vec4<u32>(u_input.c, 30939u, u_input.c, 51992u)))), true));
    global1 = func_4(func_4(var_0.b.b, var_0, var_0.b, func_6(select(vec2<bool>(false, true), vec2<bool>(false, var_0.b.a), vec2<bool>(var_0.b.a, true))).b.b).b, var_0, var_0.b, var_0.b.b).b.a;
    global1 = var_0.b.b.a;
    let var_1 = var_0.b.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(994f, var_0.b.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, var_1, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2393f * 637f))), _wgslsmith_f_op_f32(func_3())), select(global2[_wgslsmith_index_u32(~14713u, 7u)], vec4<i32>(u_input.b, u_input.b, -26966i, -6858i), !(false & var_0.b.b.a)), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1734f, -232f) + vec2<f32>(-167f, var_0.b.b.d))))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.c, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 266f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, -1076f), vec2<f32>(-1960f, -1000f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.d, 1302f)), !vec2<bool>(var_0.b.a, var_0.b.a))))), func_6(vec2<bool>(!(!var_0.b.b.a), true)).b.b.b.x);
}

