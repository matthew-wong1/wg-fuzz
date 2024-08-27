struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: i32 = -31519i;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2131f - _wgslsmith_f_op_f32(f32(-1f) * -141f)) * arg_0) * _wgslsmith_f_op_f32(floor(-1104f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0), -1111f, -140f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(762f, -897f, var_0))))));
    var var_2 = Struct_3(Struct_1(select(vec3<bool>(true, any(vec3<bool>(true, true, false)), false), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), firstTrailingBit(~(~u_input.a.x)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)), true, true != (-1i < (-4972i | u_input.b))));
    let var_3 = Struct_3(var_2.a, var_2.b);
    let var_4 = var_3.a;
    return select(var_2.a.a.xx, vec2<bool>(var_4.c.x, true), select(select(var_2.a.a.yy, vec2<bool>(var_2.b.x, true), var_2.a.a.zx), select(!(!var_3.a.c.yx), var_2.b.yx, !var_3.a.c.yy), !vec2<bool>(var_2.b.x & false, !var_2.b.x)));
}

fn func_2() -> vec4<u32> {
    let var_0 = u_input.a;
    global2 = select(_wgslsmith_add_i32(u_input.b, min(0i, 1i) | u_input.b), abs(~0i), 1u != max(var_0.x, ~countOneBits(global0.x)));
    var var_1 = select(select(func_3(-915f), vec2<bool>(true, true), abs(_wgslsmith_clamp_i32(2147483647i, -1i, 51214i)) != u_input.b), vec2<bool>(true, true), !(21624u <= ~(~u_input.a.x)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(ceil(-1866f)))), _wgslsmith_f_op_f32(ceil(-393f)));
    var var_3 = u_input.b;
    return max(countOneBits(vec4<u32>(4294967295u, select(global0.x, max(0u, 1u), func_3(208f).x), var_0.x, ~52461u)), vec4<u32>(1u, 1u, ~(~u_input.a.x) & ~68225u, 2500u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global1 = array<vec2<i32>, 22>();
    global0 = func_2();
    global1 = array<vec2<i32>, 22>();
    global2 = -15826i;
    return 374f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(59099u, ~4294967295u >> (1u % 32u), 67236u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(-483f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, true), global0.x, vec3<bool>(false, true, true)), u_input.b, Struct_3(Struct_1(vec3<bool>(true, true, true), 4294967295u, vec3<bool>(true, false, false)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), var_0.x, vec3<bool>(false, true, true)), -57687i, true))), _wgslsmith_f_op_f32(-1146f - 1297f))), -263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1116f * -577f), _wgslsmith_f_op_f32(f32(-1f) * -778f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * 2176f)), false))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-1343f - _wgslsmith_f_op_f32(f32(-1f) * -1161f)), Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), 23269u, select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true)), Struct_2(Struct_1(vec3<bool>(true, true, true), u_input.a.x, !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1607i, u_input.b, u_input.b), -vec3<i32>(34125i, 0i, u_input.b), global0.x < 1u), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(9711i, u_input.b, 1i) ^ vec3<i32>(u_input.b, -2147483647i, -1i))), true == !(2245f == var_1.x)));
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_2.a))) - 255f)), var_2.c.a, var_2.c);
    var var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b, firstLeadingBit(select(~vec2<u32>(4294967295u, u_input.a.x), ~var_0.yx, select(vec2<bool>(var_2.b.c.x, var_3.c), var_3.a.a.zy, func_3(var_1.x)))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-19416i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-12870i, var_3.b, 42398i, -7100i), vec4<i32>(41326i, var_2.c.b, -1i, 31629i)), u_input.b)), abs(var_3.b ^ ~2147483647i), ~(-u_input.b)));
}

