struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<f32>(-1330f, 590f, 996f, 1000f), true, vec3<bool>(true, false, true));

var<private> global1: Struct_2;

var<private> global2: vec3<u32>;

var<private> global3: u32;

var<private> global4: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(1u, 4294967295u, 54580u), vec3<u32>(0u, 42857u, 1u), vec3<u32>(1u, 4294967295u, 7364u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(79289u, 52067u, 20065u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 1u, 21181u), vec3<u32>(4294967295u, 55838u, 32654u), vec3<u32>(18145u, 25865u, 62002u), vec3<u32>(1u, 4294967295u, 43401u), vec3<u32>(11104u, 1u, 25341u), vec3<u32>(4294967295u, 1u, 31213u), vec3<u32>(0u, 59353u, 46016u), vec3<u32>(62102u, 12276u, 27999u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(15586u, 73599u, 87574u), vec3<u32>(0u, 3482u, 20073u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(38615u, 12041u, 4294967295u), vec3<u32>(1u, 146880u, 4294967295u), vec3<u32>(0u, 68442u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(26481u, 5911u, 4294967295u), vec3<u32>(69597u, 58496u, 4294967295u), vec3<u32>(50530u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 44838u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(1i, arg_0.a.b.xy);
    global4 = array<vec3<u32>, 28>();
    var var_1 = arg_0;
    let var_2 = reverseBits(~(~52142i));
    global0 = var_1.b;
    return select(u_input.b.xzz, u_input.b.wyw, vec3<bool>(true, all(select(select(vec2<bool>(false, false), arg_0.d.d.yy, arg_0.a.d.xx), select(vec2<bool>(global1.a.d.x, true), global1.d.d.xx, global0.d.xx), var_1.b.c & global0.c)), arg_0.b.d.x));
}

fn func_2() -> f32 {
    global0 = global1.d;
    let var_0 = ~u_input.b.x;
    var var_1 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.b.xyx, select(func_3(Struct_2(Struct_1(false, vec4<f32>(260f, global1.b.b.x, global0.b.x, global0.b.x), global1.b.a, global0.d), Struct_1(global1.a.c, global1.a.b, global0.d.x, global1.d.d), global1.c, Struct_1(false, vec4<f32>(global1.d.b.x, global1.b.b.x, -381f, 643f), global1.a.d.x, global0.d)), Struct_1(false, vec4<f32>(global1.d.b.x, 691f, -599f, global0.b.x), false, vec3<bool>(global0.d.x, global1.d.c, global1.b.c))), vec3<i32>(74743i, -22059i, u_input.b.x), global1.d.a)), -func_3(Struct_2(Struct_1(global0.d.x, vec4<f32>(-1808f, 2051f, global0.b.x, global1.b.b.x), false, global0.d), global1.b, global1.c, Struct_1(false, global0.b, true, vec3<bool>(global0.c, false, global0.c))), global1.b)), global1.a.b.yx);
    global1 = Struct_2(Struct_1(!(global0.d.x & global1.b.a), global1.d.b, global0.c, select(vec3<bool>(1593f < global0.b.x, true, all(vec4<bool>(global1.b.d.x, false, true, false))), !global1.a.d, global0.d)), Struct_1(global1.b.d.x & all(!global1.b.d), global1.d.b, global1.b.a, global0.d), global1.c, Struct_1(!(18665i >= ~var_0), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.b + vec4<f32>(-1000f, global0.b.x, 1281f, 1066f)), _wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))), !(_wgslsmith_f_op_f32(global0.b.x - global1.d.b.x) == _wgslsmith_f_op_f32(sign(global0.b.x))), select(select(!global1.d.d, global1.b.d, vec3<bool>(global0.c, false, global0.a)), select(!vec3<bool>(global0.d.x, global1.d.c, global0.d.x), !global1.d.d, global1.d.d), false)));
    var var_2 = 301f;
    return _wgslsmith_f_op_f32(769f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(967f, _wgslsmith_f_op_f32(f32(-1f) * -701f)), global1.b.b.x) - _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -791f))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.b.x)), 1381f, any(vec4<bool>(false, global0.a, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(-global1.a.b.x)), _wgslsmith_f_op_f32(func_2())) + global1.a.b.xww));
    var var_1 = vec3<bool>(!any(global1.d.d.zz), !(global1.c.x <= ((1u | u_input.a) ^ (0u << (u_input.a % 32u)))), false);
    global1 = Struct_2(Struct_1(!select(false, 0i == u_input.b.x, true), _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, arg_1.b.x, var_0.x, -811f))), _wgslsmith_f_op_vec4_f32(-global1.b.b)))), true, vec3<bool>(true, all(vec2<bool>(true, global0.d.x)) & (u_input.a != u_input.a), global0.a)), Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), arg_1.b.x, -825f, -951f), arg_1.b.x <= 1494f, select(global0.d, select(vec3<bool>(false, false, arg_0), !vec3<bool>(global0.d.x, false, global1.a.d.x), !vec3<bool>(global0.c, var_1.x, false)), !global1.d.d)), ~min(global1.c, ~firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u))), global1.a);
    let var_2 = vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(select(-1000f, var_0.x, true)), var_0.x);
    var var_3 = _wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-293f, -168f, var_2.x), vec3<f32>(arg_1.b.x, global1.b.b.x, -519f)) + global1.b.b.zzz)));
    return _wgslsmith_add_vec4_u32(global1.c, vec4<u32>(_wgslsmith_dot_vec2_u32(~global1.c.xx, global2.zz), 0u, ~_wgslsmith_clamp_u32(abs(37562u), _wgslsmith_div_u32(global2.x, u_input.a), ~4869u), ~27764u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    global4 = array<vec3<u32>, 28>();
    let var_1 = global0.d;
    var var_2 = func_1(!any(global1.b.d.yx), Struct_3(_wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(u_input.b.x), -2147483647i), u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1519f)), _wgslsmith_f_op_f32(ceil(1316f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b.x, global0.b.x)) * vec2<f32>(952f, -844f)))));
    var var_3 = Struct_3(_wgslsmith_mult_i32(9831i, 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d.b.xw)) + global1.a.b.xz));
    let x = u_input.a;
    s_output = StorageBuffer(-511f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_f_op_f32(-global1.b.b.x), u_input.b.x != var_3.a)), 646f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.b.b.x)), _wgslsmith_f_op_f32(global0.b.x * 374f))))), global1.b.b.x, _wgslsmith_f_op_f32(sign(var_3.b.x)), ~vec2<i32>(var_3.a, var_3.a));
}

