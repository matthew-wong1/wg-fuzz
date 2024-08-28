struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 23> = array<bool, 23>(false, true, true, true, false, true, true, true, true, true, false, true, false, true, true, true, false, false, false, true, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> f32 {
    global0 = Struct_3(arg_0.a, Struct_1(global0.b.b.yxw, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 813f, -1301f, 1101f)), _wgslsmith_f_op_vec4_f32(-global0.b.b)))), select(vec2<bool>(!global0.c.c.c.x, global0.b.d.x), select(select(vec2<bool>(false, global0.b.c.x), global0.a.c, vec2<bool>(true, global1[_wgslsmith_index_u32(44388u, 23u)])), select(global0.b.d.yz, arg_0.a.d.zy, global1[_wgslsmith_index_u32(arg_0.d.x, 23u)]), !global0.a.d.x), !select(arg_0.b.d.zx, global0.a.d.yz, global0.c.b.c)), !(!select(global0.a.d, global0.c.a.d, vec3<bool>(global0.a.d.x, global0.a.c.x, global1[_wgslsmith_index_u32(8738u, 23u)])))), arg_0);
    var var_0 = arg_0;
    let var_1 = vec2<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(79269u, 4294967295u)), ~global0.c.d.x)), ~40105u >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, var_0.d.x, var_0.d.x), vec3<u32>(27526u, global0.c.d.x, 4294967295u))) % 32u)) ^ global0.c.d.xw;
    global1 = array<bool, 23>();
    var_0 = global0.c;
    return var_0.c.b.x;
}

fn func_2() -> Struct_3 {
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    global0 = Struct_3(Struct_1(global0.b.b.yyy, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c.b.b.x * global0.c.a.a.x), global0.b.b.x, _wgslsmith_f_op_f32(ceil(-1363f)), _wgslsmith_f_op_f32(func_3(global0.c, u_input.c.wz, global0.a.b, vec4<f32>(-2364f, global0.a.a.x, global0.c.c.b.x, global0.c.b.a.x)))) + _wgslsmith_f_op_vec4_f32(-global0.a.b)), vec2<bool>(false, true & global1[_wgslsmith_index_u32(~29628u, 23u)]), global0.b.d), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global0.b.b.x - -784f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(761f)) - _wgslsmith_f_op_f32(select(global0.b.a.x, global0.c.b.a.x, true))), 401f), vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(floor(-305f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.b.b.x + global0.c.b.a.x), global0.c.b.a.x)), 873f), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !global0.b.d), global0.c);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.a.a.x, global0.a.b.x))), global0.a.b.x, !(global0.b.a.x <= 470f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b.x * global0.b.a.x))) + _wgslsmith_f_op_f32(-global0.a.a.x));
    var var_1 = global0.b;
    return Struct_3(global0.c.a, global0.b, Struct_2(Struct_1(global0.a.b.www, _wgslsmith_f_op_vec4_f32(vec4<f32>(155f, var_1.b.x, 914f, var_1.a.x) * _wgslsmith_f_op_vec4_f32(-var_1.b)), var_1.c, select(vec3<bool>(true, var_1.d.x, global0.a.d.x), var_1.d, var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2195f, global0.c.b.a.x, 1138f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -2686f, var_1.a.x, global0.c.a.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.a.x, global0.b.a.x, var_1.a.x, -934f) + vec4<f32>(539f, 1000f, var_1.b.x, var_1.a.x))), global0.b.d.xy, select(!var_1.d, vec3<bool>(var_1.c.x, false, true), var_1.d)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - _wgslsmith_div_vec3_f32(global0.c.b.b.yzz, var_1.a)), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(global0.b.b.x - -140f), _wgslsmith_f_op_f32(abs(-283f)), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.d.zx, select(vec3<bool>(false, true, false), !vec3<bool>(var_1.d.x, true, true), !vec3<bool>(var_1.c.x, var_0, global0.a.c.x))), global0.c.d));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<bool, 23>();
    let var_0 = func_2();
    let var_1 = true;
    global1 = array<bool, 23>();
    let var_2 = var_0.c.c;
    return func_2().c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.b.a.x * 502f) - global0.c.b.a.x), global0.b.a.x) + global0.c.c.a.x) != -1361f;
    global0 = Struct_3(Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(global0.b.b + vec4<f32>(_wgslsmith_f_op_f32(sign(636f)), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-global0.a.a.x), global0.a.a.x)), vec2<bool>(all(global0.b.d), var_0), select(select(global0.c.c.d, !global0.c.b.d, 1102f != global0.c.c.a.x), select(vec3<bool>(global1[_wgslsmith_index_u32(global0.c.d.x, 23u)], true, false), !vec3<bool>(false, global0.a.c.x, global1[_wgslsmith_index_u32(2160u, 23u)]), global0.b.d), false)), func_1(4294967295u, _wgslsmith_mod_vec2_u32(u_input.a, abs(vec2<u32>(u_input.a.x, 1u))), vec4<bool>(var_0, var_0, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true)), func_2().c);
    global0 = func_2();
    let var_1 = global0.a.b.ww;
    global1 = array<bool, 23>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-766f, _wgslsmith_div_f32(global0.c.c.b.x, _wgslsmith_f_op_f32(global0.b.a.x * -870f))), 1272f) - _wgslsmith_f_op_f32(-func_2().c.a.a.x));
    global1 = array<bool, 23>();
    var var_3 = vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(34715i, u_input.b, u_input.c.x), -2147483647i), ~(vec3<i32>(42334i, -1i, -2147483647i) >> (global0.c.d.yyw % vec3<u32>(32u)))), _wgslsmith_sub_i32(~2147483647i, -abs(-15889i)), false), _wgslsmith_add_i32(max(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), u_input.c.yx)), u_input.c.x), 0i), -(~u_input.b), u_input.b);
    var var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

