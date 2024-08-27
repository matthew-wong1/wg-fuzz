struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-2129f, -1820f, -344f, 884f), vec3<i32>(15222i, 1i, 66500i), Struct_1(false, 263f), Struct_1(false, 1533f), vec3<f32>(675f, 1273f, 348f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x))))), arg_0.x, true))));
    return vec3<u32>(u_input.a.x, 28100u, max(~u_input.b | (select(114640u, 0u, global0.c.a) | ~u_input.b), _wgslsmith_sub_u32(reverseBits(16965u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yx), 1u))));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global0 = Struct_2(global0.a, global0.b & vec3<i32>(global0.b.x, select(countOneBits(2147483647i), -21544i, any(vec4<bool>(true, true, true, true))), firstLeadingBit(~(-1i))), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f))), global0.d, vec3<f32>(_wgslsmith_f_op_f32(-159f * global0.d.b), _wgslsmith_f_op_f32(abs(271f)), _wgslsmith_f_op_f32(global0.e.x * global0.e.x)));
    var var_0 = Struct_4(1i, Struct_1(global0.c.a, arg_0));
    var var_1 = select(u_input.b, u_input.b, ~0i < global0.b.x);
    var_0 = Struct_4(~(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -33452i, -64124i, var_0.a), vec4<i32>(0i, 2713i, var_0.a, -2147483647i)), var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, var_0.a), vec2<i32>(19957i, 65993i)))), Struct_1(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -815f))));
    let var_2 = Struct_5(17071i);
    return abs(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.b, -1577f, var_0.b.b), vec3<f32>(var_0.b.b, 402f, global0.d.b)) + _wgslsmith_f_op_vec3_f32(-global0.a.xyx)) - vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, var_0.b.b)), var_0.b.b, _wgslsmith_f_op_f32(global0.a.x + 174f)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(arg_0 >= -1934f, -520f);
    var_0 = u_input.a.x;
    var var_2 = arg_2.x;
    global0 = Struct_2(global0.a, ~(~global0.b), var_1, global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.zwx)));
    return Struct_2(vec4<f32>(-952f, _wgslsmith_f_op_f32(251f - _wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(var_1.b + 204f))), 625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-192f, 525f), global0.c.b)))), vec3<i32>(-69013i, global0.b.x, arg_1), Struct_1(all(vec4<bool>(true != global0.c.a, global0.c.a | global0.d.a, global0.d.b == arg_0, arg_0 < -214f)), 1f), Struct_1(global0.c.a, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -339f, -176f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-577f, -307f, arg_0)))))) * vec3<f32>(-1000f, 1000f, arg_0)));
}

fn func_1() -> Struct_4 {
    global0 = func_4(_wgslsmith_div_f32(-236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f + global0.e.x)))), reverseBits(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global0.b, vec3<i32>(global0.b.x, global0.b.x, -51415i)), vec3<i32>(2748i, global0.b.x, global0.b.x))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)))));
    global0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_div_f32(global0.e.x, -634f), global0.d.a))), -1438f, _wgslsmith_f_op_f32(-global0.a.x)), -_wgslsmith_div_vec3_i32(-global0.b, -(~global0.b)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(119f))), global0.b.x, vec3<u32>(_wgslsmith_mod_u32(func_3(vec3<f32>(870f, global0.e.x, 1123f)).x, ~1u), ~u_input.a.x | ~0u, u_input.a.x)).d, Struct_1(global0.d.a, global0.c.b), _wgslsmith_div_vec3_f32(global0.a.wxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(683f * global0.a.x), global0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1505f)))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))))), -891f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c.b)) - _wgslsmith_f_op_f32(select(336f, global0.a.x, false)))))));
    global0 = Struct_2(func_4(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-var_0.x)), ~global0.b.x, u_input.a).a, global0.b, Struct_1(global0.c.a, global0.a.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.b, var_0.x))), -(~(-5615i)), vec3<u32>(_wgslsmith_mult_u32(~u_input.b, u_input.b ^ 46423u), 1u, 39128u)).d, global0.e);
    var var_1 = firstTrailingBit(reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(-16628i, global0.b.x), ~abs(global0.b.zz))));
    return Struct_4(~func_4(global0.c.b, _wgslsmith_add_i32(global0.b.x, var_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 30361u) & u_input.a, func_2(674f))).b.x, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(-293i, func_4(_wgslsmith_f_op_f32(-global0.c.b), var_0.a, u_input.a).d);
    var var_2 = u_input.a.x;
    let var_3 = var_1.b;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(global0.a + global0.a), ~(global0.b >> (min(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), func_3(vec3<f32>(-540f, 232f, var_3.b))) % vec3<u32>(32u))), Struct_1(22004u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 63869u, u_input.b), ~vec4<u32>(u_input.b, 75478u, 9714u, 1u)), var_3.b), func_1().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.a.wyw)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(global0.e))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.yyy + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, 1662f, -105f) + global0.a.xwx)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(-global0.c.b));
}

