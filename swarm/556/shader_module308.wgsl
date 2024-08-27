struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(4850u, vec4<bool>(false, true, false, true), Struct_1(false, -116f, -925f)), Struct_3(0u, vec4<bool>(false, false, false, true), Struct_1(false, -1000f, -553f)), Struct_3(73888u, vec4<bool>(true, true, true, false), Struct_1(false, 1777f, 1719f)), Struct_3(4294967295u, vec4<bool>(false, false, true, true), Struct_1(true, 104f, 1000f)), Struct_3(89538u, vec4<bool>(true, false, true, true), Struct_1(true, 203f, 519f)), Struct_3(0u, vec4<bool>(false, false, false, false), Struct_1(true, 1000f, 491f)), Struct_3(25066u, vec4<bool>(false, false, false, false), Struct_1(false, 778f, -219f)), Struct_3(17630u, vec4<bool>(false, true, true, false), Struct_1(true, 220f, -265f)));

var<private> global1: vec3<bool>;

var<private> global2: vec3<bool>;

var<private> global3: vec2<u32>;

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(arg_0.c.c * arg_0.c.b)) - _wgslsmith_div_f32(arg_0.c.c, -983f))), 390f);
    global1 = arg_0.b.yzx;
    var var_1 = arg_2;
    let var_2 = ~arg_1.d;
    global1 = select(!vec3<bool>(var_0.a, ~arg_2 < abs(arg_1.d), arg_3.x), !vec3<bool>(true, false, arg_3.x), global4.c.a);
    return select(arg_1.d == -2147483647i, all(arg_3.zy), false);
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_2(global4.c.c, global1.x | (u_input.e.x > ~_wgslsmith_sub_u32(global4.a, global3.x)), vec3<f32>(global4.c.b, 768f, global4.c.c), i32(-1i) * -abs(u_input.c));
    let var_1 = var_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.c)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.c, var_0.a, 1084f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.x, -344f, _wgslsmith_f_op_f32(var_0.c.x - -136f)), vec3<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(trunc(global4.c.c)), _wgslsmith_f_op_f32(-165f - var_0.a)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = global4.b;
    return Struct_2(global4.c.b, func_2(global0[_wgslsmith_index_u32(global4.a, 8u)], Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global4.c.b, -160f)), -597f), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.b, global4.c.c, global4.c.b))), ~u_input.a.x), u_input.c, !vec4<bool>(global2.x, !global1.x, global4.b.x & false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.b, global4.c.c, global4.c.c) * vec3<f32>(-576f, global4.c.c, -266f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(10332u, 0u, global3.x, global4.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-367f, 1373f, global4.c.c) + vec3<f32>(-997f, -325f, -1360f)), global3.x == global4.a)))), -28569i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.c;
    global0 = array<Struct_3, 8>();
    global4 = global0[_wgslsmith_index_u32(u_input.b, 8u)];
    var var_1 = func_1();
    var var_2 = global0[_wgslsmith_index_u32(0u, 8u)];
    let var_3 = reverseBits(reverseBits(vec2<u32>(_wgslsmith_div_u32(u_input.b, 21468u), ~global4.a) & select(u_input.e.xy, ~u_input.e.yx, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & firstTrailingBit(select(-vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.c), reverseBits(vec4<i32>(var_1.d, u_input.d.x, u_input.c, 2147483647i)), var_2.b)), ~max(var_3 & ~u_input.e.yz, vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b), global4.a)), u_input.e.zz);
}

