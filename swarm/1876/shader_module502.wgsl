struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(5079u, 4294967295u), vec2<u32>(0u, 23293u), vec2<u32>(1u, 28282u), vec2<u32>(0u, 34891u), vec2<u32>(14502u, 87254u), vec2<u32>(30924u, 0u), vec2<u32>(82040u, 1u), vec2<u32>(18086u, 68472u), vec2<u32>(0u, 0u), vec2<u32>(52223u, 1u), vec2<u32>(5000u, 1u), vec2<u32>(0u, 12143u), vec2<u32>(3464u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(35685u, 13062u), vec2<u32>(0u, 4294967295u), vec2<u32>(80636u, 4294967295u), vec2<u32>(35988u, 0u), vec2<u32>(77935u, 26008u), vec2<u32>(98850u, 0u), vec2<u32>(4294967295u, 4918u), vec2<u32>(4294967295u, 35784u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 18591u), vec2<u32>(1u, 0u), vec2<u32>(109221u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(33109u, 0u), vec2<u32>(52417u, 77377u));

var<private> global3: i32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    return vec2<i32>(12961i, firstLeadingBit(-2147483647i));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    var var_0 = any(vec3<bool>(true || all(vec2<bool>(true, true)), true, true));
    let var_1 = ~u_input.b.x;
    var_0 = !(11345u > _wgslsmith_div_u32(u_input.b.x ^ _wgslsmith_sub_u32(var_1, var_1), select(1u, 4294967295u, true)));
    let var_2 = global0.a.x;
    global1 = 4294967295u;
    return -53087i;
}

fn func_3(arg_0: vec2<i32>) -> Struct_1 {
    global1 = u_input.b.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(690f, global0.a.x, true))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -376f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -412f) + vec3<f32>(global0.a.x, global0.a.x, 946f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, -566f, -2151f))) - vec3<f32>(global0.a.x, 248f, global0.a.x)))));
    global1 = ~(~u_input.b.x);
    var var_1 = vec4<u32>(8760u, 0u, countOneBits(u_input.a.x), u_input.b.x);
    var var_2 = true;
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - global0.a));
    let var_1 = !any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f + 1424f))), var_0.a.x, _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-965f * -1504f), 1329f, !all(vec2<bool>(false, false)))))));
    global2 = array<vec2<u32>, 30>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_div_f32(1421f, 1115f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 534f) - -2041f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)))));
    let var_4 = Struct_1(global0.a);
    var var_5 = func_3(-_wgslsmith_mult_vec2_i32(func_1(Struct_1(var_2.yz), _wgslsmith_f_op_f32(-470f * 874f)), vec2<i32>(func_2(var_3.a.x, vec4<f32>(1017f, -493f, 421f, -189f), 2577f), func_1(var_4, -159f).x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b.x, reverseBits(u_input.a.x)), firstLeadingBit(~41508u), _wgslsmith_div_f32(var_5.a.x, var_5.a.x), ~23832i, ~(~1i));
}

