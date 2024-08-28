struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(i32(-2147483648), 724f), -1i, 27824u, -1959f, -26490i), Struct_3(Struct_1(15305i, -871f), -25183i, 1u, 2037f, i32(-2147483648)), Struct_3(Struct_1(1i, 677f), 2147483647i, 70761u, -416f, -14085i), Struct_3(Struct_1(15602i, 966f), 2182i, 4294967295u, -783f, -4401i), Struct_3(Struct_1(-1i, -727f), 1i, 0u, -619f, 30253i), Struct_3(Struct_1(i32(-2147483648), -324f), 0i, 31342u, 2853f, -46091i), Struct_3(Struct_1(1606i, -454f), 2147483647i, 16745u, 592f, 48077i), Struct_3(Struct_1(1i, -543f), -26985i, 1u, -1812f, 1i), Struct_3(Struct_1(23016i, 1483f), 2147483647i, 8940u, 811f, 28420i), Struct_3(Struct_1(0i, 339f), i32(-2147483648), 141756u, 314f, i32(-2147483648)), Struct_3(Struct_1(94788i, -192f), 22890i, 0u, 2328f, 0i), Struct_3(Struct_1(12581i, 691f), -25594i, 4294967295u, -1474f, -49680i), Struct_3(Struct_1(-1i, -1263f), 0i, 51446u, 566f, i32(-2147483648)), Struct_3(Struct_1(-33304i, -988f), 14992i, 26469u, 1065f, -8331i), Struct_3(Struct_1(i32(-2147483648), -958f), 1i, 48997u, -172f, 2147483647i), Struct_3(Struct_1(12711i, -495f), 30927i, 0u, 948f, -22448i), Struct_3(Struct_1(-44481i, -235f), -48480i, 34271u, 424f, 2147483647i), Struct_3(Struct_1(-15587i, 167f), 0i, 0u, 545f, -2863i), Struct_3(Struct_1(-4775i, 1000f), 1i, 0u, -236f, -34607i), Struct_3(Struct_1(-23997i, 495f), 28289i, 2997u, -275f, -9500i), Struct_3(Struct_1(-15362i, -1166f), -1i, 4294967295u, 1525f, -1i), Struct_3(Struct_1(13507i, -975f), 1i, 34151u, -458f, -1i), Struct_3(Struct_1(-44022i, 426f), -1i, 1u, 507f, 1i), Struct_3(Struct_1(0i, 2311f), 0i, 4294967295u, 598f, 0i), Struct_3(Struct_1(-34295i, 1206f), 0i, 20009u, -635f, 2147483647i), Struct_3(Struct_1(i32(-2147483648), -1142f), -1i, 67289u, -1000f, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = 647f;
    global0 = array<Struct_3, 26>();
    var var_1 = all(select(select(vec3<bool>(arg_0.a.x, all(arg_0.a.xx), true), arg_0.a.zxy, select(arg_0.a.x, true, u_input.b.x <= -42324i)), !vec3<bool>(arg_0.a.x, any(arg_0.a.zwz), any(arg_0.a.xw)), !(!select(arg_0.a.wwz, arg_0.a.xxz, false))));
    global0 = array<Struct_3, 26>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1671f, var_0) - 320f))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0))));
    return ~34310u;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    var var_0 = 4294967295u;
    return 4294967295u;
}

fn func_1() -> Struct_4 {
    return Struct_4(u_input.a, max(u_input.c.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(30713u, u_input.c.x, u_input.a), u_input.c)), vec2<u32>(69050u, select(1u, u_input.c.x, false)))), vec4<u32>(func_2(Struct_2(vec4<bool>(true, false, false, false))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(45201u, 23634u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) % 32u), abs(u_input.a), _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.c), abs(select(u_input.c, vec3<u32>(34027u, 0u, 0u), false))), func_3(1i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(529f, -544f, -939f))))), Struct_2(vec4<bool>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x) == u_input.a, false, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 26>();
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-237f, 978f))))));
    var var_1 = func_1();
    var var_2 = select(!(!vec2<bool>(all(vec3<bool>(true, true, var_1.d.a.x)), var_1.d.a.x)), vec2<bool>(true, true), vec2<bool>(!(true | !var_1.d.a.x), false));
    let var_3 = max(firstTrailingBit((u_input.b.x & var_0.a) & 25101i), var_0.a >> (~_wgslsmith_sub_u32(u_input.a, 0u) % 32u));
    var_2 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_1().c.x), u_input.c.x, 1u);
}

