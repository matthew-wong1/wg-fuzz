struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(vec4<i32>(1i, -1i, i32(-2147483648), 0i), vec2<bool>(false, true), 22667u, false);

var<private> global2: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec3<bool> {
    global1 = arg_0;
    global2 = array<vec3<bool>, 13>();
    global2 = array<vec3<bool>, 13>();
    global2 = array<vec3<bool>, 13>();
    var var_0 = true;
    return select(vec3<bool>(true, any(!vec2<bool>(false, global0.e)), !arg_0.d), vec3<bool>(!(global0.e | (arg_1.x >= arg_1.x)), false, all(select(select(global0.a.a.zxx, global2[_wgslsmith_index_u32(global1.c, 13u)], global2[_wgslsmith_index_u32(7077u, 13u)]), select(vec3<bool>(global1.d, global0.e, global0.a.a.x), vec3<bool>(false, global1.d, true), global1.d), all(global2[_wgslsmith_index_u32(26257u, 13u)])))), vec3<bool>(true, arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.d))) >= _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(290f * global0.b.d))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_3(vec4<i32>(2147483647i, ~2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, global1.a.x), -1i | arg_0.a.x), ~(~0i)), 11749i), select(global0.b.b, vec2<bool>(true, false || all(global0.b.a.yx)), all(vec2<bool>(false && global1.d, true))), 0u, arg_0.b.x);
    var var_1 = vec3<bool>(!arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1718f) * _wgslsmith_f_op_f32(trunc(global0.d.d)))) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.d - global0.b.d)), _wgslsmith_f_op_f32(round(global0.d.d)))), select(any(select(vec3<bool>(global1.d, false, true), func_3(var_0, vec3<f32>(437f, -345f, global0.d.d), vec4<i32>(var_0.a.x, arg_1, 1i, 0i)), true | var_0.b.x)), true, global0.b.b.x));
    let var_2 = Struct_3(max(vec4<i32>(~global1.a.x, ~10656i, 1i, global1.a.x), select(~vec4<i32>(arg_1, var_0.a.x, -24312i, -34750i), arg_0.a, false)), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), arg_0.d)), var_0.c, !global1.b.x);
    var_1 = !global2[_wgslsmith_index_u32(var_0.c, 13u)];
    var_1 = vec3<bool>(global0.a.a.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(712f * -1000f) * global0.b.d) < global0.d.d);
    return arg_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> i32 {
    let var_0 = arg_1.x;
    let var_1 = -3271i;
    global2 = array<vec3<bool>, 13>();
    global1 = func_2(Struct_3(global1.a, select(global0.d.b, vec2<bool>(!global1.d, !global1.b.x), select(!vec2<bool>(global1.b.x, global1.b.x), global0.b.b, select(arg_0.x, global1.d, true))), global0.a.c.x, !select(true, global0.e | global0.d.b.x, global1.c == global0.d.c.x)), -_wgslsmith_dot_vec3_i32(global1.a.zyz, abs(global1.a.yxz)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1485f);
    return ~countOneBits(abs(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(~func_1(global0.a.b, global0.b.c << (global0.d.c % vec4<u32>(32u))), ~2147483647i, -u_input.b);
    let var_1 = !(!global0.d.b.x);
    let var_2 = 403f;
    global2 = array<vec3<bool>, 13>();
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~(-21660i), global1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.d, -1121f, global0.d.d, -980f)) * vec4<f32>(-371f, -2239f, -438f, var_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-306f, var_2, global0.a.d, var_2), vec4<f32>(1742f, var_2, -639f, -964f), vec4<bool>(global1.b.x, global1.d, global1.d, var_1))), true)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -307f, 212f, global0.b.d) - vec4<f32>(var_2, global0.a.d, var_2, global0.d.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.d, var_2, var_2, 1000f) + vec4<f32>(var_2, var_2, global0.d.d, global0.d.d))), vec4<f32>(_wgslsmith_f_op_f32(max(var_2, 1000f)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(trunc(282f)), _wgslsmith_f_op_f32(var_2 * 2275f)))));
}

