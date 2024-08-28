struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = ~(u_input.b.x << (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d)))))));
    let var_2 = u_input.a;
    let var_3 = select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), 733f != arg_0.b), select(vec3<bool>(all(vec4<bool>(true, true, true, false)), u_input.a.x <= u_input.c.x, global1.b != arg_0.d), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), select(_wgslsmith_f_op_f32(-arg_0.d) <= _wgslsmith_div_f32(838f, 1001f), (u_input.d.x > 1u) & select(true, false, false), true)), vec3<bool>(true, false, select(~4294967295u, _wgslsmith_clamp_u32(global1.a, 4294967295u, u_input.d.x), all(vec2<bool>(true, false))) < ~0u), select(select(vec3<bool>(true, true, select(true, true, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))), true), vec3<bool>(true, true || (arg_0.b == arg_0.d), !all(vec2<bool>(false, false)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -762f);
    return var_4;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(22217u, -1334f, vec4<u32>(global1.c.x, ~(~36853u), 1653u, ~global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(max(-1041f, 957f))) + -918f)), vec4<i32>(u_input.c.x, i32(-1i) * -2147483647i, -31638i >> (_wgslsmith_div_u32(~1u, global1.c.x) % 32u), ~8599i), _wgslsmith_div_vec3_i32(u_input.a.xyz, u_input.a.zwz), !all(select(!vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, true), u_input.a.x <= -26630i)));
    var var_1 = Struct_4(Struct_3(Struct_1((0u & var_0.a.a) >> (~u_input.b.x % 32u), global1.b, ~_wgslsmith_add_vec4_u32(global1.c, var_0.a.c), _wgslsmith_f_op_f32(func_3(Struct_1(1u, 1056f, global1.c, global1.d)))), vec2<f32>(global1.d, _wgslsmith_f_op_f32(func_3(var_0.a)))), false, Struct_2(Struct_1(32197u, _wgslsmith_f_op_f32(floor(536f)), ~vec4<u32>(global1.a, 0u, 39201u, global1.a), -1086f), var_0.b, u_input.a.yxw, true), min(u_input.b.x, 0u), Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1305f, -3000f) * vec2<f32>(var_0.a.b, 659f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(892f, global1.d) + vec2<f32>(442f, 283f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 1000f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(58737u, 405f, global1.c, 602f)))), var_0.a.d, -367f)));
    global0 = array<vec2<u32>, 25>();
    var var_3 = (53675u != abs(var_0.a.c.x)) && false;
    return 4561u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, select(arg_2.x, u_input.a.x ^ 1i, false)), arg_2.yz);
    var var_1 = vec4<i32>(1i, u_input.a.x ^ var_0.x, arg_2.x, firstLeadingBit(-1i));
    var var_2 = global1.d;
    var_2 = arg_3.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_3.a.b, arg_3.b.x, 2860f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), -132f, _wgslsmith_div_f32(global1.d, 213f), var_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.b, -2055f, var_3.x, global1.d) - vec4<f32>(1063f, global1.b, -2368f, -203f)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = min(19714u, 36195u);
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, -1322f, -379f, arg_0)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global1.d, 420f, global1.d) - vec4<f32>(1142f, global1.b, 183f, -1196f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_4(global1.c.xzy, func_2(vec2<bool>(false, true)), -u_input.a, Struct_3(Struct_1(u_input.d.x, 294f, vec4<u32>(13104u, u_input.d.x, global1.c.x, u_input.d.x), -235f), vec2<f32>(global1.b, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.d, 328f, -748f, global1.b)))))))));
    return Struct_3(Struct_1(~global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1060f, -1714f)))) * _wgslsmith_f_op_f32(1346f + 802f)), ~(global1.c ^ global1.c) ^ _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.d.x, global1.a, u_input.d.x, global1.a), vec4<u32>(u_input.d.x, 4294967295u, 0u, global1.c.x)), ~vec4<u32>(global1.c.x, u_input.b.x, 0u, 106783u), firstTrailingBit(vec4<u32>(global1.a, u_input.d.x, 0u, u_input.d.x))), _wgslsmith_div_f32(-1000f, -401f)), vec2<f32>(_wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d))), 823f));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global0 = array<vec2<u32>, 25>();
    let var_0 = -2678f;
    let var_1 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -125f)))).a;
    var var_2 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x & global1.c.x, ~4294967295u), 1u) >> (1u % 32u), ~51813u, global1.c.x, ~abs(_wgslsmith_sub_u32(~u_input.b.x, ~global1.a)));
    global1 = func_1(_wgslsmith_f_op_f32(-1f)).a;
    return arg_0.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(func_5(Struct_4(func_1(-1183f), 23302i == u_input.a.x, Struct_2(Struct_1(76299u, global1.b, vec4<u32>(global1.c.x, global1.a, u_input.b.x, 4294967295u), -1000f), vec4<i32>(u_input.c.x, -2147483647i, u_input.a.x, 2147483647i), u_input.a.xwx, false), 1u, func_1(-1056f))), vec2<f32>(-556f, _wgslsmith_f_op_f32(func_3(Struct_1(global1.c.x, -1050f, global1.c, 1000f))))), true, Struct_2(func_5(Struct_4(Struct_3(Struct_1(global1.c.x, -1532f, vec4<u32>(global1.a, global1.c.x, global1.c.x, global1.c.x), global1.d), vec2<f32>(515f, global1.d)), true, Struct_2(Struct_1(global1.a, 841f, global1.c, global1.d), u_input.a, vec3<i32>(2147483647i, -2147483647i, u_input.c.x), false), u_input.d.x, Struct_3(Struct_1(9589u, global1.b, vec4<u32>(42113u, 4294967295u, global1.a, 0u), 312f), vec2<f32>(446f, -782f)))), u_input.a, u_input.a.yxx, true), 6346u, Struct_3(Struct_1(87032u, _wgslsmith_f_op_f32(f32(-1f) * -513f), vec4<u32>(12230u, 1u, 8157u, global1.c.x) & _wgslsmith_clamp_vec4_u32(global1.c, vec4<u32>(4294967295u, 83161u, global1.a, u_input.b.x), vec4<u32>(4294967295u, u_input.d.x, 36450u, global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d, 246f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(805f, 547f))))));
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1972f))))) + -473f));
    global0 = array<vec2<u32>, 25>();
    let var_2 = u_input.c.x;
    let var_3 = var_0.c;
    let var_4 = _wgslsmith_mult_i32(select(~_wgslsmith_dot_vec4_i32(select(var_0.c.b, vec4<i32>(var_0.c.c.x, var_3.c.x, -24341i, 27149i), vec4<bool>(false, false, var_0.c.d, true)), var_0.c.b ^ var_0.c.b), abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, var_0.c.b.x), vec2<i32>(-18394i, var_2), true), var_3.b.yz)), !any(select(vec4<bool>(true, var_3.d, var_0.b, var_3.d), vec4<bool>(var_0.c.d, false, var_0.c.d, var_3.d), vec4<bool>(var_3.d, true, var_3.d, true)))), min(i32(-1i) * -6092i, select(-1i, var_3.c.x, !var_3.d)) >> (46050u % 32u));
    global1 = var_1.a;
    var var_5 = var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_4, var_3.b.x, var_3.c.x)), ~vec3<i32>(26586i, 17278i, var_0.c.b.x)) ^ ~select(-vec3<i32>(-2147483647i, var_3.c.x, -1i), u_input.a.ywy | vec3<i32>(u_input.a.x, u_input.c.x, var_0.c.b.x), select(vec3<bool>(true, true, var_3.d), vec3<bool>(var_0.c.d, true, true), vec3<bool>(false, var_3.d, var_0.b))), firstTrailingBit(~func_5(Struct_4(var_0.a, true, Struct_2(var_3.a, var_3.b, u_input.a.wzz, true), 1u, Struct_3(Struct_1(u_input.b.x, -392f, vec4<u32>(var_1.a.a, 39015u, 58720u, 9292u), -540f), vec2<f32>(-983f, var_1.b.x)))).a), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 44086u), var_0.c.b.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a.b, var_0.a.a.d, 305f))))))));
}

