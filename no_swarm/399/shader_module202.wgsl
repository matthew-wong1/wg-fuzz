struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-1i), Struct_3(-39686i), Struct_3(76697i), Struct_3(1i), Struct_3(2147483647i), Struct_3(-34085i), Struct_3(60300i), Struct_3(27785i), Struct_3(29019i), Struct_3(1i), Struct_3(49191i), Struct_3(-1i), Struct_3(6760i), Struct_3(2147483647i), Struct_3(-32092i), Struct_3(2147483647i), Struct_3(-1926i), Struct_3(0i), Struct_3(1560i));

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(29846i, i32(-2147483648), -1i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(48041i, i32(-2147483648), -15973i));

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_2, 17>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !vec3<bool>(false, select(any(vec4<bool>(false, true, true, false)), true, true), 1i != _wgslsmith_div_i32(-30138i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.b.x, 2147483647i, 2147483647i))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1890f * 389f) + _wgslsmith_f_op_f32(select(-1368f, -563f, var_0.x))), -561f, -226f))));
    global3 = array<Struct_2, 17>();
    var_0 = vec3<bool>(var_0.x, false, false);
    global0 = array<Struct_3, 19>();
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = -vec4<i32>(arg_2.a.x, arg_2.a.x, -1i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, arg_2.a.x), vec3<i32>(arg_2.a.x, arg_2.a.x, u_input.d)));
    let var_1 = 141f;
    var var_2 = arg_2;
    let var_3 = var_0.xz;
    let var_4 = global3[_wgslsmith_index_u32(u_input.a, 17u)];
    return !vec4<bool>(~(1i | var_4.b.a.x) < ~(arg_2.a.x << (0u % 32u)), true, all(select(vec4<bool>(false, true, arg_1, arg_1), !vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))), func_3());
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = !(!arg_1.x);
    let var_1 = Struct_3(u_input.b.x);
    var var_2 = -abs(~global1[_wgslsmith_index_u32(68998u, 4u)]);
    global0 = array<Struct_3, 19>();
    let var_3 = Struct_1(u_input.b);
    return global3[_wgslsmith_index_u32(u_input.c, 17u)];
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(~_wgslsmith_clamp_i32(u_input.d, -2147483647i, u_input.b.x) & ~arg_0.a.x);
    global1 = array<vec3<i32>, 4>();
    let var_1 = arg_0;
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(696f, global2.x, 1f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(308f, 330f, true)) + global2.x), -473f))));
    let var_2 = func_4(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(global2.x + 440f)))), !select(vec4<bool>(any(vec2<bool>(false, false)), true, true, true), select(vec4<bool>(true, true, false, true), func_2(vec2<f32>(1250f, 994f), false, Struct_1(arg_0.a)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), u_input.d >> (4294967295u % 32u));
    return _wgslsmith_f_op_f32(sign(-564f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(var_0.a, 25702i, -14522i, u_input.b.x)))))) - global2.x), _wgslsmith_f_op_f32(ceil(global2.x))));
    var var_2 = Struct_1(~(~u_input.b));
    let var_3 = ~(~_wgslsmith_dot_vec3_i32(var_2.a.zyz, var_2.a.zyw));
    var var_4 = func_4(_wgslsmith_f_op_f32(ceil(global2.x)), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), func_2(_wgslsmith_f_op_vec2_f32(max(global2.yy, global2.zx)), true, func_4(var_1.x, vec4<bool>(true, false, true, false), -2147483647i).a), !all(vec3<bool>(true, false, true))), -30927i);
    var var_5 = true;
    var_5 = func_3() || true;
    var var_6 = Struct_2(func_4(-495f, vec4<bool>(false, true, true, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -380f)), true, var_4.c).x), (var_3 | abs(var_4.c.a.x)) ^ 6789i).a, var_4.b, func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), max(func_4(_wgslsmith_f_op_f32(-global2.x), vec4<bool>(true, true, true, true), -1i).d, 1i)).a, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.a.x, -40766i) << (vec3<u32>(4294967295u, 1u, u_input.a) % vec3<u32>(32u)), vec3<i32>(14081i, var_4.b.a.x, 18110i))));
    let x = u_input.a;
    s_output = StorageBuffer(223f, ~var_4.b.a.xwx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1503f, -934f, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, var_1.x, var_1.x, -359f)), true)) - vec4<f32>(_wgslsmith_div_f32(-1438f, -354f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), var_1.x)));
}

