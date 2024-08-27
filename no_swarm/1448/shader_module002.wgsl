struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 126364u;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<f32>(-620f, -1870f)), Struct_1(vec2<f32>(-108f, 1158f)), Struct_1(vec2<f32>(-814f, -208f)), Struct_1(vec2<f32>(1540f, 552f)), Struct_1(vec2<f32>(1000f, -273f)), Struct_1(vec2<f32>(2505f, -585f)), Struct_1(vec2<f32>(1000f, 225f)), Struct_1(vec2<f32>(-1033f, -1135f)), Struct_1(vec2<f32>(2518f, 436f)), Struct_1(vec2<f32>(-328f, -831f)), Struct_1(vec2<f32>(1468f, -428f)), Struct_1(vec2<f32>(-509f, -1000f)), Struct_1(vec2<f32>(304f, -679f)), Struct_1(vec2<f32>(1986f, -1416f)), Struct_1(vec2<f32>(428f, 1214f)));

var<private> global3: array<i32, 1> = array<i32, 1>(43083i);

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-624f, 1763f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    global3 = array<i32, 1>();
    global4 = global2[_wgslsmith_index_u32(u_input.a.x, 15u)];
    let var_0 = global2[_wgslsmith_index_u32(1u, 15u)];
    var var_1 = countOneBits(abs(vec4<u32>(u_input.a.x, u_input.a.x >> (4294967295u % 32u), ~4294967295u, 0u ^ u_input.a.x))) >> (~reverseBits(vec4<u32>(~u_input.a.x, 0u, 1u, reverseBits(u_input.a.x))) % vec4<u32>(32u));
    var var_2 = !(!global0.x);
    return global2[_wgslsmith_index_u32(1u, 15u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + func_1(var_0.a.x, u_input.d.zy).a.x), max(_wgslsmith_add_vec2_i32(-u_input.d.zx, -u_input.d.yz), u_input.d.yx >> (u_input.a % vec2<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(arg_2, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.x) * var_1.a) * global4.a)), global4.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1526f, arg_2, var_2.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-348f, var_0.a.x, var_0.a.x, var_1.a.x) + vec4<f32>(arg_2, -604f, 1392f, 556f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2872f, 2685f, global4.a.x, -3075f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-479f, var_1.a.x, global4.a.x, arg_2)))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-222f)) - _wgslsmith_f_op_f32(-2411f - _wgslsmith_f_op_f32(-2672f - var_0.a.x))) - _wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_f32(var_1.a.x * 1000f));
    return -1549f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> StorageBuffer {
    global1 = u_input.a.x;
    var var_0 = 2147483647i;
    global2 = array<Struct_1, 15>();
    var var_1 = select(select(vec2<bool>(global0.x, all(vec3<bool>(global0.x, false, global0.x))), select(!global0.ww, global0.yy, true), any(!vec4<bool>(global0.x, global0.x, false, false))), global0.zz, vec2<bool>(global0.x, !(!(!global0.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-615f, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(vec3<u32>(72295u, u_input.a.x, u_input.a.x), vec3<u32>(13563u, 14704u, u_input.a.x)), vec3<u32>(0u, 1u, 42590u) >> (vec3<u32>(54191u, u_input.a.x, 84785u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global4.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1463f, -196f, arg_2.a.x, global4.a.x) - vec4<f32>(arg_2.a.x, 585f, -812f, -359f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, 1434f, global4.a.x, 725f) - vec4<f32>(1543f, arg_2.a.x, arg_0.a.x, 125f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, 233f, arg_2.a.x, -1000f)))))));
    return StorageBuffer(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, ~global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_add_i32(arg_1.x << (1u % 32u), 11799i)), -max(arg_1.x ^ arg_1.x, ~arg_1.x)), 1086f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -460f;
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.a.x + 349f))))), -_wgslsmith_mod_vec2_i32(~vec2<i32>(-43500i, global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), abs(vec2<i32>(-5130i, u_input.c.x))));
    var var_2 = func_1(_wgslsmith_f_op_f32(-global4.a.x), u_input.b.wy);
    let var_3 = var_1;
    var var_4 = 1u;
    let x = u_input.a;
    s_output = func_2(Struct_1(var_3.a), u_input.d.zx, Struct_1(var_1.a));
}

