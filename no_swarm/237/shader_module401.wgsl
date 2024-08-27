struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = arg_0;
    global2 = true || !arg_2.x;
    var var_1 = _wgslsmith_f_op_f32(-470f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1468f * 569f)), 1f))));
    var var_2 = ~countOneBits(~1u);
    var var_3 = Struct_1(abs(vec4<u32>(var_0.a.x, arg_0.a.x, arg_1.a.x, 45009u)));
    return ~(~var_0.a.xwy);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(vec4<u32>(11237u, _wgslsmith_div_u32(global0.a.x, ~(~arg_1.a.x)), global1.a.x, u_input.b));
    let var_1 = vec3<i32>(-1i) * -(_wgslsmith_mod_vec3_i32(vec3<i32>(1306i, u_input.a.x, -1i), -vec3<i32>(1i, -1i, -51385i)) << (func_3(Struct_1(vec4<u32>(global1.a.x, var_0.a.x, 1u, 0u)), Struct_1(vec4<u32>(arg_1.a.x, var_0.a.x, var_0.a.x, 1u)), vec3<bool>(arg_0.x, true, arg_0.x)) % vec3<u32>(32u)));
    let var_2 = arg_0.xwx;
    var var_3 = arg_1;
    var_3 = arg_2;
    return reverseBits(abs(_wgslsmith_div_vec4_u32(var_3.a, vec4<u32>(20029u, ~65119u, arg_1.a.x, ~1u))));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(u_input.d);
    return Struct_1((var_0.a & ~func_2(vec4<bool>(arg_0, false, true, arg_0), Struct_1(global0.a), Struct_1(vec4<u32>(13182u, 1u, 49912u, global0.a.x)))) & (vec4<u32>(0u << (var_0.a.x % 32u), u_input.d.x, ~4294967295u, u_input.d.x) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, var_0.a.x, 70103u, 1u), vec4<u32>(global0.a.x, 42736u, 42917u, u_input.d.x), firstLeadingBit(var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~(vec4<u32>(20176u, ~u_input.c.x, global0.a.x, ~86566u) & ~max(vec4<u32>(u_input.b, global1.a.x, u_input.c.x, global0.a.x), vec4<u32>(10349u, u_input.c.x, 57119u, 0u))));
    global2 = true;
    global2 = false;
    let var_0 = -1433f;
    let var_1 = func_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1326f, -1287f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f - 287f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(308f, 1f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, var_0, 1208f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-654f, 831f, 486f) + vec3<f32>(var_0, 938f, var_0))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1410f, 1296f, var_0)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 851f, 327f)) * vec3<f32>(-1000f, var_0, var_0))))));
    global2 = var_1.a.x == (4294967295u ^ ~_wgslsmith_sub_u32(global1.a.x, 47892u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global1.a.x, 1u, 11361u), u_input.c), ~(~u_input.d) | abs(func_1(true, var_0).a)), min(~vec3<u32>(4294967295u ^ var_1.a.x, ~187u, var_1.a.x), vec3<u32>(240u, 18741u, var_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(486f - var_0))), var_0, var_0));
}

