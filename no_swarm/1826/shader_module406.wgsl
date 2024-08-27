struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 17>();
    var var_0 = !any(select(vec4<bool>(false, true, any(global2[_wgslsmith_index_u32(u_input.b, 19u)]), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), true));
    global0 = array<Struct_1, 17>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 30485u), 17u)];
    var var_2 = true;
    return 0u;
}

fn func_2() -> vec3<bool> {
    global2 = array<vec2<bool>, 19>();
    global2 = array<vec2<bool>, 19>();
    global1 = Struct_1(global1.a, vec3<i32>(-max(~u_input.d, global1.b.x), 1i, max(countOneBits(u_input.d), -10675i)), abs(reverseBits(~vec2<u32>(0u, global1.c.x))) << (select(~(~u_input.a.wx), vec2<u32>(1u, global1.c.x) & countOneBits(u_input.c.zz), min(4294967295u, u_input.a.x) == u_input.c.x) % vec2<u32>(32u)));
    var var_0 = select(vec2<u32>(~37166u, 56867u), u_input.a.wy, select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.b), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(31579u, 4294967295u), _wgslsmith_mod_u32(global1.c.x, u_input.c.x))), 19u)], global2[_wgslsmith_index_u32(func_3(71826i), 19u)]));
    global2 = array<vec2<bool>, 19>();
    return vec3<bool>(false, true, all(vec2<bool>(true, all(vec4<bool>(false, false, true, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(global1.a, vec2<f32>(1717f, -998f)))))), ~vec3<i32>(select(arg_1.x | -2147483647i, global1.b.x, true), firstTrailingBit(~36657i), 36607i), global1.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, 1161f))))) * global1.a), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(countOneBits(16642i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.b.x, 0i, global1.b.x), vec4<i32>(37270i, -1i, u_input.d, var_0.b.x))), 72265i, -16118i), _wgslsmith_dot_vec2_i32(var_0.b.zz, -vec2<i32>(global1.b.x, u_input.d))), u_input.c.xy);
    let var_1 = 263f;
    var var_2 = var_0.a.x;
    var var_3 = global0[_wgslsmith_index_u32(u_input.b, 17u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, arg_2), var_3.a))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(734f))), 889f)), vec3<i32>(global1.b.x, -54020i, max(u_input.d, -9753i)), var_0.c | abs(var_3.c));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_2 {
    global1 = func_4(func_2(), vec2<i32>(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1549f + global1.a.x) - 1142f), _wgslsmith_f_op_f32(global1.a.x * arg_0.x)))), ~global1.c.x);
    let var_0 = _wgslsmith_add_vec4_u32(~firstLeadingBit(u_input.a), abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(806u, 1u), vec2<u32>(1u, global1.c.x)), 21685u, _wgslsmith_dot_vec2_u32(global1.c, u_input.a.xy), 33790u), firstTrailingBit(vec4<u32>(u_input.b, global1.c.x, global1.c.x, 28553u)))));
    var var_1 = u_input.a.wxw << (firstLeadingBit(vec3<u32>(func_4(vec3<bool>(true, false, false), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -14616i), vec2<i32>(global1.b.x, arg_1.x)), _wgslsmith_f_op_f32(-arg_0.x), var_0.x).c.x, 62831u, ~_wgslsmith_dot_vec3_u32(u_input.a.yxx, var_0.xzw))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1051f, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -535f)))));
    let var_3 = Struct_2(func_4(vec3<bool>(!(u_input.b <= 52539u), all(vec2<bool>(false, false)), !any(vec4<bool>(true, true, true, false))), max(arg_1, vec2<i32>(_wgslsmith_sub_i32(22137i, u_input.d), global1.b.x)), _wgslsmith_f_op_f32(-arg_0.x), func_3(u_input.d)), u_input.b, func_4(vec3<bool>(true, true, true), arg_1, _wgslsmith_div_f32(-335f, -700f), 4294967295u));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.x * -2228f)));
    global0 = array<Struct_1, 17>();
    global2 = array<vec2<bool>, 19>();
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, var_0, -743f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1000f, global1.a.x) + vec3<f32>(-657f, -1601f, global1.a.x))))), min(vec2<i32>(-40787i, -7282i), ~(global1.b.yz << (select(global1.c, global1.c, vec2<bool>(true, true)) % vec2<u32>(32u)))));
    var var_2 = global0[_wgslsmith_index_u32(global1.c.x, 17u)];
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1599f)), var_1.c.a))), vec3<i32>(var_2.b.x, -13907i, var_2.b.x), firstLeadingBit(var_1.c.c));
    var var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

