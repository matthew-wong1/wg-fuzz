struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<i32>(1i, i32(-2147483648), -1i, 0i), vec4<f32>(-1475f, 2282f, 891f, 1387f), 0u), 2147483647i, -1000f, 1u);

var<private> global1: array<f32, 22> = array<f32, 22>(-1118f, 1000f, 286f, 1523f, -831f, -883f, -329f, 138f, 299f, -1059f, 631f, -1459f, -183f, 615f, -1637f, -699f, -1000f, -911f, -1000f, 1000f, 1042f, 1033f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = global0.a.c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(global0.a.d, 22u)]) * global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~u_input.e.wxw, u_input.e.ywx ^ u_input.e.zzx)), 22u)]);
    return global0.a.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_4 {
    let var_0 = func_3();
    global1 = array<f32, 22>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a.c, vec4<f32>(-204f, _wgslsmith_f_op_f32(2325f * 497f), _wgslsmith_f_op_f32(global0.c + global1[_wgslsmith_index_u32(u_input.c, 22u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 22u)], 1278f)))) - vec4<f32>(global1[_wgslsmith_index_u32(~78527u, 22u)], _wgslsmith_f_op_f32(step(-606f, _wgslsmith_f_op_f32(step(325f, global0.c)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.d, 22u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3697f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a.d, 22u)] - -597f))))), vec2<bool>(global0.a.a.x, (_wgslsmith_f_op_f32(round(global0.c)) > -460f) | true));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.c))), !global0.a.a.yz);
    let var_3 = Struct_2(-(~2147483647i), -2147483647i);
    return Struct_4(global0.a, countOneBits(12079i >> (_wgslsmith_mod_u32(1u, 4294967295u) % 32u)), _wgslsmith_f_op_f32(var_2.a.x + global0.a.c.x), u_input.e.x);
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    global0 = func_2(vec3<i32>(max(global0.b, u_input.b), -u_input.d.x, 2147483647i), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 16072u, 30987u, 0u), u_input.e)));
    let var_0 = func_2(select(~select(vec3<i32>(21560i, 2147483647i, u_input.a), vec3<i32>(u_input.a, 48896i, u_input.b), false), vec3<i32>(u_input.d.x, global0.a.b.x >> (0u % 32u), 40895i), func_2(-global0.a.b.zxx, ~10667u).a.a.x) << (u_input.e.yww % vec3<u32>(32u)), select(abs(1u) | global0.d, global0.a.d, any(!vec4<bool>(global0.a.a.x, false, global0.a.a.x, false))));
    var var_1 = !(!(true & (true || var_0.a.a.x)) | !(!(-4774i > u_input.a)));
    var var_2 = func_2(max(var_0.a.b.xwy, vec3<i32>(_wgslsmith_sub_i32(-1i & var_0.a.b.x, -global0.a.b.x), -2147483647i, u_input.b)), abs(~reverseBits(~var_0.a.d)));
    var var_3 = ~(~33101u);
    return StorageBuffer(_wgslsmith_div_i32(u_input.d.x, global0.a.b.x), min(u_input.e.zxx >> (vec3<u32>(0u, min(var_0.a.d, 57390u), global0.a.d ^ 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(min(vec3<u32>(0u, 4294967295u, 1u), u_input.e.yyy), vec3<u32>(1u, ~0u, var_0.a.d))), -46885i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-u_input.b, u_input.b);
    let x = u_input.a;
    s_output = func_1(global0.a.c);
}

