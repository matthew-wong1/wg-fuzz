struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(27078i, i32(-2147483648)), true, 1956f, vec2<bool>(true, true)), Struct_1(vec2<i32>(i32(-2147483648), 1i), false, -450f, vec2<bool>(false, false)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(7528i, 57343i), true, 1000f, vec2<bool>(true, false));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, 59103i), true, 530f, vec2<bool>(true, false)), Struct_1(vec2<i32>(2147483647i, -61289i), true, -1179f, vec2<bool>(false, true)));

var<private> global3: array<i32, 24> = array<i32, 24>(-27432i, 1i, 31267i, -1i, 3395i, -55294i, 0i, 2064i, -8980i, -1i, 9353i, -22620i, 24142i, 2147483647i, -6850i, 12303i, -69211i, 2147483647i, 10034i, 13300i, -19133i, -8561i, i32(-2147483648), -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c));
}

fn func_2() -> u32 {
    global2 = Struct_2(global0.b, global0.a);
    global2 = Struct_2(global0.a, global2.a);
    global3 = array<i32, 24>();
    var var_0 = Struct_2(global0.b, Struct_1(~max(vec2<i32>(global0.b.a.x, -32302i), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), all(!(!vec2<bool>(false, global2.a.b))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(select(global0.a.c, 681f, false))))), !vec2<bool>(any(global2.a.d), !global0.b.d.x)));
    var var_1 = select(u_input.a.x >> (firstLeadingBit(1u) % 32u), select(firstTrailingBit(u_input.a.x), min(3245u, _wgslsmith_dot_vec3_u32(u_input.a.xwz, u_input.a.zyy)), u_input.a.x > (u_input.a.x | u_input.a.x)) << (u_input.a.x % 32u), _wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))) > -1303f);
    return 45308u;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = 68920i;
    var var_1 = vec2<bool>(func_2() < ~4781u, _wgslsmith_f_op_f32(select(1364f, global1.c, -1091f < global0.b.c)) <= -1304f);
    var var_2 = Struct_2(global2.a, global0.a);
    let var_3 = Struct_2(Struct_1(~vec2<i32>(~2147483647i, var_2.a.a.x), global2.b.d.x, _wgslsmith_div_f32(534f, var_2.b.c), select(global0.a.d, var_2.a.d, vec2<bool>(var_2.a.d.x, var_2.b.b))), Struct_1(global1.a, var_1.x, _wgslsmith_f_op_f32(-global2.b.c), global0.b.d));
    var_1 = var_3.b.d;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_f32(-1000f, var_2.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 24>();
    var var_0 = u_input.a.x;
    global2 = Struct_2(global2.a, Struct_1(min(countOneBits(vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), global0.b.a), global0.b.b, _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(func_1(vec3<bool>(global0.a.d.x, global2.b.d.x, true))))), global1.d));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(562f))))) * 1f)));
    global3 = array<i32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 - 1180f), _wgslsmith_f_op_f32(740f + global1.c), false)))), 1283f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.c + -810f), _wgslsmith_f_op_f32(-global1.c), global1.c, -135f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -1596f, global0.a.c, global1.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c, -1145f, -370f, var_1) * vec4<f32>(-181f, -1000f, 130f, -2292f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(616f, 322f, global1.c, -597f), vec4<f32>(-680f, -951f, -871f, global0.b.c), false)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c, var_1, 560f, -462f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, global0.b.c, global2.a.c, var_1))))), -1141f);
}

