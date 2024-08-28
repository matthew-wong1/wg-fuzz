struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_3, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = vec4<bool>(arg_2.a.b.x, !(arg_0.a.b.x && true), arg_0.a.b.x, !(162f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2431f, arg_1.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 275f), arg_1.xw), _wgslsmith_f_op_vec2_f32(-arg_1.yy), true))))), select(!vec2<bool>(all(vec3<bool>(arg_0.a.b.x, false, arg_0.d.b.x)), true), arg_0.d.b, true || !(!var_0.x))));
    global0 = array<Struct_1, 27>();
    global1 = array<Struct_3, 28>();
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-arg_1.wy);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global1 = array<Struct_3, 28>();
    let var_0 = Struct_2(arg_2.a, 60134i, 294f, Struct_1(arg_1, select(arg_2.a.b, vec2<bool>(!arg_2.a.b.x, arg_2.d.b.x), vec2<bool>(true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c))) + _wgslsmith_f_op_f32(arg_2.c * arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))))));
    var var_1 = arg_2.d;
    var var_2 = select(!vec4<bool>(!(var_1.b.x && var_0.d.b.x), 6477i == _wgslsmith_mod_i32(arg_1, u_input.d), false, all(select(vec3<bool>(true, true, var_1.b.x), vec3<bool>(true, var_0.a.b.x, false), var_1.b.x))), !select(select(!vec4<bool>(false, var_1.b.x, var_0.a.b.x, true), select(vec4<bool>(false, var_1.b.x, true, var_0.d.b.x), vec4<bool>(false, true, var_1.b.x, var_1.b.x), vec4<bool>(false, true, true, var_1.b.x)), select(vec4<bool>(true, true, false, var_1.b.x), vec4<bool>(true, false, var_1.b.x, false), vec4<bool>(false, true, var_0.a.b.x, var_1.b.x))), vec4<bool>(arg_2.d.b.x, true, var_0.a.a == var_1.a, all(vec4<bool>(var_1.b.x, true, true, var_1.b.x))), arg_2.d.b.x), select(vec4<bool>(var_1.b.x, false & arg_2.d.b.x, ~u_input.b <= 4294967295u, var_0.d.b.x), vec4<bool>(true, any(vec2<bool>(false, var_1.b.x)), true, any(vec3<bool>(true, true, true))), vec4<bool>(select(var_1.b.x | var_1.b.x, true, var_0.a.b.x), !(!var_1.b.x), !var_1.b.x, any(select(vec2<bool>(true, var_1.b.x), vec2<bool>(var_1.b.x, true), false)))));
    var var_3 = abs(~reverseBits(firstTrailingBit(vec2<u32>(0u, 4294967295u) & vec2<u32>(u_input.b, 7171u))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 28>();
    global0 = array<Struct_1, 27>();
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(global0[_wgslsmith_index_u32(57943u, 27u)], -24219i, 1000f, global0[_wgslsmith_index_u32(u_input.b, 27u)], -2002f), vec4<f32>(-247f, 173f, -174f, -895f), Struct_2(global0[_wgslsmith_index_u32(u_input.b, 27u)], u_input.a, 1441f, Struct_1(-1i, vec2<bool>(false, true)), 560f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, -176f)))))), u_input.c, Struct_2(global0[_wgslsmith_index_u32(abs(72835u) & ~u_input.b, 27u)], -2687i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1679f + 1415f) - 266f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b, u_input.b, ~u_input.b), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-879f, 139f)))));
    var var_1 = Struct_3(~firstTrailingBit(~vec2<u32>(1u, 4294967295u)) ^ ~countOneBits(~vec2<u32>(u_input.b, u_input.b)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(var_0.d, var_0.a.a, 820f, Struct_1(var_0.a.a, vec2<bool>(false, var_0.d.b.x)), var_0.e), vec4<f32>(var_0.e, var_0.e, var_0.c, 409f), Struct_2(Struct_1(u_input.c, var_0.d.b), -9938i, -157f, var_0.a, var_0.e))), vec2<f32>(var_0.c, -672f)))), ~(-2147483647i), var_0));
    var_1 = global1[_wgslsmith_index_u32(~1u << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(u_input.b), ~var_1.a.x), countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(76480u, 65187u, 259u, u_input.b), vec4<u32>(u_input.b, var_1.a.x, u_input.b, 1u))))) % 32u), 28u)];
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    let var_0 = func_1();
    var var_1 = Struct_2(Struct_1(func_1().a, !vec2<bool>(func_3(arg_1, var_0.a, Struct_2(var_0, -1i, -2709f, Struct_1(33478i, vec2<bool>(arg_2.x, var_0.b.x)), -2148f)).d.b.x, arg_2.x)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2485f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) * -385f))), global0[_wgslsmith_index_u32(~0u, 27u)], _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)));
    var var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(7802u), 55367u, max(u_input.b, 0u) ^ 36565u, firstTrailingBit(0u) | ~1u), abs(firstTrailingBit(max(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.b, 538u, 4294967295u)))));
    let var_3 = -23641i;
    let var_4 = min(_wgslsmith_clamp_vec4_u32(vec4<u32>(3106u, 33644u, select(~u_input.b, abs(var_2.x), true), 0u), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 50279u, 40183u, u_input.b), vec4<u32>(4294967295u, 4294967295u, var_2.x, 22220u)) ^ select(vec4<u32>(1u, var_2.x, 4294967295u, var_2.x), vec4<u32>(u_input.b, u_input.b, 26476u, var_2.x), true)), vec4<u32>(u_input.b, ~u_input.b, max(u_input.b, 67325u), 4294967295u ^ var_2.x) & _wgslsmith_mult_vec4_u32(min(vec4<u32>(25418u, var_2.x, var_2.x, 6143u), vec4<u32>(7119u, 44756u, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_2.x, 4294967295u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 4294967295u, var_2.x), vec4<u32>(var_2.x, 15315u, u_input.b, var_2.x)))), vec4<u32>(var_2.x, u_input.b, ~1u, var_2.x));
    return u_input.b << (_wgslsmith_mult_u32(var_2.x, u_input.b) % 32u);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-919f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.e, arg_1.c)) - _wgslsmith_f_op_f32(arg_1.c - -1029f)) + arg_1.c))));
    var var_1 = -arg_1.d.a;
    var_1 = -_wgslsmith_dot_vec4_i32(min(firstLeadingBit(vec4<i32>(-18765i, -2147483647i, arg_1.b, arg_1.a.a)) << (~vec4<u32>(1u, 1684u, 58234u, u_input.b) % vec4<u32>(32u)), vec4<i32>(max(u_input.c, u_input.c), arg_1.a.a << (61497u % 32u), abs(43054i), arg_1.a.a)), vec4<i32>(func_3(vec2<f32>(arg_1.c, 632f), firstTrailingBit(arg_1.b), arg_1).a.a, ~arg_1.b, 53374i, 0i));
    var var_2 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(239f, _wgslsmith_f_op_f32(step(arg_1.e, arg_1.c))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-162f, arg_1.c), vec2<f32>(-370f, arg_1.c))))), _wgslsmith_mult_i32(u_input.d, -26316i), arg_1).a.b;
    var var_3 = Struct_2(arg_1.a, (firstTrailingBit(arg_1.d.a | arg_1.d.a) | arg_1.a.a) << (_wgslsmith_div_u32(~(~u_input.b), abs(~73892u)) % 32u), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2134f + arg_1.c))), Struct_1(abs(-(u_input.d ^ arg_1.a.a)), arg_1.d.b), 911f);
    return -19891i << (_wgslsmith_div_u32(_wgslsmith_mult_u32(func_4(global0[_wgslsmith_index_u32(~21453u, 27u)], vec2<f32>(arg_1.e, 618f), vec3<bool>(false, true, false), _wgslsmith_f_op_f32(abs(-828f))), u_input.b), _wgslsmith_add_u32(8585u, ~u_input.b)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = u_input.c ^ func_5(false, Struct_2(global0[_wgslsmith_index_u32(~(~u_input.b), 27u)], u_input.c, 1533f, global0[_wgslsmith_index_u32(func_4(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(760f, -366f) + vec2<f32>(-1127f, 482f)), vec3<bool>(false, true, false), 1241f), 27u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1858f), -1627f))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(28250u, ~(~_wgslsmith_add_u32(u_input.b, 5303u)) ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(firstLeadingBit(u_input.b), 145712u, abs(u_input.b)), _wgslsmith_sub_u32(~u_input.b, 103174u), _wgslsmith_add_u32(0u, 5247u) >> (min(1u, u_input.b) % 32u))), 28u)];
    let var_3 = var_2.b.a.b.x;
    global1 = array<Struct_3, 28>();
    var var_4 = u_input.b;
    let var_5 = 19678i;
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(299f, -231f, _wgslsmith_f_op_vec2_f32(func_2(func_3(vec2<f32>(1476f, var_2.b.c), 1i, Struct_2(var_2.b.d, var_1, var_2.b.e, Struct_1(var_1, var_2.b.d.b), -831f)), vec4<f32>(var_2.b.c, -263f, var_2.b.c, var_2.b.c), Struct_2(global0[_wgslsmith_index_u32(0u, 27u)], u_input.d, var_2.b.c, Struct_1(-1i, vec2<bool>(var_2.b.a.b.x, false)), var_2.b.e))).x, -691f))), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b, ~u_input.b), reverseBits(~var_2.a) << (min(var_2.a, vec2<u32>(var_2.a.x, 1u)) % vec2<u32>(32u))), vec3<f32>(-285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(954f, var_2.b.c), _wgslsmith_f_op_f32(f32(-1f) * -1285f))) - _wgslsmith_f_op_f32(ceil(var_2.b.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b.c))))));
}

