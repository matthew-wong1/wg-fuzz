struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(-1i, -20491i, 2147483647i), true, false), Struct_1(vec3<i32>(i32(-2147483648), -19985i, 1i), true, false), Struct_1(vec3<i32>(-29535i, 18060i, i32(-2147483648)), false, true), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -8835i), false, false), Struct_1(vec3<i32>(74534i, 2147483647i, 9938i), true, false), Struct_1(vec3<i32>(0i, 2147483647i, 19859i), true, true), Struct_1(vec3<i32>(-1i, -41063i, -8367i), false, true), Struct_1(vec3<i32>(-1i, -23167i, 2147483647i), false, false), Struct_1(vec3<i32>(-72864i, 49306i, 2147483647i), true, true), Struct_1(vec3<i32>(52132i, i32(-2147483648), 14123i), false, true), Struct_1(vec3<i32>(0i, -59751i, 2147483647i), false, true), Struct_1(vec3<i32>(2147483647i, 35759i, 60350i), true, false), Struct_1(vec3<i32>(66664i, -31999i, 0i), false, true), Struct_1(vec3<i32>(-17179i, 49203i, 0i), false, false), Struct_1(vec3<i32>(0i, 0i, 2147483647i), true, true), Struct_1(vec3<i32>(12995i, 20837i, 12839i), true, false), Struct_1(vec3<i32>(i32(-2147483648), 0i, 5791i), false, true), Struct_1(vec3<i32>(37812i, 699i, 30339i), false, false), Struct_1(vec3<i32>(25393i, -67744i, 78408i), false, false), Struct_1(vec3<i32>(-5294i, -1i, 71484i), true, false), Struct_1(vec3<i32>(-1i, -26336i, i32(-2147483648)), false, true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.x)));
    var var_1 = vec3<bool>(arg_0.c.b, !arg_1.b, any(select(!(!vec2<bool>(false, arg_0.c.c)), vec2<bool>(true, true), vec2<bool>(arg_0.a.x <= 403f, !arg_1.b))));
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(~(~0u), ~(~u_input.c)), ~u_input.a, u_input.a, abs(0u));
    var_1 = !(!(!vec3<bool>(var_1.x || true, any(vec4<bool>(var_1.x, true, false, true)), all(vec2<bool>(false, false)))));
    global0 = array<Struct_1, 21>();
    return arg_0.c;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-468f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_2.a.x, 449f)))), _wgslsmith_f_op_f32(floor(-658f)), false)))), -2428f);
    var var_1 = true;
    var_1 = !arg_2.c.c;
    global0 = array<Struct_1, 21>();
    let var_2 = !(!(!select(vec4<bool>(false, true, arg_2.c.b, true), vec4<bool>(true, arg_2.c.b, arg_2.c.c, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_2.c.b, arg_2.c.c, false), true))));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = 358i;
    var var_1 = vec4<u32>(_wgslsmith_add_u32(~(~u_input.a), 25888u), u_input.a, u_input.c, u_input.c);
    var_1 = firstLeadingBit(max(vec4<u32>(4294967295u, 1u, 29220u, _wgslsmith_sub_u32(63144u, var_1.x)), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(29340u, 0u, var_1.x, 0u), vec4<u32>(var_1.x, 13388u, 4294967295u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 36668u), _wgslsmith_clamp_vec4_u32(vec4<u32>(43680u, 1u, 1u, 20734u), vec4<u32>(var_1.x, 17797u, var_1.x, u_input.c), vec4<u32>(0u, var_1.x, 13152u, u_input.c))))));
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(func_1(Struct_4(vec4<f32>(1351f, 1202f, -1000f, -478f), vec3<i32>(-2147483647i, -4025i, var_0), Struct_1(arg_0.a.a, false, arg_1.x)), func_1(Struct_4(vec4<f32>(1652f, 1357f, 1296f, -691f), vec3<i32>(var_0, 5105i, arg_2.x), Struct_1(vec3<i32>(2147483647i, var_0, -93538i), arg_1.x, arg_0.a.c)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -16752i), false, true), 0i, arg_0.a.a.x), -70266i & u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)).a.x), _wgslsmith_clamp_i32(12551i, _wgslsmith_sub_i32(-1i, -var_0), min(~(-28893i), arg_2.x))) ^ ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-50905i, i32(-1i) * -2147483647i), ~arg_2.x);
    let var_3 = arg_0;
    return -820f;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    var var_0 = min(_wgslsmith_sub_u32(u_input.a, ~(~reverseBits(10033u))), firstLeadingBit(11597u));
    var var_1 = _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_1.b, !func_3(arg_0.b, vec3<u32>(u_input.a, 1u, u_input.c), arg_0), -arg_0.c.a.yx))));
    var var_2 = vec3<bool>(_wgslsmith_sub_u32(u_input.c << ((1u >> (0u % 32u)) % 32u), max(~70802u, abs(u_input.a))) >= 35345u, all(!(!func_3(arg_0.c.a, vec3<u32>(u_input.a, u_input.c, 22530u), Struct_4(vec4<f32>(arg_2, 262f, 1303f, 1302f), arg_0.b, global0[_wgslsmith_index_u32(u_input.c, 21u)])).zyx)), any(vec2<bool>(arg_0.c.c, arg_1.b.b.a.x != max(-1i, -2147483647i))));
    var var_3 = arg_1.b;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))));
    return Struct_1(u_input.b, true, true);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_1, 21>();
    let var_0 = u_input.c;
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, _wgslsmith_sub_i32(-14077i, -1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, 121724u, 14018u)) % 32u), _wgslsmith_add_i32(2147483647i, u_input.b.x) ^ (arg_1.c.a.x | arg_2), -52488i), _wgslsmith_clamp_vec4_i32(max(abs(vec4<i32>(arg_2, -2147483647i, -1i, 1i)), firstTrailingBit(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_1.b.x, arg_2, 3892i), -vec4<i32>(u_input.b.x, arg_1.b.x, arg_2, 12612i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, 18413i, 31667i, -55230i), vec4<i32>(-5081i, arg_1.b.x, -8960i, 2147483647i))), reverseBits(vec4<i32>(arg_1.b.x, 0i, 0i, arg_2)))), min(arg_2, max(-17806i, 45836i)) ^ u_input.b.x, arg_1.c.a.x << (var_0 % 32u), 2147483647i);
    var_1 = vec4<i32>(i32(-1i) * -41658i, countOneBits(~arg_2), -38849i, ~(~abs(i32(-1i) * -39275i)));
    let var_2 = arg_1.b.x;
    return Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 0i), u_input.b) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0, u_input.a), vec3<u32>(0u, var_0, 288u)) % vec3<u32>(32u)), arg_1.b), arg_1.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) * _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))), func_2(Struct_4(_wgslsmith_f_op_vec4_f32(select(arg_1.a, vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 864f), arg_1.c.c)), arg_1.c.a, global0[_wgslsmith_index_u32(var_0, 21u)]), Struct_3(Struct_2(arg_1.c, global0[_wgslsmith_index_u32(var_0, 21u)], Struct_1(arg_1.c.a, arg_0, arg_1.c.c)), Struct_2(arg_1.c, arg_1.c, Struct_1(arg_1.b, arg_0, false)), arg_1.c.b, Struct_1(vec3<i32>(arg_2, u_input.b.x, arg_2), false, false)), arg_1.a.x).c), func_2(arg_1, Struct_3(Struct_2(func_1(arg_1, Struct_1(vec3<i32>(arg_1.c.a.x, arg_2, var_1.x), true, true), 2147483647i, var_2), arg_1.c, arg_1.c), Struct_2(func_1(Struct_4(arg_1.a, u_input.b, Struct_1(vec3<i32>(var_2, -2092i, 48206i), arg_1.c.b, false)), Struct_1(arg_1.b, arg_0, arg_1.c.b), 47303i, var_2), Struct_1(vec3<i32>(arg_2, 0i, 29023i), false, arg_0), arg_1.c), arg_1.c.c, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-35510i, 0i, 47146i), vec3<i32>(-47972i, 2147483647i, u_input.b.x)), !arg_1.c.b, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(102f)))))), Struct_1(abs(vec3<i32>(func_2(arg_1, Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 21u)], arg_1.c, arg_1.c), Struct_2(Struct_1(vec3<i32>(arg_1.b.x, arg_2, var_1.x), false, arg_1.c.b), global0[_wgslsmith_index_u32(u_input.a, 21u)], Struct_1(vec3<i32>(1i, var_1.x, -2147483647i), arg_0, false)), arg_0, global0[_wgslsmith_index_u32(4294967295u, 21u)]), 155f).a.x, u_input.b.x << (u_input.c % 32u), _wgslsmith_dot_vec3_i32(var_1.yyz, arg_1.b))), (var_2 ^ var_1.x) <= -_wgslsmith_clamp_i32(var_1.x, var_2, 1i), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = Struct_3(Struct_2(Struct_1(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(0i, u_input.b.x, u_input.b.x)), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), false, true), global0[_wgslsmith_index_u32(max(4294967295u, ~_wgslsmith_mult_u32(u_input.a, 28084u)), 21u)], func_1(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-749f, 563f, 1299f, 1000f)), _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(u_input.b.x, 1945i, -2147i), false, false)), global0[_wgslsmith_index_u32(~1u, 21u)], ~min(u_input.b.x, -29599i), 1i)), func_5(true, Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-569f, -726f, -1157f, -1265f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2477f, -155f, 477f, -720f), vec4<f32>(-1179f, -1226f, 484f, -531f)))), u_input.b, func_2(Struct_4(vec4<f32>(-454f, 1650f, 2282f, -682f), vec3<i32>(0i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 21u)], Struct_1(vec3<i32>(u_input.b.x, 12323i, -34042i), false, false), Struct_1(u_input.b, false, false)), Struct_2(Struct_1(u_input.b, true, false), global0[_wgslsmith_index_u32(u_input.c, 21u)], Struct_1(vec3<i32>(u_input.b.x, -1i, 4815i), true, false)), true, global0[_wgslsmith_index_u32(7615u, 21u)]), 1f)), _wgslsmith_mod_i32(31427i, func_1(Struct_4(vec4<f32>(-781f, -669f, -272f, 948f), u_input.b, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 0i), false, true)), global0[_wgslsmith_index_u32(679u, 21u)], _wgslsmith_add_i32(395i, u_input.b.x), -u_input.b.x).a.x)), all(!(!func_3(u_input.b, vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_4(vec4<f32>(-1139f, 1452f, -648f, 281f), vec3<i32>(u_input.b.x, 1i, 26671i), global0[_wgslsmith_index_u32(4294967295u, 21u)])))), Struct_1(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, ~2367i), reverseBits(u_input.b.x), u_input.b.x), ~u_input.a > u_input.c, false || any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    let var_1 = 80971u;
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-908f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1143f)), _wgslsmith_f_op_f32(step(999f, -595f)))), _wgslsmith_f_op_f32(func_4(Struct_2(func_1(Struct_4(vec4<f32>(-534f, 262f, -512f, 1632f), u_input.b, var_0.b.a), Struct_1(u_input.b, var_0.b.b.b, var_0.a.a.b), 18161i, 1i), var_0.a.c, global0[_wgslsmith_index_u32(~var_1, 21u)]), vec4<bool>(var_0.c, all(vec3<bool>(var_0.c, var_0.d.c, true)), !var_0.a.b.b, true), vec2<i32>(u_input.b.x, -2147483647i))), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1065f, -453f) - -2781f)), -(~(~vec3<i32>(28405i, -854i, var_0.d.a.x))), var_0.d);
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -932f), -143f, var_2.a.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, 383f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2097f, -873f, 793f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1108f, -679f, var_2.a.x) - vec3<f32>(var_2.a.x, -256f, var_2.a.x))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(var_2.c.b, var_0.c, var_2.c.c)), !vec3<bool>(false, false, var_2.c.b), var_0.c))))), u_input.a);
}

