struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(-192f, -1046f, -1000f, 1000f), vec4<u32>(16457u, 1u, 32620u, 0u), -473f), Struct_1(vec4<f32>(-1132f, 830f, -626f, 1000f), vec4<u32>(0u, 0u, 0u, 5665u), 629f), Struct_1(vec4<f32>(188f, 2589f, 387f, 1000f), vec4<u32>(0u, 39353u, 0u, 874u), -671f), Struct_1(vec4<f32>(1237f, -2073f, 698f, -3949f), vec4<u32>(1u, 0u, 1u, 45862u), 700f), Struct_1(vec4<f32>(1438f, 1184f, 683f, 115f), vec4<u32>(4294967295u, 1u, 2472u, 1u), -163f), Struct_1(vec4<f32>(-180f, -225f, 1110f, -1208f), vec4<u32>(1u, 3487u, 11536u, 32213u), -655f), Struct_1(vec4<f32>(377f, 741f, -168f, 575f), vec4<u32>(48257u, 75997u, 4294967295u, 22321u), 103f), Struct_1(vec4<f32>(-1038f, 1972f, 183f, -2325f), vec4<u32>(10427u, 0u, 1u, 5399u), 805f), Struct_1(vec4<f32>(111f, 394f, -1448f, -999f), vec4<u32>(1u, 12015u, 40903u, 57796u), -309f), Struct_1(vec4<f32>(-545f, 1038f, 1440f, 844f), vec4<u32>(22243u, 0u, 4294967295u, 4294967295u), -437f), Struct_1(vec4<f32>(1218f, -117f, -1000f, 756f), vec4<u32>(51086u, 4294967295u, 0u, 5052u), 393f), Struct_1(vec4<f32>(701f, 920f, -1148f, -1131f), vec4<u32>(0u, 26715u, 53333u, 0u), -385f), Struct_1(vec4<f32>(1109f, 175f, -724f, 718f), vec4<u32>(13374u, 43840u, 1u, 34005u), 1157f), Struct_1(vec4<f32>(-198f, 268f, -935f, 445f), vec4<u32>(53464u, 15328u, 59560u, 1u), 241f), Struct_1(vec4<f32>(379f, 483f, -829f, -1269f), vec4<u32>(4294967295u, 1u, 57003u, 51447u), 789f), Struct_1(vec4<f32>(-465f, 1000f, -848f, -323f), vec4<u32>(23091u, 4294967295u, 35175u, 82005u), 386f), Struct_1(vec4<f32>(-1342f, -1303f, 1247f, -642f), vec4<u32>(4294967295u, 53824u, 4294967295u, 107494u), -900f), Struct_1(vec4<f32>(-192f, 1450f, 594f, -418f), vec4<u32>(4294967295u, 0u, 1u, 651u), -639f), Struct_1(vec4<f32>(-1852f, 698f, -668f, 374f), vec4<u32>(1u, 48754u, 1u, 4294967295u), -490f), Struct_1(vec4<f32>(-532f, 734f, 1167f, -232f), vec4<u32>(44056u, 17962u, 37254u, 18071u), -302f));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(arg_0.a);
    global0 = array<Struct_1, 20>();
    global1 = array<Struct_2, 23>();
    global0 = array<Struct_1, 20>();
    let var_1 = var_0.a.x;
    return vec3<bool>(true, false, true);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global1 = array<Struct_2, 23>();
    global0 = array<Struct_1, 20>();
    var var_1 = Struct_2(!(!vec4<bool>(select(false, false, false), true, true, select(false, true, true))));
    var var_2 = arg_0.b;
    return _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))), false)));
}

fn func_1() -> vec3<bool> {
    var var_0 = 2476f;
    let var_1 = func_2(Struct_2(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + -1083f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-595f * 283f), -992f))) + _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1361f, -1874f, 339f, 2753f), vec4<f32>(927f, -1000f, 652f, -550f), vec4<bool>(false, true, var_1.x, false)))), ~countOneBits(vec4<u32>(19269u, 94794u, 1u, 67991u)), _wgslsmith_f_op_f32(703f - _wgslsmith_f_op_f32(-2251f - 2235f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
    global0 = array<Struct_1, 20>();
    return !func_2(Struct_2(select(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x)), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec3<bool>(true, true, true), func_1(), !all(vec4<bool>(false, true, false, true))));
    let var_1 = var_0.x;
    var_0 = !(!(!(!(!vec3<bool>(var_0.x, true, var_0.x)))));
    var_0 = select(!func_2(Struct_2(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), !func_2(global1[_wgslsmith_index_u32(~countOneBits(53117u), 23u)]), false);
    var var_2 = 1f;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-877f, -984f))))) - 528f), !all(vec3<bool>(true, u_input.b.x <= u_input.b.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~17668i, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -22434i, -2147483647i, u_input.c) >> (vec4<u32>(4294967295u, 10862u, 1u, 49095u) % vec4<u32>(32u)), ~(-vec4<i32>(-2147483647i, -32588i, u_input.a.x, u_input.c))), select(u_input.a.x, -u_input.c, all(vec3<bool>(false, var_0.x, true)))), u_input.c, min(~max(~4294967295u, countOneBits(53430u)), ~abs(~0u)), ~select(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(4294967295u, 1u)), 1u, var_0.x));
}

