struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), false, 19903i, vec4<bool>(true, true, false, true));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<bool>(true, true), true, 1i, vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(true, false), true, 3066i, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, false), false, 1i, vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, true), true, 2147483647i, vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(true, true), false, 30530i, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), true, 0i, vec4<bool>(false, true, false, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(!arg_1.a, select(global0.b, any(arg_1.d.zxy), all(arg_1.d)) && all(vec3<bool>(all(arg_1.d), any(vec4<bool>(true, arg_1.d.x, arg_1.b, true)), true)), arg_1.c, select(vec4<bool>(true, min(global0.c, 16237i) <= max(-42164i, u_input.c.x), false, !(false && global0.d.x)), global0.d, select(vec4<bool>(global0.a.x || true, arg_1.a.x, true, any(vec2<bool>(true, false))), vec4<bool>(true, !arg_1.d.x, true, all(arg_1.d.wy)), true)));
    var_0 = Struct_1(select(vec2<bool>(arg_1.d.x, !(!global0.a.x)), !select(vec2<bool>(global0.a.x, global0.d.x), vec2<bool>(global0.b, false), select(vec2<bool>(var_0.a.x, global0.b), vec2<bool>(false, var_0.b), var_0.a.x)), !var_0.a), var_0.a.x, 38757i, var_0.d);
    var var_1 = Struct_1(select(arg_1.a, !select(select(vec2<bool>(var_0.d.x, true), vec2<bool>(false, global0.d.x), arg_1.a), vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.d.x, arg_1.d.x)), !vec2<bool>(global0.a.x || true, true)), false, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(5924i, -26775i, u_input.c.x), u_input.c)), vec3<i32>(-1i) * -vec3<i32>(27455i, -2147483647i, 2147483647i)), global0.d);
    let var_2 = any(vec2<bool>(all(arg_1.a), !select(u_input.c.x < var_0.c, any(global0.d), any(var_1.d.zxw))));
    var_1 = arg_1;
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(~u_input.e, global1[_wgslsmith_index_u32(u_input.e, 6u)]), 22484u), 6u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, abs(~1763u)), 6u)];
    global0 = Struct_1(!(!vec2<bool>(var_1.a.x, any(vec4<bool>(true, true, true, true)))), false, abs(var_1.c), !vec4<bool>(all(vec4<bool>(global0.a.x, var_1.a.x, global0.a.x, var_0.d.x)), any(select(var_1.a, var_1.d.wz, vec2<bool>(var_0.d.x, false))), _wgslsmith_div_i32(u_input.c.x, u_input.c.x) <= _wgslsmith_mult_i32(u_input.c.x, global0.c), false));
    var var_2 = !((55138u > (max(u_input.e, 1u) & 0u)) || false);
    return Struct_1(!(!(!(!vec2<bool>(true, global0.a.x)))), false, -2147483647i, global0.d);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    var_0 = func_2();
    let var_1 = u_input.c.x;
    global0 = global1[_wgslsmith_index_u32(u_input.b, 6u)];
    global0 = arg_0;
    return StorageBuffer(1840f, u_input.c.zy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(190f, 170f, 423f) - vec3<f32>(471f, 726f, -1212f)), vec3<f32>(1f, 1f, 1f), global0.d.xyz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, -113f, 823f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-749f, 1276f, -855f) + vec3<f32>(463f, 157f, -1113f))))))), u_input.a.xy, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, _wgslsmith_f_op_f32(floor(-1847f)), _wgslsmith_f_op_f32(max(-935f, 1253f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, 1020f, -245f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1516f, -1193f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1058f, -407f, 178f) + vec3<f32>(1999f, 1103f, -784f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    global0 = Struct_1(select(vec2<bool>(global0.b, false), !(!global0.a), global0.a), all(global0.d), ~1i, !(!vec4<bool>(global0.b, false, true, any(global0.d))));
    let x = u_input.a;
    s_output = func_1(Struct_1(global0.a, true != !(!global0.a.x), max(20309i ^ _wgslsmith_mult_i32(-69951i, global0.c), ~min(u_input.c.x, 14665i)), vec4<bool>(global0.d.x, global0.a.x, true, any(select(global0.d.ywy, global0.d.zwz, vec3<bool>(true, global0.a.x, false))))));
}

