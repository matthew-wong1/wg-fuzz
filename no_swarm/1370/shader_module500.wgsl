struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-948f, -335f, 526f, 1000f));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(-390f, -1593f, 1150f, -322f)), Struct_1(vec4<f32>(2020f, 400f, -149f, 2897f)), Struct_1(vec4<f32>(-1170f, -908f, -302f, -370f)), Struct_1(vec4<f32>(780f, 597f, -1000f, 263f)), Struct_1(vec4<f32>(1000f, 1000f, -704f, -994f)), Struct_1(vec4<f32>(-1935f, 316f, -1020f, -433f)), Struct_1(vec4<f32>(587f, -300f, 682f, -851f)), Struct_1(vec4<f32>(-270f, -923f, -180f, -1664f)), Struct_1(vec4<f32>(376f, 694f, 743f, -432f)), Struct_1(vec4<f32>(-1000f, 1040f, 2560f, -837f)), Struct_1(vec4<f32>(2233f, -330f, 2124f, -1000f)), Struct_1(vec4<f32>(961f, -734f, -513f, -1559f)), Struct_1(vec4<f32>(435f, -377f, 2956f, -2157f)), Struct_1(vec4<f32>(1681f, -420f, -1503f, -1000f)), Struct_1(vec4<f32>(-1000f, -318f, -444f, 603f)), Struct_1(vec4<f32>(-1812f, -756f, -1022f, 115f)), Struct_1(vec4<f32>(-131f, -650f, -393f, -665f)), Struct_1(vec4<f32>(235f, -544f, -142f, 653f)), Struct_1(vec4<f32>(1133f, 397f, 1298f, 384f)), Struct_1(vec4<f32>(1074f, -716f, 421f, 364f)));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(239f, -1122f, 879f, -520f));

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    return _wgslsmith_f_op_f32(256f - _wgslsmith_f_op_f32(-global1.a.x));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = global1.a.yz;
    return -vec2<i32>(arg_0.x, arg_0.x);
}

fn func_2(arg_0: Struct_1) -> f32 {
    global4 = array<Struct_1, 30>();
    let var_0 = u_input.a.x;
    var var_1 = select(vec2<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-88258i, -45456i), max(u_input.c.zy, -vec2<i32>(22573i, u_input.c.x)))), -func_3(max(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x), -vec4<i32>(-5915i, -1i, -26079i, u_input.c.x)), global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, max(vec4<u32>(1u, u_input.d.x, var_0, 41549u), vec4<u32>(54683u, var_0, u_input.a.x, 1u))), 30u)], true), !any(vec2<bool>(select(false, false, true), true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-326f, _wgslsmith_f_op_f32(func_1(vec2<f32>(1f, 1f), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 20>();
    global1 = Struct_1(global1.a);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global1.a.zx, true)), _wgslsmith_f_op_f32(abs(global3.a.x)), global3.a.x, _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-1719f + global1.a.x), _wgslsmith_f_op_f32(func_2(Struct_1(global1.a))), -1003f)))));
    let var_0 = Struct_1(global3.a);
    var var_1 = global4[_wgslsmith_index_u32(4294967295u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(9801i, u_input.c.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(24966i, u_input.c.x, u_input.c.x, u_input.c.x)) >> (abs(vec4<u32>(191u, u_input.b, 0u, u_input.b)) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.c.x, -36369i, u_input.c.x) >> (u_input.d % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_i32(u_input.c.x, -2147483647i)) | 0i), u_input.d, ~u_input.d);
}

