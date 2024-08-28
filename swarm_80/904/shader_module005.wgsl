struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(2725f, 234f, 1061f), vec3<f32>(1072f, 269f, -1000f), vec3<f32>(-186f, -108f, -606f));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1u, false, vec4<f32>(-945f, 410f, 1393f, -1188f)), Struct_1(4294967295u, false, vec4<f32>(-1492f, 1037f, -1000f, -1029f)), Struct_1(11828u, false, vec4<f32>(-842f, -1000f, 2220f, -1046f)), Struct_1(26676u, false, vec4<f32>(-758f, -507f, -158f, -603f)), Struct_1(40866u, false, vec4<f32>(148f, 1789f, 1791f, -2018f)), Struct_1(6268u, true, vec4<f32>(932f, -151f, 329f, 853f)), Struct_1(41815u, false, vec4<f32>(-1123f, 327f, 695f, 581f)), Struct_1(25196u, true, vec4<f32>(681f, 1519f, -960f, -460f)), Struct_1(9690u, true, vec4<f32>(898f, 1297f, 804f, -2611f)), Struct_1(9095u, false, vec4<f32>(-1028f, -935f, 586f, 1541f)), Struct_1(4294967295u, true, vec4<f32>(-970f, 477f, -1000f, 420f)), Struct_1(14106u, true, vec4<f32>(-817f, -206f, -1179f, -551f)), Struct_1(0u, true, vec4<f32>(891f, 141f, 1216f, 239f)), Struct_1(0u, true, vec4<f32>(-518f, -885f, 1463f, -514f)), Struct_1(35543u, false, vec4<f32>(-1404f, -1355f, -299f, 366f)), Struct_1(0u, true, vec4<f32>(1595f, 101f, 577f, -622f)), Struct_1(10136u, false, vec4<f32>(-421f, 507f, 1355f, -669f)));

var<private> global2: vec4<f32> = vec4<f32>(-718f, 2461f, 1971f, 591f);

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = array<vec3<f32>, 3>();
    global2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1461f, global2.x, -516f, 759f) * vec4<f32>(global2.x, global2.x, global2.x, global2.x)))))));
    var var_0 = !vec3<bool>(false, true, true & !all(vec3<bool>(true, false, true)));
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.x, global2.x, global2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(778f, -2076f, global2.x, global2.x) + vec4<f32>(-273f, 1111f, 123f, global2.x)))))))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -2039f, global2.x, global2.x))))) * vec4<f32>(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(1000f - -259f), _wgslsmith_f_op_f32(global2.x * 1576f), _wgslsmith_f_op_f32(max(686f, global2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -560f), -283f, global2.x))) - vec4<f32>(-215f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1042f, global2.x) + global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, -1408f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x + global2.x))))));
    return 0u;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = 55887u;
    global3 = func_3();
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2036f + arg_0.x), _wgslsmith_f_op_f32(arg_0.x * 428f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(abs(-346f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 117f, -459f)), _wgslsmith_div_vec4_f32(vec4<f32>(760f, 2527f, -579f, arg_1.c.x), vec4<f32>(213f, -372f, -268f, arg_0.x)))))));
    let var_1 = reverseBits(~reverseBits(u_input.c));
    return ~(~u_input.a);
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_f32(-1072f + _wgslsmith_f_op_f32(-global2.x));
    global0 = array<vec3<f32>, 3>();
    let var_1 = u_input.c.x;
    var var_2 = 57585i;
    return abs(~(~_wgslsmith_clamp_i32(u_input.b.x, 29394i, func_2(vec4<f32>(global2.x, 355f, 1454f, -1000f), Struct_1(34237u, true, vec4<f32>(global2.x, global2.x, 327f, 773f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_1() < -(~reverseBits(-4910i)), false);
    global3 = u_input.c.x;
    global0 = array<vec3<f32>, 3>();
    let var_1 = vec2<i32>(u_input.a, -func_1()) | u_input.d.zx;
    let var_2 = _wgslsmith_div_vec3_u32(u_input.c.yxw, ~u_input.c.wyw);
    let var_3 = var_1;
    var var_4 = global1[_wgslsmith_index_u32(u_input.c.x, 17u)];
    global1 = array<Struct_1, 17>();
    let var_5 = Struct_1(u_input.c.x, false, _wgslsmith_f_op_vec4_f32(var_4.c - var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wyy, vec3<f32>(110f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)))))), var_5.c.x), 24782i, _wgslsmith_f_op_f32(-var_4.c.x));
}

