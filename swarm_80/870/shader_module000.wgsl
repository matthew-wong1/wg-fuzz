struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: Struct_5 = Struct_5(Struct_1(vec2<u32>(1u, 1u), 37266u, vec2<f32>(-268f, 1126f), vec4<i32>(12884i, 51840i, -7023i, -1i), vec2<u32>(4294967295u, 21157u)), -44803i);

var<private> global2: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), -11590i, i32(-2147483648), 42109i), true);

var<private> global3: bool = true;

var<private> global4: Struct_2 = Struct_2(vec4<i32>(16759i, -1i, -1i, 21260i), false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3) -> bool {
    let var_0 = vec4<bool>(global2.b, !((firstLeadingBit(30988u) << (abs(arg_2.c.a.x) % 32u)) != reverseBits(reverseBits(23747u))), global4.b, global2.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.a.c.x)), _wgslsmith_f_op_f32(trunc(arg_0.c.x)), global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1444f + -944f)), _wgslsmith_f_op_f32(-arg_2.c.c.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1780f, _wgslsmith_f_op_f32(round(arg_1.a.c.x)), -250f, _wgslsmith_f_op_f32(f32(-1f) * -875f))))));
    let var_2 = global1.a.d.yzz;
    var var_3 = Struct_1(vec2<u32>(~u_input.b, ~0u), global1.a.b, _wgslsmith_f_op_vec2_f32(var_1.wx * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.x)), global1.a.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(7470i, global4.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.d.wwy, vec3<i32>(arg_0.d.x, -2147483647i, arg_1.a.d.x)), arg_1.a.d.yzz), firstLeadingBit(u_input.c)), arg_0.d), arg_1.a.a & ~(abs(vec2<u32>(arg_1.a.a.x, 1u)) ^ ~vec2<u32>(arg_2.c.a.x, arg_0.a.x)));
    var var_4 = ~(min(~(~arg_1.a.a), abs(global1.a.a | vec2<u32>(0u, 0u))) ^ global1.a.a);
    return global4.b;
}

fn func_4(arg_0: Struct_4) -> u32 {
    let var_0 = any(vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1885f * global1.a.c.x))) != _wgslsmith_f_op_f32(max(-670f, -1000f)), any(vec4<bool>(false, false, func_3(global1.a, Struct_5(Struct_1(global1.a.e, 63577u, vec2<f32>(global1.a.c.x, global1.a.c.x), vec4<i32>(-1i, global2.a.x, global2.a.x, 1i), vec2<u32>(1u, 0u)), global1.a.d.x), Struct_3(global4.a, global1.a, global1.a)), all(vec3<bool>(true, true, arg_0.b)))), false));
    let var_1 = global1.a.c;
    let var_2 = ~(-vec2<i32>(-17945i, -min(-16007i, u_input.c)));
    var var_3 = select(select(!(!select(vec4<bool>(global4.b, var_0, global4.b, global4.b), vec4<bool>(var_0, true, arg_0.d, true), vec4<bool>(var_0, true, global2.b, true))), vec4<bool>(!(-516f == var_1.x), !(-530f != var_1.x), false, !var_0), false), !(!vec4<bool>(true, true | arg_0.d, global1.a.b != 6310u, func_3(global1.a, Struct_5(Struct_1(global1.a.a, u_input.b, vec2<f32>(-1829f, var_1.x), global1.a.d, global1.a.a), -66998i), Struct_3(global2.a, global1.a, global1.a)))), vec4<bool>(true, var_0, !(select(true, false, true) && true), true));
    let var_4 = arg_0.c;
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.a.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.c.x, -1359f, arg_0.x)) * -114f)))), 1469f, 693f);
    global1 = Struct_5(global1.a, -1i);
    global0 = array<Struct_4, 6>();
    let var_1 = Struct_1(global1.a.e, _wgslsmith_add_u32(func_4(Struct_4(vec3<bool>(true, arg_0.x, arg_0.x), func_3(global1.a, Struct_5(Struct_1(vec2<u32>(global1.a.a.x, u_input.b), 7957u, vec2<f32>(global1.a.c.x, -1393f), global4.a, vec2<u32>(global1.a.a.x, 0u)), 2147483647i), Struct_3(vec4<i32>(1i, global1.a.d.x, global2.a.x, u_input.a), global1.a, global1.a)), u_input.b, global2.b)), 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - global1.a.c.x) - var_0.x), 1553f)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global2.a, global4.a), _wgslsmith_mult_vec4_i32(select(_wgslsmith_clamp_vec4_i32(global4.a, global1.a.d, vec4<i32>(global2.a.x, -1i, -2147483647i, 18283i)), _wgslsmith_div_vec4_i32(global1.a.d, global1.a.d), select(vec4<bool>(global2.b, true, global2.b, true), vec4<bool>(arg_0.x, false, global4.b, true), true)), max(~global1.a.d, ~global2.a))), vec2<u32>(firstTrailingBit(global1.a.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 21812u, u_input.b), vec3<u32>(2513u, 8431u, 73200u))));
    global1 = Struct_5(Struct_1(var_1.e, _wgslsmith_add_u32(~(~u_input.b), ~max(var_1.a.x, 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zx)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.yw)))), global4.a, min(max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, global1.a.a.x), global1.a.e), global1.a.a), vec2<u32>(4678u, 4294967295u & u_input.b))), min(-33863i, 0i));
    return Struct_1(global1.a.e, ~(~_wgslsmith_sub_u32(31315u, ~u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xx * _wgslsmith_f_op_vec2_f32(-var_1.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, -1710f)), _wgslsmith_f_op_f32(step(global1.a.c.x, global1.a.c.x))))), var_1.d, ~(~global1.a.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = !select(select(vec2<bool>(global2.b, false != global4.b), select(vec2<bool>(global2.b, global2.b), vec2<bool>(false, global4.b), select(vec2<bool>(global2.b, false), vec2<bool>(global2.b, true), vec2<bool>(false, global4.b))), all(select(vec2<bool>(global2.b, global4.b), vec2<bool>(global2.b, global4.b), false))), !(!vec2<bool>(global4.b, global4.b)), (1i ^ global4.a.x) > -(global1.a.d.x & arg_2.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.c.x), global1.a.c.x, _wgslsmith_f_op_f32(arg_0.c.x + arg_2.b.c.x)))))));
    var var_2 = Struct_1(global1.a.e, arg_1.b.a.x, _wgslsmith_f_op_vec2_f32(arg_1.c.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(arg_0.c)))))), max(vec4<i32>(1i, (global1.b << (4294967295u % 32u)) ^ 33414i, ~(global4.a.x & -563i), (i32(-1i) * -43334i) ^ global1.b), ~vec4<i32>(~arg_1.a.x, 2147483647i, max(-2296i, 2147483647i), 41647i)), ~arg_0.e);
    var var_3 = false & any(select(vec4<bool>(any(vec3<bool>(var_0.x, true, false)), !global4.b, true, all(vec2<bool>(false, var_0.x))), select(!vec4<bool>(false, var_0.x, true, global4.b), vec4<bool>(false, global4.b, true, true), vec4<bool>(true, true, true, false)), global4.b));
    global3 = any(var_0);
    return Struct_1(global1.a.e, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.e.x, 0u), global1.a.a), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(3627u, global1.a.b, 1u)), vec3<u32>(_wgslsmith_add_u32(var_2.e.x, arg_1.c.a.x), ~arg_2.b.a.x, abs(arg_0.a.x))), ~arg_2.c.a.x), vec2<f32>(-288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.c.x, _wgslsmith_f_op_f32(min(global1.a.c.x, arg_0.c.x)))))), abs(vec4<i32>(_wgslsmith_sub_i32(abs(arg_2.c.d.x), abs(arg_1.c.d.x)), reverseBits(firstTrailingBit(global1.b)), (global4.a.x >> (52062u % 32u)) & ~arg_2.b.d.x, abs(-u_input.c))), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b, u_input.b, 13809u, var_2.a.x) << (vec4<u32>(4294967295u, arg_1.b.e.x, global1.a.e.x, global1.a.b) % vec4<u32>(32u)), ~vec4<u32>(arg_2.c.b, 41901u, 1938u, 1u)), max(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.a.x, arg_2.c.a.x, 1u, u_input.b), vec4<u32>(arg_0.a.x, u_input.b, 47295u, 4294967295u)), vec4<u32>(u_input.b, global1.a.a.x, 0u, u_input.b))), max(_wgslsmith_mod_u32(27678u, func_2(var_0).a.x), select(~4294967295u, reverseBits(84882u), true))));
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_5(func_5(func_2(!(!vec2<bool>(global4.b, global4.b))), Struct_3(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global4.a.x, global2.a.x, 0i), global2.a), Struct_1(global1.a.a, _wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(-global1.a.c), _wgslsmith_add_vec4_i32(global2.a, global1.a.d), firstLeadingBit(vec2<u32>(u_input.b, 62903u))), global1.a), Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(global1.a.d, global4.a), vec4<i32>(-1i, global1.a.d.x, 2147483647i, u_input.a) ^ global4.a), global1.a, func_2(vec2<bool>(global2.b, global2.b)))), global2.a.x);
    let var_1 = Struct_3(select(~(-var_0.a.d), var_0.a.d, select(vec4<bool>(global2.b, true, false, false), vec4<bool>(false, global2.b, false, global4.b), vec4<bool>(true, true, true, true))) >> (firstLeadingBit(abs(~vec4<u32>(0u, u_input.b, var_0.a.e.x, 29072u))) % vec4<u32>(32u)), global1.a, Struct_1(reverseBits(global1.a.e) >> (var_0.a.a % vec2<u32>(32u)), ~global1.a.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -875f))))), -(~var_0.a.d), var_0.a.a));
    global3 = all(!select(!vec2<bool>(false, global4.b), vec2<bool>(true, 73825u == global1.a.e.x), vec2<bool>(global4.b, all(vec2<bool>(global4.b, false)))));
    var var_2 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_0.a.e), min(48014u, 51116u), 49451u, var_1.c.a.x), ~(vec4<u32>(1u, global1.a.a.x, var_1.b.b, var_1.c.b) & vec4<u32>(6394u, var_0.a.a.x, 4294967295u, 4294967295u))) >> (~max(~vec4<u32>(var_1.c.e.x, u_input.b, 31287u, u_input.b), select(vec4<u32>(26822u, 46935u, 1u, global1.a.a.x), vec4<u32>(4498u, 0u, 20170u, var_0.a.b), vec4<bool>(global2.b, global2.b, true, true))) % vec4<u32>(32u)));
    let var_3 = var_0.a.c.x;
    return select(var_2.xxz, firstTrailingBit(_wgslsmith_div_vec3_u32(~var_2.wzy, ~vec3<u32>(var_1.c.a.x, var_2.x, global1.a.e.x)) << (var_2.wxy % vec3<u32>(32u))), !global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-495f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-867f - global1.a.c.x), global1.a.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-898f)))))) * _wgslsmith_f_op_f32(round(2341f))), true));
    let var_1 = vec2<bool>(-32772i == u_input.c, !(~global1.a.b < global1.a.b));
    var var_2 = !vec4<bool>(!(!var_1.x | global2.b), global2.b, var_1.x, true);
    global0 = array<Struct_4, 6>();
    let var_3 = ~min(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.a.x, u_input.b), global1.a.e) & ~u_input.b, _wgslsmith_sub_u32(30989u, global1.a.a.x) << ((global1.a.e.x << (94022u % 32u)) % 32u)));
    var var_4 = ~countOneBits(_wgslsmith_div_i32(reverseBits(2147483647i >> (u_input.b % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(52773i, 1i, 1i), vec3<i32>(u_input.c, 2147483647i, 65383i)), vec3<i32>(global4.a.x, 2147483647i, 43425i) << (vec3<u32>(4294967295u, global1.a.a.x, var_3) % vec3<u32>(32u)))));
    var var_5 = ~global2.a.x;
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), -360f))), global1.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(abs(~(vec3<u32>(4294967295u, var_3, u_input.b) | vec3<u32>(var_3, 25073u, u_input.b))), countOneBits(_wgslsmith_clamp_vec3_u32(func_1(var_6), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)), firstLeadingBit(vec3<u32>(0u, u_input.b, 1u))))));
}

