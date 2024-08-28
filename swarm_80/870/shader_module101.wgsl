struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 813f;

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_4 {
    global1 = Struct_5(Struct_4(~u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(581f, -507f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.c), global1.a.b.c), _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.b.a, 835f, global1.e.b.c.x, global1.e.b.b.x), global1.c.c), true)), Struct_2(global1.b.a, global1.e.c), global1.e.b, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(39341u, ~global1.d), _wgslsmith_div_u32(firstTrailingBit(1u), min(49021u, global1.d)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(16902u, global1.a.a.x, global1.a.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 3636u, 421u)), firstTrailingBit(~global1.d)), ~abs(vec4<u32>(u_input.a.x, 0u, global1.a.a.x, 58836u))), Struct_3(global1.e.a, global1.a.b, true, global1.b));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1.e.b.a, 597f, global1.e.d.b)), _wgslsmith_f_op_f32(max(global1.c.b.x, global1.e.b.c.x)), 4294967295u == u_input.a.x)), _wgslsmith_f_op_f32(global1.e.b.a * _wgslsmith_f_op_f32(-global1.a.b.b.x))))));
    global1 = Struct_5(global1.a, Struct_2(-reverseBits(global1.b.a), false), Struct_1(global1.c.a, global1.a.b.c, global1.a.b.b, true), ~min(min(~global1.d, ~51551u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 0u), global1.d)), global1.e);
    return global1.a;
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: u32) -> vec4<bool> {
    global1 = Struct_5(Struct_4(vec2<u32>(~4294967295u, reverseBits(_wgslsmith_add_u32(0u, global1.d))), Struct_1(arg_0.a.b.b.x, _wgslsmith_f_op_vec4_f32(arg_0.e.b.b * vec4<f32>(global1.a.b.a, arg_0.c.b.x, -547f, -887f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.e.b.b + vec4<f32>(-1000f, 588f, global1.a.b.c.x, global1.a.b.a)) + vec4<f32>(arg_0.a.b.c.x, 3257f, 1603f, -1000f)), !all(vec3<bool>(arg_0.b.b, true, false)))), global1.e.d, func_2().b, ~u_input.a.x, arg_0.e);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-141f)))))), _wgslsmith_f_op_f32(-arg_0.c.a));
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_0.a.b.a));
    global1 = Struct_5(func_2(), Struct_2(firstTrailingBit(-global1.b.a >> (~var_0.a % vec2<u32>(32u))), false), func_2().b, u_input.a.x, arg_0.e);
    return select(!(!vec4<bool>(all(vec4<bool>(arg_0.c.d, var_0.b.d, arg_0.a.b.d, false)), -1i <= global1.e.a, arg_0.a.b.d, func_2().b.d)), !(!select(vec4<bool>(true, true, true, var_0.b.d), !vec4<bool>(true, global1.c.d, false, false), !vec4<bool>(true, var_0.b.d, arg_0.c.d, true))), all(vec2<bool>(!all(vec4<bool>(var_0.b.d, false, var_0.b.d, global1.e.b.d)), var_0.b.d)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-global1.b.a, global1.b.a), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -3317i, global1.e.d.a.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(41893i, global1.e.d.a.x, 0i, -36804i), vec4<i32>(-1512i, 37325i, 13415i, global1.e.a)))), arg_1 > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, 375f))));
    var var_1 = Struct_2(_wgslsmith_add_vec2_i32(global1.e.d.a, ~global1.e.d.a), all(func_3(Struct_5(func_2(), global1.b, func_2().b, global1.d ^ arg_0.x, global1.e), ~(~vec3<i32>(var_0.a.x, var_0.a.x, -23565i)), 4294967295u)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(func_2().b.b.wxx))))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.a + 113f)), arg_1)), arg_1));
    var var_3 = any(func_3(Struct_5(func_2(), var_0, global1.e.b, ~arg_2 << (~0u % 32u), Struct_3(i32(-1i) * -2481i, Struct_1(var_2.x, global1.c.b, vec4<f32>(-1536f, var_2.x, -262f, 498f), false), 2147483647i >= var_1.a.x, global1.b)), vec3<i32>(_wgslsmith_add_i32(var_0.a.x ^ 1i, -var_0.a.x), _wgslsmith_sub_i32(-1i, global1.b.a.x), ~var_0.a.x | (0i & var_0.a.x)), ~u_input.a.x).wwx);
    var var_4 = global1.c.c;
    return 45584i != var_0.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    global0 = 1262f;
    let var_0 = vec4<u32>(countOneBits(~max(global1.d ^ 1u, abs(49942u))), u_input.a.x, u_input.a.x, u_input.a.x);
    let var_1 = vec4<u32>(func_2().a.x, global1.a.a.x, ~u_input.a.x | var_0.x, select(~countOneBits(var_0.x), var_0.x, func_2().b.d) & 52481u);
    var var_2 = Struct_2(vec2<i32>(-1i) * -vec2<i32>(global1.e.a | global1.b.a.x, ~(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1739f, arg_0.b.b.x)))) == _wgslsmith_f_op_f32(-1031f + -355f));
    var var_3 = reverseBits(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(10516i, -28404i, -18532i), vec3<i32>(2147483647i, global1.e.d.a.x, var_2.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.x, 13028i, var_2.a.x), vec3<i32>(-1i, 33095i, 1i))), global1.b.a.x), 12083i));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e.d.b;
    global1 = Struct_5(func_4(global1.e, !func_1(u_input.a, -1853f, global1.d)), Struct_2(-((global1.b.a | global1.e.d.a) >> (~u_input.a % vec2<u32>(32u))), true), func_2().b, global1.a.a.x << (_wgslsmith_add_u32((4294967295u | global1.a.a.x) | (global1.d ^ u_input.a.x), ~(~1u)) % 32u), global1.e);
    let var_1 = !func_3(Struct_5(global1.a, global1.b, global1.e.b, u_input.a.x, global1.e), vec3<i32>(2147483647i, -61155i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.d.a.x, 62236i), global1.e.d.a)) | abs(~vec3<i32>(global1.e.a, global1.e.a, 34673i)), ~(~u_input.a.x & ~global1.a.a.x));
    global1 = Struct_5(Struct_4(global1.a.a, global1.c), Struct_2(~global1.b.a, var_1.x & var_1.x), func_4(Struct_3(-1i, func_4(global1.e, true).b, select(false, all(vec3<bool>(global1.e.b.d, true, false)), true), global1.b), !any(func_3(Struct_5(global1.a, Struct_2(global1.e.d.a, true), Struct_1(global1.c.c.x, vec4<f32>(global1.e.b.c.x, -1109f, 179f, global1.a.b.a), global1.e.b.c, global1.a.b.d), global1.a.a.x, global1.e), vec3<i32>(global1.e.a, global1.b.a.x, global1.b.a.x), u_input.a.x).zxx)).b, _wgslsmith_mult_u32(global1.d, ~firstTrailingBit(0u)), Struct_3(-global1.e.a, global1.c, !(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) > u_input.a.x), global1.e.d));
    global0 = 1000f;
    global1 = Struct_5(Struct_4(global1.a.a, global1.e.b), Struct_2(~(-vec2<i32>(-52561i, -29996i)), !((false && var_1.x) | false)), global1.a.b, global1.d, global1.e);
    let var_2 = func_2();
    global1 = Struct_5(global1.a, Struct_2(global1.e.d.a, select(var_1.x, true, all(!var_1.zx))), func_2().b, func_4(global1.e, !(_wgslsmith_div_f32(-1463f, var_2.b.c.x) <= _wgslsmith_div_f32(302f, 674f))).a.x, global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, reverseBits(_wgslsmith_div_vec3_u32(min(firstTrailingBit(vec3<u32>(var_2.a.x, 1u, 1u)), vec3<u32>(var_2.a.x, global1.a.a.x, 3580u)), _wgslsmith_div_vec3_u32(~vec3<u32>(var_2.a.x, 0u, global1.a.a.x), ~vec3<u32>(45389u, var_2.a.x, 30055u)))));
}

