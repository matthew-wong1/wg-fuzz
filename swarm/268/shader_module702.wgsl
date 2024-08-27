struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: u32 = 36459u;

var<private> global2: array<vec4<bool>, 24>;

var<private> global3: array<Struct_2, 3>;

var<private> global4: array<u32, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = true;
    var var_1 = vec4<u32>(6785u, countOneBits(64901u), 51670u, 0u);
    var var_2 = _wgslsmith_f_op_f32(115f * -606f);
    var var_3 = -1i;
    let var_4 = -2147483647i;
    return vec2<f32>(_wgslsmith_f_op_f32(abs(-690f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-233f, 1547f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(774f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = arg_1;
    global4 = array<u32, 29>();
    var var_1 = global3[_wgslsmith_index_u32(u_input.b | global4[_wgslsmith_index_u32(0u, 29u)], 3u)];
    var var_2 = _wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-831f)) - _wgslsmith_f_op_vec2_f32(func_2(false)).x));
    var var_3 = arg_1.a.b;
    return all(select(!(!select(vec2<bool>(true, var_0.a.a.b), vec2<bool>(true, arg_0.b), vec2<bool>(false, false))), !vec2<bool>(false, any(vec4<bool>(false, false, true, var_3.a.b))), false));
}

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(585f, 1619f))), vec2<f32>(-375f, _wgslsmith_f_op_f32(max(-417f, 566f)))))));
    let var_1 = vec3<i32>(-countOneBits(u_input.a), -46214i, ~(-u_input.a));
    global2 = array<vec4<bool>, 24>();
    let var_2 = _wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~4294967295u | (u_input.b | ~1u), 29u)], 29u)], 83459u);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(sign(var_0.x))) - _wgslsmith_f_op_f32(469f - _wgslsmith_f_op_f32(-1447f + -903f))), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -353f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(259f, var_0.x, 180f), vec3<f32>(935f, 486f, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 1000f), -1430f, var_0.x), select(arg_0.x && true, func_3(Struct_1(vec4<i32>(var_1.x, -22312i, var_1.x, -1i), global0[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_4(Struct_3(Struct_1(vec4<i32>(u_input.a, var_1.x, 25096i, u_input.a), false), Struct_2(Struct_1(vec4<i32>(-27248i, u_input.a, var_1.x, 49230i), false)), var_0.x, arg_0.x)), var_0.x), any(vec2<bool>(global0[_wgslsmith_index_u32(var_2, 23u)], true)))))));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.zy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.yy + vec2<f32>(-1830f, var_3.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-800f, var_3.x), var_0, arg_0.xy)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(arg_0.x, false))))) * vec2<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(247f, 636f)) - _wgslsmith_f_op_f32(trunc(var_3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.zx;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1490f - 257f), 1861f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1281f, -538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-604f, -726f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f * -467f)), -436f, global0[_wgslsmith_index_u32(1u, 23u)])) * 591f));
    let var_2 = ~19047u;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(300f, var_1.x))), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 23u)], true)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), var_1.x), select(true, global0[_wgslsmith_index_u32(0u, 23u)], true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, 747f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -449f) * vec2<f32>(-1594f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(795f, _wgslsmith_f_op_f32(-136f - var_1.x))))));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, firstTrailingBit(u_input.a), _wgslsmith_sub_i32(u_input.a, -2147483647i), -74392i & u_input.a), min(select(_wgslsmith_div_vec4_i32(vec4<i32>(-3949i, -21346i, 2147483647i, u_input.a), vec4<i32>(77100i, u_input.a, -2147483647i, u_input.a)), vec4<i32>(-1i, u_input.a, -44514i, u_input.a), true), _wgslsmith_sub_vec4_i32(-vec4<i32>(-6248i, u_input.a, -2147483647i, u_input.a), select(vec4<i32>(u_input.a, u_input.a, u_input.a, 33365i), vec4<i32>(1i, 26997i, u_input.a, u_input.a), global2[_wgslsmith_index_u32(27914u, 24u)])))), global0[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(47426u, 29u)]), 23u)]);
    let var_4 = max(1u, _wgslsmith_mod_u32(~_wgslsmith_add_u32(var_0.x, 77818u), abs(abs(1u)))) > _wgslsmith_sub_u32(12872u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(var_2, 50135u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(66335u, ~var_2 << (0u % 32u), _wgslsmith_add_u32(126470u, 19953u | var_0.x)), _wgslsmith_dot_vec3_u32(max(select(firstLeadingBit(u_input.c.xyz), ~vec3<u32>(47627u, global4[_wgslsmith_index_u32(20527u, 29u)], u_input.c.x), select(vec3<bool>(var_4, var_3.b, var_4), vec3<bool>(false, var_4, var_4), false)), countOneBits(max(u_input.c.xww, vec3<u32>(u_input.c.x, var_2, var_0.x)))), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.c.wwy, vec3<u32>(39326u, u_input.b, 4294967295u)), u_input.c.yxy)));
}

