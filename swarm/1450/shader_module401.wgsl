struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(true, 65393u, Struct_1(vec4<bool>(true, true, false, false)), 1u, 4294967295u), Struct_2(true, 0u, Struct_1(vec4<bool>(false, false, true, false)), 4294967295u, 84898u), Struct_2(false, 4294967295u, Struct_1(vec4<bool>(false, false, false, false)), 1u, 0u), Struct_2(false, 1u, Struct_1(vec4<bool>(false, true, false, true)), 0u, 59865u), Struct_2(false, 0u, Struct_1(vec4<bool>(false, false, false, false)), 0u, 0u), Struct_2(false, 10479u, Struct_1(vec4<bool>(true, true, true, false)), 71412u, 66608u), Struct_2(false, 4294967295u, Struct_1(vec4<bool>(false, true, false, false)), 12087u, 0u), Struct_2(true, 43846u, Struct_1(vec4<bool>(false, true, true, false)), 977u, 26302u), Struct_2(false, 1u, Struct_1(vec4<bool>(false, true, false, false)), 4294967295u, 31298u), Struct_2(false, 56884u, Struct_1(vec4<bool>(true, true, false, false)), 4294967295u, 22709u), Struct_2(false, 21679u, Struct_1(vec4<bool>(false, false, false, true)), 1u, 76737u), Struct_2(false, 40690u, Struct_1(vec4<bool>(false, false, false, true)), 1u, 8955u), Struct_2(false, 1u, Struct_1(vec4<bool>(true, true, true, true)), 37923u, 5805u), Struct_2(false, 1u, Struct_1(vec4<bool>(true, true, false, true)), 28308u, 9687u), Struct_2(false, 0u, Struct_1(vec4<bool>(true, false, true, true)), 4294967295u, 1u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 15>();
    let var_0 = Struct_1(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    global0 = array<Struct_2, 15>();
    let var_1 = ~(~_wgslsmith_sub_u32(~(~10558u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 30893u, 4294967295u), vec3<u32>(1u, 1u, 1u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-274f, 462f, all(vec4<bool>(var_0.a.x, u_input.a <= u_input.b.x, any(var_0.a.ywz), var_0.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))));
    return ~var_1;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(-32584i, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u >> (1u % 32u), _wgslsmith_clamp_u32(~82846u, firstLeadingBit(0u), func_3()), ~1u), vec3<u32>(1u, 4294967295u, ~1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(select(vec3<u32>(66406u, 0u, 1u), vec3<u32>(1u, 46022u, 4294967295u), true), vec3<u32>(0u, 0u, 69042u)))), Struct_1(vec4<bool>(true, ~u_input.b.x <= -3343i, select(true, false, false) | (u_input.d.x != u_input.d.x), all(vec3<bool>(true, true, true)))), vec2<bool>(!all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    let var_1 = 1u;
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    return Struct_1(vec4<bool>(true, countOneBits(_wgslsmith_mult_i32(u_input.b.x, -1i)) < -select(u_input.d.x, u_input.c.x, var_0.c.a.x), any(var_0.c.a), all(!var_0.d) || (var_0.c.a.x || var_0.d.x)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(0u, 15u)]);
    var_0 = select(_wgslsmith_dot_vec2_i32(~u_input.c.xx, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-2147483647i, 2147483647i))) ^ -u_input.a, abs(20679i), arg_2.a.x);
    var var_2 = _wgslsmith_mult_vec4_u32(~(~select(~vec4<u32>(arg_3.b.x, 4294967295u, var_1.a.e, arg_1), ~vec4<u32>(15718u, arg_3.b.x, 0u, var_1.a.b), true)), max(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, var_1.a.e, arg_3.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b, var_1.a.e, 28290u, arg_3.b.x), vec4<u32>(34041u, 48650u, 4294967295u, arg_1)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b.x, 4294967295u, arg_1, 0u), vec4<u32>(arg_1, 0u, 20016u, var_1.a.e)), abs(vec4<u32>(arg_3.b.x, 57794u, arg_3.b.x, arg_3.b.x)), ~vec4<u32>(1u, arg_3.b.x, arg_3.b.x, arg_3.b.x))));
    global0 = array<Struct_2, 15>();
    return Struct_3(arg_0, _wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(41811u, arg_1, 104715u)) | vec3<u32>(_wgslsmith_dot_vec3_u32(arg_3.b, arg_3.b), var_2.x, ~58303u), max(select(var_2.xww, _wgslsmith_mod_vec3_u32(var_2.yzy, arg_3.b), vec3<bool>(arg_3.d.x, false, false)), ~var_2.wwy)), var_1.a.c, arg_2.a.xz);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_2, 15>();
    var var_0 = select(!(!vec3<bool>(func_2().a.x, arg_0.d.x, u_input.c.x > arg_1)), select(!func_2().a.xwy, func_4(10685i, ~_wgslsmith_dot_vec2_u32(arg_0.b.zy, arg_0.b.yx), func_4(~(-2810i), _wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, 48238u), func_2(), func_4(arg_0.a, arg_0.b.x, Struct_1(arg_0.c.a), arg_0)).c, Struct_3(min(-1i, -6488i), _wgslsmith_mult_vec3_u32(arg_0.b, arg_0.b), func_2(), vec2<bool>(arg_0.c.a.x, false))).c.a.zyy, arg_0.c.a.xzy), func_4(_wgslsmith_sub_i32(abs(reverseBits(-6179i)), max(u_input.a >> (arg_0.b.x % 32u), select(u_input.c.x, -28843i, arg_0.c.a.x))), arg_0.b.x, func_4(u_input.c.x, reverseBits(~53214u), arg_0.c, func_4(select(52993i, -12149i, true), max(1u, 62003u), Struct_1(arg_0.c.a), func_4(35739i, 40700u, Struct_1(arg_0.c.a), Struct_3(-1i, vec3<u32>(arg_0.b.x, 1u, arg_0.b.x), Struct_1(arg_0.c.a), vec2<bool>(arg_0.d.x, arg_0.c.a.x))))).c, arg_0).d.x);
    let var_1 = Struct_2(var_0.x, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 1u), arg_0.b.x), Struct_1(vec4<bool>(arg_0.c.a.x, arg_0.d.x, true, false)), ~arg_0.b.x, arg_0.b.x);
    var_0 = !(!(!(!(!vec3<bool>(var_0.x, true, var_0.x)))));
    global0 = array<Struct_2, 15>();
    return Struct_1(!select(!arg_0.c.a, var_1.c.a, select(!vec4<bool>(var_1.a, true, var_1.a, true), var_1.c.a, func_4(0i, arg_0.b.x, arg_0.c, Struct_3(2147483647i, vec3<u32>(arg_0.b.x, 1u, arg_0.b.x), Struct_1(arg_0.c.a), var_0.zx)).c.a)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_4 {
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    let var_0 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 0i, 2147483647i, 2147483647i), arg_2), arg_2), ~countOneBits(arg_2), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, u_input.d.x, u_input.d.x, u_input.b.x), vec4<i32>(u_input.a, 1i, 36232i, arg_2.x)) << (~vec4<u32>(3993u, arg_1.x, 29258u, 1u) % vec4<u32>(32u))), arg_2));
    let var_1 = vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), !(u_input.a != _wgslsmith_sub_i32(~2147483647i, ~u_input.b.x)));
    let var_2 = func_5(func_4(~_wgslsmith_sub_i32(var_0, 22450i), arg_0, func_2(), Struct_3(92411i, vec3<u32>(~arg_1.x, ~34175u, 1u), func_2(), vec2<bool>(true, var_1.x))), max(-18843i, min(_wgslsmith_dot_vec3_i32(u_input.d ^ arg_2.wzz, select(vec3<i32>(u_input.a, -2147483647i, 62973i), arg_2.xww, var_1.x)), arg_2.x & 1136i)));
    return Struct_4(Struct_2(var_2.a.x, arg_0, Struct_1(select(!var_2.a, !var_2.a, var_1.x & false)), firstTrailingBit(arg_0) & 4294967295u, ~arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(1u, 1u), ~(~(~(~vec3<u32>(56121u, 10111u, 4294967295u)))), -vec4<i32>(-u_input.b.x | 2147483647i, u_input.b.x ^ u_input.a, -u_input.a, u_input.c.x));
    let var_1 = var_0.a.a;
    let var_2 = Struct_2(func_1(func_1(1u, vec3<u32>(var_0.a.b, 1u, var_0.a.e), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.c.x, u_input.b.x, -59663i), vec4<i32>(u_input.d.x, -1i, u_input.a, u_input.b.x))).a.d << (15305u % 32u), (~vec3<u32>(53961u, 11074u, var_0.a.b) >> (~vec3<u32>(var_0.a.d, 0u, var_0.a.b) % vec3<u32>(32u))) >> (~vec3<u32>(0u, var_0.a.e, var_0.a.d) % vec3<u32>(32u)), ~_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, 12065i, u_input.b.x, u_input.d.x)), -vec4<i32>(-1i, -1i, -61451i, -3994i))).a.c.a.x, abs(var_0.a.d), func_5(Struct_3(~(~u_input.c.x), vec3<u32>(1u, var_0.a.d, abs(4294967295u)), Struct_1(var_0.a.c.a), vec2<bool>(any(var_0.a.c.a.yzx), var_0.a.a)), 1i), _wgslsmith_div_u32(var_0.a.b, ~40530u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, var_0.a.e, var_0.a.e, 2115u) ^ vec4<u32>(var_0.a.b, 20954u, var_0.a.d, 69413u)) << (firstTrailingBit(~vec4<u32>(var_0.a.b, 4294967295u, var_0.a.b, 51590u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(var_0.a.b | var_0.a.b, ~1u), var_0.a.e, 6645u, ~32632u ^ func_1(0u, vec3<u32>(var_0.a.d, 54025u, var_0.a.b), vec4<i32>(2147483647i, -2147483647i, 3152i, -1i)).a.b)));
    var var_3 = reverseBits(~(~abs(~vec2<u32>(var_2.d, 1u))));
    var var_4 = Struct_1(!vec4<bool>(var_2.c.a.x, true, true, var_0.a.a));
    var_3 = ~firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_3.x), firstLeadingBit(vec2<u32>(var_2.d, 4294967295u))) | ~select(vec2<u32>(var_2.b, var_2.e), vec2<u32>(0u, 7980u), var_4.a.yw));
    let var_5 = func_2().a;
    var var_6 = func_1(~var_3.x, ~reverseBits(~vec3<u32>(0u, var_0.a.d, 1u)), vec4<i32>(-21618i, u_input.b.x, u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(9912i, 0i), _wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.c.zx)) & countOneBits(_wgslsmith_mult_i32(u_input.b.x, u_input.a)))).a;
    let var_7 = -13937i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1000f), vec2<f32>(-1645f, -249f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-682f, 193f) * vec2<f32>(1160f, 237f))))), min(~(~(~vec2<u32>(var_0.a.d, 1u))), ~countOneBits(~vec2<u32>(var_6.b, 1773u))), 64403u, select(~var_7, -1i, true));
}

