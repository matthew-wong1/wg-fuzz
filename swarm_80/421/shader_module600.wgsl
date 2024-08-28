struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false));

var<private> global1: array<vec4<i32>, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> vec3<bool> {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0 - 457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), vec3<bool>(false, !any(vec2<bool>(true, true)), true));
    return select(select(!(!(!var_1.c)), select(!select(var_1.c, vec3<bool>(false, var_1.c.x, true), var_1.c), select(select(var_1.c, var_1.c, var_1.c), var_1.c, arg_0 < var_1.a), vec3<bool>(true, var_1.c.x, var_1.c.x)), var_1.b == _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(457f, var_1.b)))), vec3<bool>(any(vec3<bool>(false, var_1.c.x, var_1.c.x)) && any(select(vec4<bool>(var_1.c.x, var_1.c.x, true, var_1.c.x), global0[_wgslsmith_index_u32(arg_1, 26u)], var_1.c.x)), var_1.c.x, !any(vec3<bool>(true, true, false))), !vec3<bool>(all(!var_1.c.yy), any(var_1.c.zy) != (u_input.b.x > u_input.b.x), (-801f == var_1.a) && var_1.c.x));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(321f)), -1691f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1349f)), 1660f, arg_1)), select(func_3(_wgslsmith_f_op_f32(ceil(-189f)), ~arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 0u), vec4<u32>(4294967295u, 12970u, 38573u, 26008u))), func_3(_wgslsmith_f_op_f32(round(127f)), ~1u, u_input.a), vec3<bool>(true, false || arg_1, true))));
    let var_1 = firstTrailingBit(vec3<u32>(~u_input.a.x, ~(arg_0 & ~arg_0), 49588u));
    let var_2 = 35031u;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + var_0.a.b) - _wgslsmith_f_op_f32(step(var_0.a.a, 540f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(392f, -1000f)), _wgslsmith_f_op_f32(max(var_0.a.b, var_0.a.a))))), vec3<bool>(func_3(var_0.a.a, ~4294967295u, abs(u_input.a)).x, -693f <= _wgslsmith_f_op_f32(trunc(-543f)), true)));
    global0 = array<vec4<bool>, 26>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.a.b, -244f, 1000f))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1593f, arg_0.a.b, arg_0.a.a, arg_0.a.a)))))));
    global1 = array<vec4<i32>, 5>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f + var_0.x) * -629f), _wgslsmith_f_op_f32(floor(arg_0.a.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x, true)))))));
    var var_1 = select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 30698u), 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(20488u, 26u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a), var_0.x, var_1.wyw);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 26>();
    global1 = array<vec4<i32>, 5>();
    global1 = array<vec4<i32>, 5>();
    global1 = array<vec4<i32>, 5>();
    var var_0 = func_1(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-108f * 766f), _wgslsmith_f_op_f32(926f + 230f)), 559f, vec3<bool>(true, true, true))));
    let var_1 = any(vec3<bool>(abs(u_input.a.x << (u_input.a.x % 32u)) >= (1u | u_input.a.x), true, var_0.a.c.x | any(!global0[_wgslsmith_index_u32(u_input.a.x, 26u)])));
    global1 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wx, ~(~(~34651u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 1005f, var_0.a.b)) + vec3<f32>(var_0.a.a, -449f, var_0.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x, false)).zxw)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, -1028f, 371f) * vec3<f32>(var_0.a.b, var_0.a.b, var_0.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, 284f, -1000f) - vec3<f32>(-547f, var_0.a.b, -1000f)))))), _wgslsmith_sub_i32(u_input.b.x, 34159i) ^ _wgslsmith_add_i32(u_input.b.x, _wgslsmith_mod_i32(~u_input.b.x, u_input.b.x ^ u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1206f, var_0.a.a, _wgslsmith_div_f32(var_0.a.b, var_0.a.a), _wgslsmith_f_op_f32(min(var_0.a.a, -526f)))))));
}

