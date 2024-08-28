struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 1i;

var<private> global2: array<vec4<bool>, 1>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(global0.e.zxw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global0.e.xwx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, global0.e.x, 682f)), global0.e.x < 1912f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1007f))), _wgslsmith_f_op_f32(-global0.e.x), global0.e.x), global0.b.x)));
    return (global0.e.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - global0.e.x)) | !(!(!any(global0.b)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<bool>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -359f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * global0.e.x)), global0.b, any(!(!global0.b.zz)), ~(~max(vec4<u32>(4269u, global0.d.x, 1u, 16208u), global0.d)) ^ global0.d, global0.e);
    var var_2 = var_1;
    global0 = var_1;
    global0 = var_1;
    return Struct_1(!select(var_2.a, global0.b.zy, !(!vec2<bool>(true, var_1.c))), select(!select(!vec3<bool>(var_1.c, global0.a.x, global0.c), var_2.b, u_input.e >= var_1.d.x), var_1.b, func_3()), !global0.b.x, vec4<u32>(var_1.d.x, 22133u, _wgslsmith_mod_u32(0u, var_2.d.x), ~(~u_input.c.x) ^ ~(~global0.d.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(var_2.e.x - 668f), _wgslsmith_f_op_f32(var_1.e.x + 1469f), var_2.e.x)))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = u_input.d;
    global0 = Struct_1(vec2<bool>(!(55384u < global0.d.x), false), select(vec3<bool>(!all(vec2<bool>(global0.a.x, false)), !(global0.e.x == global0.e.x), arg_0 || any(global2[_wgslsmith_index_u32(1u, 1u)])), vec3<bool>(false, true, false), vec3<bool>(global0.e.x == -787f, true, any(!vec3<bool>(arg_0, false, false)))), arg_0, ~min(select(vec4<u32>(0u, 38915u, u_input.e, 43124u), vec4<u32>(26326u, 1u, 1u, u_input.e), false), vec4<u32>(~u_input.c.x, u_input.e, 4294967295u, 15303u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(755f - 2758f))), global0.e.x, -780f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1448f + _wgslsmith_f_op_f32(abs(-1000f))), global0.e.x)));
    var var_1 = global0.d.x;
    let var_2 = global0.e;
    var var_3 = func_2(-19745i, abs(u_input.a));
    return ~_wgslsmith_sub_u32(max(var_3.d.x, 75013u) ^ 1u, _wgslsmith_mod_u32(global0.d.x, reverseBits(4294967295u))) >> (u_input.c.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1994f);
    let var_1 = Struct_1(vec2<bool>(global0.b.x, true), !vec3<bool>(all(vec3<bool>(false, global0.b.x, global0.b.x)) & true, global0.c, global0.b.x), all(global0.b.xz), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, func_1(global0.c & true), abs(func_2(33537i, u_input.b).d.x), global0.d.x), global0.d), _wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, 396f, false))), _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.e)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, global0.e.x, 1374f, -428f))))));
    global0 = var_1;
    global1 = _wgslsmith_mod_i32(1i, u_input.b & u_input.a);
    let var_2 = Struct_1(select(!(!var_1.a), vec2<bool>(false, var_1.c | var_1.a.x), var_1.a), var_1.b, all(select(select(!var_1.b.zz, global0.a, !var_1.a), select(var_1.a, !vec2<bool>(global0.b.x, var_1.c), vec2<bool>(global0.a.x, true)), var_1.c)), min(_wgslsmith_mult_vec4_u32(var_1.d, ~abs(vec4<u32>(32777u, var_1.d.x, global0.d.x, u_input.e))), ~(vec4<u32>(0u, var_1.d.x, global0.d.x, global0.d.x) & vec4<u32>(var_1.d.x, 0u, 1u, u_input.e))), global0.e);
    var var_3 = !(!(!select(!vec4<bool>(false, false, var_2.c, var_2.c), select(vec4<bool>(var_1.c, true, true, true), global2[_wgslsmith_index_u32(global0.d.x, 1u)], var_2.a.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.d.x, _wgslsmith_add_u32(1u, ~(~78719u)), 13951u, global0.d.x));
}

